const __CFString *SecCertificateIsOidString(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString) >= 3)
    {
      v2 = CFCharacterSetCreateWithCharactersInString(0, @"0123456789.");
      InvertedSet = CFCharacterSetCreateInvertedSet(0, v2);
      v8.length = CFStringGetLength(v1);
      v8.location = 0;
      CharacterFromSet = CFStringFindCharacterFromSet(v1, InvertedSet, v8, 0x200uLL, 0);
      *buffer = -1431655766;
      v7.location = 0;
      v7.length = 2;
      CFStringGetCharacters(v1, v7, buffer);
      if (buffer[1] != 46 || (v1 = (CharacterFromSet == 0), buffer[0] - 51 <= 0xFFFFFFFC))
      {
        v1 = 0;
      }

      if (v2)
      {
        CFRelease(v2);
      }

      if (InvertedSet)
      {
        CFRelease(InvertedSet);
      }
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t GetDecimalValueOfString(const __CFString *a1, SInt32 *a2)
{
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, Predefined);
  if (CFStringGetLength(a1) < 1 || (v8.length = CFStringGetLength(a1), v8.location = 0, CFStringFindCharacterFromSet(a1, InvertedSet, v8, 0x200uLL, 0)))
  {
    v6 = 0;
    if (InvertedSet)
    {
LABEL_4:
      CFRelease(InvertedSet);
    }
  }

  else
  {
    if (a2)
    {
      *a2 = CFStringGetIntValue(a1);
    }

    v6 = 1;
    if (InvertedSet)
    {
      goto LABEL_4;
    }
  }

  return v6;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageX962SHA256(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-X962:SHA256");
  v8 = ccsha256_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

BOOL SecCertificateHasOCSPNoCheckMarkerExtension(const __CFData *a1)
{
  if (SecCertificateHasOCSPNoCheckMarkerExtension_onceToken != -1)
  {
    dispatch_once(&SecCertificateHasOCSPNoCheckMarkerExtension_onceToken, &__block_literal_global_175);
  }

  v2 = SecCertificateHasOCSPNoCheckMarkerExtension_sOCSPNoCheckOIDData;

  return SecCertificateHasMarkerExtension(a1, v2);
}

void __PerformWithBufferAndClear_block_invoke(uint64_t a1, size_t a2, void *a3)
{
  (*(*(a1 + 32) + 16))();

  bzero(a3, a2);
}

void __PerformWithCFDataBuffer_block_invoke(uint64_t a1, CFIndex length, UInt8 *bytes)
{
  v4 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
  (*(*(a1 + 32) + 16))();

  CFRelease(v4);
}

void PerformWithCFDataBuffer(size_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __PerformWithCFDataBuffer_block_invoke;
  v5[3] = &unk_1E70E07F0;
  v6 = v3;
  v4 = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __PerformWithBufferAndClear_block_invoke;
  v7[3] = &unk_1E70E46A8;
  v7[4] = v5;
  PerformWithBuffer(a1, v7);
}

void __securityd_create_connection_block_invoke(int a1, xpc_object_t xdict)
{
  v7 = *MEMORY[0x1E69E9840];
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E28]);
  v3 = secLogObjForScope("xpc");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315138;
    v6 = string;
    _os_log_debug_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEBUG, "got event: %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

__CFArray *SecCertificateCopySignedCertificateTimestamps(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 504);
  if (v1 < 1)
  {
    return 0;
  }

  for (i = *(a1 + 512); *(i + 8) != 10 || memcmp(*i, &_oidGoogleEmbeddedSignedCertificateTimestamp, 0xAuLL); i += 40)
  {
    if (!--v1)
    {
      return 0;
    }
  }

  memset(v16, 170, sizeof(v16));
  if (DERDecodeItem(i + 24, v16) || v16[0] != 4)
  {
    return 0;
  }

  v5 = v16[1];
  v6 = v16[2];
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = Mutable;
  if (v6 < 3 || !Mutable)
  {
    goto LABEL_21;
  }

  v9 = __rev16(*v5);
  if (v9 == v6 - 2)
  {
    v10 = (v5 + 1);
    if (!v9)
    {
      return v3;
    }

    while (v9 != 1)
    {
      v11 = __rev16(*v10);
      v12 = v9 - 2 >= v11;
      v9 = v9 - 2 - v11;
      if (!v12)
      {
        break;
      }

      v13 = v10 + 2;
      v14 = CFDataCreate(v7, v13, v11);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v10 = &v13[v11];
      CFArrayAppendValue(v3, v14);
      CFRelease(v15);
      if (!v9)
      {
        return v3;
      }
    }

LABEL_21:
    if (!v3)
    {
      return v3;
    }
  }

  CFRelease(v3);
  return 0;
}

CFDataRef SecCertificateCopyPrecertTBS(uint64_t a1)
{
  v1 = 0;
  v26 = *(a1 + 32);
  v24 = 0;
  v25 = 0;
  v23 = 0uLL;
  v2 = *(a1 + 504);
  if (v2 > 0x555555555555554)
  {
    return v1;
  }

  v4 = malloc_type_malloc(16 * v2, 0x1010040FDD9F14CuLL);
  v5 = malloc_type_malloc(24 * *(a1 + 504), 0x1000040D248FAB4uLL);
  v6 = v5;
  v1 = 0;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[8] = v7;
  v22 = v7;
  v21[6] = v7;
  v21[7] = v7;
  v21[4] = v7;
  v21[5] = v7;
  v21[2] = v7;
  v21[3] = v7;
  v21[0] = v7;
  v21[1] = v7;
  if (!v4 || !v5)
  {
    goto LABEL_25;
  }

  if (DERParseSequence(&v26, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v21, 0xA0uLL))
  {
    goto LABEL_34;
  }

  if (*(&v22 + 1))
  {
    memset(v20, 170, sizeof(v20));
    if (DERDecodeSeqInit(&v22, v20, &v20[1]) || v20[0] != 0x2000000000000010)
    {
      goto LABEL_34;
    }

    v8 = 0;
    memset(v19, 170, sizeof(v19));
    while (1)
    {
      v9 = DERDecodeSeqNext(&v20[1], v19);
      if (v9)
      {
        break;
      }

      if (v19[0] != 0x2000000000000010)
      {
        goto LABEL_34;
      }

      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17 = v10;
      v18 = v10;
      *__s1 = v10;
      if (DERParseSequenceContent(&v19[1], DERNumExtensionItemSpecs, &DERExtensionItemSpecs, __s1, 0x30uLL))
      {
        goto LABEL_34;
      }

      if (__s1[1] != 10 || memcmp(__s1[0], &_oidGoogleEmbeddedSignedCertificateTimestamp, 0xAuLL))
      {
        if (v8 > *(a1 + 504))
        {
          goto LABEL_34;
        }

        v4[v8] = *&v19[1];
        v11 = &v6[24 * v8];
        *(v11 + 8) = 0;
        *v11 = 16 * v8;
        *(v11 + 1) = 0x2000000000000010;
        ++v8;
      }
    }

    if (v9 != 1)
    {
      goto LABEL_34;
    }
  }

  else
  {
    LOWORD(v8) = 0;
  }

  *(&v23 + 1) = DERLengthOfEncodedSequence(0x2000000000000010, v4, v8, v6);
  v12 = malloc_type_malloc(*(&v23 + 1), 0x12B6E279uLL);
  *&v23 = v12;
  if (v12)
  {
    if (!DEREncodeSequence(0x2000000000000010, v4, v8, v6, v12, &v23 + 1))
    {
      v22 = v23;
      v13 = DERLengthOfEncodedSequence(0x2000000000000010, v21, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs);
      v25 = v13;
      if (v13 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v14 = malloc_type_malloc(v13, 0x809CA9FCuLL);
        v24 = v14;
        if (v14)
        {
          if (!DEREncodeSequence(0x2000000000000010, v21, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v14, &v25))
          {
            v1 = CFDataCreate(*MEMORY[0x1E695E480], v24, v25);
            goto LABEL_25;
          }
        }
      }
    }

LABEL_34:
    v1 = 0;
LABEL_25:
    if (v23)
    {
      free(v23);
    }

    goto LABEL_27;
  }

  v1 = 0;
LABEL_27:
  if (v24)
  {
    free(v24);
  }

  if (v4)
  {
    free(v4);
  }

  if (v6)
  {
    free(v6);
  }

  return v1;
}

__CFData *SecKeyRSAVerifyAdaptorCopyResult(uint64_t a1, const __CFData *a2, __CFString **a3, void *a4)
{
  v7 = a4;
  *(a1 + 8) = 3;
  CFArrayAppendValue(*(a1 + 16), @"algid:encrypt:RSA:raw");
  v8 = SecKeyRunAlgorithmAndCopyResult(a1, a2, 0, a3);
  v9 = v8;
  if (*(a1 + 24))
  {
    v10 = 1;
  }

  else
  {
    v10 = v8 == 0;
  }

  if (v10)
  {
    goto LABEL_15;
  }

  if (!v7[2](v7, v8))
  {
    v12 = *MEMORY[0x1E695E4C0];
    if (v9 != *MEMORY[0x1E695E4C0])
    {
      if (v12)
      {
        CFRetain(*MEMORY[0x1E695E4C0]);
      }

      CFRelease(v9);
      v9 = v12;
    }

    SecError(-67808, a3, @"RSA signature verification failed, no match");
    goto LABEL_15;
  }

  v11 = *MEMORY[0x1E695E4D0];
  if (v9 == *MEMORY[0x1E695E4D0])
  {
LABEL_15:
    v11 = v9;
    goto LABEL_16;
  }

  if (v11)
  {
    CFRetain(*MEMORY[0x1E695E4D0]);
  }

  CFRelease(v9);
LABEL_16:

  return v11;
}

__CFData *SecRSAPublicKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const __CFData *a6, uint64_t a7, __CFString **a8)
{
  if (!CFEqual(cf1, @"algid:encrypt:RSA:raw-cc"))
  {
    return *MEMORY[0x1E695E738];
  }

  v13 = *(a1 + 24);
  Mutable = *MEMORY[0x1E695E4D0];
  if (a2 != 3)
  {
    if (a2 == 2)
    {
      if (!a5)
      {
        Length = CFDataGetLength(a6);
        if (Length == ((ccrsa_block_size() + 7) & 0xFFFFFFFFFFFFFFF8))
        {
          CFDataGetLength(a6);
          CFDataGetBytePtr(a6);
          v16 = *v13;
          if ((ccn_cmpn() & 0x80000000) == 0)
          {
            SecError(-50, a8, @"RSApubkey wrong size of buffer to encrypt");
            return 0;
          }

          v17 = 0;
          goto LABEL_14;
        }

        goto LABEL_19;
      }

      return Mutable;
    }

    return *MEMORY[0x1E695E738];
  }

  if (!a5)
  {
    Length = CFDataGetLength(a6);
    if (Length == ((ccrsa_block_size() + 7) & 0xFFFFFFFFFFFFFFF8))
    {
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      v17 = SecCFAllocatorZeroize_sAllocator;
LABEL_14:
      Mutable = CFDataCreateMutable(v17, 0);
      CFDataSetLength(Mutable, Length);
      CFDataGetMutableBytePtr(Mutable);
      CFDataGetBytePtr(a6);
      v18 = ccrsa_pub_crypt();
      if (!v18)
      {
        return Mutable;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      SecError(-50, a8, @"rsa_pub_crypt failed, ccerr=%d", v18);
      return 0;
    }

LABEL_19:
    SecError(-50, a8, @"%@: sign - input buffer bad size (%d bytes)", a1, Length);
    return 0;
  }

  return Mutable;
}

__CFData *SecKeyRSACopyCCUnitToBigEndian(const __CFData *a1, CFIndex a2)
{
  if (!a1)
  {
    return 0;
  }

  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  CFDataSetLength(Mutable, a2);
  CFDataGetLength(Mutable);
  CFDataGetMutableBytePtr(Mutable);
  ccn_write_uint_padded();
  return Mutable;
}

__CFData *SecSHA256DigestCreateFromData(const __CFAllocator *a1, const __CFData *a2)
{
  Mutable = CFDataCreateMutable(a1, 32);
  CFDataSetLength(Mutable, 32);
  CFDataGetBytePtr(a2);
  CFDataGetLength(a2);
  CFDataGetMutableBytePtr(Mutable);
  CCDigest();
  return Mutable;
}

uint64_t SecCertificateGetPolicyMappings(uint64_t a1)
{
  if (*(a1 + 328))
  {
    return a1 + 328;
  }

  else
  {
    return 0;
  }
}

uint64_t SecCertificateGetInhibitAnyPolicySkipCerts(uint64_t a1)
{
  if (*(a1 + 376))
  {
    return a1 + 376;
  }

  else
  {
    return 0;
  }
}

uint64_t SecKeyDigestAndVerify(uint64_t a1, const SecAsn1Oid *a2, const UInt8 *a3, CFIndex a4, const UInt8 *a5, CFIndex a6)
{
  AlgorithmForSecAsn1AlgId = SecKeyGetAlgorithmForSecAsn1AlgId(a1, a2, 1u);
  if (!AlgorithmForSecAsn1AlgId)
  {
    return 4294967292;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SecKeyDigestAndVerify_block_invoke;
  v13[3] = &__block_descriptor_48_e58__v40__0____CFData__8____CFData__16____qq_24_____CFError_32l;
  v13[4] = a1;
  v13[5] = AlgorithmForSecAsn1AlgId;
  return SecKeyPerformLegacyOperation(a3, a4, a5, a6, 0, 0, v13);
}

const SecAsn1Oid *SecKeyGetAlgorithmForSecAsn1AlgId(uint64_t a1, const SecAsn1Oid *a2, unsigned int a3)
{
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  if (AlgorithmId == 1)
  {
    v6 = SecKeyGetAlgorithmForSecAsn1AlgId_translationTableRSA;
  }

  else
  {
    if (AlgorithmId != 3)
    {
      return 0;
    }

    v6 = SecKeyGetAlgorithmForSecAsn1AlgId_translationTableECDSA;
  }

  result = *v6;
  if (*v6)
  {
    while (!SecAsn1OidCompare(result, a2))
    {
      v8 = v6[1];
      if (v8)
      {
        if (SecAsn1OidCompare(v8, a2))
        {
          break;
        }
      }

      v9 = v6[4];
      v6 += 4;
      result = v9;
      if (!v9)
      {
        return result;
      }
    }

    return v6[a3 + 2]->Length;
  }

  return result;
}

BOOL SecAsn1OidCompare(const SecAsn1Oid *oid1, const SecAsn1Oid *oid2)
{
  if (!oid1 || !oid2)
  {
    return oid1 == oid2;
  }

  if (oid1->Length == oid2->Length)
  {
    return memcmp(oid1->Data, oid2->Data, oid1->Length) == 0;
  }

  return 0;
}

uint64_t SecKeyPerformLegacyOperation(const UInt8 *a1, CFIndex a2, const UInt8 *a3, CFIndex a4, UInt8 *a5, CFIndex *a6, void *a7)
{
  cf = 0;
  v13 = *MEMORY[0x1E695E498];
  v14 = a7;
  v15 = CFDataCreateWithBytesNoCopy(0, a1, a2, v13);
  v16 = CFDataCreateWithBytesNoCopy(0, a3, a4, v13);
  range = xmmword_18895E1A0;
  v17 = v14[2](v14, v15, v16, &range, &cf);

  if (!v17 || (v18 = CFGetTypeID(v17), TypeID = CFDataGetTypeID(), !a6) || v18 != TypeID)
  {
LABEL_8:
    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v20.length = range.length;
  if (range.length == -1)
  {
    v20.length = CFDataGetLength(v17);
    range.length = v20.length;
  }

  if (v20.length <= *a6)
  {
    *a6 = v20.length;
    v20.location = range.location;
    CFDataGetBytes(v17, v20, a5);
    goto LABEL_8;
  }

  SecError(-50, &cf, @"buffer too small (required %d, provided %d)", v20.length, *a6);
  if (v15)
  {
LABEL_9:
    CFRelease(v15);
  }

LABEL_10:
  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (!cf)
  {
    return 0;
  }

  OSStatus = SecErrorGetOSStatus(cf);
  if (OSStatus == -67808)
  {
    v22 = 4294957487;
  }

  else
  {
    v22 = OSStatus;
  }

  CFRelease(cf);
  return v22;
}

uint64_t __SecKeyDigestAndVerify_block_invoke(uint64_t a1, CFDataRef signedData, CFDataRef signature, uint64_t a4, CFErrorRef *a5)
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

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePKCS1v15SHA1(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PKCS1v15:SHA1");
  v8 = ccsha1_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA1(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA1_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

void *SecPolicyCreateAppleIDSService(const void *a1)
{
  AppleServerAuthCommon = SecPolicyCreateAppleServerAuthCommon(a1, @"1.2.840.113635.100.1.67", @"IDSBag", &oidAppleCertExtAppleServerAuthenticationIDSProd, &oidAppleCertExtAppleServerAuthenticationIDSProdQA);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, AppleServerAuthCommon[4]);
  CFDictionaryRemoveValue(MutableCopy, @"Revocation");
  v3 = AppleServerAuthCommon[4];
  if (v3)
  {
    CFRelease(v3);
  }

  AppleServerAuthCommon[4] = MutableCopy;
  return AppleServerAuthCommon;
}

void *SecPolicyCreateAppleServerAuthCommon(const void *a1, const void *a2, const void *a3, uint64_t a4, uint64_t a5)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v11 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (!a1)
  {
    goto LABEL_27;
  }

  CFDictionaryAddValue(v11, @"SSLHostname", a1);
  v12 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(v11, @"BlackListedLeaf", *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(v11, @"GrayListedLeaf", v12);
  add_eku(v11, &oidExtendedKeyUsageServerAuth);
  if (!requireUATPinning(a3))
  {
    goto LABEL_20;
  }

  SecPolicyAddAppleAnchorOptions(v11);
  if (a5)
  {
    v13 = *(a4 + 8);
    if ((v13 & 0x8000000000000000) == 0 && (*(a5 + 8) & 0x8000000000000000) == 0)
    {
      v14 = CFDataCreate(0, *a4, v13);
      v15 = CFDataCreate(0, *a5, *(a5 + 8));
      add_leaf_prod_qa_element(v11, v14, v15);
      if (v14)
      {
        CFRelease(v14);
      }

      if (v15)
      {
        CFRelease(v15);
      }
    }

    v16 = SecDERItemCopyOIDDecimalRepresentation(0, a4);
    v17 = SecDERItemCopyOIDDecimalRepresentation(0, a5);
    v18 = v17;
    v19 = v17 != 0;
    if (v16 && v17)
    {
      add_leaf_prod_qa_markers_value_string(v11, v16, v17);
      CFRelease(v16);
LABEL_18:
      CFRelease(v18);
      goto LABEL_19;
    }

    if (!v16)
    {
      if (!v17)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else
  {
    add_leaf_marker_value(v11, a4, 0);
    v20 = SecDERItemCopyOIDDecimalRepresentation(0, a4);
    if (!v20)
    {
      goto LABEL_19;
    }

    v16 = v20;
    v18 = 0;
    v19 = 0;
  }

  add_leaf_marker_value_string(v11, @"1.2.840.113635.100.6.48.1", v16);
  CFRelease(v16);
  if (v19)
  {
    goto LABEL_18;
  }

LABEL_19:
  add_oid(v11, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleServerAuthentication, 10);
LABEL_20:
  if (!SecPolicyRemoveWeakHashOptions(v11) || !SecPolicyAddStrongKeySizeOptions(v11))
  {
LABEL_27:
    v21 = 0;
    goto LABEL_23;
  }

  CFDictionaryAddValue(v11, @"Revocation", @"AnyRevocationMethod");
  v21 = SecPolicyCreate(a2, a3, v11);
LABEL_23:
  CFRelease(v11);
  return v21;
}

uint64_t requireUATPinning(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_variant_allows_internal_security_policies())
  {
    v2 = CFStringCreateWithFormat(0, 0, @"AppleServerAuthenticationNoPinning%@", a1);
    if (v2)
    {
      v3 = v2;
      if (CFPreferencesGetAppBooleanValue(v2, @"com.apple.security", 0))
      {
        CFRelease(v3);
LABEL_12:
        result = 0;
        goto LABEL_13;
      }

      v7 = secLogObjForScope("pinningQA");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v3;
        _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "could not disable pinning: %@ not true", buf, 0xCu);
      }

      CFRelease(v3);
      if (CFPreferencesGetAppBooleanValue(@"AppleServerAuthenticationNoPinning", @"com.apple.security", 0))
      {
        goto LABEL_12;
      }

      v4 = secLogObjForScope("pinningQA");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v5 = "could not disable pinning: AppleServerAuthenticationNoPinning not true";
        goto LABEL_7;
      }
    }
  }

  else
  {
    v4 = secLogObjForScope("pinningQA");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "could not disable pinning: not an internal release";
LABEL_7:
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }

  result = 1;
LABEL_13:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SecPolicyAddAppleAnchorOptions(const __CFDictionary *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    add_element(a1, @"AnchorApple", Mutable);
    CFRelease(Mutable);
  }

  return Mutable != 0;
}

void add_leaf_prod_qa_element(const __CFDictionary *a1, const void *a2, const void *a3)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Value = CFDictionaryGetValue(a1, @"LeafMarkersProdAndQA");
  if (Value)
  {
    v8 = Value;
    v9 = CFDictionaryGetValue(Value, @"ProdMarker");
    v10 = CFDictionaryGetValue(v8, @"QAMarker");
    if (v9 && (v11 = CFGetTypeID(v9), v11 == CFArrayGetTypeID()) && v10 && (v12 = CFGetTypeID(v10), v12 == CFArrayGetTypeID()))
    {
      CFRetain(v9);
      CFRetain(v10);
    }

    else
    {
      v13 = MEMORY[0x1E695E9C0];
      v14 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v15 = CFArrayCreateMutable(0, 0, v13);
      CFArrayAppendValue(v14, v9);
      CFArrayAppendValue(v15, v10);
      v10 = v15;
      v9 = v14;
    }

    CFArrayAppendValue(v9, a2);
    CFArrayAppendValue(v10, a3);
    CFDictionaryAddValue(Mutable, @"ProdMarker", v9);
    CFDictionaryAddValue(Mutable, @"QAMarker", v10);
    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    CFDictionaryAddValue(Mutable, @"ProdMarker", a2);
    CFDictionaryAddValue(Mutable, @"QAMarker", a3);
  }

  CFDictionarySetValue(a1, @"LeafMarkersProdAndQA", Mutable);
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void add_leaf_prod_qa_markers_value_string(const __CFDictionary *a1, void *a2, void *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v11 = @"1.2.840.113635.100.6.48.1";
  keys[0] = @"1.2.840.113635.100.6.48.1";
  v9 = a3;
  values = a2;
  v4 = MEMORY[0x1E695E9D8];
  v5 = MEMORY[0x1E695E9E8];
  v6 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = CFDictionaryCreate(0, &v11, &v9, 1, v4, v5);
  add_leaf_prod_qa_element(a1, v6, v7);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void add_oid(const __CFDictionary *a1, const void *a2, UInt8 *bytes, CFIndex length)
{
  if ((length & 0x8000000000000000) == 0)
  {
    v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, length);
    if (v6)
    {
      v7 = v6;
      add_element(a1, a2, v6);

      CFRelease(v7);
    }
  }
}

CFDataRef SecCertificateCopyNormalizedIssuerSequence(SecCertificateRef certificate)
{
  if (certificate && (v1 = *(certificate + 72)) != 0)
  {
    return SecCopySequenceFromContent(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t DERLengthOfLength(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = a1;
  result = 1;
  do
  {
    ++result;
    v3 = v2 > 0xFF;
    v2 >>= 8;
  }

  while (v3);
  return result;
}

CFDataRef SecCertificateCopySerialNumberData(SecCertificateRef certificate, CFErrorRef *error)
{
  if (certificate)
  {
    v2 = *(certificate + 71);
    if (v2)
    {
      CFRetain(*(certificate + 71));
    }
  }

  else
  {
    v2 = 0;
    if (error)
    {
      *error = CFErrorCreate(0, *MEMORY[0x1E695E638], -26275, 0);
    }
  }

  return v2;
}

__CFData *SecDERItemCopySequence(uint64_t a1)
{
  v7 = DERLengthOfLength(*(a1 + 8));
  v2 = v7 + *(a1 + 8) + 1;
  if (v2 < 0)
  {
    return 0;
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v2);
  CFDataSetLength(Mutable, v2);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 48;
  v5 = MutableBytePtr + 1;
  if (DEREncodeLength(*(a1 + 8), (MutableBytePtr + 1), &v7))
  {
    if (!Mutable)
    {
      return Mutable;
    }

    CFRelease(Mutable);
    return 0;
  }

  memcpy(&v5[v7], *a1, *(a1 + 8));
  return Mutable;
}

__CFData *SecCopySequenceFromContent(const __CFData *a1)
{
  if (CFDataGetLength(a1) < 0)
  {
    return 0;
  }

  v3[0] = CFDataGetBytePtr(a1);
  v3[1] = CFDataGetLength(a1);
  return SecDERItemCopySequence(v3);
}

CFDataRef SecCertificateCopyNormalizedSubjectSequence(SecCertificateRef certificate)
{
  if (certificate && (v1 = *(certificate + 73)) != 0)
  {
    return SecCopySequenceFromContent(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t SecCertificateGetPolicyConstraints(uint64_t a1)
{
  if (*(a1 + 308))
  {
    return a1 + 308;
  }

  else
  {
    return 0;
  }
}

uint64_t SecCertificateHasUnknownCriticalExtension(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 296);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t SecPolicyCheckCertNonEmptySubject(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 192))
    {
      return 1;
    }

    if ((SecCertificateIsCA(a1) & 1) == 0)
    {
      v3 = *(a1 + 456);
      if (v3)
      {
        if (*(v3 + 16) == 1)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    SecCertificateIsCA(0);
  }

  return 0;
}

BOOL SecCertificateAppendToXPCArray(uint64_t a1, xpc_object_t xarray, __CFString **a3)
{
  if (!a1)
  {
    return 1;
  }

  v4 = *(a1 + 24);
  if ((v4 & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v5 = *(a1 + 16);
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    xpc_array_set_data(xarray, 0xFFFFFFFFFFFFFFFFLL, v5, v4);
    return 1;
  }

  return SecError(-50, a3, @"failed to der encode certificate");
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePKCS1v15SHA256(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PKCS1v15:SHA256");
  v8 = ccsha256_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA256(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA256_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyBigEndianToCCUnit(uint64_t *a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  if (a1[3] == 1)
  {

    return SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a4);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
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

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __SecKeyAlgorithmAdaptorCopyBigEndianToCCUnit_block_invoke;
    v13[3] = &unk_1E70E0818;
    v13[4] = &v14;
    v13[5] = a1;
    v13[6] = a3;
    v13[7] = a4;
    PerformWithBigEndianToCCUnit(a2, v11, v13);
    v12 = v15[3];
    _Block_object_dispose(&v14, 8);
    return v12;
  }
}

void sub_1887F2870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_EncryptDecrypt_RSAEncryptionRaw(uint64_t a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:encrypt:RSA:raw-cc");

  return SecKeyAlgorithmAdaptorCopyBigEndianToCCUnit(a1, a2, a3, a4);
}

void PerformWithBigEndianToCCUnit(const __CFData *a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    Length = CFDataGetLength(a1);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __PerformWithBigEndianToCCUnit_block_invoke;
    v10[3] = &unk_1E70E0840;
    if (Length <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = Length;
    }

    v9 = v8 + 7;
    v12 = v8;
    v13 = Length;
    v14 = a1;
    v11 = v6;
    PerformWithCFDataBuffer(v9 & 0xFFFFFFFFFFFFFFF8, v10);
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }
}

void __SecKeyAlgorithmAdaptorCopyBigEndianToCCUnit_block_invoke(uint64_t a1, const __CFData *a2)
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

    v8 = SecKeyRSACopyCCUnitToBigEndian(v4, v7);
    v9 = *(v3 + 24);
    if (v9)
    {
      CFRelease(v9);
    }

    *(v3 + 24) = v8;
  }
}

uint64_t __PerformWithBigEndianToCCUnit_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (*(a1 + 40) + 7) >> 3;
  CFDataGetBytePtr(*(a1 + 56));
  ccn_read_uint();
  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void SecRSAPublicKeyDestroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *v1;
    cc_clear();
    free(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

uint64_t SecCertificateIsSelfSigned(void *a1, _BYTE *a2)
{
  if (!SecCertificateIsCertificate(a1))
  {
    return 4294941021;
  }

  if (!a2)
  {
    return 4294967246;
  }

  IsSelfSigned = _SecCertificateIsSelfSigned(a1);
  result = 0;
  *a2 = IsSelfSigned;
  return result;
}

CFDataRef SecCertificateCopySubjectPublicKeyInfoSHA256Digest(const void *a1)
{
  result = SecCertificateCopySPKIEncoded(a1);
  if (result)
  {
    v3 = result;
    v4 = CFGetAllocator(a1);
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v3);
    v7 = SecSHA256DigestCreate(v4, BytePtr, Length);
    CFRelease(v3);
    return v7;
  }

  return result;
}

OSStatus SecStaticCodeCreateWithPath(CFURLRef path, SecCSFlags flags, SecStaticCodeRef *staticCode)
{
  if (flags < 2)
  {
    v4 = Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()();
    Security::SecCFObject::allocate(0x298, *(v4 + 200), v5);
    Security::cfString(__p, path);
    if (v9 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    Security::CodeSigning::DiskRep::bestGuess(v6, 0);
  }

  Security::MacOSError::throwMe(0xFFFEFA02);
}

void sub_1887F2D64(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  Security::SecCFObject::operator delete(v15);
  switch(a2)
  {
    case 6:
      v18 = __cxa_begin_catch(a1);
      if (v18[36] == 8)
      {
        break;
      }

LABEL_6:
      (*(*v18 + 24))(v18);
      break;
    case 5:
      goto LABEL_5;
    case 4:
      v18 = __cxa_begin_catch(a1);
      v20 = v18[36];
      if (v20 > 0x1A)
      {
        goto LABEL_6;
      }

      v21 = 1 << v20;
      if ((v21 & 0x800108) == 0 && (v21 & 0x4014000) == 0)
      {
        goto LABEL_6;
      }

      break;
    case 3:
LABEL_5:
      v19 = __cxa_begin_catch(a1);
      (*(*v19 + 24))(v19);
      break;
    default:
      __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        Security::Syslog::notice("unknown exception in CSAPI", v22);
      }

      break;
  }

  __cxa_end_catch();
  JUMPOUT(0x1887F2D24);
}

uint64_t Security::ModuleNexus<Security::CodeSigning::CFObjects>::operator()()
{
  os_unfair_lock_lock(&unk_1EA91CEF8);
  if (!Security::CodeSigning::gCFObjects)
  {
    Security::CodeSigning::gCFObjects = Security::ModuleNexusCommon::create(&Security::CodeSigning::gCFObjects, Security::ModuleNexus<Security::CodeSigning::CFObjects>::make);
  }

  os_unfair_lock_unlock(&unk_1EA91CEF8);
  return Security::CodeSigning::gCFObjects;
}

void sub_1887F2FC4(void *a1)
{
  __cxa_begin_catch(a1);
  os_unfair_lock_unlock(&unk_1EA91CEF8);
  __cxa_rethrow();
}

uint64_t Security::SecCFObject::allocate(Security::SecCFObject *this, unint64_t a2, const Security::CFClass *a3)
{
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v6, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  atomic_store(0, (Instance + 16));
  return Instance + 24;
}

_BYTE *Security::cfString(Security *this, const __CFURL *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (!a2 || (v3 = this, memset(__b, 170, sizeof(__b)), this = CFURLGetFileSystemRepresentation(a2, 1u, __b, 1025), !this))
  {
    Security::CFError::throwMe(this);
  }

  result = std::string::basic_string[abi:ne200100]<0>(v3, __b);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void Security::CodeSigning::DiskRep::bestGuess(char *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a2 || (*(a2 + 24) & 1) == 0)
  {
    v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v14.st_blksize = v3;
    *v14.st_qspare = v3;
    *&v14.st_size = v3;
    v14.st_ctimespec = v3;
    v14.st_birthtimespec = v3;
    v14.st_atimespec = v3;
    v14.st_mtimespec = v3;
    *&v14.st_dev = v3;
    *&v14.st_uid = v3;
    if (stat(a1, &v14))
    {
      v10 = __error();
      Security::UnixError::throwMe(*v10);
    }

    if ((v14.st_mode & 0xF000) == 0x4000)
    {
      operator new();
    }

    __p = Security::makeCFURL(a1, 0, 0, v4);
    if (__p)
    {
      v12 = _CFBundleCreateWithExecutableURLIfMightBeBundle();
      if (v12)
      {
        operator new();
      }

      Security::CFRef<__CFBundle *>::~CFRef(&v12);
    }

    Security::CFRef<__CFURL const*>::~CFRef(&__p);
  }

  v11 = 0xAAAAAAAAFFFFFFFFLL;
  Security::UnixPlusPlus::FileDesc::open(&v11, a1, 0, 438);
  v5 = v11;
  memset(&v14, 170, 28);
  if (Security::UnixPlusPlus::FileDesc::read(v11, &v14, 0x1CuLL, 0) == 28)
  {
    v6 = -4;
    do
    {
      if (__CFADD__(v6++, 1))
      {
        break;
      }

      st_ino_high = 0;
      if (v14.st_dev <= -889275715)
      {
        if (v14.st_dev != -1095041334)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v14.st_dev > -822415875)
        {
          if ((v14.st_dev + 17958194) < 2)
          {
            st_ino_high = HIDWORD(v14.st_ino);
          }

          else if (v14.st_dev == -822415874 || v14.st_dev == -805638658)
          {
            st_ino_high = bswap32(HIDWORD(v14.st_ino));
          }

LABEL_21:
          if (st_ino_high <= 0xB && ((0x9E4u >> st_ino_high) & 1) != 0)
          {
            operator new();
          }

          v14.st_mtimespec.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&v14.st_uid = v9;
          v14.st_atimespec = v9;
          *&v14.st_dev = v9;
          if (Security::UnixPlusPlus::FileDesc::read(v5, &v14, 0x38uLL, 0) == 56)
          {
            if (DYLDCache::matchArchitecture(&v14))
            {
              operator new();
            }
          }

          operator new();
        }

        if (v14.st_dev != -889275714)
        {
          goto LABEL_21;
        }
      }
    }

    while (Security::UnixPlusPlus::FileDesc::read(v5, &v14, 0x1CuLL, bswap32(v14.st_uid)) == 28);
  }

  st_ino_high = 0;
  goto LABEL_21;
}

void sub_1887F3CB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::unique_ptr<Security::Universal>::~unique_ptr[abi:ne200100](&a15);
  Security::CodeSigning::SingleDiskRep::~SingleDiskRep(v26);
  MEMORY[0x18CFD9760](v26, 0x10B3C40BD7F8033);
  Security::UnixPlusPlus::FileDesc::closeAndLog(&a10);
  if (a2 == 1)
  {
    v29 = __cxa_begin_catch(a1);
    if ((*(*v29 + 32))(v29) == 2)
    {
      Security::MacOSError::throwMe(0xFFFEFA04);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x1887F4010);
}

void sub_1887F4008(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

CFURLRef Security::makeCFURL(Security *this, const char *a2, uint64_t a3, const __CFURL *a4)
{
  v4 = a2;
  if (!a3)
  {
    if (this)
    {
      v6 = CFStringCreateWithCString(0, this, 0x8000100u);
      if (!v6)
      {
        v6 = CFStringCreateWithCString(0, this, 0x600u);
        if (!v6)
        {
          goto LABEL_15;
        }
      }

      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v12 = v8;
    v9 = CFURLCreateWithFileSystemPath(0, v8, kCFURLPOSIXPathStyle, v4);
    goto LABEL_14;
  }

  if (!this)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v6 = CFStringCreateWithCString(0, this, 0x8000100u);
  if (!v6)
  {
    v6 = CFStringCreateWithCString(0, this, 0x600u);
    if (!v6)
    {
LABEL_15:
      Security::CFError::throwMe(v6);
    }
  }

  v7 = v6;
LABEL_11:
  v12 = v7;
  v9 = MEMORY[0x18CFD91B0](0);
LABEL_14:
  v10 = v9;
  Security::CFRef<__CFString const*>::~CFRef(&v12);
  return v10;
}

void sub_1887F4110(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::CFRef<__CFString const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const void **Security::CFRef<__CFString const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

pthread_mutex_t *Security::Mutex::Mutex(pthread_mutex_t *this)
{
  v2 = pthread_mutex_init(this, 0);
  if (v2)
  {
    Security::UnixError::throwMe(v2);
  }

  return this;
}

const void **Security::CodeSigning::BundleDiskRep::setup(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  *(a1 + 177) = 0;
  *(a1 + 72) = 0;
  v84 = CFBundleCopyExecutableURL(*(a1 + 24));
  v4 = *(a1 + 24);
  v83 = _CFBundleCopyInfoPlistURL();
  memset(&v82, 170, sizeof(v82));
  v5 = (*(*a1 + 48))(a1);
  Security::cfStringRelease(&v82, v5);
  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v82.__r_.__value_.__l.__size_;
  }

  memset(v81, 170, sizeof(v81));
  v7 = v81;
  std::string::basic_string[abi:ne200100](v81, size + 9);
  if (SHIBYTE(v81[2]) < 0)
  {
    v7 = v81[0];
  }

  if (size)
  {
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v82;
    }

    else
    {
      v8 = v82.__r_.__value_.__r.__words[0];
    }

    memmove(v7, v8, size);
  }

  strcpy(v7 + size, "/Contents");
  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v82.__r_.__value_.__l.__size_;
  }

  memset(v80, 170, sizeof(v80));
  v10 = v80;
  std::string::basic_string[abi:ne200100](v80, v9 + 14);
  if (SHIBYTE(v80[2]) < 0)
  {
    v10 = v80[0];
  }

  if (v9)
  {
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v82;
    }

    else
    {
      v11 = v82.__r_.__value_.__r.__words[0];
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "/Support Files");
  if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(v82.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = v82.__r_.__value_.__l.__size_;
  }

  memset(&v93, 170, sizeof(v93));
  v13 = &v93;
  std::string::basic_string[abi:ne200100](&v93, v12 + 10);
  if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v93.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v82;
    }

    else
    {
      v14 = v82.__r_.__value_.__r.__words[0];
    }

    memmove(v13, v14, v12);
  }

  strcpy(v13 + v12, "/Versions/");
  v15 = "Current";
  if (a2 && *(a2 + 8))
  {
    v15 = *(a2 + 8);
  }

  v16 = strlen(v15);
  v17 = std::string::append(&v93, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  *&__b[16] = *(&v17->__r_.__value_.__l + 2);
  *__b = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = std::string::append(__b, "/.", 2uLL);
  __sz = *v19;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if ((__b[23] & 0x80000000) != 0)
  {
    operator delete(*__b);
  }

  if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v93.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81[2]) >= 0)
  {
    v20 = v81;
  }

  else
  {
    v20 = v81[0];
  }

  if (!access(v20, 0))
  {
    memset(__b, 0, 24);
    *&__b[24] = 0xAAAAAAAA00000000;
    std::string::basic_string[abi:ne200100]<0>(&v93, "^Contents$");
    Security::CodeSigning::DirValidator::require();
  }

  if (SHIBYTE(v80[2]) >= 0)
  {
    v21 = v80;
  }

  else
  {
    v21 = v80[0];
  }

  if (access(v21, 0))
  {
    if (a2 && (*(a2 + 48) & 1) != 0)
    {
      goto LABEL_191;
    }

    if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
    {
      if (!access(__sz.__r_.__value_.__l.__data_, 0))
      {
        std::string::__init_copy_ctor_external(&v78, __sz.__r_.__value_.__l.__data_, __sz.__r_.__value_.__l.__size_);
LABEL_57:
        if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v78;
        }

        else
        {
          v24 = v78.__r_.__value_.__r.__words[0];
        }

        *__b = Security::makeCFURL(v24, 0, 0, v22);
        Unique = _CFBundleCreateUnique();
        Security::CFRef<__CFURL const*>::~CFRef(__b);
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if (Unique)
        {
          v26 = *(a1 + 24);
          if (v26)
          {
            CFRelease(v26);
          }

          *(a1 + 24) = Unique;
          if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v77, v82.__r_.__value_.__l.__data_, v82.__r_.__value_.__l.__size_);
          }

          else
          {
            v77 = v82;
          }

          memset(__p, 170, sizeof(__p));
          std::string::basic_string[abi:ne200100]<0>(__p, "Current");
          memset(__b, 170, sizeof(__b));
          if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v27 = v77.__r_.__value_.__l.__size_;
          }

          memset(&v93, 170, sizeof(v93));
          v28 = &v93;
          std::string::basic_string[abi:ne200100](&v93, v27 + 17);
          if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v28 = v93.__r_.__value_.__r.__words[0];
          }

          if (v27)
          {
            if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v77;
            }

            else
            {
              v29 = v77.__r_.__value_.__r.__words[0];
            }

            memmove(v28, v29, v27);
          }

          strcpy(v28 + v27, "/Versions/Current");
          if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = &v93;
          }

          else
          {
            v30 = v93.__r_.__value_.__r.__words[0];
          }

          v31 = readlink(v30, __b, 0x3FFuLL);
          if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v93.__r_.__value_.__l.__data_);
          }

          if (v31 >= 1)
          {
            __b[v31] = 0;
            std::string::basic_string[abi:ne200100]<0>(&v91, "(Current|");
            std::string::basic_string[abi:ne200100]<0>(v87, __b);
            Security::CodeSigning::ResourceBuilder::escapeRE(&v85, v87);
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = &v85;
            }

            else
            {
              v32 = v85.__r_.__value_.__r.__words[0];
            }

            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v33 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v33 = v85.__r_.__value_.__l.__size_;
            }

            v34 = std::string::append(&v91, v32, v33);
            v35 = *&v34->__r_.__value_.__l.__data_;
            v93.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
            *&v93.__r_.__value_.__l.__data_ = v35;
            v34->__r_.__value_.__l.__size_ = 0;
            v34->__r_.__value_.__r.__words[2] = 0;
            v34->__r_.__value_.__r.__words[0] = 0;
            v36 = std::string::append(&v93, ")", 1uLL);
            v37 = v36->__r_.__value_.__r.__words[0];
            v90[0] = v36->__r_.__value_.__l.__size_;
            *(v90 + 7) = *(&v36->__r_.__value_.__r.__words[1] + 7);
            v38 = HIBYTE(v36->__r_.__value_.__r.__words[2]);
            v36->__r_.__value_.__l.__size_ = 0;
            v36->__r_.__value_.__r.__words[2] = 0;
            v36->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            __p[0] = v37;
            __p[1] = v90[0];
            *(&__p[1] + 7) = *(v90 + 7);
            HIBYTE(__p[2]) = v38;
            if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v85.__r_.__value_.__l.__data_);
            }

            if (v88 < 0)
            {
              operator delete(v87[0]);
            }

            if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v91.__r_.__value_.__l.__data_);
            }
          }

          memset(&v85, 0, sizeof(v85));
          v86 = 0xAAAAAAAA00000000;
          std::string::basic_string[abi:ne200100]<0>(&v93, "^Versions$");
          Security::CodeSigning::DirValidator::require();
        }

        Security::MacOSError::throwMe(0xFFFEFA04);
      }
    }

    else if (!access(&__sz, 0))
    {
      v78 = __sz;
      goto LABEL_57;
    }

    if (a2)
    {
LABEL_191:
      if (*(a2 + 8))
      {
        Security::MacOSError::throwMe(0xFFFEFA04);
      }
    }

    v23 = 1;
  }

  else
  {
    v23 = 0;
  }

  InfoDictionary = CFBundleGetInfoDictionary(*(a1 + 24));
  Value = CFDictionaryGetValue(InfoDictionary, @"MainHTML");
  CFDictionaryGetValue(InfoDictionary, @"IFMajorVersion");
  v91.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v41 = CFBundleCopyExecutableURL(*(a1 + 24));
  v91.__r_.__value_.__r.__words[0] = v41;
  if (!v41 || Value)
  {
    Security::CFRef<__CFURL const*>::~CFRef(&v91.__r_.__value_.__l.__data_);
    if (Value)
    {
      v50 = CFGetTypeID(Value);
      if (v50 == CFStringGetTypeID())
      {
        Security::cfString(__b, Value);
        v51 = CFBundleCopySupportFilesDirectoryURL(*(a1 + 24));
        v93.__r_.__value_.__r.__words[0] = v51;
        if (__b[23] >= 0)
        {
          v53 = __b;
        }

        else
        {
          v53 = *__b;
        }

        CFURL = Security::makeCFURL(v53, 0, v51, v52);
        v55 = *(a1 + 64);
        if (v55)
        {
          CFRelease(v55);
        }

        *(a1 + 64) = CFURL;
        Security::CFRef<__CFURL const*>::~CFRef(&v93.__r_.__value_.__l.__data_);
        if ((__b[23] & 0x80000000) != 0)
        {
          operator delete(*__b);
        }

        if (*(a1 + 64))
        {
          operator new();
        }
      }

      Security::MacOSError::throwMe(0xFFFEFA2CLL);
    }

    v93.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    v60 = *(a1 + 24);
    v93.__r_.__value_.__r.__words[0] = _CFBundleCopyInfoPlistURL();
    if (v93.__r_.__value_.__r.__words[0])
    {
      Security::CFRef<__CFURL const*>::operator=((a1 + 64), &v93.__r_.__value_.__l.__data_);
      operator new();
    }

    Security::CFRef<__CFURL const*>::~CFRef(&v93.__r_.__value_.__l.__data_);
    memset(__b, 170, 24);
    (*(*a1 + 56))(&v93, a1);
    memset(__b, 0, 24);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = &v93;
    }

    else
    {
      v63 = v93.__r_.__value_.__r.__words[0];
    }

    *&v91.__r_.__value_.__l.__data_ = v63;
    v64 = fts_open(&v91.__r_.__value_.__l.__data_, 28, 0);
    v65 = 1;
    while (1)
    {
      v66 = v65;
      do
      {
        while (1)
        {
          v67 = fts_read(v64);
          if (!v67)
          {
            fts_close(v64);
            if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v93.__r_.__value_.__l.__data_);
            }

            v73 = __b[23];
            if (__b[23] < 0)
            {
              v73 = *&__b[8];
            }

            if (v73)
            {
              if (__b[23] >= 0)
              {
                v74 = __b;
              }

              else
              {
                v74 = *__b;
              }

              v75 = Security::makeCFURL(v74, 0, 0, v72);
              v76 = *(a1 + 64);
              if (v76)
              {
                CFRelease(v76);
              }

              *(a1 + 64) = v75;
              operator new();
            }

            Security::MacOSError::throwMe(0xFFFEFA2CLL);
          }

          fts_info = v67->fts_info;
          if (fts_info != 8 && fts_info != 11)
          {
            break;
          }

          fts_path = v67->fts_path;
          if (!strcmp(&fts_path[v67->fts_pathlen - 5], ".dist"))
          {
            v71 = __b[23];
            if (__b[23] < 0)
            {
              v71 = *&__b[8];
            }

            if (v71)
            {
              Security::MacOSError::throwMe(0xFFFEFA2CLL);
            }

            std::string::__assign_external(__b, fts_path);
          }
        }
      }

      while (fts_info != 1);
      v65 = 0;
      if ((v66 & 1) == 0)
      {
        fts_set(v64, v67, 4);
        v65 = 0;
      }
    }
  }

  if (!a2 || !*(a2 + 8))
  {
    if (v84)
    {
      Security::CodeSigning::BundleDiskRep::checkMoved(a1, v84, v41);
    }

    if (v83)
    {
      *__b = 0xAAAAAAAAAAAAAAAALL;
      v42 = *(a1 + 24);
      v43 = _CFBundleCopyInfoPlistURL();
      *__b = v43;
      if (v43)
      {
        Security::CodeSigning::BundleDiskRep::checkMoved(a1, v83, v43);
      }

      Security::CFRef<__CFURL const*>::~CFRef(__b);
    }
  }

  Security::CFRef<__CFURL const*>::operator=((a1 + 64), &v91.__r_.__value_.__l.__data_);
  (*(*a1 + 40))(__b, a1);
  if (__b[23] >= 0)
  {
    v44 = __b;
  }

  else
  {
    v44 = *__b;
  }

  v45 = Security::CodeSigning::DiskRep::bestFileGuess(v44, a2);
  Security::RefPointer<Security::CodeSigning::DiskRep>::setPointer(a1 + 104, v45);
  if ((__b[23] & 0x80000000) != 0)
  {
    operator delete(*__b);
  }

  v46 = *(*(**(a1 + 104) + 144))(*(a1 + 104));
  (*(*a1 + 40))(__b, a1);
  Security::CodeSigning::BundleDiskRep::checkPlainFile(a1, v46, __b);
  if ((__b[23] & 0x80000000) != 0)
  {
    operator delete(*__b);
  }

  v47 = CFBundleGetInfoDictionary(*(a1 + 24));
  v49 = v47 && (v48 = CFDictionaryGetValue(v47, @"CFBundlePackageType")) != 0 && CFEqual(v48, @"APPL") != 0;
  (*(**(a1 + 104) + 128))(__b);
  v56 = std::string::insert(__b, 0, "bundle with ", 0xCuLL);
  v57 = v56->__r_.__value_.__r.__words[0];
  v93.__r_.__value_.__r.__words[0] = v56->__r_.__value_.__l.__size_;
  *(v93.__r_.__value_.__r.__words + 7) = *(&v56->__r_.__value_.__r.__words[1] + 7);
  v58 = HIBYTE(v56->__r_.__value_.__r.__words[2]);
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v59 = v93.__r_.__value_.__r.__words[0];
  *(a1 + 80) = v57;
  *(a1 + 88) = v59;
  *(a1 + 95) = *(v93.__r_.__value_.__r.__words + 7);
  *(a1 + 103) = v58;
  if ((__b[23] & 0x80000000) != 0)
  {
    operator delete(*__b);
    if (!v49)
    {
      goto LABEL_145;
    }
  }

  else if (!v49)
  {
    goto LABEL_145;
  }

  std::operator+<char>();
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 80) = *__b;
  *(a1 + 96) = *&__b[16];
LABEL_145:
  *(a1 + 73) = v23 & v49;
  Security::CFRef<__CFURL const*>::~CFRef(&v91.__r_.__value_.__l.__data_);
  if (SHIBYTE(__sz.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__sz.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80[2]) < 0)
  {
    operator delete(v80[0]);
  }

  if (SHIBYTE(v81[2]) < 0)
  {
    operator delete(v81[0]);
  }

  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  Security::CFRef<__CFURL const*>::~CFRef(&v83);
  result = Security::CFRef<__CFURL const*>::~CFRef(&v84);
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1887F5548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, const void *a42, const void *a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (*(v72 - 121) < 0)
  {
    operator delete(*(v72 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  Security::CFRef<__CFURL const*>::~CFRef(&a42);
  Security::CFRef<__CFURL const*>::~CFRef(&a43);
  _Unwind_Resume(a1);
}

CFURLRef Security::CodeSigning::BundleDiskRep::copyCanonicalPath(CFBundleRef *this)
{
  result = CFBundleCopyBundleURL(this[3]);
  if (!result)
  {
    Security::CFError::throwMe(0);
  }

  return result;
}

const void **Security::cfStringRelease(Security *this, const __CFURL *a2)
{
  v3 = a2;
  Security::cfString(this, a2);
  return Security::CFRef<__CFURL const*>::~CFRef(&v3);
}

void sub_1887F5AE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::CFRef<__CFURL const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

const void **Security::CFRef<__CFURL const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t Security::CodeSigning::BundleDiskRep::checkMoved(Security::CodeSigning::BundleDiskRep *this, const __CFURL *a2, const __CFURL *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  memset(__s2, 170, sizeof(__s2));
  Security::cfString(v13, a2);
  if (v14 >= 0)
  {
    v6 = v13;
  }

  else
  {
    v6 = v13[0];
  }

  if (realpath_DARWIN_EXTSN(v6, __b))
  {
    Security::cfString(__p, a3);
    if (v12 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = realpath_DARWIN_EXTSN(v7, __s2) == 0;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v8 = 1;
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (v8)
  {
    Security::MacOSError::throwMe(0xFFFEFA3DLL);
  }

  result = strcmp(__b, __s2);
  if (result)
  {
    LODWORD(v13[0]) = -67011;
    result = std::__tree<int>::__emplace_unique_key_args<int,int const&>(this + 208, -67011);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1887F5D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef *Security::CFRef<__CFURL const*>::operator=(CFTypeRef *a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRetain(*a2);
    v4 = *a2;
  }

  else
  {
    v4 = 0;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = v4;
  return a1;
}

void Security::UnixPlusPlus::FileDesc::open(Security::UnixPlusPlus::FileDesc *this, const char *a2, int a3, int a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = open(a2, a3, a4 & 0xFFF);
  *this = v8;
  if (v8 == -1)
  {
    v11 = __error();
    if ((a4 & 0x7000) != 0x1000 || *v11 != 2)
    {
      v13 = __error();
      Security::UnixError::throwMe(*v13);
    }
  }

  else
  {
    *(this + 4) = 0;
    v9 = secLogObjForScope("unixio");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = *this;
      *buf = 136315906;
      v15 = a2;
      v16 = 1024;
      v17 = a3;
      v18 = 1024;
      v19 = a4;
      v20 = 1024;
      v21 = v10;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "open(%s,0x%x,0x%x) = %d", buf, 0x1Eu);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t Security::CodeSigning::DiskRep::bestFileGuess(char *a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = *a2;
    v4 = *(a2 + 1);
    *v5 = *(a2 + 3);
    *&v5[9] = *(a2 + 33);
  }

  return Security::CodeSigning::DiskRep::bestGuess(a1);
}

ssize_t Security::UnixPlusPlus::FileDesc::read(Security::UnixPlusPlus::FileDesc *this, void *a2, size_t a3, off_t a4)
{
  result = pread(this, a2, a3, a4);
  if (result == -1)
  {
    v5 = __error();
    Security::UnixError::throwMe(*v5);
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t Security::CodeSigning::SingleDiskRep::SingleDiskRep(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1EFA8C1B0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 16) = v3;
  }

  *(a1 + 40) = -1;
  *(a1 + 44) = 0;
  return a1;
}

Security::UnixPlusPlus::FileDesc *Security::CodeSigning::SingleDiskRep::fd(Security::CodeSigning::SingleDiskRep *this)
{
  v1 = (this + 40);
  if (*(this + 10) == -1)
  {
    v4 = *(this + 2);
    v2 = this + 16;
    v3 = v4;
    if (v2[23] >= 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = v3;
    }

    Security::UnixPlusPlus::FileDesc::open(v1, v5, 0, 438);
  }

  return v1;
}

uint64_t Security::Universal::Universal(uint64_t a1, unsigned int *a2, off_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 56) = 0;
  v6 = (a1 + 56);
  *(a1 + 64) = 0;
  *(a1 + 48) = a1 + 56;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  memset(v38, 170, 28);
  if (Security::UnixPlusPlus::FileDesc::read(*a2, v38, 0x1CuLL, a3) != 28)
  {
    goto LABEL_47;
  }

  if (v38[0].i32[0] <= -805638659)
  {
    if (v38[0].i32[0] == -1095041334 || v38[0].i32[0] == -889275714)
    {
      v11 = bswap32(v38[0].u32[1]);
      *(a1 + 16) = v11;
      if (v11 <= 0x64)
      {
        v12 = 20 * v11 + 20;
        v13 = malloc_type_malloc(v12, 0x1000040A86A77D5uLL);
        *(a1 + 8) = v13;
        if (v13)
        {
          v14 = Security::UnixPlusPlus::FileDesc::read(*a2, v13, v12, *(a1 + 32) + 8);
          v15 = *(a1 + 8);
          if (v14 == v12)
          {
            v16 = *(a1 + 8);
            do
            {
              *v16 = vrev32q_s8(*v16);
              v16[1].i32[0] = bswap32(v16[1].u32[0]);
              v16 = (v16 + 20);
              v17 = *(a1 + 16);
              v18 = &v15[20 * v17];
            }

            while (v16 <= v18);
            if (v18->i32[0] == 16777228)
            {
              *(a1 + 16) = v17 + 1;
            }

            v19 = secLogObjForScope("macho");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              v30 = *(a1 + 16);
              buf.st_dev = 134218240;
              *&buf.st_mode = a1;
              WORD2(buf.st_ino) = 1024;
              *(&buf.st_ino + 6) = v30;
              _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "%p is a fat file with %d architectures", &buf, 0x12u);
            }

            v35 = &v35;
            v36 = &v35;
            v37 = 0;
            if (*(a1 + 16))
            {
              v20 = *(a1 + 8);
              operator new();
            }

            *&buf.st_dev = &__block_literal_global_17115;
            std::list<fat_arch *>::__sort<BOOL({block_pointer})(fat_arch const*,fat_arch const*)>(&v35, &v35, 0, &buf);
            if (v36 != &v35)
            {
              v33 = *(a1 + 32) + 20 * *(a1 + 16) + 8;
              v34 = v36[2][1];
              v22 = *v6;
              if (*v6)
              {
                do
                {
                  while (1)
                  {
                    v23 = v22;
                    v24 = v22[4];
                    if (v34 >= v24)
                    {
                      break;
                    }

                    v22 = *v23;
                    if (!*v23)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (v24 >= v34)
                  {
                    free(*(a1 + 8));
                    v31 = secLogObjForScope("SecError");
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(buf.st_dev) = 0;
                      _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "Error processing fat file: Two architectures have the same size", &buf, 2u);
                    }

                    Security::MacOSError::throwMe(0xFFFEF7A9);
                  }

                  v22 = v23[1];
                }

                while (v22);
              }

LABEL_33:
              operator new();
            }

            if ((*(a1 + 76) & 1) == 0)
            {
              v25.tv_sec = 0xAAAAAAAAAAAAAAAALL;
              v25.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
              *&buf.st_blksize = v25;
              *buf.st_qspare = v25;
              buf.st_birthtimespec = v25;
              *&buf.st_size = v25;
              buf.st_mtimespec = v25;
              buf.st_ctimespec = v25;
              *&buf.st_uid = v25;
              buf.st_atimespec = v25;
              *&buf.st_dev = v25;
              Security::UnixPlusPlus::FileDesc::fstat(*a2, &buf);
              if (buf.st_size)
              {
                v26 = secLogObjForScope("SecError");
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                  v27.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                  *&buf.st_blksize = v27;
                  *buf.st_qspare = v27;
                  buf.st_birthtimespec = v27;
                  *&buf.st_size = v27;
                  buf.st_mtimespec = v27;
                  buf.st_ctimespec = v27;
                  *&buf.st_uid = v27;
                  buf.st_atimespec = v27;
                  *&buf.st_dev = v27;
                  Security::UnixPlusPlus::FileDesc::fstat(*a2, &buf);
                  *v39 = 134218240;
                  v40 = 0;
                  v41 = 2048;
                  st_size = buf.st_size;
                  _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "STRICT VALIDATION ERROR: Extra data after the last slice in a universal file (expected %zu found %zu)", v39, 0x16u);
                }

                *(a1 + 76) = 1;
              }
            }

            std::__list_imp<fat_arch *>::clear(&v35);
            goto LABEL_40;
          }

          free(v15);
          v32 = 8;
        }

        else
        {
          v32 = *__error();
        }

        Security::UnixError::throwMe(v32);
      }

      goto LABEL_47;
    }

    v7 = -822415874;
LABEL_22:
    if (v38[0].i32[0] == v7)
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 20) = vrev32_s8(*(v38 + 4));
      v8 = secLogObjForScope("macho");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v21 = NXGetArchInfoFromCpuType(*(a1 + 20), *(a1 + 24) & 0xFFFFFF);
        if (v21)
        {
          name = v21->name;
        }

        else
        {
          name = 0;
        }

LABEL_43:
        buf.st_dev = 134218242;
        *&buf.st_mode = a1;
        WORD2(buf.st_ino) = 2080;
        *(&buf.st_ino + 6) = name;
        _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%p is a thin file (%s)", &buf, 0x16u);
        goto LABEL_40;
      }

      goto LABEL_40;
    }

LABEL_47:
    Security::UnixError::throwMe(8);
  }

  if ((v38[0].i32[0] + 17958194) >= 2)
  {
    v7 = -805638658;
    goto LABEL_22;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(v38 + 4);
  v8 = secLogObjForScope("macho");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = NXGetArchInfoFromCpuType(*(a1 + 20), *(a1 + 24) & 0xFFFFFF);
    if (v9)
    {
      name = v9->name;
    }

    else
    {
      name = 0;
    }

    goto LABEL_43;
  }

LABEL_40:
  v28 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1887F69C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__list_imp<fat_arch *>::clear(va);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*v10);
  _Unwind_Resume(a1);
}

void Security::UnixPlusPlus::FileDesc::closeAndLog(Security::UnixPlusPlus::FileDesc *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((v2 & 0x80000000) == 0)
  {
    v3 = 0;
    v4 = 2;
    while (close(v2) == -1 && v4)
    {
      v3 = *__error();
      if ((v3 & 0xFFFFFFFE) == 4)
      {
        --v4;
      }

      else
      {
        v5 = secLogObjForScope("unixio");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
        {
          v6 = *this;
          *buf = 67109376;
          v11 = v6;
          v12 = 1024;
          v13 = v3;
          _os_log_debug_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEBUG, "close(%d) error %d", buf, 0xEu);
        }

        v4 = 0;
      }

      v2 = *this;
    }

    v7 = secLogObjForScope("unixio");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *this;
      *buf = 67109376;
      v11 = v9;
      v12 = 1024;
      v13 = v3;
      _os_log_debug_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEBUG, "close(%d) err: %d", buf, 0xEu);
    }

    *this = -1;
  }

  v8 = *MEMORY[0x1E69E9840];
}

Security::UnixError *Security::RefPointer<Security::CodeSigning::DiskRep>::setPointer(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = pthread_mutex_lock((a1 + 8));
  if (v5)
  {
    Security::UnixError::throwMe(v5);
  }

  if (a2)
  {
    atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  }

  Security::RefPointer<Security::CodeSigning::DiskRep>::release_internal(a1);
  *a1 = a2;
  result = pthread_mutex_unlock(v4);
  if (result)
  {
    Security::UnixError::throwMe(result);
  }

  return result;
}

uint64_t Security::RefPointer<Security::CodeSigning::DiskRep>::release_internal(uint64_t result)
{
  if (*result && atomic_fetch_add_explicit((*result + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v1 = 0;
  }

  return result;
}

uint64_t Security::UnixPlusPlus::FileDesc::fstat(Security::UnixPlusPlus::FileDesc *this, stat *a2)
{
  result = fstat(this, a2);
  if (result)
  {
    v3 = __error();
    Security::UnixError::throwMe(*v3);
  }

  return result;
}

uint64_t Security::CodeSigning::BundleDiskRep::checkPlainFile(uint64_t a1, Security::UnixPlusPlus::FileDesc *this, uint64_t a3)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v10.st_blksize = v5;
  *v10.st_qspare = v5;
  v10.st_birthtimespec = v5;
  *&v10.st_size = v5;
  v10.st_mtimespec = v5;
  v10.st_ctimespec = v5;
  *&v10.st_uid = v5;
  v10.st_atimespec = v5;
  *v9.st_qspare = v5;
  *&v10.st_dev = v5;
  *&v9.st_size = v5;
  *&v9.st_blksize = v5;
  v9.st_ctimespec = v5;
  v9.st_birthtimespec = v5;
  v9.st_atimespec = v5;
  v9.st_mtimespec = v5;
  *&v9.st_dev = v5;
  *&v9.st_uid = v5;
  Security::UnixPlusPlus::FileDesc::fstat(this, &v10);
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  result = lstat(v6, &v9);
  if (result)
  {
    v8 = __error();
    Security::UnixError::throwMe(*v8);
  }

  if ((v10.st_mode & 0xF000) != 0x8000 || v10.st_dev != v9.st_dev || v10.st_ino != v9.st_ino)
  {
    v10.st_dev = -67015;
    return std::__tree<int>::__emplace_unique_key_args<int,int const&>(a1 + 208, -67015);
  }

  return result;
}

void Security::Universal::architecture(Security::Universal *this)
{
  if (*(this + 1))
  {
    v2 = Security::Universal::bestNativeArch(this);

    Security::Universal::findImage(this, v2, SHIDWORD(v2));
  }

  operator new();
}

void Security::CodeSigning::MachORep::format(Security::CodeSigning::MachORep *this@<X0>, void *a2@<X8>)
{
  v3 = (*(*this + 80))(this);
  if (v3)
  {
    v4 = v3;
    v25[0] = 0;
    v25[1] = 0;
    v24 = v25;
    Security::Universal::architectures(v3, &v24);
    if (*(v4 + 8))
    {
      memset(&v23, 170, sizeof(v23));
      std::string::basic_string[abi:ne200100]<0>(&v23, "Mach-O universal (");
      v5 = v24;
      if (v24 != v25)
      {
        do
        {
          if (v5 != v24)
          {
            std::string::append(&v23, " ", 1uLL);
          }

          Security::Architecture::displayName(&__p, v5 + 7);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v23, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v8 = *(v5 + 1);
          if (v8)
          {
            do
            {
              v9 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = *(v5 + 2);
              v10 = *v9 == v5;
              v5 = v9;
            }

            while (!v10);
          }

          v5 = v9;
        }

        while (v9 != v25);
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v11 = v23.__r_.__value_.__l.__size_;
      }

      memset(a2, 170, 24);
      std::string::basic_string[abi:ne200100](a2, v11 + 1);
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      if (v11)
      {
        if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v23;
        }

        else
        {
          v12 = v23.__r_.__value_.__r.__words[0];
        }

        memmove(a2, v12, v11);
      }

      *(a2 + v11) = 41;
      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      v13 = v23.__r_.__value_.__r.__words[0];
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "Mach-O thin (");
      Security::Architecture::displayName(v20, v24 + 7);
      if ((v21 & 0x80u) == 0)
      {
        v14 = v20;
      }

      else
      {
        v14 = v20[0];
      }

      if ((v21 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v20[1];
      }

      v16 = std::string::append(&__p, v14, v15);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v23.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v23.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = std::string::append(&v23, ")", 1uLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      a2[2] = *(&v18->__r_.__value_.__l + 2);
      *a2 = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v23.__r_.__value_.__l.__data_);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }

      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      v13 = __p.__r_.__value_.__r.__words[0];
    }

    operator delete(v13);
LABEL_48:
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v25[0]);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "Mach-O (unrecognized format)");
}

void sub_1887F7168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a28);
  _Unwind_Resume(a1);
}

uint64_t Security::Universal::architectures(uint64_t this, uint64_t a2)
{
  v3 = this;
  if (!*(this + 8))
  {
    Security::Universal::architecture(this);
  }

  if (*(this + 16))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      this = std::__tree<Security::Architecture>::__emplace_unique_key_args<Security::Architecture,Security::Architecture>(a2, *(*(v3 + 8) + v4));
      ++v5;
      v4 += 20;
    }

    while (v5 < *(v3 + 16));
  }

  return this;
}

uint64_t Security::MachO::MachO(uint64_t a1, unsigned int *a2, off_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  *(a1 + 36) = v6;
  *(a1 + 40) = *(a2 + 4);
  *a1 = &unk_1EFA8AC00;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  *(a1 + 104) = 0;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v54.st_blksize = v8;
    *v54.st_qspare = v8;
    v54.st_birthtimespec = v8;
    *&v54.st_size = v8;
    v54.st_mtimespec = v8;
    v54.st_ctimespec = v8;
    *&v54.st_uid = v8;
    v54.st_atimespec = v8;
    *&v54.st_dev = v8;
    Security::UnixPlusPlus::FileDesc::fstat(v6, &v54);
    *(a1 + 56) = v54.st_size;
    v7 = *(a1 + 48);
    v6 = *a2;
  }

  if (Security::UnixPlusPlus::FileDesc::read(v6, (a1 + 64), 0x1CuLL, v7) != 28)
  {
    goto LABEL_70;
  }

  Security::MachOBase::initHeader(a1, (a1 + 64));
  v9 = *(*(a1 + 8) + 20);
  v10 = bswap32(v9);
  if (*(a1 + 33))
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  v12 = malloc_type_malloc(v11, 0x100004000313F17uLL);
  *(a1 + 96) = v12;
  if (!v12)
  {
    v53 = __error();
    Security::UnixError::throwMe(*v53);
  }

  v13 = 28;
  if (*(a1 + 32))
  {
    v13 = 32;
  }

  if (Security::UnixPlusPlus::FileDesc::read(*a2, v12, v11, v13 + *(a1 + 48)) != v11)
  {
    goto LABEL_70;
  }

  Command = *(a1 + 96);
  *(a1 + 16) = Command;
  LODWORD(v15) = *(*(a1 + 8) + 20);
  v16 = bswap32(v15);
  v15 = *(a1 + 33) ? v16 : v15;
  v17 = v15 + Command;
  *(a1 + 24) = v17;
  if (Command + 8 > v17)
  {
    goto LABEL_70;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_64;
  }

  if (!Command)
  {
    goto LABEL_61;
  }

  while (1)
  {
    v18 = *Command;
    v19 = *(a1 + 33);
    v20 = bswap32(*Command);
    if (*(a1 + 33))
    {
      v18 = v20;
    }

    if (v18 == 1)
    {
      break;
    }

    if (v18 == 25)
    {
      v21 = *(Command + 4);
      v22 = bswap32(v21);
      if (*(a1 + 33))
      {
        v21 = v22;
      }

      if (v21 <= 0x47)
      {
        goto LABEL_70;
      }

      if (!strncmp((Command + 8), "__LINKEDIT", 0x10uLL))
      {
        v37 = *(Command + 40);
        v38 = *(Command + 48);
        v39 = bswap64(v37);
        if (v19)
        {
          v37 = v39;
        }

        v40 = bswap64(v38);
        if (v19)
        {
          v38 = v40;
        }

        v41 = v38 + v37;
        v42 = *(a1 + 56);
        v33 = v38 + v37 == v42;
        v43 = secLogObjForScope("macho");
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_60;
        }

        v44 = " NOT";
        if (v41 == v42)
        {
          v44 = &unk_188967DD7;
        }

        v54.st_dev = 136315138;
        *&v54.st_mode = v44;
        _os_log_debug_impl(&dword_1887D2000, v43, OS_LOG_TYPE_DEBUG, "64-bit linkedit is%s valid", &v54, 0xCu);
        if (v41 == v42)
        {
          goto LABEL_64;
        }

LABEL_61:
        v49 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v54.st_dev) = 0;
          _os_log_impl(&dword_1887D2000, v49, OS_LOG_TYPE_DEFAULT, "STRICT VALIDATION ERROR: invalid structure", &v54, 2u);
        }

        *(a1 + 104) = 1;
        goto LABEL_64;
      }
    }

    else if (v18 == 2)
    {
      v25 = *(Command + 4);
      v26 = bswap32(v25);
      if (*(a1 + 33))
      {
        v25 = v26;
      }

      if (v25 > 0x17)
      {
        v27 = *(Command + 16);
        v28 = *(Command + 20);
        v29 = bswap32(v27);
        if (*(a1 + 33))
        {
          v27 = v29;
        }

        v30 = bswap32(v28);
        if (*(a1 + 33))
        {
          v28 = v30;
        }

        v31 = v28 + v27;
        v32 = *(a1 + 56);
        v33 = v32 == v31;
        v34 = secLogObjForScope("macho");
        if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_60;
        }

        v35 = " NOT";
        if (v32 == v31)
        {
          v35 = &unk_188967DD7;
        }

        v54.st_dev = 136315138;
        *&v54.st_mode = v35;
        v36 = "symtab is%s valid";
LABEL_68:
        _os_log_debug_impl(&dword_1887D2000, v34, OS_LOG_TYPE_DEBUG, v36, &v54, 0xCu);
        if (v32 == v31)
        {
          goto LABEL_64;
        }

        goto LABEL_61;
      }

LABEL_70:
      Security::UnixError::throwMe(8);
    }

LABEL_33:
    Command = Security::MachOBase::nextCommand(a1, Command);
    if (!Command)
    {
      goto LABEL_61;
    }
  }

  v23 = *(Command + 4);
  v24 = bswap32(v23);
  if (*(a1 + 33))
  {
    v23 = v24;
  }

  if (v23 <= 0x37)
  {
    goto LABEL_70;
  }

  if (strncmp((Command + 8), "__LINKEDIT", 0x10uLL))
  {
    goto LABEL_33;
  }

  v45 = *(Command + 32);
  v46 = *(Command + 36);
  v47 = bswap32(v45);
  if (v19)
  {
    v45 = v47;
  }

  v48 = bswap32(v46);
  if (v19)
  {
    v46 = v48;
  }

  v31 = v46 + v45;
  v32 = *(a1 + 56);
  v33 = v32 == v31;
  v34 = secLogObjForScope("macho");
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v52 = " NOT";
    if (v32 == v31)
    {
      v52 = &unk_188967DD7;
    }

    v54.st_dev = 136315138;
    *&v54.st_mode = v52;
    v36 = "32-bit linkedit is%s valid";
    goto LABEL_68;
  }

LABEL_60:
  if (!v33)
  {
    goto LABEL_61;
  }

LABEL_64:
  v50 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t Security::MachOBase::initHeader(uint64_t this, const mach_header *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *(this + 8) = a2;
  magic = a2->magic;
  if (a2->magic > -17958195)
  {
    if (magic == -17958194)
    {
      v3 = 0;
      v4 = 0;
      goto LABEL_11;
    }

    if (magic == -17958193)
    {
      v3 = 0;
      goto LABEL_8;
    }

LABEL_12:
    v8 = this;
    v6 = secLogObjForScope("macho");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = **(v8 + 8);
      *buf = 134218240;
      v10 = v8;
      v11 = 1024;
      v12 = v7;
      _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "%p: unrecognized header magic (%x)", buf, 0x12u);
    }

    Security::UnixError::throwMe(8);
  }

  if (magic == -822415874)
  {
    v4 = 0;
    v3 = 1;
    goto LABEL_11;
  }

  if (magic != -805638658)
  {
    goto LABEL_12;
  }

  v3 = 1;
LABEL_8:
  v4 = 1;
LABEL_11:
  *(this + 33) = v3;
  *(this + 32) = v4;
  v5 = *MEMORY[0x1E69E9840];
  return this;
}

unint64_t Security::MachOBase::nextCommand(Security::MachOBase *this, const load_command *a2)
{
  cmdsize = a2->cmdsize;
  v3 = *(this + 33);
  v4 = bswap32(cmdsize);
  if (*(this + 33))
  {
    cmdsize = v4;
  }

  if (!cmdsize)
  {
LABEL_10:
    Security::UnixError::throwMe(8);
  }

  result = a2 + cmdsize;
  v7 = *(this + 3);
  if (v7 <= result)
  {
    return 0;
  }

  if (v7 < result + 8)
  {
    goto LABEL_10;
  }

  v8 = *(result + 4);
  v9 = bswap32(v8);
  v10 = v3 ? v9 : v8;
  if (v7 < result + v10)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t std::__tree<Security::Architecture>::__emplace_unique_key_args<Security::Architecture,Security::Architecture>(uint64_t result, unint64_t a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_25:
    operator new();
  }

  v3 = HIDWORD(a2);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      v7 = v3 != HIDWORD(v5) && SHIDWORD(a2) < SHIDWORD(v5);
      if (a2 != v5)
      {
        v7 = a2 < v5;
      }

      if (!v7)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_25;
      }
    }

    v8 = v3 != HIDWORD(v5) && SHIDWORD(v5) < SHIDWORD(a2);
    v9 = v8;
    v10 = a2 == v5 ? v9 : v5 < a2;
    if (v10 != 1)
    {
      return result;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_25;
    }
  }
}

void Security::MachO::~MachO(void **this)
{
  *this = &unk_1EFA8AC00;
  free(this[12]);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8AC00;
  free(this[12]);
}

_BYTE *Security::Architecture::displayName(Security::Architecture *this, cpu_type_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = NXGetArchInfoFromCpuType(*a2, a2[1] & 0xFFFFFF);
  if (v4 && (name = v4->name) != 0)
  {
    v6 = *MEMORY[0x1E69E9840];

    return std::string::basic_string[abi:ne200100]<0>(this, name);
  }

  else
  {
    memset(__str, 170, 20);
    snprintf(__str, 0x14uLL, "(%d:%d)", *a2, a2[1] & 0xFFFFFF);
    result = std::string::basic_string[abi:ne200100]<0>(this, __str);
    v8 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

BOOL Security::UnixPlusPlus::FileDesc::hasExtendedAttribute(Security::UnixPlusPlus::FileDesc *this, const char *a2)
{
  v2 = fgetxattr(this, a2, 0, 0, 0, 0);
  if (v2 != -1)
  {
    return v2 != 0;
  }

  v4 = __error();
  result = 0;
  v5 = *v4;
  if (v5 != 1 && v5 != 93)
  {
    v6 = __error();
    Security::UnixError::throwMe(*v6);
  }

  return result;
}

const void **Security::CFRef<__CFBundle *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

Security::CodeSigning::SecStaticCode *Security::CodeSigning::SecStaticCode::SecStaticCode(Security::CodeSigning::SecStaticCode *this, atomic_uint *a2, int a3)
{
  *(this + 1) = 1;
  *this = &unk_1EFA8B9C0;
  *(this + 2) = 0;
  Security::Mutex::Mutex((this + 40));
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  *(this + 14) = 0;
  *(this + 4) = a2;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 13) = this + 112;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 18) = this + 152;
  *(this + 176) = 0;
  *(this + 185) = 0;
  *(this + 192) = 0;
  *(this + 25) = 0;
  *(this + 28) = &unk_1EFA8A950;
  Security::Mutex::Mutex((this + 232));
  *(this + 296) = 0;
  *(this + 38) = 0;
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v7 = dispatch_queue_create("com.apple.security.validation-progress", v6);
  *(this + 360) = 0u;
  *(this + 39) = v7;
  *(this + 40) = 0;
  *(this + 328) = 0u;
  *(this + 43) = this + 352;
  *(this + 44) = 0;
  *(this + 63) = 0;
  *(this + 512) = 0;
  *(this + 71) = 0;
  *(this + 576) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 481) = 0u;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 69) = 0;
  *(this + 75) = 0;
  *(this + 584) = 0u;
  *(this + 152) = a3;
  *(this + 306) = 0;
  *(this + 77) = 0x7FF8000000000000;
  *(this + 624) = 1;
  *(this + 163) = 0;
  *(this + 82) = 0;
  *(this + 632) = 0u;
  *(this + 648) = 0;
  return this;
}

void sub_1887F8030(_Unwind_Exception *a1)
{
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 656));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 640));
  Security::CFRef<__SecTrust *>::~CFRef(v5);
  Security::CFRef<__CFURL const*>::~CFRef(v7);
  Security::CFRef<__CFData const*>::~CFRef((v1 + 568));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 552));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 544));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 536));
  Security::CFRef<__CFDictionary const*>::~CFRef(v6);
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 504));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 488));
  v10 = (v1 + 480);
  v11 = -96;
  do
  {
    v10 = Security::CFRef<__CFData const*>::~CFRef(v10) - 1;
    v11 += 8;
  }

  while (v11);
  Security::CFRef<__CFData const*>::~CFRef((v1 + 368));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*v8);
  Security::CFRef<__CFData const*>::~CFRef((v1 + 336));
  Security::Dispatch::Queue::~Queue(v4);
  Security::CFRef<__CFArray const*>::~CFRef(v3);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v1 + 152));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 136));
  Security::CFRef<__CFData const*>::~CFRef(v2);
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(v1 + 112));
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(v1 + 32);
  _Unwind_Resume(a1);
}

const void *Security::SecCFObject::handle(atomic_uchar *this, int a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = (*(*this + 16))(this);
  v6 = v5;
  if (a2 && (atomic_exchange(this - 8, 1u) & 1) != 0)
  {
    CFRetain(v5);
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

void sub_1887F98FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, char a57)
{
  if (a2)
  {
    if (v58)
    {
      operator delete(v58);
    }

    if (v57)
    {
      operator delete(v57);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1887F8E44);
  }

  _Unwind_Resume(exception_object);
}

Security::SecPointerBase *Security::SecPointerBase::SecPointerBase(Security::SecPointerBase *this, atomic_uchar *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a2 && (atomic_exchange(a2 - 8, 1u) & 1) != 0)
  {
    v5 = (*(*a2 + 16))(a2);
    CFRetain(v5);
  }

  *this = a2;
  objc_autoreleasePoolPop(v4);
  return this;
}

const UInt8 *Security::CodeSigning::SecStaticCode::codeDirectory(Security::CodeSigning::SecStaticCode *this, int a2)
{
  v3 = *(this + 42);
  if (v3)
  {
    goto LABEL_23;
  }

  v5 = Security::CodeSigning::SecStaticCode::codeDirectories(this, a2);
  if (v5)
  {
    v6 = &Security::CodeSigning::hashPriorities;
    v7 = 4;
    while (1)
    {
      if (*(this + 44))
      {
        v8 = (this + 352);
        v9 = *(this + 44);
        do
        {
          v10 = v9[7];
          v11 = v10 >= v7;
          v12 = v10 < v7;
          if (v11)
          {
            v8 = v9;
          }

          v9 = *&v9[2 * v12];
        }

        while (v9);
        if (v8 != (this + 352) && v7 >= v8[7])
        {
          break;
        }
      }

      v13 = v6[1];
      ++v6;
      v7 = v13;
      if (!v13)
      {
        Security::MacOSError::throwMe(0xFFFEFA48);
      }
    }

    v14 = v5[1];
    if (!v14)
    {
LABEL_20:
      std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
    }

    while (1)
    {
      while (1)
      {
        v15 = *(v14 + 8);
        if (v7 >= v15)
        {
          break;
        }

        v14 = *v14;
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (v15 >= v7)
      {
        break;
      }

      v14 = v14[1];
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    Security::CFRef<__CFURL const*>::operator=(this + 42, v14 + 5);
  }

  v3 = *(this + 42);
  if (v3)
  {
LABEL_23:

    return CFDataGetBytePtr(v3);
  }

  else
  {
    if (a2)
    {
      Security::MacOSError::throwMe(0xFFFEFA0ALL);
    }

    return 0;
  }
}

void sub_1887FA2D4(void *a1)
{
  __cxa_begin_catch(a1);
  if (!v2)
  {
    if (!*(v1 + 336))
    {
      __cxa_end_catch();
      if (!*(v1 + 336))
      {
        JUMPOUT(0x1887FA2B8);
      }

      JUMPOUT(0x1887FA298);
    }

    Security::Syslog::warning("code signing internal problem: mDir set despite exception exit", v3);
    Security::MacOSError::throwMe(0xFFFEFA18);
  }

  __cxa_rethrow();
}

uint64_t ___ZNK8Security11CodeSigning13SecStaticCode19loadCodeDirectoriesERNSt3__13mapIjNS_9CFCopyRefIPK8__CFDataEENS2_4lessIjEENS2_9allocatorINS2_4pairIKjS8_EEEEEE_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = (*(**(*(a1 + 56) + 32) + 24))(*(*(a1 + 56) + 32));
  *&v47[1] = v2;
  if (v2)
  {
    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(*&v47[1]);
    v47[0] = -67061;
    if (Length < 0x60)
    {
      goto LABEL_42;
    }

    if (*BytePtr != 34397946 || (v5 = bswap32(*(BytePtr + 1)), v5 <= 0x5F))
    {
      *__error() = 22;
      goto LABEL_42;
    }

    if (Length != v5)
    {
      goto LABEL_42;
    }

    v6 = *(BytePtr + 2);
    v7 = bswap32(v6);
    if (v7 - 192513 < 0xFFFF1000)
    {
      v47[0] = -67059;
      goto LABEL_42;
    }

    if (v7 > 0x20500)
    {
      v8 = secLogObjForScope("codedir");
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
      v6 = *(BytePtr + 2);
      if (v9)
      {
        *buf = 134218496;
        *&buf[4] = BytePtr;
        *&buf[12] = 1024;
        *&buf[14] = bswap32(v6);
        *&buf[18] = 1024;
        *&buf[20] = 132352;
        _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "%p version 0x%x newer than current 0x%x", buf, 0x18u);
        v6 = *(BytePtr + 2);
      }
    }

    v10 = bswap32(v6);
    v11 = v10 > 0x204FF && *(BytePtr + 23) != 0;
    v12 = bswap32(*(BytePtr + 5));
    v13 = bswap32(*(BytePtr + 1));
    if (v13 > v12)
    {
      v14 = &BytePtr[v12];
      if (memchr(v14, 0, v13 - v12) && v14 != 0)
      {
        if (v10 <= 0x201FF || (v16 = *(BytePtr + 12)) == 0 || (v17 = bswap32(v16), v13 > v17) && ((v18 = &BytePtr[v17], memchr(v18, 0, v13 - v17)) ? (v19 = v18 == 0) : (v19 = 1), !v19))
        {
          v20 = bswap32(*(BytePtr + 4));
          v21 = BytePtr[36];
          v22 = bswap32(*(BytePtr + 6));
          v23 = v20 - v21 * v22;
          v24 = bswap32(*(BytePtr + 7));
          if (v23 >= 8 && v23 + (v24 + v22) * v21 <= v13)
          {
            if (!v11 || ((v26 = bswap32(*(BytePtr + 23)), v27 = v26 >= 8, v28 = v24 * v21 + v26, v27) ? (v29 = v28 > v13) : (v29 = 1), !v29))
            {
              if (v10 <= 0x200FF)
              {
                goto LABEL_57;
              }

              v30 = *(BytePtr + 11);
              if (!v30)
              {
                goto LABEL_69;
              }

              v31 = bswap32(v30);
              v32 = &BytePtr[v31];
              if (!&BytePtr[v31])
              {
                goto LABEL_69;
              }

              if (v31 >= 8)
              {
                v33 = 0;
                v34 = v31;
                while (1)
                {
                  if (v31 + 24 > v13)
                  {
                    goto LABEL_42;
                  }

                  if (!*v32)
                  {
                    break;
                  }

                  v33 += bswap32(*v32);
                  v32 += 6;
                  v31 = v32 - BytePtr;
                  v34 += 24;
                  if (v34 <= 7)
                  {
                    goto LABEL_42;
                  }
                }

                v35 = (v33 - 1) * v21;
                v36 = v20 + v35;
                if (v36 >= 8 && v36 + v21 <= v13)
                {
                  if (!v11 || (v10 <= 0x204FF || (v38 = *(BytePtr + 23)) == 0 ? (v39 = 0) : (v39 = &BytePtr[v35 + bswap32(v38)]), (v40 = v39 - BytePtr, v40 >= 8) && v40 + v21 <= v13))
                  {
LABEL_69:
                    if (v10 > 0x202FF)
                    {
                      v41 = *(BytePtr + 7);
                      if (v41)
                      {
                        v42 = bswap64(v41);
                        goto LABEL_58;
                      }
                    }

LABEL_57:
                    v42 = bswap32(*(BytePtr + 8));
LABEL_58:
                    if (BytePtr[39])
                    {
                      if (!v42 || ((v42 - 1) >> BytePtr[39]) + 1 != v24)
                      {
                        goto LABEL_42;
                      }
                    }

                    else if (v24 != (v42 != 0))
                    {
                      goto LABEL_42;
                    }

                    v43 = *(*(a1 + 32) + 8);
                    v44 = BytePtr[37];
                    memset(buf, 170, sizeof(buf));
                    operator new();
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_42:
    Security::MacOSError::throwMe(v47[0]);
  }

  Security::CFRef<__CFData const*>::~CFRef(&v47[1]);
  v45 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1887FA81C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFDataRef Security::CodeSigning::BundleDiskRep::component(Security::CodeSigning::BundleDiskRep *this, Security::CodeSigning::CodeDirectory *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a2;
  if (a2 != 3)
  {
    if (a2 == 1)
    {
      v4 = *(this + 3);
      v5 = _CFBundleCopyInfoPlistURL();
      v19 = v5;
      if (v5)
      {
        v6 = v5;
        memset(__p, 170, sizeof(__p));
        Security::cfString(__p, v5);
        v21 = 0xAAAAAAAAFFFFFFFFLL;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        Security::UnixPlusPlus::FileDesc::open(&v21, v7, 0, 438);
        v8 = v21;
        Security::CodeSigning::BundleDiskRep::checkPlainFile(this, v21, __p);
        v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
        v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
        *&v23.st_blksize = v9;
        *v23.st_qspare = v9;
        v23.st_birthtimespec = v9;
        *&v23.st_size = v9;
        v23.st_mtimespec = v9;
        v23.st_ctimespec = v9;
        *&v23.st_uid = v9;
        v23.st_atimespec = v9;
        *&v23.st_dev = v9;
        Security::UnixPlusPlus::FileDesc::fstat(v8, &v23);
        v10 = Security::cfMapFile(v8, v23.st_size);
        if (!v10)
        {
          v17 = secLogObjForScope("bundlediskrep");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            Security::cfString(&v23, v6);
            if ((v23.st_gid & 0x80000000) == 0)
            {
              v18 = &v23;
            }

            else
            {
              v18 = *&v23.st_dev;
            }

            *buf = 136315138;
            v25 = v18;
            _os_log_debug_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEBUG, "failed to load %s", buf, 0xCu);
            if (SHIBYTE(v23.st_gid) < 0)
            {
              operator delete(*&v23.st_dev);
            }
          }

          Security::MacOSError::throwMe(0xFFFEFA45);
        }

        Security::UnixPlusPlus::FileDesc::closeAndLog(&v21);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v10 = 0;
      }

      Security::CFRef<__CFURL const*>::~CFRef(&v19);
      goto LABEL_32;
    }

    v14 = (*(**(this + 13) + 24))(*(this + 13), a2);
    *&v23.st_dev = v14;
    if (v14)
    {
      v10 = v14;
      if (*(this + 177))
      {
        if ((*(this + 176) & 1) == 0)
        {
          Security::MacOSError::throwMe(0xFFFEFA0BLL);
        }
      }

      else
      {
        *(this + 88) = 257;
      }

LABEL_31:
      *&v23.st_dev = 0;
      Security::CFRef<__CFData const*>::~CFRef(&v23);
      goto LABEL_32;
    }

    Security::CFRef<__CFData const*>::~CFRef(&v23);
    *&v23.st_dev = 0xAAAAAAAAAAAAAAAALL;
    v15 = Security::CodeSigning::CodeDirectory::canonicalSlotName(a2);
    if (v15)
    {
      *&v23.st_dev = Security::CodeSigning::BundleDiskRep::metaData(this, v15);
      if (*&v23.st_dev)
      {
        if (*(this + 177))
        {
          if (*(this + 176))
          {
            Security::MacOSError::throwMe(0xFFFEFA0BLL);
          }
        }

        else
        {
          *(this + 88) = 256;
        }

        std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(this + 184, a2);
        v10 = *&v23.st_dev;
        goto LABEL_31;
      }
    }

    else
    {
      *&v23.st_dev = 0;
    }

    Security::CFRef<__CFData const*>::~CFRef(&v23);
LABEL_28:
    v10 = 0;
LABEL_32:
    v16 = *MEMORY[0x1E69E9840];
    return v10;
  }

  std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(this + 184, 3u);
  v11 = Security::CodeSigning::CodeDirectory::canonicalSlotName(3);
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = *MEMORY[0x1E69E9840];

  return Security::CodeSigning::BundleDiskRep::metaData(this, v11);
}

CFDataRef Security::CodeSigning::MachORep::component(Security::CodeSigning::MachORep *this, Security::CodeSigning::EmbeddedSignatureBlob *a2)
{
  if (a2 == 1)
  {

    Security::CodeSigning::MachORep::infoPlist(this);
  }

  result = Security::CodeSigning::MachORep::signingData(this);
  if (result)
  {
    v5 = Security::CodeSigning::MachORep::signingData(this);

    return Security::CodeSigning::EmbeddedSignatureBlob::component(v5, a2, v6);
  }

  return result;
}

const load_command *Security::MachOBase::findCommand(Security::MachOBase *this, int a2)
{
  for (i = *(this + 2); i; i = Security::MachOBase::nextCommand(this, i))
  {
    cmd = i->cmd;
    v6 = bswap32(i->cmd);
    if (*(this + 33))
    {
      cmd = v6;
    }

    if (cmd == a2)
    {
      break;
    }
  }

  return i;
}

const load_command *Security::MachOBase::findCodeSignature(Security::MachOBase *this)
{
  result = Security::MachOBase::findCommand(this, 29);
  if (result)
  {
    cmdsize = result->cmdsize;
    v4 = bswap32(cmdsize);
    if (*(this + 33))
    {
      cmdsize = v4;
    }

    if (cmdsize <= 0xF)
    {
      Security::UnixError::throwMe(8);
    }
  }

  return result;
}

void *Security::CFCopyRef<__CFData const*>::CFCopyRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      Security::CFRef<__CFData const*>::~CFRef(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

CFMutableDictionaryRef Security::makeCFMutableDictionary(Security *this)
{
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!result)
  {
    Security::CFError::throwMe(0);
  }

  return result;
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void __KCSharingLogObject_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("kcsharing-logger", v2);
  v1 = KCSharingLogObject_logQueue;
  KCSharingLogObject_logQueue = v0;
}

void Security::MacOSError::throwMe(Security::MacOSError *this)
{
  v1 = this;
  exception = __cxa_allocate_exception(0x98uLL);
  Security::MacOSError::MacOSError(exception, v1);
}

id KCSharingSetupServerProtocol(void *a1)
{
  v8[11] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = +[SecXPCHelper safeErrorClasses];
  v3 = MEMORY[0x1E695DFD8];
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v8[4] = objc_opt_class();
  v8[5] = objc_opt_class();
  v8[6] = objc_opt_class();
  v8[7] = objc_opt_class();
  v8[8] = objc_opt_class();
  v8[9] = objc_opt_class();
  v8[10] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:11];
  v5 = [v3 setWithArray:v4];

  [v1 setClasses:v2 forSelector:sel_provisionWithReply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_setChangeTrackingEnabled_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_fetchRemoteChangesWithReply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_saveLocalChangesWithReply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_getGroupByGroupID_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_wipe_reply_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_getGroupsWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_getGroupsWithRequest_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_createGroupWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_createGroupWithRequest_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_updateGroupWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_updateGroupWithRequest_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_leaveGroupWithRequest_completion_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v2 forSelector:sel_leaveGroupWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_deleteGroupWithRequest_completion_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v2 forSelector:sel_deleteGroupWithRequest_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_acceptInviteForGroupID_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_declineInviteForGroupID_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v5 forSelector:sel_checkAvailabilityForHandles_completion_ argumentIndex:0 ofReply:0];
  [v1 setClasses:v5 forSelector:sel_checkAvailabilityForHandles_completion_ argumentIndex:0 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_checkAvailabilityForHandles_completion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_verifyGroupsInSyncWithCompletion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_verifyGroupsInSyncAndResyncMissingGroupsWithCompletion_ argumentIndex:1 ofReply:1];
  [v1 setClasses:v2 forSelector:sel_performMaintenanceWithCompletion_ argumentIndex:0 ofReply:1];

  v6 = *MEMORY[0x1E69E9840];

  return v1;
}

CFErrorRef SecCreateCFErrorWithXPCObject(void *a1)
{
  v20 = 0;
  if (MEMORY[0x18CFDC200]() != MEMORY[0x1E69E9E80])
  {
    SecCFCreateErrorWithFormat(1, sSecXPCErrorDomain, 0, &v20, v2, @"Remote error not dictionary!: %@", v3, v4, a1);
    return v20;
  }

  string = xpc_dictionary_get_string(a1, "domain");
  v7 = MEMORY[0x1E695E480];
  if (string)
  {
    v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
  }

  else
  {
    v8 = sSecXPCErrorDomain;
    CFRetain(sSecXPCErrorDomain);
  }

  int64 = xpc_dictionary_get_int64(a1, "code");
  length = 0;
  cf = 0;
  data = xpc_dictionary_get_data(a1, "userinfo", &length);
  if (data)
  {
    v14 = data + length;
    v15 = der_decode_plist(*v7, &cf, 0, data, data + length, v11, v12, v13);
    v16 = cf;
    if (v15 == v14)
    {
      v5 = CFErrorCreate(0, v8, int64, cf);
      if (v16)
      {
        CFRelease(v16);
      }

      goto LABEL_11;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  v5 = CFErrorCreate(0, v8, int64, 0);
LABEL_11:
  if (v8)
  {
    CFRelease(v8);
  }

  return v5;
}

id KCSharingLogObject(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__4506;
  v20 = __Block_byref_object_dispose__4507;
  v5 = MEMORY[0x1E69E9C18];
  v6 = MEMORY[0x1E69E9C18];
  v21 = v5;
  if (KCSharingLogObject_onceToken != -1)
  {
    dispatch_once(&KCSharingLogObject_onceToken, &__block_literal_global_4508);
  }

  v7 = KCSharingLogObject_logQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __KCSharingLogObject_block_invoke_2;
  block[3] = &unk_1E70D6AC0;
  v13 = v4;
  v14 = v3;
  v15 = &v16;
  v8 = v3;
  v9 = v4;
  dispatch_sync(v7, block);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __KCSharingLogObject_block_invoke_2(void *a1)
{
  if (!KCSharingLogObject_scopeMap)
  {
    v2 = [MEMORY[0x1E695DF90] dictionary];
    v3 = KCSharingLogObject_scopeMap;
    KCSharingLogObject_scopeMap = v2;
  }

  v4 = a1[5];
  if (a1[4])
  {
    v5 = [v4 stringByAppendingFormat:@"-%@", a1[4]];
  }

  else
  {
    v5 = v4;
  }

  v13 = v5;
  v6 = [KCSharingLogObject_scopeMap objectForKeyedSubscript:v5];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (!*(*(a1[6] + 8) + 40))
  {
    v9 = v13;
    v10 = os_log_create("com.apple.security.keychain.sharing", [v13 cStringUsingEncoding:4]);
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    [KCSharingLogObject_scopeMap setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:v13];
  }
}

void sec_protocol_options_add_tls_application_protocol(sec_protocol_options_t options, const char *application_protocol)
{
  if (options)
  {
    if (application_protocol)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_add_tls_application_protocol_block_invoke;
      v2[3] = &__block_descriptor_tmp_26;
      v2[4] = application_protocol;
      sec_protocol_options_access_handle(options, v2);
    }
  }
}

BOOL __sec_protocol_options_add_tls_application_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 48);
    if (!v4)
    {
      v4 = xpc_array_create(0, 0);
      *(a2 + 48) = v4;
    }

    xpc_array_set_string(v4, 0xFFFFFFFFFFFFFFFFLL, *(a1 + 32));
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_server_raw_public_key_certificates(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_server_raw_public_key_certificates_block_invoke;
      v2[3] = &__block_descriptor_tmp_164;
      v2[4] = a2;
      return sec_protocol_options_access_handle(result, v2);
    }
  }

  return result;
}

CFMutableArrayRef __sec_protocol_options_set_server_raw_public_key_certificates_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 280);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 280) = 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Count = CFArrayGetCount(*(a1 + 32));
  result = CFArrayCreateMutable(v5, Count, MEMORY[0x1E695E9C0]);
  if (result)
  {
    v8 = result;
    for (i = 0; i < CFArrayGetCount(*(a1 + 32)); ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), i);
      CFArrayAppendValue(v8, ValueAtIndex);
    }

    *(a2 + 280) = v8;
    return 1;
  }

  return result;
}

uint64_t sec_protocol_metadata_copy_quic_transport_parameters(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_copy_quic_transport_parameters_block_invoke;
  v3[3] = &unk_1E70D62A8;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_quic_transport_parameters_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 152);
    if (v3)
    {
      *(*(*(a1 + 32) + 8) + 24) = v3;
      dispatch_retain(*(*(*(a1 + 32) + 8) + 24));
    }
  }

  return a2 != 0;
}

BOOL sec_protocol_metadata_get_early_data_accepted(sec_protocol_metadata_t metadata)
{
  if (metadata)
  {
    LOBYTE(metadata) = sec_protocol_metadata_access_handle(metadata, &__block_literal_global_111);
  }

  return metadata;
}

uint64_t sec_protocol_metadata_copy_serialized_session(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_copy_serialized_session_block_invoke;
  v3[3] = &unk_1E70D6170;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_serialized_session_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 24);
    if (v3)
    {
      if (*(a2 + 16))
      {
        *(*(*(a1 + 32) + 8) + 24) = v3();
      }
    }
  }

  return a2 != 0;
}

uint64_t __sec_protocol_metadata_get_early_data_accepted_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(a2 + 336) >> 3) & 1;
  }

  else
  {
    return 0;
  }
}

void sec_protocol_options_set_peer_authentication_required(sec_protocol_options_t options, BOOL peer_authentication_required)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_peer_authentication_required_block_invoke;
    v2[3] = &__block_descriptor_tmp_50;
    v3 = peer_authentication_required;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_peer_authentication_required_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFBFFFFFF | (*(a1 + 32) << 26) | 0x10000000;
  }

  return a2 != 0;
}

uint64_t sec_protocol_helper_ciphersuite_group_to_ciphersuite_list(unsigned int a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 > 4)
  {
    v2 = 0;
    result = 0;
  }

  else
  {
    v2 = qword_18895ED40[a1];
    result = *(&off_1E70D6910 + a1);
  }

  *a2 = v2;
  return result;
}

__CFData *_SecItemCreateUUIDBasedPersistentRef(const __CFString *a1, CFDataRef theData, const __CFDictionary *a3)
{
  if (a3)
  {
    TokenPersistentRefData = CreateTokenPersistentRefData(a1, a3);
    if (TokenPersistentRefData)
    {
      v6 = TokenPersistentRefData;
      v7 = *MEMORY[0x1E695E480];
      Length = CFDataGetLength(TokenPersistentRefData);
      Mutable = CFDataCreateMutable(v7, Length + 4);
      CFDataAppendBytes(Mutable, "tkpr", 4);
      BytePtr = CFDataGetBytePtr(v6);
      v11 = CFDataGetLength(v6);
      CFDataAppendBytes(Mutable, BytePtr, v11);
LABEL_14:
      CFRelease(v6);
      return Mutable;
    }
  }

  if (!theData)
  {
    return 0;
  }

  v12 = CFDataGetLength(theData);
  Mutable = 0;
  if (!a1 || v12 != 16)
  {
    return Mutable;
  }

  v13 = CFGetTypeID(a1);
  if (v13 != CFStringGetTypeID() || CFStringGetLength(a1) < 1)
  {
    return 0;
  }

  v14 = *MEMORY[0x1E695E480];
  v6 = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v15 = CFGetTypeID(a1);
  Mutable = 0;
  if (v15 == CFStringGetTypeID())
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___SecItemCreateUUIDBasedPersistentRef_block_invoke;
    v23[3] = &__block_descriptor_40_e19_v16__0____CFData__8l;
    v23[4] = v6;
    maxBufLen = 0;
    v16 = CFStringGetLength(a1);
    v26.location = 0;
    v26.length = v16;
    CFStringGetBytes(a1, v26, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    v17 = maxBufLen;
    v18 = CFDataCreateMutable(v14, 0);
    CFDataSetLength(v18, v17);
    usedBufLen = 0xAAAAAAAAAAAAAAAALL;
    MutableBytePtr = CFDataGetMutableBytePtr(v18);
    v27.location = 0;
    v27.length = v16;
    CFStringGetBytes(a1, v27, 0x8000100u, 0, 0, MutableBytePtr, maxBufLen, &usedBufLen);
    ___SecItemCreateUUIDBasedPersistentRef_block_invoke(v23, v18);
    if (v18)
    {
      CFRelease(v18);
    }

    v20 = CFDataGetBytePtr(theData);
    v21 = CFDataGetLength(theData);
    CFDataAppendBytes(v6, v20, v21);
    Mutable = CFDataCreateCopy(v14, v6);
  }

  if (v6)
  {
    goto LABEL_14;
  }

  return Mutable;
}

__CFData *CreateTokenPersistentRefData(const void *a1, CFDictionaryRef theDict)
{
  if (CFDictionaryGetValue(theDict, @"toid"))
  {
    Value = CFDictionaryGetValue(theDict, @"tkid");
    if (Value)
    {
      v5 = CFGetTypeID(Value);
      v13 = 0;
      DERData = 0;
      if (v5 != CFStringGetTypeID())
      {
        return DERData;
      }

      goto LABEL_4;
    }

    return 0;
  }

  if (CFEqual(a1, @"idnt"))
  {
    v21 = CFDictionaryGetValue(theDict, @"certtkid");
    if (!v21)
    {
      return 0;
    }

    v22 = CFGetTypeID(v21);
    if (v22 != CFStringGetTypeID())
    {
      return 0;
    }

    v23 = @"certdata";
  }

  else
  {
    v24 = CFDictionaryGetValue(theDict, @"tkid");
    if (!v24)
    {
      return 0;
    }

    v25 = CFGetTypeID(v24);
    if (v25 != CFStringGetTypeID())
    {
      return 0;
    }

    v23 = @"v_Data";
  }

  v26 = CFDictionaryGetValue(theDict, v23);
  if (!v26)
  {
    return 0;
  }

  v27 = v26;
  v28 = CFGetTypeID(v26);
  if (v28 != CFDataGetTypeID())
  {
    return 0;
  }

  v29 = SecTokenItemValueCopy(v27, 0);
  if (!v29)
  {
    return 0;
  }

  v13 = v29;
  v30 = CFDictionaryGetValue(v29, @"oid");
  if (!v30 || (v31 = CFGetTypeID(v30), v31 != CFDataGetTypeID()))
  {
    DERData = 0;
    goto LABEL_5;
  }

LABEL_4:
  v15 = CFArrayCreateForCFTypes(*MEMORY[0x1E695E480], v6, v7, v8, v9, v10, v11, v12, a1);
  DERData = CFPropertyListCreateDERData(v15, v15, 0, v16, v17, v18, v19, v20);
  CFRelease(v15);
  if (v13)
  {
LABEL_5:
    CFRelease(v13);
  }

  return DERData;
}

uint64_t __SecAccessControlGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

BOOL __SecItemAdd_block_invoke(uint64_t a1, __CFString **a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SecItemAdd_block_invoke_2;
  v4[3] = &__block_descriptor_40_e105_B48__0__TKClientTokenSession_8____CFDictionary__16____CFDictionary__24____CFDictionary__32_____CFError_40l;
  v4[4] = *(a1 + 40);
  return SecItemAuthDoQuery((v2 + 32), 0, SecItemAdd, a2, v4);
}

uint64_t __SecItemAdd_block_invoke_2(uint64_t a1, void *a2, const __CFDictionary *a3, uint64_t a4, const __CFDictionary *a5, CFErrorRef *a6)
{
  v10 = a2;
  v11 = v10;
  if (v10)
  {
    v12 = *(a1 + 32);
    v13 = v10;
    cf = 0;
    v32 = 0;
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a3);
    CFDictionarySetValue(MutableCopy, @"pdmn", @"dk");
    Value = CFDictionaryGetValue(MutableCopy, @"toid");
    if (Value)
    {
      v16 = Value;
      CFRetain(Value);
      CFDictionaryRemoveValue(MutableCopy, @"toid");
      v17 = SecTokenCopyUpdatedObjectID(v13, v16, MutableCopy, a6);
      CFRelease(v16);
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"toid");
      v17 = SecTokenCopyUpdatedObjectID(v13, 0, MutableCopy, a6);
      if (v17)
      {
LABEL_4:
        CFDictionaryRemoveValue(MutableCopy, @"toid");
        if (CFDictionaryContainsKey(MutableCopy, @"v_Ref"))
        {
          CFDictionaryRemoveValue(MutableCopy, @"v_Ref");
        }

        else
        {
          if (!SecTokenItemCreateFromAttributes(MutableCopy, a5, v13, v17, &v32, a6))
          {
            v18 = 0;
            goto LABEL_47;
          }

          if (v32)
          {
            v28 = SecItemCopyAttributeDictionary(v32, 0);
            v18 = v28;
            if (v28)
            {
              context[0] = MEMORY[0x1E69E9820];
              context[1] = 3221225472;
              context[2] = __SecTokenItemAdd_block_invoke;
              context[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
              context[4] = MutableCopy;
              CFDictionaryApplyFunction(v28, apply_block_2_10426, context);
            }

            goto LABEL_7;
          }
        }

        v18 = 0;
LABEL_7:
        v19 = *MEMORY[0x1E695E4D0];
        CFDictionarySetValue(MutableCopy, @"r_Attributes", *MEMORY[0x1E695E4D0]);
        CFDictionarySetValue(MutableCopy, @"r_Data", v19);
        v20 = CFDictionaryGetValue(MutableCopy, @"perm");
        v21 = *MEMORY[0x1E695E4C0];
        if (v20 && v21)
        {
          if (CFEqual(v20, v21))
          {
LABEL_10:
            cf = CFRetain(MutableCopy);
LABEL_32:
            v24 = SecItemResultProcess(a3, a5, v13, cf, v12, a6);
LABEL_33:
            v27 = v17;
            goto LABEL_34;
          }
        }

        else if (v20 == v21)
        {
          goto LABEL_10;
        }

        if (gSecurityd && (v25 = *gSecurityd) != 0)
        {
          v26 = SecSecurityClientGet();
          if (v25(MutableCopy, v26, &cf, a6))
          {
            goto LABEL_32;
          }
        }

        else
        {
          SecSecurityClientGet();
          if (cftype_to_BOOL_cftype_error_request(0, MutableCopy, &cf, a6))
          {
            goto LABEL_32;
          }
        }

LABEL_47:
        v24 = 0;
        goto LABEL_33;
      }
    }

    v27 = 0;
    v18 = 0;
    v24 = 0;
LABEL_34:
    if (cf)
    {
      CFRelease(cf);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (v17)
    {
      CFRelease(v27);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    goto LABEL_45;
  }

  context[0] = 0;
  logUnreasonableDataLength(a3);
  if ((isModifyingAPIRateWithinLimits() & 1) == 0)
  {
    __security_simulatecrash(@"BUG IN CLIENT OF SECITEM: too many writes. See https://at.apple.com/secitemratelimit", 1405091855);
  }

  if (gSecurityd && (v22 = *gSecurityd) != 0)
  {
    v23 = SecSecurityClientGet();
    if ((v22(a3, v23, context, a6) & 1) == 0)
    {
LABEL_16:
      v24 = 0;
      goto LABEL_45;
    }
  }

  else
  {
    SecSecurityClientGet();
    if (!cftype_to_BOOL_cftype_error_request(0, a3, context, a6))
    {
      goto LABEL_16;
    }
  }

  v24 = SecItemResultProcess(a3, a5, 0, context[0], *(a1 + 32), a6);
  if (context[0])
  {
    CFRelease(context[0]);
  }

LABEL_45:

  return v24;
}

void logUnreasonableDataLength(const void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, @"v_Data");
      if (Value)
      {
        v4 = Value;
        v5 = CFGetTypeID(Value);
        if (v5 == CFDataGetTypeID())
        {
          Length = CFDataGetLength(v4);
          if (Length > 0x8000)
          {
            v7 = Length;
            v8 = secLogObjForScope("SecWarning");
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v10 = 134217984;
              v11 = v7;
              _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "keychain item data exceeds reasonable size (%lu bytes)", &v10, 0xCu);
            }
          }
        }
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void Security::CFError::throwMe(Security::CFError *this)
{
  exception = __cxa_allocate_exception(0x90uLL);
  Security::CFError::CFError(exception);
}

uint64_t Security::mmapDeallocatorDeallocate(Security *this, CFDataRef theData, void *a3)
{
  v4 = *CFDataGetBytePtr(theData);

  return munmap(this, v4);
}

void Security::CodeSigning::BundleDiskRep::~BundleDiskRep(Security::CodeSigning::BundleDiskRep *this)
{
  Security::CodeSigning::BundleDiskRep::~BundleDiskRep(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8B178;
  *(this + 2) = &unk_1EFA8B2A0;
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 27));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 24));
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 104);
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  Security::CFRef<__CFURL const*>::~CFRef(this + 8);
  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  Security::CFRef<__CFBundle *>::~CFRef(this + 3);

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

void Security::CodeSigning::MachORep::~MachORep(Security::CodeSigning::MachORep *this)
{
  Security::CodeSigning::MachORep::~MachORep(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8BE48;
  *(this + 6) = &unk_1EFA8BF70;
  v2 = *(this + 7);
  if (v2)
  {
    free(*(v2 + 8));
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v2 + 56));
    MEMORY[0x18CFD9760](v2, 0x1020C4076728D04);
  }

  free(*(this + 8));
  *this = &unk_1EFA8C1B0;
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 40));
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

void Security::SecCFObject::operator delete(char *a1)
{
  v1 = a1 - 24;
  v2 = CFGetAllocator(a1 - 24);
  CFAllocatorDeallocate(v2, v1);
}

void *Security::CodeSigning::SecStaticCode::requiredStatic(Security::CodeSigning::SecStaticCode *this, const __SecCode *a2)
{
  if (!this)
  {
    goto LABEL_8;
  }

  v2 = this + 24;
  v3 = *(this + 3);
  v4 = *v3;
  if (result)
  {
    return result;
  }

  v6 = *v3;
  if (!v7)
  {
LABEL_8:
    Security::MacOSError::throwMe(0xFFFEFA01);
  }

  v8 = v7;
  if ((v7[24] & 1) == 0)
  {
    (*(*v7 + 80))(v7);
    v8[24] = 1;
  }

  return *(v8 + 4);
}

uint64_t Security::CFClass::refCountForType(Security::CFClass *this, Security::CFClass *a2, const void *a3)
{
  v14 = 0;
  if (a2)
  {
    v5 = a2 + 24;
  }

  else
  {
    v5 = 0;
  }

  v6 = (*(*v5 + 64))(v5);
  v8 = v6;
  if (v6)
  {
    v9 = pthread_mutex_lock(v6);
    if (v9)
    {
      Security::UnixError::throwMe(v9);
    }

    v11 = Security::CFClass::cleanupObject(this, a2, &v14, v10);
    v12 = pthread_mutex_unlock(v8);
    if (v12)
    {
      Security::UnixError::throwMe(v12);
    }
  }

  else
  {
    v11 = Security::CFClass::cleanupObject(this, a2, &v14, v7);
  }

  if (v14 == 1)
  {
    (*(*v5 + 8))(v5);
  }

  return v11;
}

void sub_1887FD468(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1887FD448);
}

uint64_t Security::CFClass::cleanupObject(Security::CFClass *this, Security::CFClass *a2, _BYTE *a3, BOOL *a4)
{
  *a3 = 0;
  if (a2)
  {
    v7 = (a2 + 24);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_lock(v7 + 3);
  os_unfair_lock_opaque = v7[2]._os_unfair_lock_opaque;
  if (this == -1)
  {
    if (!os_unfair_lock_opaque)
    {
      os_unfair_lock_unlock(v7 + 3);
      goto LABEL_14;
    }

LABEL_10:
    v9 = os_unfair_lock_opaque + this;
    v7[2]._os_unfair_lock_opaque = v9;
    os_unfair_lock_unlock(v7 + 3);
    if (!this)
    {
      return v9;
    }

    if (v9)
    {
      return 0;
    }

LABEL_14:
    if ((*(*&v7->_os_unfair_lock_opaque + 72))(v7))
    {
      Security::CFClass::finalizeType(a2, v10);
      v9 = 0;
      *a3 = 1;
      return v9;
    }

    return 0;
  }

  if (os_unfair_lock_opaque != -1)
  {
    goto LABEL_10;
  }

  os_unfair_lock_unlock(v7 + 3);
  if (this)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

__CFDictionary *Security::makeCFMutableDictionary(Security *this, void *key, const void *a3, ...)
{
  CFMutableDictionary = Security::makeCFMutableDictionary(this);
  CFDictionaryAddValue(CFMutableDictionary, key, a3);
  return CFMutableDictionary;
}

void *Security::CodeSigning::SecStaticCode::codeDirectories(Security::CodeSigning::SecStaticCode *this, int a2)
{
  v2 = this + 104;
  v3 = (this + 104);
  if (!*(this + 15))
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x4002000000;
    v52 = __Block_byref_object_copy__18077;
    v55[0] = 0;
    v55[1] = 0;
    v53 = __Block_byref_object_dispose__18078;
    v54 = v55;
    v42 = 0;
    v43 = &v42;
    v44 = 0x4002000000;
    v45 = __Block_byref_object_copy__13;
    v48[0] = 0;
    v48[1] = 0;
    v46 = __Block_byref_object_dispose__14;
    v47 = v48;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3002000000;
    v39 = __Block_byref_object_copy__15;
    v40 = __Block_byref_object_dispose__16;
    v41 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v30 = ___ZNK8Security11CodeSigning13SecStaticCode19loadCodeDirectoriesERNSt3__13mapIjNS_9CFCopyRefIPK8__CFDataEENS2_4lessIjEENS2_9allocatorINS2_4pairIKjS8_EEEEEE_block_invoke;
    v31 = &unk_1E70E4B00;
    v32 = &v49;
    v33 = &v42;
    v34 = &v36;
    v35 = this;
    if (___ZNK8Security11CodeSigning13SecStaticCode19loadCodeDirectoriesERNSt3__13mapIjNS_9CFCopyRefIPK8__CFDataEENS2_4lessIjEENS2_9allocatorINS2_4pairIKjS8_EEEEEE_block_invoke(v29))
    {
      v6 = 4096;
      do
      {
        v7 = (v30)(v29, v6);
        v8 = v6 == 4100;
        v6 = (v6 + 1);
        if (v8)
        {
          v9 = 0;
        }

        else
        {
          v9 = v7;
        }
      }

      while ((v9 & 1) != 0);
      v10 = v50;
      if (!v50[7])
      {
        Security::MacOSError::throwMe(0xFFFEFA0BLL);
      }

      v11 = v50 + 5;
      v12 = *(this + 13);
      *(this + 13) = v50[5];
      v10[5] = v12;
      v15 = *(this + 14);
      v14 = *(this + 15);
      v13 = (this + 112);
      v17 = *(v10 + 3);
      v16 = v10 + 6;
      *(this + 7) = v17;
      *v16 = v15;
      v16[1] = v14;
      if (*(this + 15))
      {
        v3 = (*v13 + 16);
      }

      *v3 = v13;
      if (v14)
      {
        v11 = (*v16 + 16);
      }

      *v11 = v16;
      v18 = v43;
      v19 = v43 + 5;
      v20 = *(this + 43);
      *(this + 43) = v43[5];
      *v19 = v20;
      v21 = (this + 352);
      v23 = *(v18 + 3);
      v22 = v18 + 6;
      v25 = *(this + 44);
      v24 = *(this + 45);
      *(this + 22) = v23;
      *v22 = v25;
      v22[1] = v24;
      if (*(this + 45))
      {
        v26 = (*v21 + 16);
      }

      else
      {
        v26 = (this + 344);
      }

      *v26 = v21;
      if (v24)
      {
        v19 = (*v22 + 16);
      }

      *v19 = v22;
      Security::CFRef<__CFURL const*>::operator=(this + 16, v37 + 5);
    }

    _Block_object_dispose(&v36, 8);
    Security::CFRef<__CFData const*>::~CFRef(&v41);
    _Block_object_dispose(&v42, 8);
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(v48[0]);
    _Block_object_dispose(&v49, 8);
    std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(v55[0]);
    v27 = *(this + 15);
    if (v27)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    if (!v27 && a2)
    {
      Security::MacOSError::throwMe(0xFFFEFA0ALL);
    }
  }

  return v3;
}

uint64_t Security::CodeSigning::MachORep::signingData(Security::CodeSigning::MachORep *this)
{
  v5 = *MEMORY[0x1E69E9840];
  result = *(this + 8);
  if (!result)
  {
    v3 = (*(*this + 80))(this);
    Security::Universal::architecture(v3);
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1887FDD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  (*(*v21 + 8))(v21);
  _Unwind_Resume(a1);
}

void *Security::BlobCore::readBlob(Security::BlobCore *this, off_t a2, int a3, size_t a4)
{
  v7 = this;
  __buf = 0;
  if (pread(this, &__buf, 8uLL, a2) != 8)
  {
    return 0;
  }

  v8 = bswap32(HIDWORD(__buf));
  if (bswap32(__buf) != a3 || v8 < 0xC)
  {
    goto LABEL_6;
  }

  if (a4 && v8 > a4)
  {
    v10 = 12;
    goto LABEL_11;
  }

  v13 = malloc_type_malloc(v8, 0x100004000313F17uLL);
  v11 = v13;
  if (v13)
  {
    *v13 = __buf;
    v14 = bswap32(HIDWORD(__buf)) - 8;
    if (pread(v7, v13 + 1, v14, a2 + 8) != v14)
    {
      free(v11);
LABEL_6:
      v10 = 22;
LABEL_11:
      v11 = 0;
      *__error() = v10;
    }
  }

  return v11;
}

CFDataRef Security::CodeSigning::EmbeddedSignatureBlob::blobData(Security::CodeSigning::EmbeddedSignatureBlob *this, const UInt8 *a2, const Security::BlobCore *a3)
{
  if (Security::CodeSigning::CodeDirectory::slotAttributes(this) >= 2)
  {
    v6 = bswap32(*(a2 + 1));
    v7 = a2;
  }

  else
  {
    if (!a2)
    {
      goto LABEL_13;
    }

    v4 = bswap32(*(a2 + 1));
    if (*a2 != 17555194 || v4 <= 7)
    {
      *__error() = 22;
LABEL_13:
      Security::MacOSError::throwMe(0xFFFEFA1BLL);
    }

    v6 = v4 - 8;
    v7 = a2 + 8;
  }

  return CFDataCreate(0, v7, v6);
}

CFDataRef Security::CodeSigning::EmbeddedSignatureBlob::component(Security::CodeSigning::EmbeddedSignatureBlob *this, Security::CodeSigning::EmbeddedSignatureBlob *a2, const Security::BlobCore *a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  LODWORD(v5) = bswap32(v3);
  v5 = v5 <= 1 ? 1 : v5;
  v6 = (this + 12);
  while (1)
  {
    v7 = *v6;
    v6 += 2;
    if (bswap32(v7) == a2)
    {
      break;
    }

    if (v5 == ++v4)
    {
      return 0;
    }
  }

  v8 = *(this + 2 * v4 + 4);
  v10 = v8 == 0;
  v9 = this + bswap32(v8);
  v10 = v10 || v9 == 0;
  if (v10)
  {
    return 0;
  }

  else
  {
    return Security::CodeSigning::EmbeddedSignatureBlob::blobData(a2, v9, a3);
  }
}

uint64_t Security::CodeSigning::CodeDirectory::slotAttributes(Security::CodeSigning::CodeDirectory *this)
{
  if (this <= 4095)
  {
    if (this > 0xB)
    {
      return 0;
    }

    if (((1 << this) & 0xFA4) != 0)
    {
      return 2;
    }

    if (this)
    {
      return 0;
    }

    return 3;
  }

  if (this < 0x10000)
  {
    if ((this - 4096) < 5)
    {
      return 3;
    }

    return 0;
  }

  return this == 0x10000 || this == 65537;
}

const void **Security::CFRef<__CFData const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::__tree<unsigned int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

CFDataRef Security::CodeSigning::BundleDiskRep::metaData(Security::CodeSigning::BundleDiskRep *this, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  Security::CodeSigning::BundleDiskRep::metaPath(&__p, this, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  CFURL = Security::makeCFURL(p_p, 0, 0, v3);
  v7 = CFURL;
  v12 = CFURL;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (CFURL)
  {
LABEL_6:
    File = Security::cfLoadFile(v7, v6);
    goto LABEL_11;
  }

  v9 = secLogObjForScope("bundlediskrep");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = a2;
    _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "no metapath for %s", &__p, 0xCu);
  }

  File = 0;
LABEL_11:
  Security::CFRef<__CFURL const*>::~CFRef(&v12);
  v10 = *MEMORY[0x1E69E9840];
  return File;
}

const char *Security::CodeSigning::CodeDirectory::canonicalSlotName(Security::CodeSigning::CodeDirectory *this)
{
  if (this <= 8)
  {
    if (this > 4)
    {
      if (this > 6)
      {
        if (this == 7)
        {
          return "CodeEntitlementDER";
        }

        else
        {
          return "LaunchConstraintSelf";
        }
      }

      else if (this == 5)
      {
        return "CodeEntitlements";
      }

      else
      {
        return "CodeRepSpecific";
      }
    }

    if (this > 2)
    {
      if (this == 3)
      {
        return "CodeResources";
      }

      else
      {
        return "CodeTopDirectory";
      }
    }

    if (!this)
    {
      return "CodeDirectory";
    }

    if (this == 2)
    {
      return "CodeRequirements";
    }

    return 0;
  }

  if (this <= 4096)
  {
    if (this <= 10)
    {
      if (this == 9)
      {
        return "LaunchConstraintParent";
      }

      else
      {
        return "LaunchConstraintResponsible";
      }
    }

    if (this == 11)
    {
      return "LibraryConstraint";
    }

    if (this == 4096)
    {
      return "CodeRequirements-1";
    }

    return 0;
  }

  if (this > 4098)
  {
    switch(this)
    {
      case 0x1003:
        return "CodeRequirements-4";
      case 0x1004:
        return "CodeRequirements-5";
      case 0x10000:
        return "CodeSignature";
    }

    return 0;
  }

  if (this == 4097)
  {
    return "CodeRequirements-2";
  }

  else
  {
    return "CodeRequirements-3";
  }
}

void Security::CodeSigning::BundleDiskRep::metaPath(std::string *this, const char *a2, const char *a3)
{
  v6 = (a2 + 32);
  if ((a2[55] & 0x8000000000000000) != 0)
  {
    if (*(a2 + 5))
    {
      goto LABEL_20;
    }
  }

  else if (a2[55])
  {
    goto LABEL_20;
  }

  memset(&v18, 170, sizeof(v18));
  v7 = CFBundleCopySupportFilesDirectoryURL(*(a2 + 3));
  Security::cfStringRelease(&v18, v7);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  memset(v17, 170, sizeof(v17));
  v9 = v17;
  std::string::basic_string[abi:ne200100](v17, size + 15);
  if (v17[23] < 0)
  {
    v9 = *v17;
  }

  if (size)
  {
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v18;
    }

    else
    {
      v10 = v18.__r_.__value_.__r.__words[0];
    }

    memmove(v9, v10, size);
  }

  strcpy(&v9[size], "/_CodeSignature");
  if (a2[55] < 0)
  {
    operator delete(*v6);
  }

  *v6 = *v17;
  *(v6 + 2) = *&v17[16];
  v11 = v6;
  if (a2[55] < 0)
  {
    v11 = *v6;
  }

  *(a2 + 56) = access(v11, 0) == 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
    if (a3)
    {
      goto LABEL_21;
    }

LABEL_34:
    if (a2[55] < 0)
    {
      std::string::__init_copy_ctor_external(this, *(a2 + 4), *(a2 + 5));
    }

    else
    {
      *&this->__r_.__value_.__l.__data_ = *v6;
      this->__r_.__value_.__r.__words[2] = *(v6 + 2);
    }

    return;
  }

LABEL_20:
  if (!a3)
  {
    goto LABEL_34;
  }

LABEL_21:
  if (a2[55] >= 0)
  {
    v12 = *(a2 + 55);
  }

  else
  {
    v12 = *(a2 + 5);
  }

  memset(&v18, 170, sizeof(v18));
  v13 = &v18;
  std::string::basic_string[abi:ne200100](&v18, v12 + 1);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = v18.__r_.__value_.__r.__words[0];
  }

  if (v12)
  {
    if (a2[55] >= 0)
    {
      v14 = v6;
    }

    else
    {
      v14 = *(a2 + 4);
    }

    memmove(v13, v14, v12);
  }

  *(&v13->__r_.__value_.__l.__data_ + v12) = 47;
  v15 = strlen(a3);
  v16 = std::string::append(&v18, a3, v15);
  *this = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1887FE588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef Security::cfLoadFile(Security *this, const __CFURL *a2)
{
  Security::cfString(&v12, this);
  *__p = *&v12.st_dev;
  v11 = *&v12.st_uid;
  if ((v12.st_gid & 0x80000000) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  *v9 = 0xAAAAAAAAFFFFFFFFLL;
  Security::UnixPlusPlus::FileDesc::open(v9, v2, 0, 4534);
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v8.st_blksize = v3;
  *v8.st_qspare = v3;
  v8.st_birthtimespec = v3;
  *&v8.st_size = v3;
  v8.st_mtimespec = v3;
  v8.st_ctimespec = v3;
  *&v8.st_uid = v3;
  v8.st_atimespec = v3;
  *&v8.st_dev = v3;
  v4 = v9[0];
  if (v9[0] == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (!fstat(v9[0], &v8) && (v8.st_size & 0x8000000000000000) == 0)
    {
      v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v12.st_blksize = v6;
      *v12.st_qspare = v6;
      v12.st_birthtimespec = v6;
      *&v12.st_size = v6;
      v12.st_mtimespec = v6;
      v12.st_ctimespec = v6;
      *&v12.st_uid = v6;
      v12.st_atimespec = v6;
      *&v12.st_dev = v6;
      Security::UnixPlusPlus::FileDesc::fstat(v4, &v12);
      v5 = Security::cfMapFile(v4, v12.st_size);
    }
  }

  Security::UnixPlusPlus::FileDesc::closeAndLog(v9);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1887FE6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(const void **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*a1);
    std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(a1[1]);
    Security::CFRef<__CFData const*>::~CFRef(a1 + 5);

    operator delete(a1);
  }
}

CFStringRef *Security::CFTempString::CFTempString<std::string>(CFStringRef *a1, char *cStr)
{
  v2 = cStr;
  if (cStr[23] < 0 && (v2 = *cStr) == 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = CFStringCreateWithCString(0, v2, 0x8000100u);
    if (!v4)
    {
      v4 = CFStringCreateWithCString(0, v2, 0x600u);
      if (!v4)
      {
        Security::CFError::throwMe(0);
      }
    }
  }

  *a1 = v4;
  return a1;
}

const void **Security::CFRef<__CFNumber const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Security::CodeSigning::BundleDiskRep::format(Security::CodeSigning::BundleDiskRep *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 103) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 10), *(this + 11));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 5);
    a2->__r_.__value_.__r.__words[2] = *(this + 12);
  }
}

uint64_t Security::CodeSigning::SecStaticCode::cdHash(Security::CodeSigning::SecStaticCode *this)
{
  if (!*(this + 67))
  {
    v2 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 0);
    if (v2)
    {
      Security::CodeSigning::CodeDirectory::cdhash(v2);
    }
  }

  return *(this + 67);
}

void Security::CodeSigning::CodeDirectory::cdhash(Security::CodeSigning::CodeDirectory *this)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = v1;
  v5 = v1;
  v2 = v1;
  v3 = v1;
  Security::CodeSigning::CodeDirectory::hashFor(*(this + 37));
}

void sub_1887FEA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  Security::RefPointer<Security::DynamicHash>::~RefPointer(&a13);
  _Unwind_Resume(a1);
}

void Security::CodeSigning::CodeDirectory::hashFor(Security::CodeSigning::CodeDirectory *this)
{
  if (this > 2)
  {
    if (this == 3)
    {
      operator new();
    }

    if (this == 4)
    {
      operator new();
    }
  }

  else
  {
    if (this == 1)
    {
      operator new();
    }

    if (this == 2)
    {
      operator new();
    }
  }

  Security::MacOSError::throwMe(0xFFFEFA0DLL);
}

Security::CCHashInstance *Security::CCHashInstance::CCHashInstance(Security::CCHashInstance *this, unsigned int a2, uint64_t a3)
{
  *(this + 2) = 0;
  *this = &unk_1EFA8A810;
  v5 = CCDigestCreate();
  *(this + 2) = v5;
  if (!v5)
  {
    Security::UnixError::throwMe(0xC);
  }

  *(this + 3) = a3;
  return this;
}

uint64_t Security::CCHashInstance::digestLength(Security::CCHashInstance *this)
{
  if (*(this + 3))
  {
    return *(this + 3);
  }

  v2 = *(this + 2);
  return CCDigestOutputSize();
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<char>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1887FEC8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *Security::CCHashInstance::finish(Security::CCHashInstance *this, unsigned __int8 *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = this + 16;
  v4 = *(this + 2);
  if (*(v5 + 1))
  {
    v6 = CCDigestOutputSize();
    v7 = MEMORY[0x1EEE9AC00](v6);
    v9 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      memset(v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v8);
    }

    v10 = *(this + 2);
    CCDigestFinal();
    result = memcpy(a2, v9, *(this + 3));
    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v13 = *MEMORY[0x1E69E9840];

    return CCDigestFinal();
  }

  return result;
}

uint64_t Security::RefPointer<Security::DynamicHash>::~RefPointer(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = pthread_mutex_lock((a1 + 8));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::RefPointer<Security::DynamicHash>::release_internal(a1);
  v4 = pthread_mutex_unlock(v2);
  if (v4)
  {
    Security::UnixError::throwMe(v4);
  }

  Security::Mutex::~Mutex(v2);
  return a1;
}

void Security::CCHashInstance::~CCHashInstance(Security::CCHashInstance *this)
{
  Security::CCHashInstance::~CCHashInstance(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A810;
  v1 = *(this + 2);
  CCDigestDestroy();
}

uint64_t Security::RefPointer<Security::DynamicHash>::release_internal(uint64_t result)
{
  if (*result && atomic_fetch_add_explicit((*result + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    v1 = result;
    result = *result;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    *v1 = 0;
  }

  return result;
}

void Security::Mutex::~Mutex(pthread_mutex_t *this)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = pthread_mutex_destroy(this);
  if (v1)
  {
    v4 = v1;
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v5) = 67109120;
      HIDWORD(v5) = v4;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Probable bug: error destroying Mutex: %d", &v5, 8u);
    }

    Security::UnixError::throwMe(v4);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1887FF008(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t amfi_interface_cdhash_in_trustcache(__int128 *a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
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

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

UInt8 *Security::CodeSigning::SecStaticCode::validateDirectory(UInt8 *this)
{
  v1 = this;
  v30[3] = *MEMORY[0x1E69E9840];
  if (this[176] != 1 || (this[211] & 0x40) != 0 && (this[177] & 1) == 0)
  {
    v2 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 0);
    if (!v2 || (v2[15] & 2) == 0)
    {
      v30[0] = v1;
      v3 = Security::CodeSigning::SecStaticCode::signature(v1);
      Security::CodeSigning::SecStaticCode::codeDirectory(v1, 1);
      *(v1 + 47) = 0;
      v27 = 0xAAAAAAAAAAAAAAAALL;
      cf = 0;
      if ((v1[209] & 4) != 0)
      {
        __p[0] = SecPolicyCreateAppleSoftwareSigning();
      }

      else
      {
        __p[0] = SecPolicyCreateiPhoneApplicationSigning();
      }

      CFArray = Security::makeCFArray(__p[0], v4, __p[0]);
      Security::CFRef<__SecPolicy *>::~CFRef(__p);
      v27 = CFArray;
      v6 = *(v1 + 16);
      v7 = *(v1 + 79);
      if (v7)
      {
        CFRelease(v7);
      }

      *(v1 + 79) = 0;
      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      v8 = SecCMSVerifySignedData_internal(v3, v6, CFArray, v1 + 79, 0, 0, &cf);
      if (v8)
      {
        Security::MacOSError::throwMe(v8);
      }

      *(v1 + 47) = SecTrustGetVerifyTime(*(v1 + 79));
      v26 = 0;
      v9 = SecTrustEvaluateInternal(*(v1 + 79), &v26);
      if (v9)
      {
        Security::MacOSError::throwMe(v9);
      }

      __p[0] = 0;
      Value = CFDictionaryGetValue(cf, kSecCMSHashAgility);
      Security::CFRef<__CFArray const*>::operator=(__p, Value);
      if (__p[0])
      {
        CFDictionaryFrom = Security::makeCFDictionaryFrom(__p[0], v11);
        v12 = CFDictionaryGetValue(CFDictionaryFrom, @"cdhashes");
        v14 = Security::CodeSigning::SecStaticCode::cdHashes(v1, v13);
        if (!v12 || !CFEqual(v12, v14))
        {
          Security::MacOSError::throwMe(0xFFFEFA0BLL);
        }

        Security::CFRef<__CFDictionary const*>::~CFRef(&CFDictionaryFrom);
      }

      v15 = SecTrustCopyCertificateChain(*(v1 + 79));
      v16 = *(v1 + 80);
      if (v16)
      {
        CFRelease(v16);
      }

      *(v1 + 80) = v15;
      v18 = v26 == 4 || v26 == 1;
      v1[648] = v18;
      Security::CFRef<__CFData const*>::~CFRef(__p);
      Security::CFRef<__CFArray const*>::~CFRef(&v27);
      Security::CFRef<__CFDictionary const*>::~CFRef(&cf);
      Security::CodeSigning::SecStaticCode::verifySignature(void)::_DTFrameCODESIGN_EVAL_STATIC_SIGNATURE::~_DTFrameCODESIGN_EVAL_STATIC_SIGNATURE(v30);
    }

    v1[184] = 0;
    if ((v1[211] & 0x40) != 0)
    {
      v1[177] = 1;
    }

    this = Security::CodeSigning::SecStaticCode::codeDirectory(v1, 1);
    v19 = *(this + 6);
    if (v19)
    {
      v20 = bswap32(v19);
      if (v20 >= 0xB)
      {
        v21 = 11;
      }

      else
      {
        v21 = v20;
      }

      do
      {
        if (*&v1[8 * v21 + 392])
        {
          if (v21 == 3)
          {
            v22 = -67023;
          }

          else
          {
            v22 = -67061;
          }

          if (v21 == 1)
          {
            v23 = 4294900266;
          }

          else
          {
            v23 = v22;
          }

          this = (*(*v1 + 96))(v1, v21, v23);
        }

        --v21;
      }

      while (v21);
    }

    v1[176] = 1;
    *(v1 + 45) = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1887FF41C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, uint64_t a16, __int128 buf)
{
  if (a2)
  {
    Security::CFRef<__SecPolicy *>::~CFRef(&__p);
    Security::CFRef<__CFDictionary const*>::~CFRef(&a13);
    Security::CodeSigning::SecStaticCode::verifySignature(void)::_DTFrameCODESIGN_EVAL_STATIC_SIGNATURE::~_DTFrameCODESIGN_EVAL_STATIC_SIGNATURE(&buf);
    v20 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      *(v17 + 176) = 1;
      *(v17 + 180) = (*(*v20 + 24))(v20);
      __cxa_rethrow();
    }

    v21 = secLogObjForScope("staticCode");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v17;
      _os_log_debug_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEBUG, "%p validation threw non-common exception", &buf, 0xCu);
    }

    *(v17 + 176) = 1;
    Security::Syslog::notice("code signing internal problem: unknown exception thrown by validation", v22);
    *(v17 + 180) = -67048;
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1887FF5F4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1887FF5FCLL);
  }

  __clang_call_terminate(a1);
}

CFTypeRef Security::CodeSigning::SecStaticCode::cdHashes(Security::CodeSigning::SecStaticCode *this, uint64_t a2)
{
  result = *(this + 68);
  if (!result)
  {
    CFMutableArray = Security::makeCFMutableArray(0, a2);
    theArray = CFMutableArray;
    v5 = *(this + 13);
    if (v5 != (this + 112))
    {
      BytePtr = CFDataGetBytePtr(v5[5]);
      v8 = 0xAAAAAAAAAAAAAAAALL;
      Security::CodeSigning::CodeDirectory::cdhash(BytePtr);
    }

    v7 = (this + 544);
    Security::CFRef<__CFArray const*>::operator=(v7, CFMutableArray);
    Security::CFRef<__CFArray *>::~CFRef(&theArray);
    return *v7;
  }

  return result;
}

void sub_1887FF6EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::CFRef<__CFArray *>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef *Security::CFRef<__CFArray const*>::operator=(CFTypeRef *a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = cf;
  return a1;
}

const void **Security::CFRef<__CFArray *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **Security::CFRef<__CFDictionary *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(a1, v3, *(v5 + 7));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != v4);
  }

  return a1;
}

uint64_t *std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int a3)
{
  v3 = a2;
  v4 = a1 + 1;
  if (a1 + 1 == a2 || (v5 = *(a2 + 7), v5 > a3))
  {
    v6 = *a2;
    if (*a1 == a2)
    {
      v8 = a2;
LABEL_16:
      if (v6)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a2;
      }

      goto LABEL_19;
    }

    if (v6)
    {
      v7 = *a2;
      do
      {
        v8 = v7;
        v7 = v7[1];
      }

      while (v7);
    }

    else
    {
      v12 = a2;
      do
      {
        v8 = v12[2];
        v13 = *v8 == v12;
        v12 = v8;
      }

      while (v13);
    }

    if (*(v8 + 7) < a3)
    {
      goto LABEL_16;
    }

    v14 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = *(v14 + 28);
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v15;
        v4 = v15;
        if (!*v15)
        {
          goto LABEL_38;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v4 = v15 + 1;
      v14 = v15[1];
      if (!v14)
      {
        goto LABEL_38;
      }
    }

LABEL_40:
    v9 = v4;
    goto LABEL_19;
  }

  if (v5 >= a3)
  {
    return v3;
  }

  v9 = a2 + 1;
  v10 = a2[1];
  if (v10)
  {
    do
    {
      v9 = v10;
      v10 = *v10;
      v11 = v9;
    }

    while (v10);
  }

  else
  {
    v11 = a2;
    do
    {
      v17 = v11;
      v11 = v11[2];
    }

    while (*v11 != v17);
  }

  if (v11 != v4 && *(v11 + 7) <= a3)
  {
    v18 = *v4;
    if (!*v4)
    {
      goto LABEL_38;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 28);
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v19;
        v4 = v19;
        if (!*v19)
        {
          goto LABEL_38;
        }
      }

      if (v20 >= a3)
      {
        goto LABEL_40;
      }

      v4 = v19 + 1;
      v18 = v19[1];
      if (!v18)
      {
        goto LABEL_38;
      }
    }
  }

LABEL_19:
  v3 = *v9;
  if (!*v9)
  {
LABEL_38:
    operator new();
  }

  return v3;
}

CFNumberRef ___ZN8Security11CodeSigning13SecStaticCode18signingInformationEj_block_invoke(uint64_t a1, unsigned int a2)
{
  valuePtr = a2;
  v2 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  valuePtr = v2;
  Security::CFRef<__CFNumber const*>::~CFRef(&valuePtr);
  return v2;
}

uint64_t Security::CodeSigning::SecStaticCode::signature(Security::CodeSigning::SecStaticCode *this)
{
  v1 = *(this + 46);
  if (!v1)
  {
    v1 = (*(**(this + 4) + 24))(*(this + 4), 0x10000);
    v3 = *(this + 46);
    if (v3)
    {
      CFRelease(v3);
    }

    *(this + 46) = v1;
    if (!v1)
    {
      Security::MacOSError::throwMe(0xFFFEFA0ALL);
    }
  }

  return v1;
}

uint64_t Security::CodeSigning::SecStaticCode::validationCategory(Security::CodeSigning::SecStaticCode *this)
{
  result = *(this + 163);
  if (!result)
  {
    v3 = Security::CodeSigning::SecStaticCode::cdHash(this);
    v12 = 0;
    BytePtr = CFDataGetBytePtr(v3);
    Length = CFDataGetLength(v3);
    if (!amfi_interface_cdhash_in_trustcache(BytePtr, Length, &v12) && v12 == 1)
    {
      result = 1;
LABEL_24:
      *(this + 163) = result;
      return result;
    }

    v6 = Security::CodeSigning::SecStaticCode::signature(this);
    v7 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 0);
    if (v7 && (v7[15] & 2) != 0)
    {
      result = 10;
      goto LABEL_24;
    }

    v12 = 0;
    if (os_variant_allows_internal_security_policies())
    {
      v8 = 1;
    }

    else
    {
      if (SecAreQARootCertificatesEnabled_onceToken != -1)
      {
        dispatch_once(&SecAreQARootCertificatesEnabled_onceToken, &__block_literal_global_16024);
      }

      v8 = SecAreQARootCertificatesEnabled_sQACertsEnabled;
    }

    v9 = CFDataGetBytePtr(v6);
    v10 = CFDataGetLength(v6);
    v11 = CTVerifyAmfiCertificateChain(v9, v10, v8 & 1, 16, &v12);
    result = 10;
    *(this + 163) = 10;
    if (!v11)
    {
      if ((v12 & 0x80000001140) != 0 || (v8 & ((v12 & 0x100000002200) != 0)) != 0)
      {
        result = 4;
        goto LABEL_24;
      }

      if ((v12 & 0x90) != 0)
      {
        result = 3;
        goto LABEL_24;
      }

      if ((v12 & 0x10000) != 0)
      {
        result = 5;
        goto LABEL_24;
      }

      if ((v12 & 0x400) == 0 && (v12 & 0xC000) != 0)
      {
        result = 2;
        goto LABEL_24;
      }
    }
  }

  return result;
}

uint64_t Security::CodeSigning::SecStaticCode::infoDictionary(Security::CodeSigning::SecStaticCode *this, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  result = *(this + 61);
  if (!result || a2 && (*(this + 496) & 1) == 0)
  {
    Dictionary = Security::CodeSigning::SecStaticCode::getDictionary(this, 1, a2);
    v6 = *(this + 61);
    if (v6)
    {
      CFRelease(v6);
    }

    *(this + 61) = Dictionary;
    *(this + 496) = a2;
    v7 = secLogObjForScope("staticCode");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
    result = *(this + 61);
    if (v8)
    {
      v10 = "not ";
      v11 = 134218498;
      v12 = this;
      if (a2)
      {
        v10 = &unk_188967DD7;
      }

      v13 = 2048;
      v14 = result;
      v15 = 2080;
      v16 = v10;
      _os_log_debug_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEBUG, "%p loaded InfoDict %p, %schecked", &v11, 0x20u);
      result = *(this + 61);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFData *Security::CodeSigning::SecStaticCode::getDictionary(UInt8 *this, uint64_t a2, int a3)
{
  if (a3)
  {
    Security::CodeSigning::SecStaticCode::validateDirectory(this);
  }

  result = (*(*this + 80))(this, a2, 4294900235);
  if (result)
  {
    v6 = result;
    (*(*this + 96))(this, a2, 4294900235);
    result = Security::makeCFDictionaryFrom(v6, v7);
    if (!result)
    {
      Security::MacOSError::throwMe(0xFFFEFA0ELL);
    }
  }

  return result;
}

uint64_t Security::CodeSigning::SecStaticCode::component(Security::CodeSigning::SecStaticCode *this, unsigned int a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = this + 8 * a2;
  v3 = *(v2 + 49);
  v4 = MEMORY[0x1E695E738];
  if (v3)
  {
    goto LABEL_23;
  }

  theData = 0xAAAAAAAAAAAAAAAALL;
  theData = (*(**(this + 4) + 24))(*(this + 4));
  if (!theData)
  {
    if (*(this + 176))
    {
      v11 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
      if (Security::CodeSigning::CodeDirectory::slotIsPresent(v11, -a2))
      {
        if (a2 == 3)
        {
          v22 = -67023;
        }

        else
        {
          v22 = -67061;
        }

        if (a2 == 1)
        {
          v23 = 4294900266;
        }

        else
        {
          v23 = v22;
        }

        Security::MacOSError::throwMe(v23);
      }
    }

    if (a2 == 7)
    {
      v12 = (*(*this + 80))(this, 5, 4294900235);
      if (v12)
      {
        (*(*this + 96))(this, 5, 4294900235);
        BytePtr = CFDataGetBytePtr(v12);
        v14 = bswap32(BytePtr[1]);
        if (*BytePtr == 1903288058 && v14 > 7)
        {
          v24 = Security::CodeSigning::EntitlementBlob::entitlements(BytePtr);
          v17 = *MEMORY[0x1E69E5098];
          if (CESerializeCFDictionary() == *MEMORY[0x1E69E50B8])
          {
            v20 = Security::Blob<Security::CodeSigning::EntitlementDERBlob,4208882034u>::blobify(0);
            v21 = *(v2 + 49);
            if (v21)
            {
              CFRelease(v21);
            }

            *(v2 + 49) = v20;
            CFRelease(0);
            Security::CFRef<__CFDictionary const*>::~CFRef(&v24);
            goto LABEL_22;
          }

          v18 = secLogObjForScope("staticCode");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v27 = this;
            _os_log_debug_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEBUG, "%p the XML cannot be converted to valid DER", buf, 0xCu);
          }

          Security::CFRef<__CFDictionary const*>::~CFRef(&v24);
        }

        else
        {
          *__error() = 22;
        }
      }
    }

    Security::CFRef<__CFArray const*>::operator=(v2 + 49, *v4);
LABEL_22:
    Security::CFRef<__CFData const*>::~CFRef(&theData);
    v3 = *(v2 + 49);
LABEL_23:
    if (v3 == *v4)
    {
      result = 0;
    }

    else
    {
      result = v3;
    }

    goto LABEL_26;
  }

  if (!*(this + 176))
  {
    Security::CFRef<__CFURL const*>::operator=(v2 + 49, &theData);
    goto LABEL_22;
  }

  v7 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
  if (Security::CodeSigning::CodeDirectory::slotIsPresent(v7, -a2))
  {
    v8 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
    v9 = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    Security::CodeSigning::CodeDirectory::validateSlot(v8, v9, Length, -a2);
  }

  Security::CFRef<__CFData const*>::~CFRef(&theData);
  result = 0;
LABEL_26:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1888001C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFDataRef Security::cfMapFile(Security *this, size_t a2)
{
  v3 = this;
  v4 = lseek(this, 0, 1);
  v5 = mmap(0, a2, 1, 2, v3, v4);
  if (v5 == -1)
  {
    return 0;
  }

  v6 = v5;
  *bytes = a2;
  v11 = CFDataCreate(0, bytes, 8);
  context.version = xmmword_1EFA8A8F8;
  *&context.retain = unk_1EFA8A908;
  *&context.copyDescription = xmmword_1EFA8A918;
  *&context.reallocate = unk_1EFA8A928;
  context.preferredSize = off_1EFA8A938;
  context.info = v11;
  v9 = CFAllocatorCreate(0, &context);
  v7 = CFDataCreateWithBytesNoCopy(0, v6, *bytes, v9);
  if (!v7)
  {
    munmap(v6, a2);
  }

  Security::CFRef<__CFAllocator const*>::~CFRef(&v9);
  Security::CFRef<__CFData const*>::~CFRef(&v11);
  return v7;
}

const void **Security::CFRef<__CFAllocator const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

BOOL Security::CodeSigning::CodeDirectory::slotIsPresent(Security::CodeSigning::CodeDirectory *this, signed int a2)
{
  if (-bswap32(*(this + 6)) > a2)
  {
    return 0;
  }

  if (bswap32(*(this + 7)) <= a2)
  {
    return 0;
  }

  v2 = *(this + 36);
  if (!*(this + 36))
  {
    return 0;
  }

  v3 = this + bswap32(*(this + 4)) + v2 * a2;
  v4 = v2 - 1;
  do
  {
    v5 = *v3++;
    result = v5 != 0;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 == 0;
    }

    --v4;
  }

  while (!v7);
  return result;
}

void Security::CodeSigning::CodeDirectory::validateSlot(Security::CodeSigning::CodeDirectory *this, const void *a2, unint64_t a3, int a4)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = secLogObjForScope("codedir");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = this;
    *&buf[12] = 1024;
    *&buf[14] = a4;
    _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "%p validating slot %d", buf, 0x12u);
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9 = v7;
  v10 = v7;
  *buf = v7;
  *&buf[16] = v7;
  Security::CodeSigning::CodeDirectory::hashFor(*(this + 37));
}

BOOL Security::CodeSigning::SecStaticCode::validateComponent(Security::CodeSigning::SecStaticCode *this, unsigned int a2, Security::MacOSError *a3)
{
  v5 = *(this + a2 + 49);
  v6 = *MEMORY[0x1E695E738];
  v7 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
  v8 = v7;
  if (v5 != v6)
  {
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v5);
    Security::CodeSigning::CodeDirectory::validateSlot(v8, BytePtr, Length, -a2);
  }

  result = Security::CodeSigning::CodeDirectory::slotIsPresent(v7, -a2);
  if (result)
  {
    Security::MacOSError::throwMe(a3);
  }

  return result;
}

CFPropertyListRef Security::makeCFDictionaryFrom(CFDataRef xmlData, const __CFData *a2)
{
  if (!xmlData)
  {
    return 0;
  }

  v2 = CFPropertyListCreateFromXMLData(0, xmlData, 0, 0);
  v3 = v2;
  if (v2)
  {
    v4 = CFGetTypeID(v2);
    TypeID = CFDictionaryGetTypeID();
    if (v4 != TypeID)
    {
      Security::CFError::throwMe(TypeID);
    }
  }

  return v3;
}

const UInt8 *Security::CodeSigning::SecStaticCode::teamID(Security::CodeSigning::SecStaticCode *this)
{
  v1 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
  if (bswap32(*(v1 + 2)) >> 9 >= 0x101 && (v2 = *(v1 + 12)) != 0)
  {
    return &v1[bswap32(v2)];
  }

  else
  {
    return 0;
  }
}

uint64_t Security::CodeSigning::SecStaticCode::entitlements(UInt8 *this, int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (!*(this + 63) || a2 && (this[512] & 1) == 0)
  {
    if (a2)
    {
      Security::CodeSigning::SecStaticCode::validateDirectory(this);
    }

    v4 = (*(*this + 80))(this, 7, 4294900235);
    if (v4)
    {
      v5 = v4;
      v6 = Security::CodeSigning::SecStaticCode::codeDirectory(this, 1);
      if (Security::CodeSigning::CodeDirectory::slotIsPresent(v6, -7))
      {
        (*(*this + 96))(this, 7, 4294900235);
      }

      BytePtr = CFDataGetBytePtr(v5);
      v8 = bswap32(*(BytePtr + 1));
      if (*BytePtr == 1920065274 && v8 > 7)
      {
        v10 = BytePtr;
        v11 = secLogObjForScope("staticCode");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v21 = bswap32(*(v10 + 1));
          v22 = "not ";
          *buf = 134218498;
          v28 = this;
          if (a2)
          {
            v22 = &unk_188967DD7;
          }

          v29 = 2048;
          v30 = v21;
          v31 = 2080;
          v32 = v22;
          _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "%p loaded DER blob with length %zu, %schecked", buf, 0x20u);
        }

        v12 = MEMORY[0x1E69E50B8];
        if (!*(this + 70))
        {
          v13 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10 + 8, bswap32(*(v10 + 1)) - 8, *MEMORY[0x1E695E498]);
          v26 = v13;
          v14 = secLogObjForScope("staticCode");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            Length = CFDataGetLength(v13);
            *buf = 134218240;
            v28 = this;
            v29 = 2048;
            v30 = Length;
            _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "%p creating new CEQueryContext DER blob with length %lu", buf, 0x16u);
            v13 = v26;
          }

          v15 = (this + 560);
          if (SecCEContextFromCFData(v13, this + 70) != *v12)
          {
            *v15 = 0;
            v25 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              v28 = this;
              _os_log_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEFAULT, "%p caused an error during CoreEntitlements parsing", buf, 0xCu);
            }

            Security::MacOSError::throwMe(0xFFFF995DLL);
          }

          Security::CFRef<__CFData const*>::~CFRef(&v26);
          v16 = *v15;
        }

        v26 = 0xAAAAAAAAAAAAAAAALL;
        if (CEQueryContextToCFDictionary() != *v12)
        {
          v24 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v28 = this;
            _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "%p caused an error during CoreEntitlements dictionary generation", buf, 0xCu);
          }

          Security::MacOSError::throwMe(0xFFFF995DLL);
        }

        v17 = v26;
        v18 = *(this + 63);
        if (v18)
        {
          CFRelease(v18);
        }

        *(this + 63) = v17;
        this[512] = a2;
      }

      else
      {
        *__error() = 22;
      }
    }
  }

  result = *(this + 63);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_188800AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::CFRef<__CFData const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

const void **Security::CFRef<__CFDictionary const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **Security::CFRef<__CFArray const*>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Security::SecPointerBase::~SecPointerBase(Security::SecPointerBase *this)
{
  v2 = objc_autoreleasePoolPush();
  if (*this)
  {
    v3 = (*(**this + 16))(*this);
    CFRelease(v3);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t Security::CFClass::finalizeType(Security::CFClass *this, const void *a2)
{
  if (this)
  {
    v2 = this + 24;
  }

  else
  {
    v2 = 0;
  }

  v3 = (*(*v2 + 64))(v2, a2);
  if (!v3)
  {
    return (*(*v2 + 56))(v2);
  }

  v6 = v3;
  v4 = pthread_mutex_lock(v3);
  if (v4)
  {
    Security::UnixError::throwMe(v4);
  }

  atomic_exchange(v2 - 8, 1u);
  (*(*v2 + 56))(v2);
  result = pthread_mutex_unlock(v6);
  if (result)
  {
    Security::UnixError::throwMe(result);
  }

  return result;
}

void sub_188800CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188800CBCLL);
}

void Security::CodeSigning::SecStaticCode::~SecStaticCode(Security::CodeSigning::SecStaticCode *this)
{
  *this = &unk_1EFA8B9C0;
  SecCEReleaseContext(this + 70);
  free(*(this + 66));
  v2 = *(this + 25);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 75);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    Security::CodeSigning::ResourceBuilder::~ResourceBuilder(v4);
    MEMORY[0x18CFD9760]();
  }

  Security::CFRef<__CFDictionary const*>::~CFRef(this + 82);
  Security::CFRef<__CFArray const*>::~CFRef(this + 80);
  Security::CFRef<__SecTrust *>::~CFRef(this + 79);
  Security::CFRef<__CFURL const*>::~CFRef(this + 73);
  Security::CFRef<__CFData const*>::~CFRef(this + 71);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 69);
  Security::CFRef<__CFArray const*>::~CFRef(this + 68);
  Security::CFRef<__CFData const*>::~CFRef(this + 67);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 65);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 63);
  Security::CFRef<__CFDictionary const*>::~CFRef(this + 61);
  v5 = (this + 480);
  v6 = -96;
  do
  {
    v5 = Security::CFRef<__CFData const*>::~CFRef(v5) - 1;
    v6 += 8;
  }

  while (v6);
  Security::CFRef<__CFData const*>::~CFRef(this + 46);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 44));
  Security::CFRef<__CFData const*>::~CFRef(this + 42);
  Security::Dispatch::Queue::~Queue((this + 224));
  Security::CFRef<__CFArray const*>::~CFRef(this + 21);
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(this + 19));
  Security::CFRef<__CFData const*>::~CFRef(this + 17);
  Security::CFRef<__CFData const*>::~CFRef(this + 16);
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(this + 14));
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 32);
}

{
  Security::CodeSigning::SecStaticCode::~SecStaticCode(this);

  Security::SecCFObject::operator delete(v1);
}

void sub_188800E9C(void *a1)
{
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 656));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 640));
  Security::CFRef<__SecTrust *>::~CFRef((v1 + 632));
  Security::CFRef<__CFURL const*>::~CFRef((v1 + 584));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 568));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 552));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 544));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 536));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 520));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 504));
  Security::CFRef<__CFDictionary const*>::~CFRef((v1 + 488));
  v3 = (v1 + 480);
  v4 = -96;
  do
  {
    v3 = Security::CFRef<__CFData const*>::~CFRef(v3) - 1;
    v4 += 8;
  }

  while (v4);
  Security::CFRef<__CFData const*>::~CFRef((v1 + 368));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v1 + 352));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 336));
  Security::Dispatch::Queue::~Queue((v1 + 224));
  Security::CFRef<__CFArray const*>::~CFRef((v1 + 168));
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::destroy(*(v1 + 152));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 136));
  Security::CFRef<__CFData const*>::~CFRef((v1 + 128));
  std::__tree<std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::__map_value_compare<int,std::__value_type<int,Security::CFCopyRef<__CFData const*>>,std::less<int>,true>,std::allocator<std::__value_type<int,Security::CFCopyRef<__CFData const*>>>>::destroy(*(v1 + 112));
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(v1 + 32);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x188800E88);
}

const void **Security::CFRef<__SecTrust *>::~CFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void Security::Dispatch::Queue::~Queue(Security::Dispatch::Queue *this)
{
  *this = &unk_1EFA8A950;
  dispatch_barrier_sync(*(this + 11), &__block_literal_global_17012);
  dispatch_release(*(this + 11));
  std::exception_ptr::~exception_ptr(this + 10);
  Security::Mutex::~Mutex((this + 8));
}

{
  Security::Dispatch::Queue::~Queue(this);

  JUMPOUT(0x18CFD9760);
}

uint64_t Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = pthread_mutex_lock((a1 + 8));
  if (v3)
  {
    Security::UnixError::throwMe(v3);
  }

  Security::RefPointer<Security::CodeSigning::DiskRep>::release_internal(a1);
  v4 = pthread_mutex_unlock(v2);
  if (v4)
  {
    Security::UnixError::throwMe(v4);
  }

  Security::Mutex::~Mutex(v2);
  return a1;
}

uint64_t SecTokenItemCreateFromAttributes(const __CFDictionary *a1, const __CFDictionary *a2, void *a3, const void *a4, uint64_t *a5, __CFString **a6)
{
  v11 = a3;
  v38 = 0;
  cf = 0;
  theDict = a2;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
  Value = CFDictionaryGetValue(a1, @"tkid");
  if (!a4)
  {
    goto LABEL_10;
  }

  v14 = Value;
  if (!Value)
  {
    goto LABEL_10;
  }

  v15 = CFGetTypeID(Value);
  if (v15 != CFStringGetTypeID())
  {
    SecError(-50, a6, @"Unexpected type");

LABEL_17:
    v19 = 0;
    goto LABEL_18;
  }

  if (v11 || (SecTokenSessionCreate(v14, &theDict, &cf), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    CFDictionarySetValue(MutableCopy, @"u_TokenSession", v11);
LABEL_7:
    if (theDict)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __SecTokenItemCreateFromAttributes_block_invoke;
      v36[3] = &__block_descriptor_40_e15_v24__0r_v8r_v16l;
      v36[4] = MutableCopy;
      CFDictionaryApplyFunction(theDict, apply_block_2_10426, v36);
    }

    CFDictionarySetValue(MutableCopy, @"toid", a4);
LABEL_10:
    v16 = CFDictionaryGetValue(MutableCopy, @"class");
    if (CFEqual(v16, @"keys"))
    {
      v17 = SecKeyCreateFromAttributeDictionary(MutableCopy);
LABEL_14:
      v18 = v17;
LABEL_15:
      *a5 = v18;

      v19 = 1;
      goto LABEL_18;
    }

    if (CFEqual(v16, @"cert"))
    {
      v17 = SecCertificateCreateFromAttributeDictionary(MutableCopy);
      goto LABEL_14;
    }

    if (!CFEqual(v16, @"idnt"))
    {
      v18 = 0;
      goto LABEL_15;
    }

    v22 = CFDictionaryGetValue(MutableCopy, @"certdata");
    v23 = *MEMORY[0x1E695E480];
    v24 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], v22);
    v25 = SecKeyCreateFromAttributeDictionary(MutableCopy);
    if (v25 && v24)
    {
      v26 = SecIdentityCreate(v23, v24, v25);
    }

    else
    {
      v31 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "SecItem: failed to create identity", buf, 2u);
      }

      v26 = 0;
      v18 = 0;
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    CFRelease(v25);
    v18 = v26;
LABEL_38:
    if (v24)
    {
      CFRelease(v24);
    }

    goto LABEL_15;
  }

  if (!cf)
  {
    v33 = MEMORY[0x1E696ABC0];
    v34 = getTKErrorDomain();
    v35 = [v33 errorWithDomain:v34 code:-7 userInfo:0];

    if (a6)
    {
      *a6 = v35;
    }

    goto LABEL_17;
  }

  Domain = CFErrorGetDomain(cf);
  getTKErrorDomain();
  if (CFEqual(Domain, v28))
  {
    Code = CFErrorGetCode(cf);
    getTKTokenNotFoundAndRegistered_10505();
    if (Code == v30)
    {
      v11 = 0;
      goto LABEL_7;
    }
  }

  if (!a6)
  {
    goto LABEL_17;
  }

  v20 = cf;
  v32 = *a6;
  if (*a6 != cf)
  {
    if (!cf || (CFRetain(cf), (v32 = *a6) != 0))
    {
      CFRelease(v32);
    }

    v19 = 0;
    *a6 = v20;
LABEL_18:
    v20 = cf;
    if (!cf)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v19 = 0;
  if (cf)
  {
LABEL_19:
    CFRelease(v20);
  }

LABEL_20:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  return v19;
}

SecKeyRef SecKeyCreateFromAttributeDictionary(const __CFDictionary *a1)
{
  error = 0;
  Value = CFDictionaryGetValue(a1, @"v_Data");
  v3 = SecKeyCreateWithData(Value, a1, &error);
  if (!v3)
  {
    CFRelease(error);
  }

  return v3;
}

SecKeyRef SecKeyCreateWithData(CFDataRef keyData, CFDictionaryRef attributes, CFErrorRef *error)
{
  *&v65[5] = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = _os_activity_create(&dword_1887D2000, "SecKeyCreateWithData", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v8 = SecCFAllocatorZeroize_sAllocator;
  Value = CFDictionaryGetValue(attributes, @"tkid");
  if (!Value)
  {
    if (!keyData)
    {
      SecError(-50, error, @"Failed to provide key data to SecKeyCreateWithData");
LABEL_32:
      CTKKey = 0;
      goto LABEL_33;
    }

    v13 = CFDictionaryGetValue(attributes, @"type");
    v14 = SecKeyParamsAsInt64(v13, @"key type", error);
    if (v14 < 0)
    {
      goto LABEL_46;
    }

    v15 = CFDictionaryGetValue(attributes, @"kcls");
    v16 = SecKeyParamsAsInt64(v15, @"key class", error);
    v17 = v16;
    if (v16 < 0)
    {
      goto LABEL_30;
    }

    if (v16 == 2)
    {
      SecError(-4, error, @"Unsupported symmetric key type: %@", v13);
      goto LABEL_30;
    }

    if (v16 != 1)
    {
      if (v16)
      {
        SecError(-50, error, @"Unsupported key class: %@", v15);
        goto LABEL_30;
      }

      if (v14 > 107)
      {
        if (v14 <= 110)
        {
          if (v14 == 108)
          {
            BytePtr = CFDataGetBytePtr(keyData);
            Length = CFDataGetLength(keyData);
            CTKKey = SecKeyCreate(v8, &kSecX448PublicKeyDescriptor, BytePtr, Length, 7);
            if (CTKKey)
            {
              goto LABEL_33;
            }

            SecError(-50, error, @"X448 public key creation from data failed");
          }

          else if (v14 == 109)
          {
            v53 = CFDataGetBytePtr(keyData);
            v54 = CFDataGetLength(keyData);
            CTKKey = SecKeyCreate(v8, &kSecKyberPublicKeyDescriptor, v53, v54, 0);
            if (CTKKey)
            {
              goto LABEL_33;
            }

            SecError(-50, error, @"Kyber public key creation from data failed");
          }

          else
          {
            v28 = CFDataGetBytePtr(keyData);
            v29 = CFDataGetLength(keyData);
            CTKKey = SecKeyCreate(v8, &kSecMLKEMPublicKeyDescriptor, v28, v29, 0);
            if (CTKKey)
            {
              goto LABEL_33;
            }

            SecError(-50, error, @"ML-KEM public key creation from data failed");
          }

          goto LABEL_46;
        }

        if ((v14 - 2147483678) >= 3)
        {
          if (v14 == 111)
          {
            v18 = CFDataGetBytePtr(keyData);
            v19 = CFDataGetLength(keyData);
            CTKKey = SecKeyCreate(v8, &kSecMLDSAPublicKeyDescriptor, v18, v19, 0);
            if (CTKKey)
            {
              goto LABEL_33;
            }

            SecError(-50, error, @"ML-DSA public key creation from data failed");
            goto LABEL_46;
          }

          goto LABEL_91;
        }

        goto LABEL_44;
      }

      if (v14 > 104)
      {
        if (v14 == 105)
        {
          v57 = CFDataGetBytePtr(keyData);
          v58 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecEd25519PublicKeyDescriptor, v57, v58, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"Ed25519 public key creation from data failed");
        }

        else if (v14 == 106)
        {
          v59 = CFDataGetBytePtr(keyData);
          v60 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecX25519PublicKeyDescriptor, v59, v60, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"X25519 public key creation from data failed");
        }

        else
        {
          v30 = CFDataGetBytePtr(keyData);
          v31 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecEd448PublicKeyDescriptor, v30, v31, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"Ed448 public key creation from data failed");
        }

        goto LABEL_46;
      }

      if (v14 != 42)
      {
        if (v14 != 43 && v14 != 73)
        {
LABEL_91:
          v61 = [MEMORY[0x1E696AD98] numberWithLongLong:v14];
          SecError(-50, error, @"Unsupported public key type: %@ (algorithm: %@)", v13, v61);

LABEL_46:
          v17 = 0;
          goto LABEL_30;
        }

LABEL_44:
        v26 = CFDataGetBytePtr(keyData);
        v27 = CFDataGetLength(keyData);
        CTKKey = SecKeyCreate(v8, &kSecECPublicKeyDescriptor, v26, v27, 7);
        if (CTKKey)
        {
          goto LABEL_33;
        }

        SecError(-50, error, @"EC public key creation from data failed");
        goto LABEL_46;
      }

      v55 = CFDataGetBytePtr(keyData);
      v56 = CFDataGetLength(keyData);
      v42 = SecKeyCreate(v8, &kSecRSAPublicKeyDescriptor, v55, v56, 7);
      if (!v42)
      {
        SecError(-50, error, @"RSA public key creation from data failed");
        goto LABEL_46;
      }

LABEL_86:
      CTKKey = v42;
      goto LABEL_33;
    }

    if (v14 > 106)
    {
      if (v14 <= 108)
      {
        if (v14 == 107)
        {
          v43 = CFDataGetBytePtr(keyData);
          v44 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecEd448PrivateKeyDescriptor, v43, v44, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"Ed448 private key creation from data failed");
        }

        else
        {
          v34 = CFDataGetBytePtr(keyData);
          v35 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecX448PrivateKeyDescriptor, v34, v35, 7);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"X448 private key creation from data failed");
        }

        goto LABEL_77;
      }

      switch(v14)
      {
        case 'm':
          v45 = CFDataGetBytePtr(keyData);
          v46 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecKyberPrivateKeyDescriptor, v45, v46, 0);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"Kyber private key creation from data failed");
          goto LABEL_77;
        case 'n':
          v49 = CFDataGetBytePtr(keyData);
          v50 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecMLKEMPrivateKeyDescriptor, v49, v50, 0);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"ML-KEM private key creation from data failed");
          goto LABEL_77;
        case 'o':
          v24 = CFDataGetBytePtr(keyData);
          v25 = CFDataGetLength(keyData);
          CTKKey = SecKeyCreate(v8, &kSecMLDSAPrivateKeyDescriptor, v24, v25, 0);
          if (CTKKey)
          {
            goto LABEL_33;
          }

          SecError(-50, error, @"ML-DSA private key creation from data failed");
          goto LABEL_77;
      }

      goto LABEL_76;
    }

    if (v14 <= 72)
    {
      if (v14 == 42)
      {
        v40 = CFDataGetBytePtr(keyData);
        v41 = CFDataGetLength(keyData);
        v42 = SecKeyCreate(v8, &kSecRSAPrivateKeyDescriptor, v40, v41, 7);
        if (v42)
        {
          goto LABEL_86;
        }

        SecError(-50, error, @"RSA private key creation from data failed");
LABEL_77:
        v17 = 1;
LABEL_30:
        v11 = _SECKEY_LOG_11460();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          if (error)
          {
            v36 = *error;
          }

          else
          {
            v36 = 0;
          }

          *buf = 67109634;
          *v64 = v14;
          *&v64[4] = 1024;
          *&v64[6] = v17;
          v65[0] = 2114;
          *&v65[1] = v36;
          v37 = "Failed to create key from data, algorithm:%d, class:%d: %{public}@";
          v38 = v11;
          v39 = 24;
          goto LABEL_80;
        }

LABEL_31:

        goto LABEL_32;
      }

      if (v14 != 43)
      {
LABEL_76:
        SecError(-50, error, @"Unsupported private key type: %@", v13);
        goto LABEL_77;
      }
    }

    else if (v14 != 73)
    {
      if (v14 == 105)
      {
        v47 = CFDataGetBytePtr(keyData);
        v48 = CFDataGetLength(keyData);
        CTKKey = SecKeyCreate(v8, &kSecEd25519PrivateKeyDescriptor, v47, v48, 7);
        if (CTKKey)
        {
          goto LABEL_33;
        }

        SecError(-50, error, @"Ed25519 private key creation from data failed");
        goto LABEL_77;
      }

      if (v14 == 106)
      {
        v20 = CFDataGetBytePtr(keyData);
        v21 = CFDataGetLength(keyData);
        CTKKey = SecKeyCreate(v8, &kSecX25519PrivateKeyDescriptor, v20, v21, 7);
        if (CTKKey)
        {
          goto LABEL_33;
        }

        SecError(-50, error, @"X25519 private key creation from data failed");
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    v32 = CFDataGetBytePtr(keyData);
    v33 = CFDataGetLength(keyData);
    CTKKey = SecKeyCreate(v8, &kSecECPrivateKeyDescriptor, v32, v33, 7);
    if (CTKKey)
    {
      goto LABEL_33;
    }

    SecError(-50, error, @"EC private key creation from data failed");
    goto LABEL_77;
  }

  CTKKey = SecKeyCreateCTKKey(v8, attributes, error);
  if (!CTKKey)
  {
    v11 = _SECKEY_LOG_11460();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (error)
      {
        v12 = *error;
      }

      else
      {
        v12 = 0;
      }

      *buf = 138543618;
      *v64 = Value;
      *&v64[8] = 2114;
      *v65 = v12;
      v37 = "Failed to create key for tokenID=%{public}@: %{public}@";
      v38 = v11;
      v39 = 22;
LABEL_80:
      _os_log_debug_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEBUG, v37, buf, v39);
      goto LABEL_31;
    }

    goto LABEL_31;
  }

LABEL_33:
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v6);
  v22 = *MEMORY[0x1E69E9840];
  return CTKKey;
}

uint64_t SecKeyParamsAsInt64(void *a1, uint64_t a2, __CFString **a3)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [a1 longLongValue];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", v6];
    v8 = [v7 isEqualToString:a1];

    if (v8)
    {
      return v6;
    }

    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
    SecError(-50, a3, @"Unsupported %@: %@ (converted value: %@"), a2, a1, v9;

    return -1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    SecError(-50, a3, @"Unsupported %@: %@", a2, a1);
    return -1;
  }

  return [a1 longLongValue];
}

void SecRSAPrivateKeyDestroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = (4 * *v1) & 0x7FFFFFFFFFFFFFF8;
    cc_clear();
    free(*(a1 + 24));
    *(a1 + 24) = 0;
  }
}

uint64_t SecRSAPrivateKeyInit(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, int a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a4 == 7)
  {
LABEL_4:
    v6 = ccrsa_import_priv_n();
    if ((v6 - 129) >= 0xFFFFFFFFFFFFFF80)
    {
      v7 = v6;
      v8 = malloc_type_calloc(1uLL, 7 * ((4 * v6) & 0x3F8) + 32 * v6 + 176, 0x10600407F0B3959uLL);
      *(a1 + 24) = v8;
      if (v8)
      {
        *v8 = v7;
        fips186_key = ccrsa_import_priv();
        goto LABEL_7;
      }

      goto LABEL_23;
    }

LABEL_10:
    result = 4294967246;
    goto LABEL_20;
  }

  if (a4 != 5)
  {
    if (a4 != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  Value = CFDictionaryGetValue(theDict, @"bsiz");
  if (Value)
  {
    v12 = Value;
    v13 = CFGetTypeID(Value);
    if (v13 == CFNumberGetTypeID())
    {
      *v20 = 0xAAAAAAAAAAAAAAAALL;
      CFNumberGetValue(v12, kCFNumberCFIndexType, v20);
      IntValue = *v20;
    }

    else
    {
      v15 = CFGetTypeID(v12);
      if (v15 != CFStringGetTypeID())
      {
        goto LABEL_17;
      }

      IntValue = CFStringGetIntValue(v12);
    }

    if ((IntValue - 8193) > 0xFFFFFFFFFFFFE1FELL)
    {
      v18 = (IntValue + 63) >> 6;
      v19 = malloc_type_calloc(1uLL, 7 * (((IntValue + 63) >> 4) & 0x7F8) + 32 * v18 + 176, 0x10600407F0B3959uLL);
      *(a1 + 24) = v19;
      if (v19)
      {
        *v19 = v18;
        ccrng();
        ccrng();
        fips186_key = ccrsa_generate_fips186_key();
LABEL_7:
        if (fips186_key)
        {
          result = 4294967246;
        }

        else
        {
          result = 0;
        }

        goto LABEL_20;
      }

LABEL_23:
      result = 4294967188;
      goto LABEL_20;
    }
  }

LABEL_17:
  v16 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 138412290;
    *&v20[4] = theDict;
    _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "Invalid or missing key size in: %@", v20, 0xCu);
  }

  result = 4294941985;
LABEL_20:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *SecRSAPrivateKeyCopyAttributeDictionary(void *a1)
{
  v2 = SecRSAPrivateKeyCopyPKCS1(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = SecKeyCopyAttributeDictionaryWithLocalKey(a1, @"42", v2);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  CFDictionarySetValue(MutableCopy, @"drve", *MEMORY[0x1E695E4C0]);
  v6 = a1[3];
  valuePtr = cczp_bitlen();
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  CFDictionarySetValue(MutableCopy, @"bsiz", v7);
  CFDictionarySetValue(MutableCopy, @"esiz", v7);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  CFRelease(v3);
  return MutableCopy;
}

__CFData *SecRSAPrivateKeyCopyPKCS1(void *a1)
{
  v1 = a1[3];
  v2 = CFGetAllocator(a1);
  v3 = ccrsa_export_priv_size();
  Mutable = CFDataCreateMutable(v2, v3);
  v5 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v3);
    CFDataGetMutableBytePtr(v5);
    if (ccrsa_export_priv())
    {
      CFRelease(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t SecRSAPrivateKeyCopyPublicSerialization(void *a1, __CFData **a2)
{
  v3 = a1[3];
  v4 = CFGetAllocator(a1);
  v5 = ccrsa_ctx_public();
  PKCS1 = SecRSAPublicKeyCreatePKCS1(v4, v5);
  *a2 = PKCS1;
  if (PKCS1)
  {
    return 0;
  }

  else
  {
    return 4294941021;
  }
}

uint64_t _SSLNewContext(int a1, SSLContextRef *a2)
{
  if (!a2)
  {
    return 4294967246;
  }

  v3 = SSLCreateContext(*MEMORY[0x1E695E480], (a1 == 0), kSSLStreamType);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 4294967188;
  }
}

SSLContextRef SSLCreateContext(CFAllocatorRef alloc, SSLProtocolSide protocolSide, SSLConnectionType connectionType)
{
  v3 = SSLCreateContextWithRecordFuncs(alloc, protocolSide, connectionType, SSLRecordLayerInternal);
  if (!v3)
  {
    return v3;
  }

  v4 = malloc_type_malloc(0x30uLL, 0x7BE92BBDuLL);
  if (!v4)
  {
LABEL_16:
    CFRelease(v3);
    return 0;
  }

  v5 = v4;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  *v4 = 0u;
  v12 = *(v3 + 104) == 0;
  ccrng();
  v6 = tls_record_create();
  *v5 = v6;
  if (!v6)
  {
LABEL_15:
    free(v5);
    goto LABEL_16;
  }

  v7 = malloc_type_malloc(0x4800uLL, 0x7BE92BBDuLL);
  if (v7)
  {
    v8 = 18432;
  }

  else
  {
    v8 = 0;
  }

  v5[2] = v8;
  v5[3] = v7;
  if (!v7)
  {
    if (*v5)
    {
      tls_record_destroy();
    }

    goto LABEL_15;
  }

  v5[1] = v3;
  v9 = *(v3 + 80);
  v10 = v9 > 6;
  v11 = (1 << v9) & 0x59;
  v12 = v10 || v11 == 0;
  if (!v12)
  {
    *(v3 + 48) = v5;
  }

  return v3;
}

uint64_t SSLCreateContextWithRecordFuncs(uint64_t a1, int a2, int a3, uint64_t a4)
{
  SSLContextGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v8 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), 0x220uLL);
    v9 = tls_handshake_create();
    *(v8 + 56) = v9;
    if (v9)
    {
      if (SSLCreateContextWithRecordFuncs_onceToken != -1)
      {
        dispatch_once(&SSLCreateContextWithRecordFuncs_onceToken, &__block_literal_global_8321);
      }

      *(v8 + 64) = g_session_cache;
      v10 = *(v8 + 56);
      tls_handshake_set_callbacks();
      *(v8 + 104) = a3 == 1;
      *(v8 + 80) = 0;
      *(v8 + 424) = 0x3FF0000000000000;
      *(v8 + 432) = 1400;
      v11 = *(v8 + 56);
      tls_handshake_get_min_protocol_version();
      v12 = *(v8 + 56);
      tls_handshake_get_max_protocol_version();
      if (a2 == 1)
      {
        v13 = *(v8 + 56);
        tls_handshake_set_sct_enable();
        v14 = *(v8 + 56);
        tls_handshake_set_ocsp_enable();
      }

      *(v8 + 88) = 0;
      *(v8 + 108) = a2;
      *(v8 + 40) = a4;
      *(v8 + 187) = 1;
      *(v8 + 314) = 1;
      *(v8 + 315) = kSSLDisableRecordSplittingDefaultValue == 0;
      *(v8 + 513) = 0;
      if (kSSLSessionConfigDefaultValue)
      {
        SSLSetSessionConfig(v8, kSSLSessionConfigDefaultValue);
      }

      if (kMinDhGroupSizeDefaultValue)
      {
        v15 = *(v8 + 56);
        tls_handshake_set_min_dh_group_size();
      }

      if (kMinProtocolVersionDefaultValue)
      {
        SSLSetProtocolVersionMin(v8, kMinProtocolVersionDefaultValue);
      }

      *(v8 + 352) = 0;
      *(v8 + 355) = 0;
    }

    else
    {
      CFRelease(v8);
      return 0;
    }
  }

  return v8;
}

CFTypeID SSLContextGetTypeID(void)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SSLContextGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_8315;
  block[4] = &SSLContextGetTypeID_sSSLContextGetTypeIDSingleton;
  if (SSLContextGetTypeID_sSSLContextGetTypeIDOnce != -1)
  {
    dispatch_once(&SSLContextGetTypeID_sSSLContextGetTypeIDOnce, block);
  }

  return SSLContextGetTypeID_sSSLContextGetTypeIDSingleton;
}

OSStatus SSLSetIOFuncs(SSLContextRef context, SSLReadFunc readFunc, SSLWriteFunc writeFunc)
{
  if (!context)
  {
    return -50;
  }

  if (*(context + 5) != SSLRecordLayerInternal)
  {
    return -909;
  }

  v5 = *(context + 20);
  v6 = v5 > 6;
  v7 = (1 << v5) & 0x59;
  if (v6 || v7 == 0)
  {
    return -909;
  }

  result = 0;
  *(context + 2) = readFunc;
  *(context + 3) = writeFunc;
  return result;
}

uint64_t SecIdentityCreate(int a1, void *cf, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!cf)
  {
    goto LABEL_13;
  }

  v5 = CFGetTypeID(cf);
  TypeID = SecCertificateGetTypeID();
  Instance = 0;
  if (!a3 || v5 != TypeID)
  {
    goto LABEL_14;
  }

  v8 = CFGetTypeID(a3);
  if (v8 != SecKeyGetTypeID())
  {
LABEL_13:
    Instance = 0;
    goto LABEL_14;
  }

  v9 = SecKeyCopyPublicKey(a3);
  if (!v9)
  {
    v15 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "SecIdentityCreate: failed to extract public key from private key", &v19, 2u);
    }

    goto LABEL_13;
  }

  v10 = v9;
  v11 = SecKeyCopyExternalRepresentation(v9, 0);
  v12 = SecCertificateCopyKey(cf);
  v13 = SecKeyCopyExternalRepresentation(v12, 0);
  v14 = v13;
  if (v11 && v13)
  {
    if (CFEqual(v13, v11))
    {
      goto LABEL_9;
    }

LABEL_16:
    v18 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 141558786;
      v20 = 1752392040;
      v21 = 2112;
      v22 = v14;
      v23 = 2160;
      v24 = 1752392040;
      v25 = 2112;
      v26 = v11;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "Creating SecIdentity with mismatching public keys: %{mask.hash}@, %{mask.hash}@", &v19, 0x2Au);
    }

    Instance = 0;
    goto LABEL_19;
  }

  if (v13 != v11)
  {
    goto LABEL_16;
  }

LABEL_9:
  SecIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    CFRetain(cf);
    CFRetain(a3);
    *(Instance + 16) = cf;
    *(Instance + 24) = a3;
  }

LABEL_19:
  CFRelease(v10);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
  return Instance;
}

CFDataRef SecKeyCreateSignature(SecKeyRef key, SecKeyAlgorithm algorithm, CFDataRef dataToSign, CFErrorRef *error)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _os_activity_create(&dword_1887D2000, "SecKeyCreateSignature", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  _SecKeyCheck(key, "SecKeyCreateSignature");
  if (!dataToSign)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyCreateSignature() called with NULL dataToSign"];
  }

  v17 = 0;
  v14[0] = key;
  v14[1] = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, algorithm);
  cf = Mutable;
  v16 = 0;
  v11 = SecKeyRunAlgorithmAndCopyResult(v14, dataToSign, 0, &v17);
  v12 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v12);
  }

  _SecKeyErrorPropagate(v11 != 0, "SecKeyCreateSignature", v17, error);
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v8);
  return v11;
}

uint64_t _SSLSetEnableCertVerify(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v3 = *(a1 + 80);
  v4 = v3 > 6;
  v5 = (1 << v3) & 0x59;
  if (v4 || v5 == 0)
  {
    return 4294966387;
  }

  result = 0;
  *(a1 + 187) = a2;
  return result;
}

OSStatus SSLSetClientSideAuthenticate(SSLContextRef context, SSLAuthenticate auth)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 20);
  v3 = v2 > 6;
  v4 = (1 << v2) & 0x59;
  if (v3 || v4 == 0)
  {
    return -909;
  }

  *(context + 63) = auth;
  if (auth <= kTryAuthenticate)
  {
    v6 = *(context + 7);
    tls_handshake_set_client_auth();
  }

  return 0;
}

CFTypeID SecIdentityGetTypeID(void)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_10284;
  block[4] = &SecIdentityGetTypeID_sSecIdentityGetTypeIDSingleton;
  if (SecIdentityGetTypeID_sSecIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&SecIdentityGetTypeID_sSecIdentityGetTypeIDOnce, block);
  }

  return SecIdentityGetTypeID_sSecIdentityGetTypeIDSingleton;
}

OSStatus SSLSetCertificate(SSLContextRef context, CFArrayRef certRefs)
{
  if (!context)
  {
    return -50;
  }

  v4 = *(context + 19);
  if (v4)
  {
    *(context + 19) = 0;
    CFRelease(v4);
  }

  if (certRefs)
  {
    v5 = *(context + 7);
    result = tls_helper_set_identity_from_array();
    if (result)
    {
      return result;
    }

    *(context + 19) = certRefs;
    CFRetain(certRefs);
  }

  return 0;
}

size_t SecKeyGetBlockSize(SecKeyRef key)
{
  _SecKeyCheck(key, "SecKeyGetBlockSize");
  v2 = *(*(key + 2) + 80);
  if (!v2)
  {
    return 0;
  }

  return v2(key);
}

OSStatus SSLSetProtocolVersionMin(SSLContextRef context, SSLProtocol minVersion)
{
  if (!context)
  {
    return -50;
  }

  v2 = minVersion - 1;
  if ((minVersion - 1) > 8)
  {
    return -9830;
  }

  v4 = dword_1889605B8[v2];
  if (!*(context + 104))
  {
    if (v4 - 772 >= 0xFFFFFFFC)
    {
      if (v4 > *(context + 25))
      {
        *(context + 25) = v4;
      }

      goto LABEL_13;
    }

    return -9830;
  }

  if (v2 != 8)
  {
    return -9830;
  }

  if (*(context + 25) >> 8 >= 0xFFu)
  {
    *(context + 25) = 65279;
  }

LABEL_13:
  *(context + 24) = v4;
  v6 = *(context + 7);
  tls_handshake_set_min_protocol_version();
  v7 = *(context + 7);
  v8 = *(context + 25);
  tls_handshake_set_max_protocol_version();
  return 0;
}

OSStatus SSLSetConnection(SSLContextRef context, SSLConnectionRef connection)
{
  if (!context)
  {
    return -50;
  }

  if (*(context + 5) != SSLRecordLayerInternal)
  {
    return -909;
  }

  v4 = *(context + 20);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  if (v5 || v6 == 0)
  {
    return -909;
  }

  result = 0;
  *(context + 4) = connection;
  return result;
}

OSStatus SSLSetSessionOption(SSLContextRef context, SSLSessionOption option, Boolean value)
{
  if (!context)
  {
    return -50;
  }

  v4 = *(context + 20);
  v5 = v4 > 6;
  v6 = (1 << v4) & 0x59;
  if (v5 || v6 == 0)
  {
    return -909;
  }

  result = -50;
  if (option > kSSLSessionOptionSendOneByteRecord)
  {
    if (option <= kSSLSessionOptionFallback)
    {
      v11 = *(context + 7);
      if (option == kSSLSessionOptionAllowServerIdentityChange)
      {
        tls_handshake_set_server_identity_change();
        result = 0;
        *(context + 360) = 1;
      }

      else
      {
        tls_handshake_set_fallback();
        result = 0;
        *(context + 513) = value;
      }
    }

    else
    {
      switch(option)
      {
        case kSSLSessionOptionBreakOnClientHello:
          result = 0;
          *(context + 359) = value;
          break;
        case kSSLSessionOptionAllowRenegotiation:
          v13 = *(context + 7);
          tls_handshake_set_renegotiation();
          result = 0;
          *(context + 361) = 1;
          break;
        case kSSLSessionOptionEnableSessionTickets:
          v10 = *(context + 7);
          tls_handshake_set_session_ticket_enabled();
          result = 0;
          *(context + 362) = 1;
          break;
      }
    }
  }

  else
  {
    if (option > kSSLSessionOptionBreakOnCertRequested)
    {
      if (option != kSSLSessionOptionBreakOnClientAuth)
      {
        if (option == kSSLSessionOptionFalseStart)
        {
          v12 = *(context + 7);
          tls_handshake_set_false_start();
          result = 0;
          *(context + 512) = value;
        }

        else
        {
          if (*(context + 315) != value)
          {
            (*(*(context + 5) + 72))(*(context + 6), 0, value != 0);
          }

          result = 0;
          *(context + 315) = value;
        }

        return result;
      }

      result = 0;
      *(context + 355) = value;
LABEL_28:
      *(context + 187) = value == 0;
      return result;
    }

    if (option == kSSLSessionOptionBreakOnServerAuth)
    {
      result = 0;
      *(context + 353) = value;
      goto LABEL_28;
    }

    if (option == kSSLSessionOptionBreakOnCertRequested)
    {
      result = 0;
      *(context + 354) = value;
    }
  }

  return result;
}

OSStatus SSLHandshake(SSLContextRef context)
{
  if (!context)
  {
    return -50;
  }

  v2 = *(context + 20);
  if (v2 == 3)
  {
    return -9805;
  }

  if (v2 == 4)
  {
    return -9806;
  }

  if (*(context + 104))
  {
    if (*(context + 52) != 0.0 && *(context + 52) < CFAbsoluteTimeGetCurrent())
    {
      result = MEMORY[0x18CFDBB00](*(context + 7));
      if (result)
      {
        return result;
      }
    }

    v2 = *(context + 20);
  }

  if (v2 == 6)
  {
    v4 = *(context + 21);
    if (v4 == -67818 || v4 == -67820)
    {
      v5 = *(context + 7);
      tls_handshake_send_alert();

      return SSLClose(context);
    }

    else
    {
LABEL_20:
      while (1)
      {
        result = SSLHandshakeProceed(context);
        if (result)
        {
          if (result != -9849)
          {
            break;
          }
        }

        if (*(context + 18) && *(context + 19))
        {
          result = (*(*(context + 5) + 64))(*(context + 6));
          if ((result + 10009) <= 9)
          {
            return dword_188960578[result + 10009];
          }

          return result;
        }
      }
    }
  }

  else
  {
    if (v2)
    {
      goto LABEL_20;
    }

    if (*(context + 27) != 1 || (result = SSLHandshakeStart(context)) == 0)
    {
      *(context + 20) = 1;
      goto LABEL_20;
    }
  }

  return result;
}