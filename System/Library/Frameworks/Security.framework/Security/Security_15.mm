uint64_t __SecTrustSetPinningException_block_invoke(uint64_t a1)
{
  result = SecTrustRemoveOptionInPolicies(*(*(a1 + 40) + 32), @"PinningRequired");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__SecTrust *SecTrustGetDetails(__SecTrust *result)
{
  if (result)
  {
    v1 = result;
    SecTrustEvaluateIfNecessary(result);
    return *(v1 + 11);
  }

  return result;
}

os_log_t __SecTrustEvaluateThreadRuntimeCheck_block_invoke_3()
{
  result = os_log_create("com.apple.runtime-issues", "Security");
  checkmap_block_invoke_2_runtimeLog = result;
  return result;
}

__SecTrust *SecTrustCopyFilteredDetails(__SecTrust *a1)
{
  v1 = a1;
  if (a1)
  {
    SecTrustEvaluateIfNecessary(a1);
    v5 = 0;
    v6 = &v5;
    v7 = 0x2000000000;
    v8 = 0;
    v2 = *(v1 + 17);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __SecTrustCopyFilteredDetails_block_invoke;
    v4[3] = &unk_1E70E28C8;
    v4[4] = &v5;
    v4[5] = v1;
    dispatch_sync(v2, v4);
    v1 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void *__SecTrustCopyFilteredDetails_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(v2 + 88);
  if (v3)
  {
    result = CFRetain(*(v2 + 88));
  }

  *(*(v1[4] + 8) + 24) = v3;
  return result;
}

uint64_t SecTrustIsExpiredOnly(__SecTrust *a1)
{
  v1 = SecTrustCopyFilteredDetails(a1);
  if (v1)
  {
    v2 = v1;
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v6 = 0;
      v7 = *MEMORY[0x1E695E4C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
        if (ValueAtIndex)
        {
          v9 = ValueAtIndex;
          v10 = CFDictionaryGetCount(ValueAtIndex);
          if (v10 > 1)
          {
            break;
          }

          if (v10)
          {
            Value = CFDictionaryGetValue(v9, @"TemporalValidity");
            if (!Value)
            {
              break;
            }

            v12 = Value;
            v13 = CFGetTypeID(Value);
            if (v13 != CFBooleanGetTypeID() || !CFEqual(v12, v7))
            {
              break;
            }

            v5 = 1;
          }
        }

        if (v4 == ++v6)
        {
          goto LABEL_14;
        }
      }
    }

    v5 = 0;
LABEL_14:
    CFRelease(v2);
  }

  else
  {
    return 0;
  }

  return v5;
}

__CFString *SecTrustCopyFailureDescription(__SecTrust *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Mutable = CFStringCreateMutable(0, 0);
    SecTrustEvaluateIfNecessary(a1);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = 0;
    v3 = *(a1 + 17);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustCopyFailureDescription_block_invoke;
    block[3] = &unk_1E70E2EB0;
    block[4] = &v27;
    block[5] = a1;
    dispatch_sync(v3, block);
    v4 = v28[3];
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      v23 = Count - 1;
      v24 = Count;
      if (Count >= 1)
      {
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v28[3], v6);
          v8 = CFDictionaryGetCount(ValueAtIndex);
          if (v8 >= 1)
          {
            break;
          }

LABEL_18:
          if (++v6 == v24)
          {
            goto LABEL_19;
          }
        }

        v9 = v8;
        if (v6)
        {
          if (v6 != v23)
          {
            CFStringAppendFormat(Mutable, 0, @" [ca%ld", v6);
LABEL_12:
            v25 = &v23;
            MEMORY[0x1EEE9AC00](v12);
            v14 = (&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
            memset(v14, 170, v13);
            CFDictionaryGetKeysAndValues(ValueAtIndex, v14, 0);
            qsort(v14, v9, 8uLL, compare_strings);
            do
            {
              v16 = *v14++;
              v15 = v16;
              Value = CFDictionaryGetValue(ValueAtIndex, v16);
              v18 = CFGetTypeID(Value);
              if (v18 == CFBooleanGetTypeID())
              {
                v19 = &stru_1EFA8C6C8;
              }

              else
              {
                v19 = Value;
              }

              CFStringAppendFormat(Mutable, 0, @" %@%@", v15, v19);
              --v9;
            }

            while (v9);
            CFStringAppend(Mutable, @"]");
            goto LABEL_18;
          }

          v10 = Mutable;
          v11 = @" [root";
        }

        else
        {
          v10 = Mutable;
          v11 = @" [leaf";
        }

        CFStringAppend(v10, v11);
        goto LABEL_12;
      }
    }

LABEL_19:
    v20 = v28[3];
    if (v20)
    {
      CFRelease(v20);
    }

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    Mutable = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void *__SecTrustCopyFailureDescription_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(v2 + 88);
  if (v3)
  {
    result = CFRetain(*(v2 + 88));
  }

  *(*(v1[4] + 8) + 24) = v3;
  return result;
}

void *__SecTrustCopyErrorStrings_block_invoke(void *result)
{
  v1 = result;
  v2 = result[6];
  v3 = *(v2 + 88);
  if (v3)
  {
    result = CFRetain(*(v2 + 88));
  }

  *(*(v1[4] + 8) + 24) = v3;
  v4 = v1[6];
  v5 = *(v4 + 72);
  if (v5)
  {
    result = CFRetain(*(v4 + 72));
  }

  *(*(v1[5] + 8) + 24) = v5;
  return result;
}

void __SecTrustCopyErrorStrings_block_invoke_3(void *a1, const void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = SecTrustCopyErrorStrings_policyChecks;
  v14.length = CFArrayGetCount(SecTrustCopyErrorStrings_policyChecks);
  v14.location = 0;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v14, a2);
  if (FirstIndexOfValue < 0x4F)
  {
    v7 = *(a1[4] + 8);
    v8 = &checkmap + 16 * FirstIndexOfValue;
    if (*(v7 + 24) > *v8)
    {
      *(v7 + 24) = *v8;
      *(*(a1[5] + 8) + 24) = *(*(a1[6] + 8) + 24);
      *(*(a1[7] + 8) + 24) = *(v8 + 1);
    }

    if ((*(*(a1[8] + 8) + 24) & 1) == 0)
    {
      CFStringAppend(*(*(a1[9] + 8) + 24), @", ");
    }

    v9 = SecFrameworkCopyLocalizedString(*(v8 + 1), @"Trust");
    CFStringAppend(*(*(a1[9] + 8) + 24), v9);
    if (v9)
    {
      CFRelease(v9);
    }

    *(*(a1[8] + 8) + 24) = 0;
  }

  else
  {
    v6 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = a2;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "unknown failure key in details dictionary: %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __SecTrustCopyErrorStrings_block_invoke_2()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, @"SSLHostname");
  CFArrayAppendValue(Mutable, @"Email");
  CFArrayAppendValue(Mutable, @"TemporalValidity");
  CFArrayAppendValue(Mutable, @"ValidLeaf");
  CFArrayAppendValue(Mutable, @"WeakKeySize");
  CFArrayAppendValue(Mutable, @"WeakSignature");
  CFArrayAppendValue(Mutable, @"KeyUsage");
  CFArrayAppendValue(Mutable, @"ExtendedKeyUsage");
  CFArrayAppendValue(Mutable, @"SubjectCommonName");
  CFArrayAppendValue(Mutable, @"SubjectCommonNamePrefix");
  CFArrayAppendValue(Mutable, @"SubjectCommonNameTEST");
  CFArrayAppendValue(Mutable, @"SubjectOrganization");
  CFArrayAppendValue(Mutable, @"SubjectOrganizationalUnit");
  CFArrayAppendValue(Mutable, @"NotValidBefore");
  CFArrayAppendValue(Mutable, @"EAPTrustedServerNames");
  CFArrayAppendValue(Mutable, @"LeafMarkerOid");
  CFArrayAppendValue(Mutable, @"LeafMarkerOidWithoutValueCheck");
  CFArrayAppendValue(Mutable, @"LeafMarkersProdAndQA");
  CFArrayAppendValue(Mutable, @"BlackListedLeaf");
  CFArrayAppendValue(Mutable, @"GrayListedLeaf");
  CFArrayAppendValue(Mutable, @"LeafSPKISHA256");
  CFArrayAppendValue(Mutable, @"NotCA");
  CFArrayAppendValue(Mutable, @"MarkRepresentation");
  CFArrayAppendValue(Mutable, @"URI");
  CFArrayAppendValue(Mutable, @"IssuerCommonName");
  CFArrayAppendValue(Mutable, @"IssuerCommonNamePrefix");
  CFArrayAppendValue(Mutable, @"BasicConstraints");
  CFArrayAppendValue(Mutable, @"BasicConstraintsCA");
  CFArrayAppendValue(Mutable, @"BasicConstraintsPathLen");
  CFArrayAppendValue(Mutable, @"IntermediateSPKISHA256");
  CFArrayAppendValue(Mutable, @"IntermediateEKU");
  CFArrayAppendValue(Mutable, @"IntermediateMarkerOid");
  CFArrayAppendValue(Mutable, @"IntermediateMarkerOidWithoutValueCheck");
  CFArrayAppendValue(Mutable, @"IntermediateOrganization");
  CFArrayAppendValue(Mutable, @"IntermediateCountry");
  CFArrayAppendValue(Mutable, @"AnchorSHA256");
  CFArrayAppendValue(Mutable, @"AnchorTrusted");
  CFArrayAppendValue(Mutable, @"MissingIntermediate");
  CFArrayAppendValue(Mutable, @"AnchorApple");
  CFArrayAppendValue(Mutable, @"CAspkiSHA256");
  CFArrayAppendValue(Mutable, @"RootMarkerOid");
  CFArrayAppendValue(Mutable, @"NonEmptySubject");
  CFArrayAppendValue(Mutable, @"IdLinkage");
  CFArrayAppendValue(Mutable, @"KeySize");
  CFArrayAppendValue(Mutable, @"SignatureHashAlgorithms");
  CFArrayAppendValue(Mutable, @"CertificatePolicy");
  CFArrayAppendValue(Mutable, @"ValidRoot");
  CFArrayAppendValue(Mutable, @"CriticalExtensions");
  CFArrayAppendValue(Mutable, @"ChainLength");
  CFArrayAppendValue(Mutable, @"BasicCertificateProcessing");
  CFArrayAppendValue(Mutable, @"NameConstraints");
  CFArrayAppendValue(Mutable, @"PolicyConstraints");
  CFArrayAppendValue(Mutable, @"GrayListedKey");
  CFArrayAppendValue(Mutable, @"BlackListedKey");
  CFArrayAppendValue(Mutable, @"UsageConstraints");
  CFArrayAppendValue(Mutable, @"SystemTrustedWeakHash");
  CFArrayAppendValue(Mutable, @"SystemTrustedWeakKey");
  CFArrayAppendValue(Mutable, @"PinningRequired");
  CFArrayAppendValue(Mutable, @"Revocation");
  CFArrayAppendValue(Mutable, @"RevocationResponseRequired");
  CFArrayAppendValue(Mutable, @"CTRequired");
  CFArrayAppendValue(Mutable, @"SystemTrustedCTRequired");
  CFArrayAppendValue(Mutable, @"IssuerPolicyConstraints");
  CFArrayAppendValue(Mutable, @"IssuerNameConstraints");
  CFArrayAppendValue(Mutable, @"ValidityPeriodMaximums");
  CFArrayAppendValue(Mutable, @"SystemTrustValidityPeriod");
  CFArrayAppendValue(Mutable, @"OtherTrustValidityPeriod");
  CFArrayAppendValue(Mutable, @"ServerAuthEKU");
  CFArrayAppendValue(Mutable, @"EmailProtectionEKU");
  CFArrayAppendValue(Mutable, @"SinglePurposeChainEKU");
  CFArrayAppendValue(Mutable, @"UnparseableExtension");
  CFArrayAppendValue(Mutable, @"NonTlsCTRequired");
  CFArrayAppendValue(Mutable, @"DuplicateExtension");
  CFArrayAppendValue(Mutable, @"QWAC");
  CFArrayAppendValue(Mutable, @"NoNetworkAccess");
  CFArrayAppendValue(Mutable, @"ExtendedValidation");
  CFArrayAppendValue(Mutable, @"RevocationOnline");
  CFArrayAppendValue(Mutable, @"RevocationIfTrusted");
  CFArrayAppendValue(Mutable, @"RevocationDbIgnored");
  SecTrustCopyErrorStrings_policyChecks = Mutable;
}

OSStatus SecTrustEvaluateAsync(SecTrustRef trust, dispatch_queue_t queue, SecTrustCallback result)
{
  if (trust)
  {
    CFRetain(trust);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __SecTrustEvaluateAsync_block_invoke;
  v7[3] = &unk_1E70E2DE8;
  v7[4] = result;
  v7[5] = trust;
  dispatch_async(queue, v7);
  return 0;
}

void __SecTrustEvaluateAsync_block_invoke(uint64_t a1)
{
  v4 = -1431655766;
  if (SecTrustEvaluateInternal(*(a1 + 40), &v4))
  {
    v4 = 0;
  }

  v2 = *(a1 + 40);
  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }
}

void __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_565(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 40) + 160))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else
  {
    v2 = secLogObjForScope("trust");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      v6 = 134217984;
      v7 = v3;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "(Trust %p) No pending evals, starting", &v6, 0xCu);
    }

    v4 = *(a1 + 40);
    *(v4 + 160) = 1;
    dispatch_group_enter(*(v4 + 168));
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_545(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = secLogObjForScope("trust");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 40);
    v6 = 134217984;
    v7 = v5;
    _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "(Trust %p) Calling completion block", &v6, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *MEMORY[0x1E69E9840];
}

__CFDictionary *_onQueue_SecTrustCopyPlist(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = SecCertificateArraySerialize(v3);
    if (v4)
    {
      v5 = v4;
      CFDictionaryAddValue(Mutable, @"certificates", v4);
      CFRelease(v5);
    }
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = SecCertificateArraySerialize(v6);
    if (v7)
    {
      v8 = v7;
      CFDictionaryAddValue(Mutable, @"anchors", v7);
      CFRelease(v8);
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = CFGetTypeID(*(a1 + 32));
    if (v10 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v9);
      v12 = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
      v30.location = 0;
      v30.length = Count;
      CFArrayApplyFunction(v9, v30, serializePolicy, v12);
      if (v12)
      {
        CFDictionaryAddValue(Mutable, @"policies", v12);
        CFRelease(v12);
      }
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    CFDictionaryAddValue(Mutable, @"responses", v13);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    CFDictionaryAddValue(Mutable, @"scts", v14);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFDictionaryAddValue(Mutable, @"trustedLogs", v15);
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    CFDictionaryAddValue(Mutable, @"verifyDate", v16);
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    v18 = SecCertificateArraySerialize(v17);
    if (v18)
    {
      v19 = v18;
      CFDictionaryAddValue(Mutable, @"chain", v18);
      CFRelease(v19);
    }
  }

  v20 = *(a1 + 88);
  if (v20)
  {
    CFDictionaryAddValue(Mutable, @"details", v20);
  }

  v21 = *(a1 + 96);
  if (v21)
  {
    CFDictionaryAddValue(Mutable, @"info", v21);
  }

  v22 = *(a1 + 104);
  if (v22)
  {
    CFDictionaryAddValue(Mutable, @"exceptions", v22);
  }

  v23 = CFNumberCreate(0, kCFNumberSInt32Type, (a1 + 112));
  if (v23)
  {
    v24 = v23;
    CFDictionaryAddValue(Mutable, @"result", v23);
    CFRelease(v24);
  }

  v25 = *MEMORY[0x1E695E4D0];
  v26 = *MEMORY[0x1E695E4C0];
  if (*(a1 + 116))
  {
    v27 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v27 = *MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(Mutable, @"anchorsOnly", v27);
  if (*(a1 + 117))
  {
    v28 = v25;
  }

  else
  {
    v28 = v26;
  }

  CFDictionaryAddValue(Mutable, @"keychainsAllowed", v28);
  return Mutable;
}

SecTrustRef SecTrustCreateFromPropertyListRepresentation(const void *a1, __CFString **a2)
{
  v5 = 0;
  if (a1)
  {
    v3 = SecTrustCreateFromPlist(a1, &v5);
    if (v3)
    {
      SecError(v3, a2, @"unable to create trust ref");
    }
  }

  else
  {
    SecError(-50, a2, @"null property list input");
  }

  return v5;
}

void __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_547(uint64_t a1)
{
  v19 = 0;
  v2 = *(gTrustd + 40);
  v3 = *(*(*(a1 + 40) + 8) + 24);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 116);
  v7 = *(v3 + 117);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  v11 = *(v3 + 56);
  v12 = *(*(*(a1 + 48) + 8) + 24);
  if (SecTrustGetCurrentAccessGroups_onceToken != -1)
  {
    dispatch_once(&SecTrustGetCurrentAccessGroups_onceToken, &__block_literal_global_493);
  }

  v13 = *(*(*(a1 + 40) + 8) + 24);
  v14 = v2(v4, v5, v6, v7, v8, v9, v10, v11, v12, SecTrustGetCurrentAccessGroups_accessGroups, v13[13], v13[18], v13[19], v13 + 11, v13 + 12, v13 + 9, &v19);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_2;
  v16[3] = &unk_1E70E3860;
  v15 = *(a1 + 56);
  v17 = *(a1 + 32);
  v18 = v15;
  __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_2(v16, v14, v19);
}

void __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_557(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  *(v2 + 112) = *(a1 + 64);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  v5 = v4[11];
  if (*(v2 + 88) != v5)
  {
    if (v5)
    {
      CFRetain(v4[11]);
      v6 = *(v2 + 88);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = *(v2 + 88);
    }

    CFRelease(v6);
LABEL_7:
    *(v2 + 88) = v5;
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 24);
  }

  v7 = v4[12];
  if (*(v2 + 96) == v7)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    CFRetain(v4[12]);
    v8 = *(v2 + 96);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(v2 + 96);
  }

  CFRelease(v8);
LABEL_14:
  *(v2 + 96) = v7;
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
LABEL_15:
  v9 = v4[9];
  if (*(v2 + 72) == v9)
  {
LABEL_22:
    *(v3 + 24) = 0;
    CFRelease(v4);
    goto LABEL_23;
  }

  if (!v9)
  {
    v10 = *(v2 + 72);
    goto LABEL_20;
  }

  CFRetain(v4[9]);
  v10 = *(v2 + 72);
  if (v10)
  {
LABEL_20:
    CFRelease(v10);
  }

  *(v2 + 72) = v9;
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_23:
  v11 = *(a1 + 48);
  if (!*(v11 + 112) && (OSStatus = SecErrorGetOSStatus(*(a1 + 56)), v11 = *(a1 + 48), OSStatus == -25291) && (Count = CFArrayGetCount(*(v11 + 16)), v11 = *(a1 + 48), Count))
  {
    *values = CFArrayGetValueAtIndex(*(v11 + 16), 0);
    v14 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
    v15 = *(a1 + 48);
    v16 = *(v15 + 72);
    if (v16)
    {
      *(v15 + 72) = 0;
      CFRelease(v16);
      v15 = *(a1 + 48);
    }

    *(v15 + 72) = v14;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_2_558;
    v20[3] = &__block_descriptor_tmp_559;
    v20[4] = *(a1 + 56);
    v20[5] = v11;
    *(*(*(a1 + 40) + 8) + 24) = SecOSStatusWith(v20);
    v17 = secLogObjForScope("trust");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 48);
      *values = 134217984;
      *&values[4] = v19;
      _os_log_debug_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEBUG, "(Trust %p) Kick off pending evals", values, 0xCu);
    }

    dispatch_group_leave(*(*(a1 + 48) + 168));
    *(*(a1 + 48) + 160) = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
}

BOOL __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_2_558(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      CFRetain(*(a1 + 32));
    }

    *a2 = v4;
  }

  return *(*(a1 + 40) + 112) != 0;
}

void __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_2(void *a1, int a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = secLogObjForScope("trust");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[7];
    *buf = 134218240;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "(Trust %p) trustd returned %d", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v21 = -67671;
  v8 = a1[7];
  v9 = *(v8 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_548;
  block[3] = &unk_1E70E3838;
  v17 = a2;
  v10 = a1[5];
  block[6] = v8;
  block[7] = a3;
  block[4] = v10;
  block[5] = buf;
  dispatch_sync(v9, block);
  v11 = secLogObjForScope("trust");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = a1[7];
    *v18 = 134217984;
    v19 = v15;
    _os_log_debug_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEBUG, "(Trust %p) Calling completion block after async xpc", v18, 0xCu);
  }

  os_activity_scope_leave((*(a1[6] + 8) + 24));
  v12 = *(*&buf[8] + 24);
  (*(a1[4] + 16))();
  v13 = a1[7];
  if (v13)
  {
    CFRelease(v13);
  }

  _Block_object_dispose(buf, 8);
  v14 = *MEMORY[0x1E69E9840];
}

void __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_548(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  *(v2 + 112) = *(a1 + 64);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  v5 = v4[11];
  if (*(v2 + 88) != v5)
  {
    if (v5)
    {
      CFRetain(v4[11]);
      v6 = *(v2 + 88);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = *(v2 + 88);
    }

    CFRelease(v6);
LABEL_7:
    *(v2 + 88) = v5;
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 24);
  }

  v7 = v4[12];
  if (*(v2 + 96) == v7)
  {
    goto LABEL_15;
  }

  if (v7)
  {
    CFRetain(v4[12]);
    v8 = *(v2 + 96);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = *(v2 + 96);
  }

  CFRelease(v8);
LABEL_14:
  *(v2 + 96) = v7;
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
LABEL_15:
  v9 = v4[9];
  if (*(v2 + 72) == v9)
  {
LABEL_22:
    *(v3 + 24) = 0;
    CFRelease(v4);
    goto LABEL_23;
  }

  if (!v9)
  {
    v10 = *(v2 + 72);
    goto LABEL_20;
  }

  CFRetain(v4[9]);
  v10 = *(v2 + 72);
  if (v10)
  {
LABEL_20:
    CFRelease(v10);
  }

  *(v2 + 72) = v9;
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    goto LABEL_22;
  }

LABEL_23:
  v11 = *(a1 + 48);
  if (!*(v11 + 112) && (OSStatus = SecErrorGetOSStatus(*(a1 + 56)), v11 = *(a1 + 48), OSStatus == -25291) && (Count = CFArrayGetCount(*(v11 + 16)), v11 = *(a1 + 48), Count))
  {
    *values = CFArrayGetValueAtIndex(*(v11 + 16), 0);
    v14 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
    v15 = *(a1 + 48);
    v16 = *(v15 + 72);
    if (v16)
    {
      *(v15 + 72) = 0;
      CFRelease(v16);
      v15 = *(a1 + 48);
    }

    *(v15 + 72) = v14;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_2_549;
    v20[3] = &__block_descriptor_tmp_550;
    v20[4] = *(a1 + 56);
    v20[5] = v11;
    *(*(*(a1 + 40) + 8) + 24) = SecOSStatusWith(v20);
    v17 = secLogObjForScope("trust");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v19 = *(a1 + 48);
      *values = 134217984;
      *&values[4] = v19;
      _os_log_debug_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEBUG, "(Trust %p) Kick off pending evals", values, 0xCu);
    }

    dispatch_group_leave(*(*(a1 + 48) + 168));
    *(*(a1 + 48) + 160) = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
}

BOOL __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_2_549(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      CFRetain(*(a1 + 32));
    }

    *a2 = v4;
  }

  return *(*(a1 + 40) + 112) != 0;
}

uint64_t SecTrustCreateFromPlist(const void *a1, SecTrustRef *a2)
{
  trust = 0;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a1))
  {
    return 4294967246;
  }

  Value = CFDictionaryGetValue(a1, @"certificates");
  if (!Value)
  {
    return 4294967246;
  }

  v6 = SecCertificateArrayDeserialize(Value);
  if (!v6)
  {
    return 4294967246;
  }

  v7 = v6;
  v8 = CFDictionaryGetValue(a1, @"policies");
  if (v8 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFArrayGetTypeID()) && (Count = CFArrayGetCount(v9), Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]), v53.location = 0, v53.length = Count, CFArrayApplyFunction(v9, v53, deserializePolicy, Mutable), Mutable))
  {
    v13 = SecTrustCreateWithCertificates(v7, Mutable, &trust);
    if (v13)
    {
      v48 = v13;
    }

    else
    {
      v14 = CFDictionaryGetValue(a1, @"anchors");
      if (v14)
      {
        v15 = v14;
        v16 = CFGetTypeID(v14);
        if (v16 == CFArrayGetTypeID())
        {
          v17 = SecCertificateArrayDeserialize(v15);
          *(trust + 3) = v17;
        }
      }

      v18 = CFDictionaryGetValue(a1, @"responses");
      if (v18)
      {
        v19 = v18;
        v20 = CFGetTypeID(v18);
        if (v20 == CFArrayGetTypeID())
        {
          CFRetain(v19);
          *(trust + 5) = v19;
        }
      }

      v21 = CFDictionaryGetValue(a1, @"scts");
      if (v21)
      {
        v22 = v21;
        v23 = CFGetTypeID(v21);
        if (v23 == CFArrayGetTypeID())
        {
          CFRetain(v22);
          *(trust + 6) = v22;
        }
      }

      v24 = CFDictionaryGetValue(a1, @"trustedLogs");
      if (v24)
      {
        v25 = v24;
        v26 = CFGetTypeID(v24);
        if (v26 == CFArrayGetTypeID())
        {
          CFRetain(v25);
          *(trust + 7) = v25;
        }
      }

      v27 = CFDictionaryGetValue(a1, @"verifyDate");
      if (v27)
      {
        v28 = v27;
        v29 = CFGetTypeID(v27);
        if (v29 == CFDateGetTypeID())
        {
          CFRetain(v28);
          *(trust + 8) = v28;
        }
      }

      v30 = CFDictionaryGetValue(a1, @"chain");
      if (v30)
      {
        v31 = v30;
        v32 = CFGetTypeID(v30);
        if (v32 == CFArrayGetTypeID())
        {
          v33 = SecCertificateArrayDeserialize(v31);
          *(trust + 9) = v33;
        }
      }

      v34 = CFDictionaryGetValue(a1, @"details");
      if (v34)
      {
        v35 = v34;
        v36 = CFGetTypeID(v34);
        if (v36 == CFArrayGetTypeID())
        {
          CFRetain(v35);
          *(trust + 11) = v35;
        }
      }

      v37 = CFDictionaryGetValue(a1, @"info");
      if (v37)
      {
        v38 = v37;
        v39 = CFGetTypeID(v37);
        if (v39 == CFDictionaryGetTypeID())
        {
          CFRetain(v38);
          *(trust + 12) = v38;
        }
      }

      v40 = CFDictionaryGetValue(a1, @"exceptions");
      if (v40)
      {
        v41 = v40;
        v42 = CFGetTypeID(v40);
        if (v42 == CFArrayGetTypeID())
        {
          CFRetain(v41);
          *(trust + 13) = v41;
        }
      }

      valuePtr = -1;
      v43 = CFDictionaryGetValue(a1, @"result");
      if (v43 && (v44 = v43, v45 = CFGetTypeID(v43), v45 == CFNumberGetTypeID()))
      {
        v46 = CFNumberGetValue(v44, kCFNumberSInt32Type, &valuePtr);
        v47 = 0;
        v48 = 4294967246;
        if (v46 && (valuePtr & 0x80000000) == 0)
        {
          v48 = 0;
          *(trust + 28) = valuePtr;
          v47 = 1;
        }
      }

      else
      {
        v47 = 0;
        v48 = 4294967246;
      }

      if (CFDictionaryGetValue(a1, @"anchorsOnly") == *MEMORY[0x1E695E4D0])
      {
        *(trust + 116) = 1;
      }

      if (CFDictionaryGetValue(a1, @"keychainsAllowed") == *MEMORY[0x1E695E4C0])
      {
        *(trust + 117) = 0;
      }

      v49 = v47 ^ 1;
      if (!a2)
      {
        v49 = 1;
      }

      if ((v49 & 1) == 0)
      {
        v48 = 0;
        *a2 = trust;
      }
    }

    CFRelease(Mutable);
  }

  else
  {
    v48 = 4294967246;
  }

  CFRelease(v7);
  return v48;
}

CFMutableArrayRef SecCertificateArrayDeserialize(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  v6.location = 0;
  v6.length = Count;
  CFArrayApplyFunction(a1, v6, deserializeCert, Mutable);
  return Mutable;
}

void deserializeCert(const void *a1, __CFArray *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDataGetTypeID())
    {
      v5 = SecCertificateCreateWithData(0, a1);
      if (v5)
      {
        v6 = v5;
        CFArrayAppendValue(a2, v5);

        CFRelease(v6);
      }
    }
  }
}

CFIndex SecTrustGetCertificateCount(SecTrustRef trust)
{
  v1 = trust;
  if (trust)
  {
    SecTrustEvaluateIfNecessary(trust);
    v5 = 0;
    v6 = &v5;
    v7 = 0x2000000000;
    v8 = 1;
    v2 = *(v1 + 17);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __SecTrustGetCertificateCount_block_invoke;
    v4[3] = &unk_1E70E2F28;
    v4[4] = &v5;
    v4[5] = v1;
    dispatch_sync(v2, v4);
    v1 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

SecCertificateRef SecTrustGetCertificateAtIndex(SecTrustRef trust, CFIndex ix)
{
  v2 = trust;
  if (trust)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    if (ix)
    {
      SecTrustEvaluateIfNecessary(trust);
      v4 = *(v2 + 17);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = __SecTrustGetCertificateAtIndex_block_invoke_2;
      v7[3] = &unk_1E70E2F78;
      v7[4] = &v9;
      v7[5] = v2;
      v7[6] = ix;
      v5 = v7;
    }

    else
    {
      v4 = *(trust + 17);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __SecTrustGetCertificateAtIndex_block_invoke;
      block[3] = &unk_1E70E2F50;
      block[4] = &v9;
      block[5] = v2;
      v5 = block;
    }

    dispatch_sync(v4, v5);
    v2 = v10[3];
    _Block_object_dispose(&v9, 8);
  }

  return v2;
}

const void *__SecTrustGetCertificateAtIndex_block_invoke(uint64_t a1)
{
  result = CFArrayGetValueAtIndex(*(*(a1 + 40) + 16), 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__SecTrust *SecTrustCopyInfo(__SecTrust *a1)
{
  v1 = a1;
  if (a1)
  {
    SecTrustEvaluateIfNecessary(a1);
    v5 = 0;
    v6 = &v5;
    v7 = 0x2000000000;
    v8 = 0;
    v2 = *(v1 + 17);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __SecTrustCopyInfo_block_invoke;
    v4[3] = &unk_1E70E2FC8;
    v4[4] = &v5;
    v4[5] = v1;
    dispatch_sync(v2, v4);
    v1 = v6[3];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

void *__SecTrustCopyInfo_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(v2 + 96);
  if (v3)
  {
    result = CFRetain(*(v2 + 96));
  }

  *(*(v1[4] + 8) + 24) = v3;
  return result;
}

uint64_t SecTrustGetTrustExceptionsArray(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 136);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecTrustGetTrustExceptionsArray_block_invoke;
  v4[3] = &unk_1E70E2FF0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL SecTrustSetExceptions(SecTrustRef trust, CFDataRef exceptions)
{
  v2 = trust;
  v60 = *MEMORY[0x1E69E9840];
  if (trust)
  {
    if (exceptions)
    {
      v3 = CFPropertyListCreateWithData(*MEMORY[0x1E695E480], exceptions, 0, 0, 0);
      v4 = v3;
      if (!v3 || (v5 = CFGetTypeID(v3), v5 == CFArrayGetTypeID()))
      {
LABEL_7:
        v43 = 0;
        v44 = &v43;
        v45 = 0x2000000000;
        v46 = 0;
        v6 = *(v2 + 17);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __SecTrustSetExceptions_block_invoke;
        block[3] = &unk_1E70E3090;
        block[5] = v2;
        block[6] = v4;
        block[4] = &v43;
        dispatch_sync(v6, block);
        if (v44[3])
        {
LABEL_8:
          LOBYTE(v2) = 1;
LABEL_40:
          _Block_object_dispose(&v43, 8);
          goto LABEL_41;
        }

        v7 = *(v2 + 17);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __SecTrustSetNeedsEvaluation_block_invoke;
        v56 = &__block_descriptor_tmp_80_14598;
        v57 = v2;
        dispatch_sync(v7, buf);
        cf = 0;
        p_cf = &cf;
        v53 = 0x2000000000;
        v54 = 0;
        valuePtr = 0;
        p_valuePtr = &valuePtr;
        v49 = 0x2000000000;
        v50 = 0;
        v8 = *(v2 + 17);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __SecTrustGetExceptionForCertificateAtIndex_block_invoke;
        v56 = &unk_1E70E39B8;
        v58 = &valuePtr;
        v59 = v2;
        v57 = &cf;
        dispatch_sync(v8, buf);
        v9 = p_cf[3];
        if (!v9 || CFArrayGetCount(v9) < 1)
        {
          goto LABEL_20;
        }

        v10 = p_valuePtr[3];
        if (!v10)
        {
          v17 = SecTrustCopyCertificateChain(v2);
          p_valuePtr[3] = v17;
          if (!v17 || CFArrayGetCount(v17) < 1)
          {
            goto LABEL_20;
          }

          v10 = p_valuePtr[3];
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v10, 0);
        if (ValueAtIndex)
        {
          v12 = ValueAtIndex;
          v13 = CFArrayGetValueAtIndex(p_cf[3], 0);
          v14 = CFGetTypeID(v13);
          if (v14 == CFDictionaryGetTypeID())
          {
            SHA1Digest = SecCertificateGetSHA1Digest(v12);
            Value = CFDictionaryGetValue(v13, @"SHA1Digest");
            if (Value)
            {
              if (CFEqual(SHA1Digest, Value))
              {
LABEL_21:
                v18 = p_cf[3];
                if (v18)
                {
                  CFRelease(v18);
                }

                v19 = p_valuePtr[3];
                if (v19)
                {
                  CFRelease(v19);
                }

                _Block_object_dispose(&valuePtr, 8);
                _Block_object_dispose(&cf, 8);
                if (v13)
                {
                  if (v4)
                  {
                    v20 = CFGetTypeID(v4);
                    if (v20 != CFArrayGetTypeID() || CFArrayGetCount(v4) < 1)
                    {
                      goto LABEL_38;
                    }

                    v21 = CFArrayGetValueAtIndex(v4, 0);
                    if (v21 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFDictionaryGetTypeID()))
                    {
                      cf = 0;
                      ExceptionResetCount = SecTrustGetExceptionResetCount(&cf);
                      v25 = secLogObjForScope("trust");
                      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                      {
                        v39 = "Error";
                        if (!cf)
                        {
                          v39 = "OK";
                        }

                        *buf = 134218242;
                        *&buf[4] = ExceptionResetCount;
                        *&buf[12] = 2082;
                        *&buf[14] = v39;
                        _os_log_debug_impl(&dword_1887D2000, v25, OS_LOG_TYPE_DEBUG, "The current exceptions epoch is %llu. (%{public}s)", buf, 0x16u);
                      }

                      if (cf)
                      {
                        v26 = secLogObjForScope("SecError");
                        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEFAULT, "Failed to get the current exceptions epoch.", buf, 2u);
                        }

                        v27 = cf;
                        if (cf)
                        {
                          cf = 0;
                          CFRelease(v27);
                        }

                        goto LABEL_38;
                      }

                      if (!ExceptionResetCount)
                      {
LABEL_53:
                        CFRelease(v4);
                        goto LABEL_8;
                      }

                      v35 = CFDictionaryGetValue(v22, @"ExceptionResetCount");
                      if (v35 && (v36 = v35, v37 = CFGetTypeID(v35), v37 == CFNumberGetTypeID()))
                      {
                        valuePtr = 0xAAAAAAAAAAAAAAAALL;
                        if (CFNumberGetValue(v36, kCFNumberSInt64Type, &valuePtr))
                        {
                          if (valuePtr == ExceptionResetCount)
                          {
                            v38 = secLogObjForScope("trust");
                            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                            {
                              *buf = 134217984;
                              *&buf[4] = ExceptionResetCount;
                              _os_log_debug_impl(&dword_1887D2000, v38, OS_LOG_TYPE_DEBUG, "Exceptions are valid for the current exceptions epoch. (%llu)", buf, 0xCu);
                            }

                            goto LABEL_53;
                          }

                          v40 = secLogObjForScope("SecError");
                          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 134218240;
                            *&buf[4] = valuePtr;
                            *&buf[12] = 2048;
                            *&buf[14] = ExceptionResetCount;
                            v32 = "The current exception's epoch (%llu) is not the current epoch. (%llu)";
                            v33 = v40;
                            v34 = 22;
                            goto LABEL_45;
                          }

LABEL_38:
                          CFRelease(v4);
                          goto LABEL_39;
                        }

                        v31 = secLogObjForScope("SecError");
                        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_38;
                        }

                        *buf = 0;
                        v32 = "Failed to parse the current exceptions epoch as a uint64.";
                      }

                      else
                      {
                        v31 = secLogObjForScope("SecError");
                        if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_38;
                        }

                        *buf = 0;
                        v32 = "Failed to get the exception's epoch.";
                      }
                    }

                    else
                    {
                      v31 = secLogObjForScope("SecError");
                      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_38;
                      }

                      *buf = 0;
                      v32 = "Failed to get exception for epoch check.";
                    }

                    v33 = v31;
                    v34 = 2;
LABEL_45:
                    _os_log_impl(&dword_1887D2000, v33, OS_LOG_TYPE_DEFAULT, v32, buf, v34);
                    goto LABEL_38;
                  }
                }

                else if (v4)
                {
                  goto LABEL_38;
                }

LABEL_39:
                v28 = *(v2 + 17);
                v41[0] = MEMORY[0x1E69E9820];
                v41[1] = 0x40000000;
                v41[2] = __SecTrustSetExceptions_block_invoke_2;
                v41[3] = &__block_descriptor_tmp_322;
                v41[4] = v2;
                dispatch_sync(v28, v41);
                LOBYTE(v2) = 0;
                goto LABEL_40;
              }
            }
          }
        }

LABEL_20:
        v13 = 0;
        goto LABEL_21;
      }

      CFRelease(v4);
    }

    v4 = 0;
    goto LABEL_7;
  }

LABEL_41:
  v29 = *MEMORY[0x1E69E9840];
  return v2;
}

CFTypeRef __SecTrustSetExceptions_block_invoke(void *a1)
{
  v3 = a1[5];
  result = a1[6];
  v4 = *(v3 + 104);
  if (v4 == result)
  {
    *(*(a1[4] + 8) + 24) = 1;
  }

  else
  {
    if (v4)
    {
      CFRelease(v4);
      result = a1[6];
    }

    if (result)
    {
      result = CFRetain(result);
      v5 = a1[6];
    }

    else
    {
      v5 = 0;
    }

    *(a1[5] + 104) = v5;
  }

  return result;
}

void *__SecTrustGetExceptionForCertificateAtIndex_block_invoke(void *result)
{
  v1 = result;
  v2 = result[6];
  v3 = *(v2 + 104);
  if (v3)
  {
    result = CFRetain(*(v2 + 104));
  }

  *(*(v1[4] + 8) + 24) = v3;
  v4 = v1[6];
  v5 = *(v4 + 72);
  if (v5)
  {
    result = CFRetain(*(v4 + 72));
  }

  *(*(v1[5] + 8) + 24) = v5;
  return result;
}

void __SecTrustSetExceptions_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  if (v2)
  {
    *(v1 + 104) = 0;
    CFRelease(v2);
  }
}

const __CFArray *SecTrustCopySummaryPropertiesAtIndex(__SecTrust *a1, CFIndex a2)
{
  result = SecTrustCopyCertificateChain(a1);
  if (result)
  {
    v5 = result;
    ValueAtIndex = CFArrayGetValueAtIndex(result, a2);
    VerifyTime = SecTrustGetVerifyTime(a1);
    v8 = SecCertificateCopySummaryProperties(ValueAtIndex, VerifyTime);
    CFRelease(v5);
    return v8;
  }

  return result;
}

const __CFArray *SecTrustCopyDetailedPropertiesAtIndex(__SecTrust *a1, CFIndex a2)
{
  result = SecTrustCopyCertificateChain(a1);
  if (result)
  {
    v4 = result;
    ValueAtIndex = CFArrayGetValueAtIndex(result, a2);
    v6 = SecCertificateCopyProperties(ValueAtIndex);
    CFRelease(v4);
    return v6;
  }

  return result;
}

CFArrayRef SecTrustCopyProperties(SecTrustRef trust)
{
  v1 = trust;
  if (trust)
  {
    SecTrustEvaluateIfNecessary(trust);
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v2 = *(v1 + 17);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustCopyProperties_block_invoke;
    block[3] = &unk_1E70E30D8;
    block[4] = &v15;
    block[5] = v1;
    dispatch_sync(v2, block);
    v3 = v16[3];
    if (!v3)
    {
      v1 = 0;
LABEL_34:
      _Block_object_dispose(&v15, 8);
      return v1;
    }

    context = 0;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16[3], i);
        CFDictionaryApplyFunction(ValueAtIndex, applyDetailProperty, &context);
      }
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v1 = Mutable;
    v9 = context;
    if (context)
    {
      v10 = @"Invalid certificate chain linkage.";
    }

    else
    {
      if ((context & 2) == 0)
      {
        if ((context & 4) != 0)
        {
          appendError(Mutable, @"Root certificate is not trusted.");
          v9 = context;
          if ((context & 8) == 0)
          {
LABEL_10:
            if ((v9 & 0x10) == 0)
            {
              goto LABEL_11;
            }

            goto LABEL_22;
          }
        }

        else if ((context & 8) == 0)
        {
          goto LABEL_10;
        }

        appendError(v1, @"Unable to build chain to root certificate.");
        v9 = context;
        if ((context & 0x10) == 0)
        {
LABEL_11:
          if ((v9 & 0x20) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_23;
        }

LABEL_22:
        appendError(v1, @"Hostname mismatch.");
        v9 = context;
        if ((context & 0x20) == 0)
        {
LABEL_12:
          if ((v9 & 0x40) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_24;
        }

LABEL_23:
        appendError(v1, @"Policy requirements not met.");
        v9 = context;
        if ((context & 0x40) == 0)
        {
LABEL_13:
          if ((v9 & 0x80) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_25;
        }

LABEL_24:
        appendError(v1, @"One or more certificates have expired or are not valid yet.");
        v9 = context;
        if ((context & 0x80) == 0)
        {
LABEL_14:
          if ((v9 & 0x100) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_26;
        }

LABEL_25:
        appendError(v1, @"One or more certificates is using a weak key size.");
        v9 = context;
        if ((context & 0x100) == 0)
        {
LABEL_15:
          if ((v9 & 0x200) == 0)
          {
LABEL_29:
            if (!CFArrayGetCount(v1) && v1)
            {
              CFRelease(v1);
              v1 = 0;
            }

            v11 = v16[3];
            if (v11)
            {
              v16[3] = 0;
              CFRelease(v11);
            }

            goto LABEL_34;
          }

          goto LABEL_27;
        }

LABEL_26:
        appendError(v1, @"One or more certificates is using a weak signature algorithm.");
        if ((context & 0x200) == 0)
        {
          goto LABEL_29;
        }

LABEL_27:
        v10 = @"One or more certificates have been revoked.";
        goto LABEL_28;
      }

      v10 = @"One or more unsupported critical extensions found.";
    }

LABEL_28:
    appendError(v1, v10);
    goto LABEL_29;
  }

  return v1;
}

void *__SecTrustCopyProperties_block_invoke(void *result)
{
  v1 = result;
  v2 = result[5];
  v3 = *(v2 + 88);
  if (v3)
  {
    result = CFRetain(*(v2 + 88));
  }

  *(*(v1[4] + 8) + 24) = v3;
  return result;
}

void appendError(void *a1, const __CFString *a2)
{
  if (a2)
  {
    v3 = SecFrameworkCopyLocalizedString(a2, @"SecCertificate");
    appendProperty(a1, @"error", 0, 0, v3, 1);
    if (v3)
    {

      CFRelease(v3);
    }
  }
}

const __CFNumber *applyDetailProperty(void *key, uint64_t a2, _WORD *a3)
{
  if (applyDetailProperty_onceToken != -1)
  {
    dispatch_once(&applyDetailProperty_onceToken, &__block_literal_global_573);
  }

  result = CFDictionaryGetValue(applyDetailProperty_policyChecks, key);
  valuePtr = 0;
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberSInt16Type, &valuePtr);
    if (a3)
    {
      if (result)
      {
        *a3 |= valuePtr;
      }
    }
  }

  return result;
}

void __applyDetailProperty_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 16;
  v1 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SSLHostname", v1);
  if (v1)
  {
    CFRelease(v1);
  }

  valuePtr = 16;
  v2 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"Email", v2);
  if (v2)
  {
    CFRelease(v2);
  }

  valuePtr = 64;
  v3 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"TemporalValidity", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  valuePtr = 64;
  v4 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"ValidLeaf", v4);
  if (v4)
  {
    CFRelease(v4);
  }

  valuePtr = 128;
  v5 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"WeakKeySize", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  valuePtr = 256;
  v6 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"WeakSignature", v6);
  if (v6)
  {
    CFRelease(v6);
  }

  valuePtr = 32;
  v7 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"KeyUsage", v7);
  if (v7)
  {
    CFRelease(v7);
  }

  valuePtr = 32;
  v8 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"ExtendedKeyUsage", v8);
  if (v8)
  {
    CFRelease(v8);
  }

  valuePtr = 32;
  v9 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SubjectCommonName", v9);
  if (v9)
  {
    CFRelease(v9);
  }

  valuePtr = 32;
  v10 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SubjectCommonNamePrefix", v10);
  if (v10)
  {
    CFRelease(v10);
  }

  valuePtr = 32;
  v11 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SubjectCommonNameTEST", v11);
  if (v11)
  {
    CFRelease(v11);
  }

  valuePtr = 32;
  v12 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SubjectOrganization", v12);
  if (v12)
  {
    CFRelease(v12);
  }

  valuePtr = 32;
  v13 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SubjectOrganizationalUnit", v13);
  if (v13)
  {
    CFRelease(v13);
  }

  valuePtr = 32;
  v14 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NotValidBefore", v14);
  if (v14)
  {
    CFRelease(v14);
  }

  valuePtr = 16;
  v15 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"EAPTrustedServerNames", v15);
  if (v15)
  {
    CFRelease(v15);
  }

  valuePtr = 32;
  v16 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"LeafMarkerOid", v16);
  if (v16)
  {
    CFRelease(v16);
  }

  valuePtr = 32;
  v17 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"LeafMarkerOidWithoutValueCheck", v17);
  if (v17)
  {
    CFRelease(v17);
  }

  valuePtr = 32;
  v18 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"LeafMarkersProdAndQA", v18);
  if (v18)
  {
    CFRelease(v18);
  }

  valuePtr = 512;
  v19 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"BlackListedLeaf", v19);
  if (v19)
  {
    CFRelease(v19);
  }

  valuePtr = 512;
  v20 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"GrayListedLeaf", v20);
  if (v20)
  {
    CFRelease(v20);
  }

  valuePtr = 32;
  v21 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"LeafSPKISHA256", v21);
  if (v21)
  {
    CFRelease(v21);
  }

  valuePtr = 32;
  v22 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NotCA", v22);
  if (v22)
  {
    CFRelease(v22);
  }

  valuePtr = 32;
  v23 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"MarkRepresentation", v23);
  if (v23)
  {
    CFRelease(v23);
  }

  valuePtr = 16;
  v24 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"URI", v24);
  if (v24)
  {
    CFRelease(v24);
  }

  valuePtr = 32;
  v25 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IssuerCommonName", v25);
  if (v25)
  {
    CFRelease(v25);
  }

  valuePtr = 32;
  v26 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IssuerCommonNamePrefix", v26);
  if (v26)
  {
    CFRelease(v26);
  }

  valuePtr = 64;
  v27 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"BasicConstraints", v27);
  if (v27)
  {
    CFRelease(v27);
  }

  valuePtr = 64;
  v28 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"BasicConstraintsCA", v28);
  if (v28)
  {
    CFRelease(v28);
  }

  valuePtr = 64;
  v29 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"BasicConstraintsPathLen", v29);
  if (v29)
  {
    CFRelease(v29);
  }

  valuePtr = 32;
  v30 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IntermediateSPKISHA256", v30);
  if (v30)
  {
    CFRelease(v30);
  }

  valuePtr = 32;
  v31 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IntermediateEKU", v31);
  if (v31)
  {
    CFRelease(v31);
  }

  valuePtr = 32;
  v32 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IntermediateMarkerOid", v32);
  if (v32)
  {
    CFRelease(v32);
  }

  valuePtr = 32;
  v33 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IntermediateMarkerOidWithoutValueCheck", v33);
  if (v33)
  {
    CFRelease(v33);
  }

  valuePtr = 32;
  v34 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IntermediateOrganization", v34);
  if (v34)
  {
    CFRelease(v34);
  }

  valuePtr = 32;
  v35 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IntermediateCountry", v35);
  if (v35)
  {
    CFRelease(v35);
  }

  valuePtr = 4;
  v36 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"AnchorSHA256", v36);
  if (v36)
  {
    CFRelease(v36);
  }

  valuePtr = 4;
  v37 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"AnchorTrusted", v37);
  if (v37)
  {
    CFRelease(v37);
  }

  valuePtr = 8;
  v38 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"MissingIntermediate", v38);
  if (v38)
  {
    CFRelease(v38);
  }

  valuePtr = 4;
  v39 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"AnchorApple", v39);
  if (v39)
  {
    CFRelease(v39);
  }

  valuePtr = 32;
  v40 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"CAspkiSHA256", v40);
  if (v40)
  {
    CFRelease(v40);
  }

  valuePtr = 32;
  v41 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"RootMarkerOid", v41);
  if (v41)
  {
    CFRelease(v41);
  }

  valuePtr = 64;
  v42 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NonEmptySubject", v42);
  if (v42)
  {
    CFRelease(v42);
  }

  valuePtr = 1;
  v43 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IdLinkage", v43);
  if (v43)
  {
    CFRelease(v43);
  }

  valuePtr = 128;
  v44 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"KeySize", v44);
  if (v44)
  {
    CFRelease(v44);
  }

  valuePtr = 256;
  v45 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SignatureHashAlgorithms", v45);
  if (v45)
  {
    CFRelease(v45);
  }

  valuePtr = 32;
  v46 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"CertificatePolicy", v46);
  if (v46)
  {
    CFRelease(v46);
  }

  valuePtr = 64;
  v47 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"ValidRoot", v47);
  if (v47)
  {
    CFRelease(v47);
  }

  valuePtr = 2;
  v48 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"CriticalExtensions", v48);
  if (v48)
  {
    CFRelease(v48);
  }

  valuePtr = 32;
  v49 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"ChainLength", v49);
  if (v49)
  {
    CFRelease(v49);
  }

  valuePtr = 64;
  v50 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"BasicCertificateProcessing", v50);
  if (v50)
  {
    CFRelease(v50);
  }

  valuePtr = 64;
  v51 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NameConstraints", v51);
  if (v51)
  {
    CFRelease(v51);
  }

  valuePtr = 64;
  v52 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"PolicyConstraints", v52);
  if (v52)
  {
    CFRelease(v52);
  }

  valuePtr = 512;
  v53 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"GrayListedKey", v53);
  if (v53)
  {
    CFRelease(v53);
  }

  valuePtr = 512;
  v54 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"BlackListedKey", v54);
  if (v54)
  {
    CFRelease(v54);
  }

  valuePtr = 4;
  v55 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"UsageConstraints", v55);
  if (v55)
  {
    CFRelease(v55);
  }

  valuePtr = 256;
  v56 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SystemTrustedWeakHash", v56);
  if (v56)
  {
    CFRelease(v56);
  }

  valuePtr = 128;
  v57 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SystemTrustedWeakKey", v57);
  if (v57)
  {
    CFRelease(v57);
  }

  valuePtr = 32;
  v58 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"PinningRequired", v58);
  if (v58)
  {
    CFRelease(v58);
  }

  valuePtr = 512;
  v59 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"Revocation", v59);
  if (v59)
  {
    CFRelease(v59);
  }

  valuePtr = 32;
  v60 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"RevocationResponseRequired", v60);
  if (v60)
  {
    CFRelease(v60);
  }

  valuePtr = 32;
  v61 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"CTRequired", v61);
  if (v61)
  {
    CFRelease(v61);
  }

  valuePtr = 32;
  v62 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SystemTrustedCTRequired", v62);
  if (v62)
  {
    CFRelease(v62);
  }

  valuePtr = 512;
  v63 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IssuerPolicyConstraints", v63);
  if (v63)
  {
    CFRelease(v63);
  }

  valuePtr = 512;
  v64 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"IssuerNameConstraints", v64);
  if (v64)
  {
    CFRelease(v64);
  }

  valuePtr = 32;
  v65 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"ValidityPeriodMaximums", v65);
  if (v65)
  {
    CFRelease(v65);
  }

  valuePtr = 32;
  v66 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SystemTrustValidityPeriod", v66);
  if (v66)
  {
    CFRelease(v66);
  }

  valuePtr = 32;
  v67 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"OtherTrustValidityPeriod", v67);
  if (v67)
  {
    CFRelease(v67);
  }

  valuePtr = 32;
  v68 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"ServerAuthEKU", v68);
  if (v68)
  {
    CFRelease(v68);
  }

  valuePtr = 32;
  v69 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"EmailProtectionEKU", v69);
  if (v69)
  {
    CFRelease(v69);
  }

  valuePtr = 32;
  v70 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"SinglePurposeChainEKU", v70);
  if (v70)
  {
    CFRelease(v70);
  }

  valuePtr = 64;
  v71 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"UnparseableExtension", v71);
  if (v71)
  {
    CFRelease(v71);
  }

  valuePtr = 32;
  v72 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NonTlsCTRequired", v72);
  if (v72)
  {
    CFRelease(v72);
  }

  valuePtr = 64;
  v73 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"DuplicateExtension", v73);
  if (v73)
  {
    CFRelease(v73);
  }

  valuePtr = 32;
  v74 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"QWAC", v74);
  if (v74)
  {
    CFRelease(v74);
  }

  valuePtr = 32;
  v75 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"NoNetworkAccess", v75);
  if (v75)
  {
    CFRelease(v75);
  }

  valuePtr = 32;
  v76 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"ExtendedValidation", v76);
  if (v76)
  {
    CFRelease(v76);
  }

  valuePtr = 32;
  v77 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"RevocationOnline", v77);
  if (v77)
  {
    CFRelease(v77);
  }

  valuePtr = 32;
  v78 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"RevocationIfTrusted", v78);
  if (v78)
  {
    CFRelease(v78);
  }

  valuePtr = 32;
  v79 = CFNumberCreate(0, kCFNumberSInt16Type, &valuePtr);
  CFDictionaryAddValue(Mutable, @"RevocationDbIgnored", v79);
  if (v79)
  {
    CFRelease(v79);
  }

  applyDetailProperty_policyChecks = Mutable;
}

CFDictionaryRef SecTrustCopyResult(SecTrustRef trust)
{
  v1 = trust;
  if (trust)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    SecTrustEvaluateIfNecessary(v1);
    v7[0] = 0;
    v7[1] = v7;
    v7[2] = 0x2000000000;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v2 = *(v1 + 17);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___SecTrustCopyDetails_block_invoke;
    block[3] = &unk_1E70E3A08;
    block[4] = &v13;
    block[5] = v1;
    dispatch_sync(v2, block);
    v3 = v14[3];
    _Block_object_dispose(&v13, 8);
    v7[3] = v3;
    v4 = *(v1 + 17);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyResult_block_invoke;
    v6[3] = &unk_1E70E3100;
    v6[4] = v7;
    v6[5] = &v8;
    v6[6] = v1;
    dispatch_sync(v4, v6);
    v1 = v9[3];
    _Block_object_dispose(v7, 8);
    _Block_object_dispose(&v8, 8);
  }

  return v1;
}

void __SecTrustCopyResult_block_invoke(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  if (v2)
  {
    CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustResultDetails", v2);
    CFRelease(*(*(a1[4] + 8) + 24));
  }

  v3 = CFNumberCreate(0, kCFNumberSInt32Type, (a1[6] + 112));
  if (v3)
  {
    v4 = v3;
    CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustResultValue", v3);
    CFRelease(v4);
  }

  v5 = a1[6];
  v6 = *(v5 + 96);
  if (*(v5 + 112))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(v5 + 64);
    if (v8)
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustEvaluationDate", v8);
    }

    value = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"CertificateTransparency", &value))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustCertificateTransparency", value);
    }

    v15 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"ExtendedValidation", &v15))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustExtendedValidation", v15);
    }

    v14 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"CompanyName", &v14))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"Organization", v14);
    }

    v13 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"TrustRevocationChecked", &v13))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustRevocationChecked", v13);
    }

    v12 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"TrustRevocationReason", &v12))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustRevocationReason", v12);
    }

    v11 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"TrustExpirationDate", &v11))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustExpirationDate", v11);
    }

    v9 = 0xAAAAAAAAAAAAAAAALL;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(v6, @"QCStatements", &v10))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustQCStatements", v10);
    }

    if (CFDictionaryGetValueIfPresent(v6, @"QWACValidation", &v9))
    {
      CFDictionarySetValue(*(*(a1[5] + 8) + 24), @"TrustQWACValidation", v9);
    }
  }
}

uint64_t SecTrustCopyTrustStoreContentDigest(CFTypeRef *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gTrustd && (v2 = *(gTrustd + 56)) != 0)
  {
    v3 = v2(a1);
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustCopyTrustStoreContentDigest", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &state);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyTrustStoreContentDigest_block_invoke_2;
    v6[3] = &unk_1E70E3148;
    v6[4] = &v8;
    securityd_send_sync_and_do(0x86u, a1, &__block_literal_global_14860, v6);
    os_release(v4);
    v3 = v9[3];
    os_activity_scope_leave(&state);
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

BOOL __SecTrustCopyTrustStoreContentDigest_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  if (xdict && xpc_dictionary_get_value(xdict, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9F10])
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    return *(*(*(a1 + 32) + 8) + 24) != 0;
  }

  else
  {

    return SecError(-26276, a3, @"Unable to get trust store content digest");
  }
}

uint64_t SecTrustCopyTrustStoreAssetVersion(CFTypeRef *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gTrustd && (v2 = *(gTrustd + 48)) != 0)
  {
    v3 = v2(a1);
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustCopyTrustStoreAssetVersion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &state);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyTrustStoreAssetVersion_block_invoke_2;
    v6[3] = &unk_1E70E3190;
    v6[4] = &v8;
    securityd_send_sync_and_do(0x87u, a1, &__block_literal_global_363, v6);
    os_release(v4);
    v3 = v9[3];
    os_activity_scope_leave(&state);
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

BOOL __SecTrustCopyTrustStoreAssetVersion_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  if (xdict && xpc_dictionary_get_value(xdict, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9F10])
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    return *(*(*(a1 + 32) + 8) + 24) != 0;
  }

  else
  {

    return SecError(-26276, a3, @"Unable to get trust store asset version");
  }
}

uint64_t SecTrustGetTrustStoreVersionNumber(CFTypeRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 64)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustGetTrustStoreVersionNumber", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x13u, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5;
  }
}

uint64_t do_ota_pki_op(unsigned int a1, CFTypeRef *a2)
{
  message = securityd_create_message(a1, a2);
  if (message)
  {
    v4 = message;
    v5 = securityd_message_with_reply_sync(message, a2);
    if (!v5)
    {
      uint64 = 0;
      v6 = v4;
LABEL_15:
      xpc_release(v6);
      return uint64;
    }

    v6 = v5;
    if (xpc_dictionary_get_value(v5, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9F18])
    {
      uint64 = xpc_dictionary_get_uint64(v6, "status");
      if (!a2)
      {
LABEL_14:
        xpc_release(v4);
        goto LABEL_15;
      }
    }

    else
    {
      uint64 = 0;
      if (!a2)
      {
        goto LABEL_14;
      }
    }

    if (xpc_dictionary_get_value(v6, "error"))
    {
      if (MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E80])
      {
        value = xpc_dictionary_get_value(v6, "error");
        if (value)
        {
          *a2 = SecCreateCFErrorWithXPCObject(value);
        }
      }
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t SecTrustGetAssetVersionNumber(CFTypeRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 72)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustGetAssetVersionNumber", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x14u, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5;
  }
}

uint64_t SecTrustOTAPKIGetUpdatedAsset(CFTypeRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 80)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustOTAPKIGetUpdatedAsset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x17u, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5;
  }
}

uint64_t SecTrustOTASecExperimentGetUpdatedAsset(CFTypeRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 88)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustOTASecExperimentGetUpdatedAsset", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x77u, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5;
  }
}

uint64_t SecTrustOTASecExperimentCopyAsset(CFTypeRef *a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  if (gTrustd && (v1 = *(gTrustd + 96)) != 0)
  {
    v2 = v1(a1);
  }

  else
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __SecTrustOTASecExperimentCopyAsset_block_invoke_2;
    v4[3] = &unk_1E70E31D8;
    v4[4] = &v5;
    securityd_send_sync_and_do(0x76u, a1, &__block_literal_global_370, v4);
    v2 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL __SecTrustOTASecExperimentCopyAsset_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  if (xdict && xpc_dictionary_get_value(xdict, "status") && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E80])
  {
    *(*(*(a1 + 32) + 8) + 24) = _CFXPCCreateCFObjectFromXPCObject();
    return *(*(*(a1 + 32) + 8) + 24) != 0;
  }

  else
  {

    return SecError(-26276, a3, @"Unable to get SecExperiment Assets");
  }
}

uint64_t SecTrustTriggerValidUpdate(CFTypeRef *a1)
{
  if (gTrustd && (v2 = *(gTrustd + 200)) != 0)
  {

    return v2();
  }

  else
  {
    v4 = _os_activity_create(&dword_1887D2000, "SecTrustTriggerValidUpdate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v6.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v4, &v6);
    v5 = do_ota_pki_op(0x7Cu, a1);
    os_release(v4);
    os_activity_scope_leave(&v6);
    return v5 != 0;
  }
}

uint64_t SecTrustReportTLSAnalytics(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  v3 = 0;
  if (!a1 || !a2)
  {
    return v3 & 1;
  }

  if (!gTrustd || (v7 = *(gTrustd + 144)) == 0)
  {
    v9 = _os_activity_create(&dword_1887D2000, "SecTrustReportTLSAnalytics", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v9, &state);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SecTrustReportTLSAnalytics_block_invoke;
    v11[3] = &__block_descriptor_tmp_377;
    v11[4] = a1;
    v11[5] = a2;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SecTrustReportTLSAnalytics_block_invoke_2;
    v10[3] = &unk_1E70E3220;
    v10[4] = &v12;
    securityd_send_sync_and_do(0x73u, a3, v11, v10);
    os_release(v9);
    v3 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
    return v3 & 1;
  }

  return v7();
}

BOOL __SecTrustReportTLSAnalytics_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = SecXPCDictionarySetString(a2, "eventName", *(a1 + 32), a3);
  if (v5)
  {
    xpc_dictionary_set_value(a2, "eventAttributes", *(a1 + 40));
  }

  return v5;
}

uint64_t SecTrustEvaluateLeafOnly(__SecTrust *a1, int *a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = SecTrustValidateInput(a1);
    if (!result)
    {
      *&context = 0xAAAAAAAAAAAAAAAALL;
      *(&context + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v53[8] = v5;
      *&v53[24] = v5;
      *v53 = -1;
      *&v53[40] = 0xAAAAAAAAAAAAAAAALL;
      v48 = 0;
      v49 = &v48;
      v50 = 0x2000000000;
      v51 = 0;
      v44 = 0;
      v45 = &v44;
      v46 = 0x2000000000;
      v47 = 0;
      v6 = *(a1 + 17);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __SecTrustEvaluateLeafOnly_block_invoke;
      block[3] = &unk_1E70E3290;
      block[5] = &v44;
      block[6] = a1;
      block[4] = &v48;
      dispatch_sync(v6, block);
      v7 = v49[3];
      v8 = v45[3];
      VerifyTime = SecTrustGetVerifyTime(a1);
      if (v7)
      {
        CFRetain(v7);
      }

      *&context = v7;
      if (v8)
      {
        CFRetain(v8);
      }

      *(&context + 1) = v8;
      *v53 = VerifyTime;
      v10 = *MEMORY[0x1E695E480];
      v11 = MEMORY[0x1E695E9D8];
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
      CFDictionaryAddValue(Mutable, @"SSLHostname", SecPolicyCheckCertSSLHostname);
      CFDictionaryAddValue(Mutable, @"Email", SecPolicyCheckCertEmail);
      CFDictionaryAddValue(Mutable, @"TemporalValidity", SecPolicyCheckCertTemporalValidity);
      CFDictionaryAddValue(Mutable, @"ValidLeaf", SecPolicyCheckCertValidLeaf);
      CFDictionaryAddValue(Mutable, @"WeakKeySize", SecPolicyCheckCertWeakKeySize);
      CFDictionaryAddValue(Mutable, @"WeakSignature", SecPolicyCheckCertWeakSignature);
      CFDictionaryAddValue(Mutable, @"KeyUsage", SecPolicyCheckCertKeyUsage);
      CFDictionaryAddValue(Mutable, @"ExtendedKeyUsage", SecPolicyCheckCertExtendedKeyUsage);
      CFDictionaryAddValue(Mutable, @"SubjectCommonName", SecPolicyCheckCertSubjectCommonName);
      CFDictionaryAddValue(Mutable, @"SubjectCommonNamePrefix", SecPolicyCheckCertSubjectCommonNamePrefix);
      CFDictionaryAddValue(Mutable, @"SubjectCommonNameTEST", SecPolicyCheckCertSubjectCommonNameTEST);
      CFDictionaryAddValue(Mutable, @"SubjectOrganization", SecPolicyCheckCertSubjectOrganization);
      CFDictionaryAddValue(Mutable, @"SubjectOrganizationalUnit", SecPolicyCheckCertSubjectOrganizationalUnit);
      CFDictionaryAddValue(Mutable, @"NotValidBefore", SecPolicyCheckCertNotValidBefore);
      CFDictionaryAddValue(Mutable, @"EAPTrustedServerNames", SecPolicyCheckCertEAPTrustedServerNames);
      CFDictionaryAddValue(Mutable, @"LeafMarkerOid", SecPolicyCheckCertLeafMarkerOid);
      CFDictionaryAddValue(Mutable, @"LeafMarkerOidWithoutValueCheck", SecPolicyCheckCertLeafMarkerOidWithoutValueCheck);
      CFDictionaryAddValue(Mutable, @"LeafMarkersProdAndQA", SecPolicyCheckCertLeafMarkersProdAndQA);
      CFDictionaryAddValue(Mutable, @"NotCA", SecPolicyCheckCertNotCA);
      CFDictionaryAddValue(Mutable, @"URI", SecPolicyCheckCertURI);
      CFDictionaryAddValue(Mutable, @"NonEmptySubject", SecPolicyCheckCertNonEmptySubject);
      CFDictionaryAddValue(Mutable, @"KeySize", SecPolicyCheckCertKeySize);
      CFDictionaryAddValue(Mutable, @"SignatureHashAlgorithms", SecPolicyCheckCertSignatureHashAlgorithms);
      CFDictionaryAddValue(Mutable, @"CertificatePolicy", SecPolicyCheckCertCertificatePolicy);
      CFDictionaryAddValue(Mutable, @"CriticalExtensions", SecPolicyCheckCertCriticalExtensions);
      CFDictionaryAddValue(Mutable, @"UnparseableExtension", SecPolicyCheckCertUnparseableExtension);
      CFDictionaryAddValue(Mutable, @"DuplicateExtension", SecPolicyCheckCertDuplicateExtension);
      *&v53[24] = Mutable;
      *&v53[32] = 0;
      *values = CFDictionaryCreateMutable(v10, 0, v11, MEMORY[0x1E695E9E8]);
      *&v53[8] = CFArrayCreate(v10, values, 1, MEMORY[0x1E695E9C0]);
      CFRelease(*values);
      v53[40] = 1;
      Count = CFArrayGetCount(v8);
      if (Count < 1)
      {
LABEL_13:
        v17 = 4;
        v18 = 1;
      }

      else
      {
        v14 = Count;
        v15 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v15);
          *&v53[32] = v15;
          CFDictionaryApplyFunction(ValueAtIndex[4], SecLeafPVCValidateKey, &context);
          if ((v53[40] & 1) == 0 && !*&v53[8])
          {
            break;
          }

          if (v14 == ++v15)
          {
            if (v53[40])
            {
              goto LABEL_13;
            }

            break;
          }
        }

        v18 = 0;
        v17 = 5;
      }

      v19 = SecTrustGetVerifyTime(a1);
      v20 = *(v49[3] + 176);
      Current = CFAbsoluteTimeGetCurrent();
      if (v20 >= v19 + 4500.0 || v20 <= Current)
      {
        v20 = v19 + 4500.0;
      }

      v23 = CFDateCreate(0, v19);
      v24 = CFDateCreate(0, v20);
      v25 = *(a1 + 17);
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 0x40000000;
      v36 = context;
      v37 = *v53;
      v38 = *&v53[16];
      v39 = *&v53[32];
      v35[2] = __SecTrustEvaluateLeafOnly_block_invoke_2;
      v35[3] = &__block_descriptor_tmp_382;
      v35[4] = a1;
      v42 = v17;
      v40 = v23;
      v41 = v24;
      dispatch_sync(v25, v35);
      v26 = *(&context + 1);
      if (*(&context + 1))
      {
        *(&context + 1) = 0;
        CFRelease(v26);
      }

      v27 = *&v53[8];
      if (*&v53[8])
      {
        *&v53[8] = 0;
        CFRelease(v27);
      }

      v28 = *&v53[24];
      if (*&v53[24])
      {
        *&v53[24] = 0;
        CFRelease(v28);
      }

      v29 = context;
      if (context)
      {
        *&context = 0;
        CFRelease(v29);
      }

      if ((v18 & 1) == 0)
      {
        v30 = SecTrustCopyFailureDescription(a1);
        v31 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *values = 138412290;
          *&values[4] = v30;
          _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "%@", values, 0xCu);
        }

        CFRelease(v30);
      }

      if (a2)
      {
        *a2 = v17;
      }

      v32 = v49[3];
      if (v32)
      {
        CFRelease(v32);
      }

      v33 = v45[3];
      if (v33)
      {
        CFRelease(v33);
      }

      if (v23)
      {
        CFRelease(v23);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      _Block_object_dispose(&v44, 8);
      _Block_object_dispose(&v48, 8);
      result = 0;
    }
  }

  else
  {
    result = 4294967246;
  }

  v34 = *MEMORY[0x1E69E9840];
  return result;
}

const void *__SecTrustEvaluateLeafOnly_block_invoke(void *a1)
{
  result = CFArrayGetValueAtIndex(*(a1[6] + 16), 0);
  v3 = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[4] + 8) + 24) = v3;
  v4 = a1[6];
  v5 = *(v4 + 32);
  if (v5)
  {
    result = CFRetain(*(v4 + 32));
  }

  *(*(a1[5] + 8) + 24) = v5;
  return result;
}

void __SecTrustEvaluateLeafOnly_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 112) = *(a1 + 120);
  v3 = *(v2 + 88);
  if (v3)
  {
    *(v2 + 88) = 0;
    CFRelease(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRetain(*(a1 + 64));
  }

  *(*(a1 + 32) + 88) = v4;
  MutableCopy = CFArrayCreateMutableCopy(0, 1, *(*(a1 + 32) + 16));
  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  if (v7)
  {
    *(v6 + 72) = 0;
    CFRelease(v7);
    v6 = *(a1 + 32);
  }

  *(v6 + 72) = MutableCopy;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = Mutable;
  v10 = *(a1 + 104);
  if (v10)
  {
    CFDictionarySetValue(Mutable, @"TrustResultNotBefore", v10);
  }

  v11 = *(a1 + 112);
  if (v11)
  {
    CFDictionarySetValue(v9, @"TrustResultNotAfter", v11);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 96);
  if (v13)
  {
    *(v12 + 96) = 0;
    CFRelease(v13);
    v12 = *(a1 + 32);
  }

  *(v12 + 96) = v9;
}

SecTrustRef SecTrustDeserialize(const __CFData *a1, CFTypeRef *a2, uint64_t a3)
{
  v7 = 0;
  if (a1)
  {
    result = CFPropertyListCreateWithDERData(0, a1, a3, 0, a2);
    if (result)
    {
      v5 = result;
      v6 = SecTrustCreateFromPlist(result, &v7);
      if (v6)
      {
        SecError(v6, a2, @"unable to create trust ref");
      }

      CFRelease(v5);
      return v7;
    }
  }

  else
  {
    SecError(-50, a2, @"null serialized trust input");
    return 0;
  }

  return result;
}

uint64_t SecTrustCopyPropertyListRepresentation(uint64_t a1, __CFString **a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  if (a1)
  {
    v3 = *(a1 + 136);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyPropertyListRepresentation_block_invoke;
    v6[3] = &unk_1E70E3300;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(v3, v6);
    if (!v8[3])
    {
      SecError(-26275, a2, @"unable to create trust plist");
    }
  }

  else
  {
    SecError(-50, a2, @"null trust input");
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t SecTrustIncrementExceptionResetCount(CFTypeRef *a1)
{
  v2 = _os_activity_create(&dword_1887D2000, "SecTrustIncrementExceptionResetCount", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v8.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &v8);
  if (gTrustd && (v3 = *(gTrustd + 168)) != 0)
  {
    v4 = v3(a1);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2000000000;
    v17 = 0;
    *buf = MEMORY[0x1E69E9820];
    v10 = 0x40000000;
    v11 = __to_BOOL_error_request_block_invoke;
    v12 = &unk_1E70E3A58;
    v13 = &v14;
    securityd_send_sync_and_do(0x79u, a1, 0, buf);
    v4 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  os_release(v2);
  if (a1)
  {
    if (((*a1 == 0) & v4) != 0)
    {
LABEL_7:
      v5 = 0;
      goto LABEL_12;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  v6 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Failed to increment the exceptions epoch.", buf, 2u);
  }

  v5 = 4294941020;
LABEL_12:
  os_activity_scope_leave(&v8);
  return v5;
}

uint64_t SecTrustSetClientAuditToken(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v4 = *(a1 + 136);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecTrustSetNeedsEvaluation_block_invoke;
  block[3] = &__block_descriptor_tmp_80_14598;
  block[4] = a1;
  dispatch_sync(v4, block);
  v5 = *(a1 + 136);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __SecTrustSetClientAuditToken_block_invoke;
  v7[3] = &__block_descriptor_tmp_400;
  v7[4] = a1;
  v7[5] = a2;
  dispatch_sync(v5, v7);
  return 0;
}

void __SecTrustSetClientAuditToken_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 144);
  if (v3 != v1)
  {
    if (!v1 || (CFRetain(v1), (v3 = *(v2 + 144)) != 0))
    {
      CFRelease(v3);
    }

    *(v2 + 144) = v1;
  }
}

uint64_t SecTrustGetAppleAnchors()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecGetAppleTrustAnchors_block_invoke;
  block[3] = &__block_descriptor_tmp_1_16598;
  v2 = 0;
  if (SecGetAppleTrustAnchors_onceToken != -1)
  {
    dispatch_once(&SecGetAppleTrustAnchors_onceToken, block);
  }

  return SecGetAppleTrustAnchors_anchors;
}

__CFString *SecTrustStoreDomainName(CFTypeRef cf)
{
  v1 = cf;
  if (cf)
  {
    if (gTrustd)
    {
      v2 = @"user";
      if ((*gTrustd)(@"user", 0) == cf)
      {
        return v2;
      }

      v2 = @"admin";
      if ((*gTrustd)(@"admin", 0) == v1)
      {
        return v2;
      }

      v2 = @"system";
      if ((*gTrustd)(@"system", 0) == v1)
      {
        return v2;
      }
    }

    else
    {
      v3 = CFGetTypeID(cf);
      if (v3 == CFStringGetTypeID())
      {
        return v1;
      }
    }

    return 0;
  }

  return v1;
}

__CFString *SecTrustSettingsDomainName(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E70E3F40[a1];
  }
}

uint64_t SecTrustSettingsDomainForName(CFTypeRef cf2)
{
  if (!cf2)
  {
    return 0xFFFFFFFFLL;
  }

  if (CFEqual(@"user", cf2))
  {
    return 0;
  }

  if (CFEqual(@"admin", cf2))
  {
    return 1;
  }

  if (CFEqual(@"system", cf2))
  {
    return 2;
  }

  return 0xFFFFFFFFLL;
}

BOOL SecXPCDictionarySetCertificate(void *a1, uint64_t a2, __CFString **a3)
{
  if (a2 && (v4 = *(a2 + 24), v4 >= 1))
  {
    xpc_dictionary_set_data(a1, "cert", *(a2 + 16), v4);
    return 1;
  }

  else
  {

    return SecError(-50, a3, @"NULL certificate");
  }
}

uint64_t SecTrustStoreSetTrustSettings(uint64_t a1, void *a2, const void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2000000000;
  v26 = -1431655766;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (SecCertificateIsCertificate(a2))
  {
    IsSelfSigned = _SecCertificateIsSelfSigned(a2);
    *(v24 + 6) = 0;
    v7 = validateTrustSettings(IsSelfSigned, a3, v20 + 3);
    *(v24 + 6) = v7;
    if (!v7)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = __SecTrustStoreSetTrustSettings_block_invoke;
      v18[3] = &unk_1E70E3B18;
      v18[6] = a1;
      v18[7] = a2;
      v18[4] = &v23;
      v18[5] = &v19;
      _os_activity_initiate(&dword_1887D2000, "SecTrustStoreSetTrustSettings", OS_ACTIVITY_FLAG_DEFAULT, v18);
      if (!*(v24 + 6))
      {
        v8 = secLogObjForScope("truststore");
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_10;
        }

        *buf = 141558274;
        v28 = 1752392040;
        v29 = 2112;
        v30 = a2;
        v9 = "Set TrustSettings for %{mask.hash}@";
        v10 = v8;
        v11 = 22;
        goto LABEL_9;
      }
    }
  }

  else
  {
    *(v24 + 6) = -26275;
  }

  v12 = secLogObjForScope("SecError");
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  v13 = *(v24 + 6);
  *buf = 141558530;
  v28 = 1752392040;
  v29 = 2112;
  v30 = a2;
  v31 = 1024;
  v32 = v13;
  v9 = "Failed set trust settings for %{mask.hash}@, %d";
  v10 = v12;
  v11 = 28;
LABEL_9:
  _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
LABEL_10:
  v14 = v20[3];
  if (v14)
  {
    v20[3] = 0;
    CFRelease(v14);
  }

  v15 = *(v24 + 6);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t validateTrustSettings(uint64_t a1, const void *a2, __CFArray **a3)
{
  if (a1 && !a2)
  {
    return 0;
  }

  if (!a1 && !a2)
  {
    return 4294967246;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v14 = CFArrayGetTypeID();
    if (v14 != CFGetTypeID(a2))
    {
      return 4294967246;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    if (!Mutable)
    {
      return 4294967188;
    }

    MutableCopy = Mutable;
    Count = CFArrayGetCount(a2);
    if (Count < 1)
    {
      v6 = 4294967246;
    }

    else
    {
      v17 = Count;
      v18 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v18);
        value = 0;
        v20 = validateTrustSettings(a1, ValueAtIndex, &value);
        if (v20)
        {
          break;
        }

        CFArrayAppendValue(MutableCopy, value);
        v21 = value;
        if (value)
        {
          value = 0;
          CFRelease(v21);
        }

        if (v17 == ++v18)
        {
          goto LABEL_31;
        }
      }

      v6 = v20;
    }

LABEL_38:
    CFRelease(MutableCopy);
    return v6;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
  v9 = CFDictionaryGetValue(MutableCopy, @"kSecTrustSettingsResult");
  valuePtr = 0;
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    v12 = CFNumberGetTypeID();
    if (!a1 && v11 != v12)
    {
      goto LABEL_17;
    }

    v13 = CFGetTypeID(v10);
    if (v13 == CFNumberGetTypeID() && CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr) && (a1 && valuePtr == 2 || !a1 && valuePtr == 1))
    {
      goto LABEL_17;
    }
  }

  else if (!a1)
  {
LABEL_17:
    v6 = 4294967246;
    goto LABEL_32;
  }

  v22 = CFDictionaryGetValue(MutableCopy, @"kSecTrustSettingsPolicy");
  if (v22)
  {
    v23 = v22;
    CompatibilityOidString = SecPolicyGetCompatibilityOidString(v22);
    v25 = v23[3];
    CFDictionarySetValue(MutableCopy, @"kSecTrustSettingsPolicy", CompatibilityOidString);
    if (v25)
    {
      CFDictionaryAddValue(MutableCopy, @"kSecTrustSettingsPolicyName", v25);
    }
  }

LABEL_31:
  v6 = 0;
LABEL_32:
  if (a3 && !v6)
  {
    if (MutableCopy)
    {
      CFRetain(MutableCopy);
    }

    v6 = 0;
    *a3 = MutableCopy;
  }

  if (MutableCopy)
  {
    goto LABEL_38;
  }

  return v6;
}

uint64_t __SecTrustStoreSetTrustSettings_block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecTrustStoreSetTrustSettings_block_invoke_2;
  v3[3] = &unk_1E70E3AF0;
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  result = SecOSStatusWith(v3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __SecTrustStoreSetTrustSettings_block_invoke_2(void *a1, CFTypeRef *a2)
{
  if (gTrustd && (v5 = *(gTrustd + 16)) != 0)
  {
    v6 = a1[6];
    v7 = *(*(a1[4] + 8) + 24);
    v8 = a1[5];

    return v5(v8, v6, v7, a2);
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v10 = *(*(a1[4] + 8) + 24);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __string_cert_cftype_to_error_block_invoke;
    v11[3] = &__block_descriptor_tmp_69_14935;
    v12 = *(a1 + 5);
    v13 = v10;
    return securityd_send_sync_and_do(5u, a2, v11, 0);
  }
}

size_t __string_cert_cftype_to_error_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetString(a2, "domain", *(a1 + 32), a3);
  if (result)
  {
    result = SecXPCDictionarySetCertificate(a2, *(a1 + 40), a3);
    if (result)
    {
      v11 = *(a1 + 48);
      if (v11)
      {

        return SecXPCDictionarySetPListWithRepair(a2, "settings", v11, a3, v7, v8, v9, v10);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t SecTrustStoreRemoveCertificate(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_1887D2000, "SecTrustStoreRemoveCertificate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  if (!a1)
  {
    v5 = 4294967246;
LABEL_3:
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558530;
      v13 = 1752392040;
      v14 = 2112;
      v15 = a2;
      v16 = 1024;
      v17 = v5;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Failed to remove trust settings for %{mask.hash}@, %d", buf, 0x1Cu);
    }

    goto LABEL_7;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __SecTrustStoreRemoveCertificate_block_invoke;
  v10[3] = &__block_descriptor_tmp_8_14946;
  v10[4] = a1;
  v10[5] = a2;
  v5 = SecOSStatusWith(v10);
  if (v5)
  {
    goto LABEL_3;
  }

  v7 = secLogObjForScope("truststore");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558274;
    v13 = 1752392040;
    v14 = 2112;
    v15 = a2;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Removed TrustSettings for %{mask.hash}@", buf, 0x16u);
    v5 = 0;
  }

LABEL_7:
  os_release(v4);
  os_activity_scope_leave(&state);
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __SecTrustStoreRemoveCertificate_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  if (gTrustd && (v5 = *(gTrustd + 24)) != 0)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 32);

    return v5(v7, v6, a2);
  }

  else
  {
    v11 = v2;
    v12 = v3;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __string_cert_to_BOOL_error_block_invoke;
    v9[3] = &__block_descriptor_tmp_70_14949;
    v10 = *(a1 + 32);
    return securityd_send_sync_and_do(6u, a2, v9, 0);
  }
}

uint64_t SecTrustStoreGetSettingsVersionNumber(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  err = 0;
  *a1 = SecTrustGetTrustStoreVersionNumber(&err);
  if (!err)
  {
    return 0;
  }

  Code = CFErrorGetCode(err);
  if (err)
  {
    CFRelease(err);
  }

  return Code;
}

uint64_t SecTrustStoreGetSettingsAssetVersionNumber(_DWORD *a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  err = 0;
  *a1 = SecTrustGetAssetVersionNumber(&err);
  if (!err)
  {
    return 0;
  }

  Code = CFErrorGetCode(err);
  if (err)
  {
    CFRelease(err);
  }

  return Code;
}

uint64_t SecTrustStoreCopyAll(uint64_t a1, void *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyAll", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __SecTrustStoreCopyAll_block_invoke;
    v7[3] = &unk_1E70E3B60;
    v7[4] = &v9;
    v7[5] = a1;
    v5 = SecOSStatusWith(v7);
    *a2 = v10[3];
  }

  else
  {
    v5 = 4294967246;
  }

  os_release(v4);
  os_activity_scope_leave(&state);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __SecTrustStoreCopyAll_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  if (gTrustd && (v2 = *(gTrustd + 120)) != 0)
  {
    return v2(*(a1 + 40), 0, *(*(a1 + 32) + 8) + 24, a2);
  }

  else
  {
    return string_string_to_array_error(*(a1 + 40), 0, *(*(a1 + 32) + 8) + 24, a2);
  }
}

uint64_t string_string_to_array_error(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __string_string_to_array_error_block_invoke;
  v6[3] = &__block_descriptor_tmp_72_14952;
  v6[4] = a2;
  v6[5] = a1;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __string_string_to_array_error_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_73_14953;
  v5[4] = a3;
  return securityd_send_sync_and_do(0x64u, a4, v6, v5);
}

BOOL __string_string_to_array_error_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v6 = *(a1 + 32);
  if (!v6 || (result = SecXPCDictionarySetString(a2, "policies", v6, a3), result))
  {
    v8 = *(a1 + 40);

    return SecXPCDictionarySetString(a2, "domain", v8, a3);
  }

  return result;
}

BOOL __string_string_to_array_error_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  result = 1;
  if (*(a1 + 32))
  {
    **(a1 + 32) = SecXPCDictionaryCopyArray(xdict, "status", a3);
    if (!**(a1 + 32))
    {
      return 0;
    }
  }

  return result;
}

uint64_t SecTrustStoreCopyAnchors(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v4 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyAnchors", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  if (a1)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __SecTrustStoreCopyAnchors_block_invoke;
    v7[3] = &unk_1E70E3B88;
    v7[5] = a1;
    v7[6] = a2;
    v7[4] = &v9;
    v5 = SecOSStatusWith(v7);
    os_release(v4);
    if (v5)
    {
      a1 = 0;
    }

    else
    {
      a1 = v10[3];
    }
  }

  else
  {
    os_release(v4);
  }

  os_activity_scope_leave(&state);
  _Block_object_dispose(&v9, 8);
  return a1;
}

uint64_t __SecTrustStoreCopyAnchors_block_invoke(void *a1, CFTypeRef *a2)
{
  if (gTrustd && (v2 = *(gTrustd + 120)) != 0)
  {
    return v2(a1[5], a1[6], *(a1[4] + 8) + 24, a2);
  }

  else
  {
    return string_string_to_array_error(a1[5], a1[6], *(a1[4] + 8) + 24, a2);
  }
}

uint64_t SecTrustStoreCopyUsageConstraints(uint64_t a1, uint64_t a2, const __CFArray **a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v6 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyUsageConstraints", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v6, &state);
  v7 = 4294967246;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 0x40000000;
        v16[2] = __SecTrustStoreCopyUsageConstraints_block_invoke;
        v16[3] = &unk_1E70E3BB0;
        v16[5] = a1;
        v16[6] = a2;
        v16[4] = &v18;
        v7 = SecOSStatusWith(v16);
        v8 = v19[3];
        *a3 = v8;
        if (!v7)
        {
          if (v8)
          {
            Count = CFArrayGetCount(v8);
            v11 = secLogObjForScope("truststore");
            v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
            if (Count)
            {
              if (v12)
              {
                *buf = 141558274;
                v23 = 1752392040;
                v24 = 2112;
                v25 = a2;
                v13 = "Found usage constraints for %{mask.hash}@";
LABEL_15:
                _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0x16u);
              }
            }

            else if (v12)
            {
              *buf = 141558274;
              v23 = 1752392040;
              v24 = 2112;
              v25 = a2;
              v13 = "Found no usage constraints for %{mask.hash}@";
              goto LABEL_15;
            }
          }

          else
          {
            v11 = secLogObjForScope("truststore");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 141558274;
              v23 = 1752392040;
              v24 = 2112;
              v25 = a2;
              v13 = "Found no trust settings for %{mask.hash}@";
              goto LABEL_15;
            }
          }

          v7 = 0;
          goto LABEL_17;
        }
      }
    }
  }

  v9 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141558530;
    v23 = 1752392040;
    v24 = 2112;
    v25 = a2;
    v26 = 1024;
    v27 = v7;
    _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "Failed to get usage contraints for %{mask.hash}@, %d", buf, 0x1Cu);
  }

LABEL_17:
  os_release(v6);
  os_activity_scope_leave(&state);
  _Block_object_dispose(&v18, 8);
  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __SecTrustStoreCopyUsageConstraints_block_invoke(void *a1, CFTypeRef *a2)
{
  if (gTrustd && (v5 = *(gTrustd + 128)) != 0)
  {
    v6 = a1[6];
    v7 = *(a1[4] + 8) + 24;
    v8 = a1[5];

    return v5(v8, v6, v7, a2);
  }

  else
  {
    v14 = v2;
    v15 = v3;
    v10 = *(a1[4] + 8) + 24;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __string_cert_to_array_error_block_invoke;
    v12[3] = &__block_descriptor_tmp_74_14963;
    v13 = *(a1 + 5);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __string_cert_to_array_error_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_75_14964;
    v11[4] = v10;
    return securityd_send_sync_and_do(0x65u, a2, v12, v11);
  }
}

BOOL __string_cert_to_array_error_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetString(a2, "domain", *(a1 + 32), a3);
  if (result)
  {
    v7 = *(a1 + 40);

    return SecXPCDictionarySetCertificate(a2, v7, a3);
  }

  return result;
}

uint64_t SecTrustStoreRemoveAll(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1887D2000, "SecTrustStoreRemoveAll", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &state);
  if (!a1)
  {
    v3 = 4294967246;
LABEL_3:
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v11 = v3;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Failed to remove all trust settings, %d", buf, 8u);
    }

    goto LABEL_7;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __SecTrustStoreRemoveAll_block_invoke;
  v8[3] = &__block_descriptor_tmp_12_14966;
  v8[4] = a1;
  v3 = SecOSStatusWith(v8);
  if (v3)
  {
    goto LABEL_3;
  }

  v5 = secLogObjForScope("truststore");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Removed all trust settings", buf, 2u);
    v3 = 0;
  }

LABEL_7:
  os_release(v2);
  os_activity_scope_leave(&state);
  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __SecTrustStoreRemoveAll_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  if (gTrustd && (v4 = *(gTrustd + 32)) != 0)
  {
    v5 = *(a1 + 32);

    return v4(v5);
  }

  else
  {
    v8[5] = v2;
    v8[6] = v3;
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __string_to_error_block_invoke;
    v8[3] = &__block_descriptor_tmp_76_14969;
    v8[4] = v7;
    return securityd_send_sync_and_do(0x81u, a2, v8, &__block_literal_global_14970);
  }
}

uint64_t SecTrustStoreSetCTExceptions(__CFString *a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = a1;
  if (a1 && gTrustd)
  {
    v6 = *(gTrustd + 152);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = _os_activity_create(&dword_1887D2000, "SecTrustStoreSetCTExceptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v8, &state);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SecTrustStoreSetCTExceptions_block_invoke;
    v11[3] = &__block_descriptor_tmp_29_14975;
    v11[4] = a2;
    v11[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SecTrustStoreSetCTExceptions_block_invoke_2;
    v10[3] = &unk_1E70E3C48;
    v10[4] = &v12;
    securityd_send_sync_and_do(0x74u, a3, v11, v10);
    os_release(v8);
    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
    return v9;
  }

  if (!gTrustd)
  {
    goto LABEL_11;
  }

  v6 = *(gTrustd + 152);
  if (!v6)
  {
    goto LABEL_11;
  }

  a1 = @"com.apple.trusttests";
LABEL_8:

  return v6(a1);
}

uint64_t __SecTrustStoreSetCTExceptions_block_invoke(uint64_t a1, void *a2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 32);
  if (v11)
  {
    SecXPCDictionarySetPListWithRepair(a2, "exceptions", v11, a3, a5, a6, a7, a8);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    SecXPCDictionarySetString(a2, "appID", v12, a3);
  }

  return 1;
}

uint64_t SecTrustStoreCopyCTExceptions(uint64_t a1, CFTypeRef *a2)
{
  if (gTrustd && (v4 = *(gTrustd + 160)) != 0)
  {

    return v4();
  }

  else
  {
    v6 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyCTExceptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v6, &state);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __SecTrustStoreCopyCTExceptions_block_invoke;
    v9[3] = &__block_descriptor_tmp_31_14982;
    v9[4] = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __SecTrustStoreCopyCTExceptions_block_invoke_2;
    v8[3] = &unk_1E70E3C90;
    v8[4] = &v10;
    securityd_send_sync_and_do(0x75u, a2, v9, v8);
    os_release(v6);
    v7 = v11[3];
    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
    return v7;
  }
}

uint64_t __SecTrustStoreCopyCTExceptions_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    SecXPCDictionarySetString(a2, "appID", v4, a3);
  }

  return 1;
}

uint64_t SecTrustStoreSetCARevocationAdditions(__CFString *a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = a1;
  if (a1 && gTrustd)
  {
    v6 = *(gTrustd + 184);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = _os_activity_create(&dword_1887D2000, "SecTrustStoreSetCARevocationAdditions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v8, &state);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SecTrustStoreSetCARevocationAdditions_block_invoke;
    v11[3] = &__block_descriptor_tmp_37_14985;
    v11[4] = a2;
    v11[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SecTrustStoreSetCARevocationAdditions_block_invoke_2;
    v10[3] = &unk_1E70E3CF0;
    v10[4] = &v12;
    securityd_send_sync_and_do(0x7Au, a3, v11, v10);
    os_release(v8);
    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
    return v9;
  }

  if (!gTrustd)
  {
    goto LABEL_11;
  }

  v6 = *(gTrustd + 184);
  if (!v6)
  {
    goto LABEL_11;
  }

  a1 = @"com.apple.trusttests";
LABEL_8:

  return v6(a1);
}

uint64_t __SecTrustStoreSetCARevocationAdditions_block_invoke(uint64_t a1, void *a2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 32);
  if (v11)
  {
    SecXPCDictionarySetPListWithRepair(a2, "revocationCheck", v11, a3, a5, a6, a7, a8);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    SecXPCDictionarySetString(a2, "appID", v12, a3);
  }

  return 1;
}

uint64_t SecTrustStoreCopyCARevocationAdditions(uint64_t a1, CFTypeRef *a2)
{
  if (gTrustd && (v4 = *(gTrustd + 192)) != 0)
  {

    return v4();
  }

  else
  {
    v6 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyCARevocationAdditions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v6, &state);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __SecTrustStoreCopyCARevocationAdditions_block_invoke;
    v9[3] = &__block_descriptor_tmp_39_14989;
    v9[4] = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __SecTrustStoreCopyCARevocationAdditions_block_invoke_2;
    v8[3] = &unk_1E70E3D38;
    v8[4] = &v10;
    securityd_send_sync_and_do(0x7Bu, a2, v9, v8);
    os_release(v6);
    v7 = v11[3];
    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
    return v7;
  }
}

uint64_t __SecTrustStoreCopyCARevocationAdditions_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    SecXPCDictionarySetString(a2, "appID", v4, a3);
  }

  return 1;
}

uint64_t SecTrustStoreSetTransparentConnectionPins(__CFString *a1, uint64_t a2, CFTypeRef *a3)
{
  v5 = a1;
  if (a1 && gTrustd)
  {
    v6 = *(gTrustd + 208);
    if (v6)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = _os_activity_create(&dword_1887D2000, "SecTrustStoreSetTransparentConnectionPins", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v8, &state);
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SecTrustStoreSetTransparentConnectionPins_block_invoke;
    v11[3] = &__block_descriptor_tmp_42_14992;
    v11[4] = a2;
    v11[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SecTrustStoreSetTransparentConnectionPins_block_invoke_2;
    v10[3] = &unk_1E70E3D80;
    v10[4] = &v12;
    securityd_send_sync_and_do(0x7Du, a3, v11, v10);
    os_release(v8);
    v9 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
    os_activity_scope_leave(&state);
    return v9;
  }

  if (!gTrustd)
  {
    goto LABEL_11;
  }

  v6 = *(gTrustd + 208);
  if (!v6)
  {
    goto LABEL_11;
  }

  a1 = @"com.apple.trusttests";
LABEL_8:

  return v6(a1);
}

uint64_t __SecTrustStoreSetTransparentConnectionPins_block_invoke(uint64_t a1, void *a2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 32);
  if (v11)
  {
    SecXPCDictionarySetPListWithRepair(a2, "anchors", v11, a3, a5, a6, a7, a8);
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    SecXPCDictionarySetString(a2, "appID", v12, a3);
  }

  return 1;
}

uint64_t SecTrustStoreCopyTransparentConnectionPins(uint64_t a1, CFTypeRef *a2)
{
  if (gTrustd && (v4 = *(gTrustd + 216)) != 0)
  {

    return v4();
  }

  else
  {
    v6 = _os_activity_create(&dword_1887D2000, "SecTrustStoreCopyTransparentConnectionPins", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v6, &state);
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __SecTrustStoreCopyTransparentConnectionPins_block_invoke;
    v9[3] = &__block_descriptor_tmp_44_14996;
    v9[4] = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __SecTrustStoreCopyTransparentConnectionPins_block_invoke_2;
    v8[3] = &unk_1E70E3DC8;
    v8[4] = &v10;
    securityd_send_sync_and_do(0x7Eu, a2, v9, v8);
    os_release(v6);
    v7 = v11[3];
    _Block_object_dispose(&v10, 8);
    os_activity_scope_leave(&state);
    return v7;
  }
}

uint64_t __SecTrustStoreCopyTransparentConnectionPins_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    SecXPCDictionarySetString(a2, "appID", v4, a3);
  }

  return 1;
}

CFDataRef SecXPCDictionaryCopyData(void *a1, const char *a2, __CFString **a3)
{
  length = 0;
  data = xpc_dictionary_get_data(a1, a2, &length);
  if (data)
  {
    if ((length & 0x8000000000000000) != 0)
    {
      SecError(-50, a3, @"too large data for key %s", a2);
    }

    else
    {
      result = CFDataCreate(*MEMORY[0x1E695E480], data, length);
      if (result)
      {
        return result;
      }

      SecError(-50, a3, @"failed to create data for key %s", a2);
    }
  }

  else
  {
    SecError(-50, a3, @"no data for key %s", a2);
  }

  return 0;
}

CFStringRef SecXPCDictionaryCopyString(void *a1, __CFString **a2)
{
  string = xpc_dictionary_get_string(a1, "status");
  if (string)
  {
    v4 = string;
    result = CFStringCreateWithCString(*MEMORY[0x1E695E480], string, 0x8000100u);
    if (result)
    {
      return result;
    }

    SecError(-108, a2, @"object for key %s failed to convert %s to CFString", "status", v4);
  }

  else
  {
    SecError(-50, a2, @"object for key %s not string", "status");
  }

  return 0;
}

uint64_t safeContentsParse(uint64_t **a1, unint64_t a2, char *a3)
{
  v23 = 0;
  if (*a1)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || SEC_ASN1Decode(**a1, &v23, &NSS_P12_SafeContentsTemplate, a3, a2))
  {
    return 0xFFFFFFFFLL;
  }

  if (v23)
  {
    if (*v23)
    {
      v5 = 0;
        ;
      }

      if (v5)
      {
        v7 = 0;
        v8 = *MEMORY[0x1E695E480];
        v9 = *MEMORY[0x1E695E498];
        v10 = 8 * v5;
        do
        {
          v11 = v23[v7 / 8];
          v12 = *(v11 + 24);
          if (!v12)
          {
            return 0xFFFFFFFFLL;
          }

          v13 = *(v11 + 16);
          result = 0xFFFFFFFFLL;
          if (v13 > 3)
          {
            if ((v13 - 4) >= 3)
            {
              return result;
            }
          }

          else if (v13 != 1)
          {
            if (v13 == 2)
            {
              v30 = 0uLL;
              p12Decrypt(a1, v12, v12 + 32, &v30);
              if (v17)
              {
                return 0xFFFFFFFFLL;
              }

              v29 = 0;
              v27 = 0u;
              v28 = 0u;
              v25 = 0u;
              v26 = 0u;
              if (!*a1)
              {
                return 0xFFFFFFFFLL;
              }

              if (!*(&v30 + 1))
              {
                return 0xFFFFFFFFLL;
              }

              if (SEC_ASN1Decode(**a1, &v25, &kSecAsn1PrivateKeyInfoTemplate, *(&v30 + 1), v30))
              {
                return 0xFFFFFFFFLL;
              }

              v24[0] = *(&v26 + 1);
              v24[1] = v26;
              v18 = DEROidCompare(&oidEcPubKey, v24);
              v19 = &oidEcPubKey;
              if (!v18)
              {
                v20 = DEROidCompare(&oidRsa, v24);
                v19 = &oidRsa;
                if (!v20)
                {
                  return 0xFFFFFFFFLL;
                }
              }

              v21 = CFDataCreateWithBytesNoCopy(v8, v19->data, v19->length, v9);
              if (emit_item(a1, *(v11 + 32), @"algid", v21))
              {
                if (!v21)
                {
                  return 0xFFFFFFFFLL;
                }

                v22 = -1;
LABEL_36:
                CFRelease(v21);
              }

              else
              {
                if (v21)
                {
                  CFRelease(v21);
                }

                v21 = CFDataCreate(v8, *(&v28 + 1), v28);
                if (emit_item(a1, *(v11 + 32), @"key", v21))
                {
                  v22 = -1;
                }

                else
                {
                  v22 = 0;
                }

                if (v21)
                {
                  goto LABEL_36;
                }
              }

              if (v22)
              {
                return 0xFFFFFFFFLL;
              }

              goto LABEL_38;
            }

            if (v13 != 3)
            {
              return result;
            }

            v15 = *(v12 + 16);
            if (v15 != 2)
            {
              if (v15 != 1)
              {
                return result;
              }

              v16 = CFDataCreate(v8, *(v12 + 32), *(v12 + 24));
              if (emit_item(a1, *(v11 + 32), @"cert", v16))
              {
                if (v16)
                {
                  CFRelease(v16);
                }

                return 0xFFFFFFFFLL;
              }

              CFRelease(v16);
            }
          }

LABEL_38:
          v7 += 8;
        }

        while (v10 != v7);
      }
    }
  }

  return 0;
}

double p12Decrypt(uint64_t a1, void *a2, uint64_t a3, _OWORD *a4)
{
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v8 = a2[2];
  if (v8)
  {
    v63 = 0uLL;
    v64 = 0uLL;
    v61 = 0uLL;
    v62 = 0uLL;
    v59 = 0uLL;
    v60 = 0uLL;
    v57 = 0uLL;
    v58 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v9 = *a1;
    v10 = a2[3];
    if (*a1 && v10)
    {
      if (!SEC_ASN1Decode(*v9, &v55, &NSS_P12_PBE_ParamsTemplate, v10, v8))
      {
        goto LABEL_10;
      }

      v9 = *a1;
      v10 = a2[3];
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    if (v9 && v10 && !SEC_ASN1Decode(*v9, &v55, &NSS_P12_PBE2_ParamsTemplate, v10, a2[2]))
    {
      v55 = v58;
      v56 = v59;
    }
  }

LABEL_10:
  v11 = *a2 - 1;
  v65 = a2[1];
  v66 = v11;
  if (DEROidCompare(&OID_PKCS12_pbep, &v65))
  {
    v13 = *(a2[1] + *a2 - 1);
    if (v13 > 7 || v13 == 4)
    {
      return result;
    }

    v15 = &pkcsOidInfos + 16 * v13;
    v16 = *(v15 - 4);
    v17 = *(v15 - 3);
    v19 = *(v15 - 2);
    v18 = *(v15 - 1);
    v20 = 20;
  }

  else
  {
    if (!DEROidCompare(&OID_PKCS5_pbep2, &v65))
    {
      return result;
    }

    v16 = 0;
    v20 = 32;
    v18 = 1;
    v19 = 16;
    v17 = 256;
  }

  v21 = v56;
  if (v56 && (v22 = *(&v56 + 1)) != 0)
  {
    if (v56 > 4)
    {
      return result;
    }

    options = v18;
    v23 = 0;
    do
    {
      v24 = *v22++;
      v23 = v24 | (v23 << 8);
      --v21;
    }

    while (v21);
    if (!v17)
    {
LABEL_32:
      v25 = 0;
      v26 = 0;
      if (v16)
      {
        goto LABEL_33;
      }

LABEL_30:
      v51 = 0;
      v52 = &v51;
      v53 = 0x2000000000;
      v54 = 0;
      v27 = *(a1 + 8);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 0x40000000;
      v44 = v61;
      v45 = v62;
      v46 = v63;
      v47 = v64;
      v40 = v57;
      v41 = v58;
      v42 = v59;
      v43 = v60;
      v38 = v55;
      v25 = v17 >> 3;
      v37[2] = __p12Decrypt_block_invoke;
      v37[3] = &unk_1E70E40D0;
      v37[4] = &v51;
      v39 = v56;
      v50 = v23;
      v48 = v25;
      v49 = v26;
      v65 = MEMORY[0x1E69E9820];
      v66 = 0x40000000;
      v67 = __CFStringPerformWithCString_block_invoke;
      v68 = &unk_1E70E4418;
      v69 = v37;
      CFStringPerformWithCStringAndLength(v27, &v65);
      v28 = *(v52 + 6);
      _Block_object_dispose(&v51, 8);
      if (v28)
      {
        return result;
      }

      goto LABEL_34;
    }
  }

  else
  {
    options = v18;
    v23 = 0;
    if (!v17)
    {
      goto LABEL_32;
    }
  }

  if (!*a1)
  {
    goto LABEL_32;
  }

  v25 = (v17 + 7) >> 3;
  v26 = PORT_ArenaAlloc(**a1, v25);
  if (!v26)
  {
    v25 = 0;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_33:
  if (p12_pbe_gen(*(a1 + 8), *(&v55 + 1), v55, v23, 1, v26, v25, 0x40u, v20))
  {
    return result;
  }

LABEL_34:
  v29 = *(&v64 + 1);
  if (*(&v64 + 1) && v64)
  {
LABEL_44:
    v36 = 0uLL;
    v31 = *a1;
    if (*a1)
    {
      dataOutAvailable = *a3;
      dataOut = PORT_ArenaAlloc(*v31, *a3);
      *(&v36 + 1) = dataOut;
      v34 = options;
      if (dataOut)
      {
        *&v36 = dataOutAvailable;
      }

      else
      {
        dataOutAvailable = 0;
      }
    }

    else
    {
      dataOutAvailable = 0;
      dataOut = 0;
      v34 = options;
    }

    if (!CCCrypt(1u, v16, v34, v26, v25, v29, *(a3 + 8), *a3, dataOut, dataOutAvailable, &v36))
    {
      result = *&v36;
      *a4 = v36;
    }

    return result;
  }

  if (!v19)
  {
    v29 = 0;
    goto LABEL_44;
  }

  if (*a1)
  {
    v29 = PORT_ArenaAlloc(**a1, v19);
    if (v29)
    {
      v30 = v19;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v29 = 0;
  }

  if (!p12_pbe_gen(*(a1 + 8), *(&v55 + 1), v55, v23, 2, v29, v30, 0x40u, v20))
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t __p12Decrypt_block_invoke(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  result = CCKeyDerivationPBKDF(2u, __s, v4, *(a1 + 48), *(a1 + 40), 3u, *(a1 + 216), *(a1 + 208), *(a1 + 200));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t emit_item(uint64_t a1, void *a2, void *a3, const void *a4)
{
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = Mutable;
  key = a3;
  v38 = a4;
  if (a2)
  {
    if (*a2)
    {
      v11 = 0;
        ;
      }

      if (v11)
      {
        v13 = 0;
        v14 = v11;
        do
        {
          v15 = a2[v13];
          v16 = v15[2];
          if (v16 && *v16)
          {
            v17 = v16 + 1;
            v18 = -1;
            do
            {
              v19 = *v17++;
              ++v18;
            }

            while (v19);
            v20 = v18 == 0;
          }

          else
          {
            v20 = 0;
          }

          v41 = 0xAAAAAAAAAAAAAAAALL;
          v42 = 0xAAAAAAAAAAAAAAAALL;
          v41 = v15[1];
          v42 = *v15;
          if (DEROidCompare(&v41, &oidFriendlyName))
          {
            if (!v20)
            {
              goto LABEL_41;
            }

            v39 = 0xAAAAAAAAAAAAAAAALL;
            v40 = 0xAAAAAAAAAAAAAAAALL;
            if (!*a1)
            {
              goto LABEL_41;
            }

            v21 = *v15[2];
            v22 = v21[1];
            if (!v22 || SEC_ASN1Decode(**a1, &v39, kSecAsn1BMPStringTemplate, v22, *v21))
            {
              goto LABEL_41;
            }

            v23 = CFStringCreateWithBytes(v8, v40, v39, 0x100u, 1u);
            if (v23)
            {
              v24 = v23;
              v25 = v10;
              v26 = @"label";
LABEL_28:
              CFDictionarySetValue(v25, v26, v24);
              CFRelease(v24);
            }
          }

          else if (DEROidCompare(&v41, &oidLocalKeyId))
          {
            if (!v20 || (v39 = 0xAAAAAAAAAAAAAAAALL, v40 = 0xAAAAAAAAAAAAAAAALL, !*a1) || (v27 = *v15[2], (v28 = v27[1]) == 0) || SEC_ASN1Decode(**a1, &v39, kSecAsn1OctetStringTemplate, v28, *v27))
            {
LABEL_41:
              v35 = 0xFFFFFFFFLL;
              goto LABEL_39;
            }

            v29 = CFDataCreate(v8, v40, v39);
            if (v29)
            {
              v24 = v29;
              v25 = v10;
              v26 = @"keyid";
              goto LABEL_28;
            }
          }

          ++v13;
        }

        while (v13 != v14);
      }
    }
  }

  Value = CFDictionaryGetValue(v10, @"keyid");
  if (!Value)
  {
    Value = CFDictionaryGetValue(v10, @"label");
  }

  if (Value)
  {
    v31 = Value;
  }

  else
  {
    v31 = v38;
  }

  v32 = CFDictionaryGetValue(*(a1 + 16), v31);
  v33 = key;
  if (v32)
  {
    v34 = v38;
  }

  else
  {
    CFDictionarySetValue(v10, key, v38);
    v32 = *(a1 + 16);
    v33 = v31;
    v34 = v10;
  }

  CFDictionarySetValue(v32, v33, v34);
  v35 = 0;
LABEL_39:
  CFRelease(v10);
  return v35;
}

uint64_t __Block_byref_object_copy__15916(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _getAppAttestInternalSymbol(void *a1, char *__symbol)
{
  if (_initAppAttestInternal_onceToken == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&_initAppAttestInternal_onceToken, &__block_literal_global_584);
    if (!a1)
    {
      return;
    }
  }

  if (!*a1)
  {
    v4 = dlsym(appAttestInternal, __symbol);
    *a1 = v4;
    if (!v4)
    {
      fprintf(*MEMORY[0x1E69E9848], "symbol %s is missing", __symbol);
      abort();
    }
  }
}

void *___initAppAttestInternal_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/AppAttestInternal.framework/AppAttestInternal", 5);
  appAttestInternal = result;
  return result;
}

void sub_188915CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188915E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1889160FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188916E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SecRequestClientIdentity(const void *a1, const void *a2, void *a3, void *a4)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = "subject";
  if (a1)
  {
    v10 = 0;
  }

  if (!a2)
  {
    v10 = "parameters";
  }

  if (!v7)
  {
    v10 = "queue";
  }

  if (!v8)
  {
    v10 = "result block";
  }

  if (v10)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecRequestClientIdentity was called with NULL %s", v10];
    v12 = v11;
    if (v9)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A768];
      v28 = *MEMORY[0x1E696A578];
      v29[0] = v11;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v16 = [v13 errorWithDomain:v14 code:-50 userInfo:v15];

      (v9)[2](v9, 0, v16);
    }

    else
    {
      v16 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "%@", &buf, 0xCu);
      }
    }
  }

  else
  {
    if (a1)
    {
      CFRetain(a1);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__15916;
    v26 = __Block_byref_object_dispose__15917;
    v27 = os_transaction_create();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __SecRequestClientIdentity_block_invoke;
    block[3] = &unk_1E70E4340;
    v21 = a1;
    v22 = a2;
    v19 = v9;
    p_buf = &buf;
    dispatch_async(v7, block);

    _Block_object_dispose(&buf, 8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __SecRequestClientIdentity_block_invoke(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [[AcmeCertRequest alloc] initWithSubject:a1[6] parameters:a1[7]];
  v4 = [(AcmeCertRequest *)v3 sanitizeParameters];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v10 = 0;
    [(AcmeCertRequest *)v3 identityWithError:&v10];
    v5 = v10;
  }

  (*(a1[4] + 16))();
  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1[5] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;

  objc_autoreleasePoolPop(v2);
}

uint64_t SecAreQARootCertificatesEnabled()
{
  if (SecAreQARootCertificatesEnabled_onceToken != -1)
  {
    dispatch_once(&SecAreQARootCertificatesEnabled_onceToken, &__block_literal_global_16024);
  }

  return SecAreQARootCertificatesEnabled_sQACertsEnabled;
}

void __SecAreQARootCertificatesEnabled_block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v4 = 4;
  v0 = sysctlbyname("security.mac.amfi.qa_root_certs_allowed", &v5, &v4, 0, 0);
  if (v0)
  {
    v1 = v0;
    v2 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v7 = v1;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Unable to check QA certificate status: %d", buf, 8u);
    }
  }

  else
  {
    SecAreQARootCertificatesEnabled_sQACertsEnabled = v5 == 1;
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t p12_pbe_gen(const __CFString *a1, const void *a2, size_t a3, unsigned int a4, uint64_t a5, void *a6, size_t a7, CC_LONG a8, unsigned int a9)
{
  v72 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_44;
  }

  v16 = a8;
  MEMORY[0x1EEE9AC00](a1);
  memset(&v56 - ((v16 + 15) & 0x1FFFFFFF0), v17, v16);
  ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], a1, 0x10000100u, 0);
  if (!ExternalRepresentation)
  {
    goto LABEL_43;
  }

  v19 = ExternalRepresentation;
  v66 = &v56 - ((v16 + 15) & 0x1FFFFFFF0);
  bytes = 0;
  MutableCopy = CFDataCreateMutableCopy(0, 0, ExternalRepresentation);
  CFRelease(v19);
  if (!MutableCopy || (CFDataAppendBytes(MutableCopy, &bytes, 2), v69 = 0, Length = CFDataGetLength(MutableCopy), BytePtr = CFDataGetBytePtr(MutableCopy), v23 = concatenate_to_blocksize(BytePtr, Length, v16, &v69), CFRelease(MutableCopy), !v23))
  {
LABEL_43:
    result = 0xFFFFFFFFLL;
    goto LABEL_44;
  }

  v68 = 0;
  if (!a3)
  {
    goto LABEL_41;
  }

  v24 = concatenate_to_blocksize(a2, a3, v16, &v68);
  if (!v24)
  {
    goto LABEL_41;
  }

  v25 = v24;
  v65 = a4;
  v26 = v68;
  v27 = v69;
  v67 = v69 + v68;
  v28 = malloc_type_malloc(v69 + v68, 0xFDE39E47uLL);
  if (!v28)
  {
    free(v25);
LABEL_41:
    v53 = v23;
LABEL_42:
    free(v53);
    goto LABEL_43;
  }

  v29 = v28;
  v64 = a9;
  memcpy(v28, v25, v26);
  v30 = &v29[v26];
  v31 = v64;
  memcpy(v30, v23, v27);
  free(v25);
  free(v23);
  v32 = (a7 + v31 - 1) / v31 * v31;
  v59 = malloc_type_malloc(v32, 0xB7A8DC55uLL);
  if (!v59)
  {
    v53 = v29;
    goto LABEL_42;
  }

  v56 = a6;
  v57 = a7;
  v58 = &v56;
  v33 = v65;
  if (v32 < 1)
  {
LABEL_38:
    v51 = v59;
    memmove(v56, v59, v57);
    free(v51);
    free(v29);
    result = 0;
  }

  else
  {
    v34 = v59;
    v62 = &v59[v32];
    v63 = (v16 + 7) >> 3;
    v60 = v65 - 1;
    HIDWORD(v36) = v31 - 20;
    LODWORD(v36) = v31 - 20;
    v35 = v36 >> 2;
    v61 = v35;
    while (1)
    {
      if (v35 <= 2)
      {
        if (v35)
        {
          if (v35 == 2)
          {
            c.wbuf[2] = 0xAAAAAAAAAAAAAAAALL;
            *&v38 = 0xAAAAAAAAAAAAAAAALL;
            *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&c.hash[6] = v38;
            *c.wbuf = v38;
            *&c.hash[4] = v38;
            *&c.hash[2] = v38;
            *c.hash = v38;
            *c.count = v38;
            CC_SHA224_Init(&c);
            CC_SHA224_Update(&c, v66, a8);
            CC_SHA224_Update(&c, v29, v67);
            CC_SHA224_Final(v34, &c);
          }
        }

        else
        {
          *&v41 = 0xAAAAAAAAAAAAAAAALL;
          *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&c.hash[6] = v41;
          *c.wbuf = v41;
          *&c.hash[4] = v41;
          *&c.hash[2] = v41;
          *c.hash = v41;
          *c.count = v41;
          CC_SHA1_Init(&c);
          CC_SHA1_Update(&c, v66, a8);
          CC_SHA1_Update(&c, v29, v67);
          CC_SHA1_Final(v34, &c);
        }
      }

      else
      {
        switch(v35)
        {
          case 3:
            c.wbuf[2] = 0xAAAAAAAAAAAAAAAALL;
            *&v39 = 0xAAAAAAAAAAAAAAAALL;
            *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&c.hash[6] = v39;
            *c.wbuf = v39;
            *&c.hash[4] = v39;
            *&c.hash[2] = v39;
            *c.hash = v39;
            *c.count = v39;
            CC_SHA256_Init(&c);
            CC_SHA256_Update(&c, v66, a8);
            CC_SHA256_Update(&c, v29, v67);
            CC_SHA256_Final(v34, &c);
            break;
          case 7:
            *&v40 = 0xAAAAAAAAAAAAAAAALL;
            *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&c.wbuf[12] = v40;
            *&c.wbuf[14] = v40;
            *&c.wbuf[8] = v40;
            *&c.wbuf[10] = v40;
            *&c.wbuf[4] = v40;
            *&c.wbuf[6] = v40;
            *c.wbuf = v40;
            *&c.wbuf[2] = v40;
            *&c.hash[6] = v40;
            *&c.hash[4] = v40;
            *&c.hash[2] = v40;
            *c.hash = v40;
            *c.count = v40;
            CC_SHA384_Init(&c);
            CC_SHA384_Update(&c, v66, a8);
            CC_SHA384_Update(&c, v29, v67);
            CC_SHA384_Final(v34, &c);
            break;
          case 11:
            *&v37 = 0xAAAAAAAAAAAAAAAALL;
            *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *&c.wbuf[12] = v37;
            *&c.wbuf[14] = v37;
            *&c.wbuf[8] = v37;
            *&c.wbuf[10] = v37;
            *&c.wbuf[4] = v37;
            *&c.wbuf[6] = v37;
            *c.wbuf = v37;
            *&c.wbuf[2] = v37;
            *&c.hash[6] = v37;
            *&c.hash[4] = v37;
            *&c.hash[2] = v37;
            *c.hash = v37;
            *c.count = v37;
            CC_SHA512_Init(&c);
            CC_SHA512_Update(&c, v66, a8);
            CC_SHA512_Update(&c, v29, v67);
            CC_SHA512_Final(v34, &c);
            break;
        }
      }

      if (v33 >= 2)
      {
        v42 = v60;
        do
        {
          CCDigest();
          --v42;
        }

        while (v42);
      }

      c.count[0] = 0;
      v43 = concatenate_to_blocksize(v34, v31, v16, &c);
      if (!v43)
      {
        goto LABEL_47;
      }

      v44 = v43;
      if ((c.count[0] + 8) >> 3 <= v63)
      {
        v45 = v63;
      }

      else
      {
        v45 = (c.count[0] + 8) >> 3;
      }

      v46 = malloc_type_malloc(8 * v45, 0x100004000313F17uLL);
      if (!v46)
      {
        free(v44);
LABEL_47:
        free(v29);
        v55 = v59;
        goto LABEL_49;
      }

      v47 = v46;
      ccn_read_uint();
      ccn_add1();
      free(v44);
      v48 = malloc_type_malloc(8 * v45, 0x100004000313F17uLL);
      if (!v48)
      {
        break;
      }

      v49 = v48;
      if (v67)
      {
        LODWORD(v50) = 0;
        do
        {
          ccn_read_uint();
          ccn_add();
          while (ccn_bitlen() > (8 * a8))
          {
            ccn_set_bit();
          }

          ccn_write_uint_padded();
          v50 = v50 + a8;
        }

        while (v67 > v50);
      }

      v31 = v64;
      v34 += v64;
      free(v47);
      free(v49);
      v33 = v65;
      v35 = v61;
      if (v34 >= v62)
      {
        goto LABEL_38;
      }
    }

    free(v29);
    free(v59);
    v55 = v47;
LABEL_49:
    free(v55);
    result = 0xFFFFFFFFLL;
  }

LABEL_44:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}

char *concatenate_to_blocksize(const void *a1, size_t a2, unint64_t a3, int64_t *a4)
{
  v7 = (a2 + a3 - 1) / a3 * a3;
  v8 = malloc_type_malloc(v7, 0xF4419374uLL);
  v9 = v8;
  if (v8)
  {
    if (v7 >= 1)
    {
      v10 = &v8[v7];
      v11 = v8;
      do
      {
        if (v10 - v11 >= a2)
        {
          v12 = a2;
        }

        else
        {
          v12 = v10 - v11;
        }

        memcpy(v11, a1, v12);
        v11 += a2;
      }

      while (v11 < v10);
    }

    *a4 = v7;
  }

  return v9;
}

void (*pbkdf2(void (*result)(uint64_t, uint64_t, char *, size_t, char *), size_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unint64_t a7, char *a8, unint64_t a9, char *a10))(uint64_t, uint64_t, char *, size_t, char *)
{
  v16 = a9 / a2;
  v20 = a9 / a2 * a2;
  if ((a9 / a2))
  {
    v21 = &a10[a2];
    v17 = 1;
    do
    {
      v18 = result;
      v19 = a7;
      F(result, a2, a3, a4, __src, __n, a7, v17, a8, v21);
      result = v18;
      a7 = v19;
      a8 += a2;
      ++v17;
    }

    while (v17 <= v16);
  }

  else
  {
    v17 = 1;
  }

  if (a9 != v20)
  {
    F(result, a2, a3, a4, __src, __n, a7, v17, a10, &a10[a2]);

    return memcpy(a8, a10, a9 - v20);
  }

  return result;
}

void *F(void (*a1)(uint64_t, uint64_t, char *, size_t, char *), size_t a2, uint64_t a3, uint64_t a4, void *__src, size_t __n, unint64_t a7, unsigned int a8, void *a9, char *a10)
{
  v17 = a10;
  v18 = &a10[a2];
  memcpy(&a10[a2], __src, __n);
  *&v18[__n] = bswap32(a8);
  a1(a3, a4, v18, __n + 4, a10);
  result = memcpy(a9, a10, a2);
  if (a7 >= 2)
  {
    v20 = 2;
    do
    {
      v21 = v18;
      result = (a1)(a3, a4, v17, a2, v18);
      if (a2)
      {
        v22 = 0;
        do
        {
          *(a9 + v22) ^= v18[v22];
          ++v22;
        }

        while (a2 > v22);
      }

      ++v20;
      v18 = v17;
      v17 = v21;
    }

    while (v20 <= a7);
  }

  return result;
}

__CFString *SecLogAPICreate(uint64_t a1, const char *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v22 = *MEMORY[0x1E69E9840];
  v11 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"SecAPITrace ");
  CFStringAppendCString(Mutable, a2, 0x600u);
  CFStringAppendCString(Mutable, "ENTER", 0x600u);
  if (a3)
  {
    v13 = CFStringCreateWithFormatAndArguments(v11, 0, a3, &a9);
    CFStringAppend(Mutable, v13);
    if (v13)
    {
      CFRelease(v13);
    }
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v14;
  v21 = v14;
  v18 = v14;
  v19 = v14;
  *__str = v14;
  snprintf(__str, 0x50uLL, "C%p F%p", vars0[1], *vars0);
  CFStringAppend(Mutable, @"CALLER ");
  CFStringAppendCString(Mutable, __str, 0x600u);
  v15 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void CFStringSetPerformWithDescription(const __CFSet *a1, uint64_t a2)
{
  if (a1 && (Count = CFSetGetCount(a1), Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]), CFSetApplyFunction(a1, appendDescriptionToArray, Mutable), v15.length = CFArrayGetCount(Mutable), v15.location = 0, CFArraySortValues(Mutable, v15, compare, 0), Mutable))
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"{(");
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2000000000;
    v9[3] = &stru_1EFA8C6C8;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __CFStringArrayPerformWithDelimiterWithDescription_block_invoke;
    v8[3] = &unk_1E70E44F0;
    v8[4] = &v10;
    v8[5] = v9;
    v16.length = CFArrayGetCount(Mutable);
    v16.location = 0;
    CFArrayApplyFunction(Mutable, v16, apply_block_1_16171, v8);
    CFStringAppend(v11[3], @"}"));
    (*(a2 + 16))(a2, v11[3]);
    v6 = v11[3];
    if (v6)
    {
      v11[3] = 0;
      CFRelease(v6);
    }

    _Block_object_dispose(v9, 8);
    _Block_object_dispose(&v10, 8);

    CFRelease(Mutable);
  }

  else
  {
    v7 = *(a2 + 16);

    v7(a2, @"null");
  }
}

void appendDescriptionToArray(__CFString *a1, __CFArray *a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    v5 = a2;
    v6 = a1;
LABEL_8:

    CFArrayAppendValue(v5, v6);
    return;
  }

  v7 = CFCopyDescription(a1);
  if (!v7)
  {
    v6 = @"null";
    v5 = a2;
    goto LABEL_8;
  }

  v8 = v7;
  CFArrayAppendValue(a2, v7);

  CFRelease(v8);
}

void __CFDictionaryCopySuperCompactDescription_block_invoke(uint64_t a1, const __CFString *a2, const __CFString *cf)
{
  if (!cf)
  {
    goto LABEL_12;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFDataGetTypeID())
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"0x");
    BytePtr = CFDataGetBytePtr(cf);
    Length = CFDataGetLength(cf);
    if (Length >= 1)
    {
      v10 = Length;
      do
      {
        v11 = *BytePtr++;
        CFStringAppendFormat(MutableCopy, 0, @"%02X", v11);
        --v10;
      }

      while (v10);
    }

    v21.location = 0;
    v21.length = 5;
    CFStringDelete(MutableCopy, v21);
    goto LABEL_16;
  }

  v12 = CFGetTypeID(cf);
  if (v12 != CFStringGetTypeID())
  {
    v16 = CFGetTypeID(cf);
    if (v16 == CFNumberGetTypeID())
    {
      v14 = *MEMORY[0x1E695E480];
      Copy = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@", cf);
      goto LABEL_14;
    }

LABEL_12:
    MutableCopy = 0;
    goto LABEL_16;
  }

  v13 = CFStringGetLength(cf);
  v14 = *MEMORY[0x1E695E480];
  if (v13 > 5)
  {
    v22.location = 0;
    v22.length = 6;
    Copy = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], cf, v22);
  }

  else
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], cf);
  }

LABEL_14:
  v17 = Copy;
  v18 = CFStringGetLength(Copy);
  MutableCopy = CFStringCreateMutableCopy(v14, v18, v17);
  if (v17)
  {
    CFRelease(v17);
  }

LABEL_16:
  CharacterAtIndex = CFStringGetCharacterAtIndex(a2, 0);
  CFStringAppendFormat(*(a1 + 32), 0, @"%c:%@ ", CharacterAtIndex, MutableCopy);
  if (MutableCopy)
  {

    CFRelease(MutableCopy);
  }
}

uint64_t CFDataCreateWithRandomBytes(size_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __CFDataCreateWithRandomBytes_block_invoke;
  v3[3] = &unk_1E70E4460;
  v3[4] = &v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __PerformWithBufferAndClear_block_invoke;
  v8[3] = &unk_1E70E46A8;
  v8[4] = v3;
  PerformWithBuffer(a1, v8);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

CFDataRef __CFDataCreateWithRandomBytes_block_invoke(uint64_t a1, size_t a2, void *bytes)
{
  CCRandomGenerateBytes(bytes, a2);
  result = CFDataCreate(0, bytes, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __GetShortDateFormatter_block_invoke(uint64_t a1)
{
  v2 = CFLocaleCopyCurrent();
  **(a1 + 32) = CFDateFormatterCreate(*MEMORY[0x1E695E480], v2, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
  CFDateFormatterSetFormat(**(a1 + 32), @"yyyy-MM-dd HH:mm");
  if (v2)
  {

    CFRelease(v2);
  }
}

dispatch_queue_t __GetShortDateFormatterQueue_block_invoke(uint64_t a1)
{
  result = dispatch_queue_create("Date Formatting", 0);
  **(a1 + 32) = result;
  return result;
}

CFStringRef __withStringOfAbsoluteTime_block_invoke(uint64_t a1, __CFDateFormatter *a2)
{
  result = CFDateFormatterCreateStringWithAbsoluteTime(*MEMORY[0x1E695E480], a2, *(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __withShortDateFormatter_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetShortDateFormatter_block_invoke;
  block[3] = &__block_descriptor_tmp_53_16244;
  block[4] = &GetShortDateFormatter_sGetShortDateFormatterSingleton;
  if (GetShortDateFormatter_sGetShortDateFormatterOnce != -1)
  {
    dispatch_once(&GetShortDateFormatter_sGetShortDateFormatterOnce, block);
  }

  v2 = GetShortDateFormatter_sGetShortDateFormatterSingleton;
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void der_encode_date(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = MEMORY[0x18CFD8B20]();
  der_encode_generalizedtime_body_repair(0, 0, a2, a3, v11);
  if (!ccder_encode_constructed_tl())
  {
    v15 = sSecDERErrorDomain;

    SecCFCreateErrorWithFormat(-7, v15, 0, 0, v12, @"ccder failed to encode", v13, v14, a9);
  }
}

void __getAnchors_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  addAnchor(Mutable, AppleRootCAHash, 1);
  addAnchor(Mutable, AppleRootG2Hash, 1);
  addAnchor(Mutable, AppleRootG3Hash, 1);
  addAnchor(Mutable, ApplePlatformBackportRSARootG1Hash, 1);
  addAnchor(Mutable, ApplePlatformBackportECCRootG1Hash, 1);
  addAnchor(Mutable, ApplePlatformBootstrapECCRootG1_hash, 1);
  addAnchor(Mutable, TestAppleRootCAHash, 0);
  addAnchor(Mutable, TestAppleRootCAJunHash, 0);
  addAnchor(Mutable, TestAppleGlobalRootHash, 0);
  addAnchor(Mutable, TestAppleRootG2Hash, 0);
  addAnchor(Mutable, TestAppleRootG3Hash, 0);
  addAnchor(Mutable, TestApplePlatformBackportRSARootG1Hash, 0);
  addAnchor(Mutable, TestApplePlatformBackportECCRootG1Hash, 0);
  addAnchor(Mutable, TestApplePlatformBootstrapECCRootG1_hash, 0);
  getAnchors_anchors = Mutable;
}

void addAnchor(const __CFDictionary *a1, const UInt8 *a2, int a3)
{
  v5 = CFDataCreateWithBytesNoCopy(0, a2, 32, *MEMORY[0x1E695E498]);
  if (CFDictionaryGetValue(a1, v5))
  {
    abort();
  }

  v6 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(a1, v5, *v6);
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t SecIsAppleTrustAnchor(void *a1, char a2)
{
  v3 = SecCertificateCopySHA256Digest(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (getAnchors_onceToken != -1)
  {
    dispatch_once(&getAnchors_onceToken, &__block_literal_global_4_16589);
  }

  if (!getAnchors_anchors)
  {
LABEL_13:
    v6 = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(getAnchors_anchors, v4);
  v6 = Value;
  if (Value)
  {
    v7 = CFGetTypeID(Value);
    if (v7 == CFBooleanGetTypeID())
    {
      v8 = CFBooleanGetValue(v6);
      v6 = v8 != 0;
      if (a2)
      {
        v9 = v8;
        v10 = os_variant_allows_internal_security_policies() | ((a2 & 2) >> 1);
        if (v9)
        {
          v6 = 1;
        }

        else
        {
          v6 = v10;
        }
      }

      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_11:
  CFRelease(v4);
  return v6;
}

void __SecGetAppleTrustAnchors_block_invoke(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(0, 6, MEMORY[0x1E695E9C0]);
  addCertificate(Mutable, &AppleRootCA, 1215);
  addCertificate(Mutable, &AppleRootG2, 1430);
  addCertificate(Mutable, &AppleRootG3, 583);
  addCertificate(Mutable, &ApplePlatformBackportRSARootG1, 1402);
  addCertificate(Mutable, &ApplePlatformBackportECCRootG1, 556);
  addCertificate(Mutable, &ApplePlatformBootstrapECCRootG1_cert, 632);
  if ((os_variant_allows_internal_security_policies() & 1) != 0 || *(a1 + 32) == 1)
  {
    addCertificate(Mutable, &TestAppleRootCA, 1232);
    addCertificate(Mutable, &TestAppleRootCAJun, 1232);
    addCertificate(Mutable, &TestAppleGlobalRoot, 630);
    addCertificate(Mutable, &TestAppleRootG2, 1452);
    addCertificate(Mutable, &TestAppleRootG3, 592);
    addCertificate(Mutable, &TestApplePlatformBackportRSARootG1, 1412);
    addCertificate(Mutable, &TestApplePlatformBackportECCRootG1, 565);
    addCertificate(Mutable, &TestApplePlatformBootstrapECCRootG1_cert, 643);
  }

  SecGetAppleTrustAnchors_anchors = Mutable;
}

void addCertificate(const __CFArray *a1, const void *a2, int64_t a3)
{
  v4 = SecCertificateCreateWithBytes(0, a2, a3);
  v6.length = CFArrayGetCount(a1);
  v6.location = 0;
  if (CFArrayContainsValue(a1, v6, v4))
  {
    abort();
  }

  CFArrayAppendValue(a1, v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

BOOL SecKernError(int a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    SecCFCreateErrorWithFormatAndArguments(a1, *MEMORY[0x1E695E630], v5, a2, 0, format, va);
  }

  return a1 == 0;
}

void SecCFCreateErrorWithFormatAndArguments(CFIndex a1, const __CFString *a2, __CFString *cf, CFTypeRef *a4, CFDictionaryRef formatOptions, CFStringRef format, va_list arguments)
{
  if (!a4)
  {
    return;
  }

  if (*a4)
  {
    if (cf && *a4 != cf)
    {

      CFRelease(cf);
    }

    return;
  }

  v11 = CFStringCreateWithFormatAndArguments(0, formatOptions, format, arguments);
  v30 = 0;
  v12 = MEMORY[0x1E695E620];
  if (!cf)
  {
    goto LABEL_30;
  }

  v13 = CFErrorCopyUserInfo(cf);
  Value = CFDictionaryGetValue(v13, *v12);
  if (Value)
  {
    v15 = CFStringCompare(v11, Value, 0) == kCFCompareEqualTo;
    if (!v13)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15 = 0;
  if (v13)
  {
LABEL_11:
    CFRelease(v13);
  }

LABEL_12:
  Code = CFErrorGetCode(cf);
  Domain = CFErrorGetDomain(cf);
  v18 = CFStringCompare(a2, Domain, 0);
  v20 = Code == a1 && v18 == kCFCompareEqualTo;
  v21 = cf;
  if (v20 && v15)
  {
    goto LABEL_19;
  }

  v23 = CFErrorCopyUserInfo(cf);
  if (v23)
  {
    v24 = v23;
    if (CFDictionaryContainsKey(v23, @"numberOfErrorsDeep") == 1)
    {
      v25 = CFDictionaryGetValue(v24, @"numberOfErrorsDeep");
      if (v25)
      {
        valuePtr = 0;
        CFNumberGetValue(v25, kCFNumberLongType, &valuePtr);
        if (valuePtr > 199)
        {
          CFRelease(v24);
          v21 = cf;
LABEL_19:
          CFRetain(v21);
          *a4 = cf;
          CFRelease(cf);
          if (!v11)
          {
            return;
          }

          v22 = v11;
          goto LABEL_44;
        }

        v30 = valuePtr + 1;
      }
    }

    CFRelease(v24);
  }

LABEL_30:
  v26 = *MEMORY[0x1E695E480];
  v27 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &v30);
  Mutable = CFDictionaryCreateMutable(v26, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v29 = Mutable;
  if (cf)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E670], cf);
  }

  if (v27)
  {
    CFDictionaryAddValue(v29, @"numberOfErrorsDeep", v27);
  }

  if (v11)
  {
    CFDictionaryAddValue(v29, *v12, v11);
  }

  *a4 = CFErrorCreate(v26, a2, a1, v29);
  if (v27)
  {
    CFRelease(v27);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (cf)
  {
    v22 = cf;
LABEL_44:
    CFRelease(v22);
  }
}

void SecCheckErrno(uint64_t a1, CFTypeRef *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a2)
  {
    v11 = *__error();
    v12 = *a2;
    *a2 = 0;
    v13 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, a3, &a9);
    v14 = *MEMORY[0x1E695E640];
    strerror(v11);
    SecCFCreateErrorWithFormat(v11, v14, v12, a2, v15, @"%@: [%d] %s", v16, v17, v13);
    if (v13)
    {
      CFRelease(v13);
    }
  }
}

BOOL SecError(int a1, __CFString **a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1)
  {
    cf = 0;
    v5 = *MEMORY[0x1E695E638];
    if (a2)
    {
      SecCFCreateErrorWithFormatAndArguments(a1, v5, *a2, &cf, 0, format, va);
      *a2 = cf;
    }

    else
    {
      SecCFCreateErrorWithFormatAndArguments(a1, v5, 0, &cf, 0, format, va);
      v6 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v6);
      }
    }
  }

  return a1 == 0;
}

uint64_t SecRequirementError(uint64_t a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (a2 && (a1 & 1) == 0)
  {
    v5 = *a2;
    *a2 = 0;
    SecCFCreateErrorWithFormatAndArguments(-50, *MEMORY[0x1E695E638], v5, a2, 0, format, va);
  }

  return a1;
}

BOOL SecAllocationError(uint64_t a1, CFTypeRef *a2, CFStringRef format, ...)
{
  va_start(va, format);
  if (!a1 && a2)
  {
    v5 = *a2;
    *a2 = 0;
    SecCFCreateErrorWithFormatAndArguments(-108, *MEMORY[0x1E695E638], v5, a2, 0, format, va);
  }

  return a1 != 0;
}

CFTypeRef CFPropertyListCreateWithDERData(uint64_t a1, CFDataRef theData, uint64_t a3, void *a4, CFTypeRef *a5)
{
  cf = 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v11 = &BytePtr[Length];
  v15 = der_decode_plist(a1, &cf, a5, BytePtr, &BytePtr[Length], v12, v13, v14);
  if (!v15 || v15 == v11)
  {
    if (a4)
    {
      *a4 = 400;
    }
  }

  else
  {
    SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain, 0, a5, v16, @"trailing garbage after plist item", v17, v18, v21);
    v19 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v19);
    }
  }

  return cf;
}

uint64_t der_encode_null(CFTypeRef *a1)
{
  v5 = ccder_encode_tl();
  if (!v5)
  {
    SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain, 0, a1, v2, @"ccder failed to encode", v3, v4, v7);
  }

  return v5;
}

uint64_t der_sizeof_set(const __CFSet *a1, uint64_t a2)
{
  v3 = xmmword_18895E1B0;
  v4 = a2;
  CFSetApplyFunction(a1, add_value_size, &v3);
  if (v3 == 1)
  {
    return ccder_sizeof();
  }

  else
  {
    return 0;
  }
}

uint64_t add_value_size(uint64_t result, uint64_t a2)
{
  if (*a2 == 1)
  {
    result = der_sizeof_plist(result, *(a2 + 16));
    if (result)
    {
      *(a2 + 8) += result;
    }

    else
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t der_encode_set_repair(const __CFSet *a1, CFTypeRef *a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v14[0] = 0xAAAAAAAAAAAAAA01;
  v14[1] = a2;
  BYTE1(v14[0]) = a3;
  v14[2] = Mutable;
  v14[3] = 0;
  CFSetApplyFunction(a1, add_sequence_to_array_16816, v14);
  if ((v14[0] & 1) == 0)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 0;
  }

  v15.length = CFArrayGetCount(Mutable);
  v15.location = 0;
  CFArraySortValues(Mutable, v15, cfdata_compare_der_contents_16815, 0);
  Count = CFArrayGetCount(Mutable);
  if (Count >= 1)
  {
    v8 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v8 - 2);
      CFDataGetLength(ValueAtIndex);
      CFDataGetBytePtr(ValueAtIndex);
      ccder_encode_body();
      --v8;
    }

    while (v8 > 1);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  result = ccder_encode_constructed_tl();
  if (!result)
  {
    SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain, 0, a2, v11, @"ccder failed to encode", v12, v13, v14[0]);
    return 0;
  }

  return result;
}

uint64_t cfdata_compare_der_contents_16815(const __CFData *a1, const __CFData *a2)
{
  Length = CFDataGetLength(a1);
  v5 = CFDataGetLength(a2);
  v6 = v5;
  if ((Length & 0x8000000000000000) != 0 || v5 < 0)
  {
    if (Length >= v5)
    {
      v12 = 0;
    }

    else
    {
      v12 = -1;
    }

    if (Length <= v5)
    {
      return v12;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (Length >= v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = Length;
    }

    BytePtr = CFDataGetBytePtr(a1);
    v9 = CFDataGetBytePtr(a2);
    v10 = memcmp(BytePtr, v9, v7);
    if (v10 <= 0 && (v10 || Length <= v6))
    {
      if (v10)
      {
        v13 = 0;
      }

      else
      {
        v13 = Length >= v6;
      }

      v14 = !v13;
      return v14 << 63 >> 63;
    }

    else
    {
      return 1;
    }
  }
}

void add_sequence_to_array_16816(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a2 == 1)
  {
    v10 = der_sizeof_plist(a1, *(a2 + 8), a3, a4, a5, a6, a7, a8);
    if (!v10)
    {
      *a2 = 0;
      return;
    }

    v11 = v10;
    Mutable = CFDataCreateMutable(*(a2 + 24), v10);
    CFDataSetLength(Mutable, v11);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v14 = der_encode_plist_repair(a1, *(a2 + 8), *(a2 + 1), MutableBytePtr, &MutableBytePtr[v11]);
    if (v14)
    {
      v16.length = v14 - MutableBytePtr;
      v16.location = 0;
      CFDataDeleteBytes(Mutable, v16);
      CFArrayAppendValue(*(a2 + 16), Mutable);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      *a2 = 0;
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
  }
}

uint64_t GetKeybagAssertionQueue()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetKeybagAssertionQueue_block_invoke;
  block[3] = &__block_descriptor_tmp_16820;
  block[4] = &GetKeybagAssertionQueue_sGetKeybagAssertionQueueSingleton;
  if (GetKeybagAssertionQueue_sGetKeybagAssertionQueueOnce != -1)
  {
    dispatch_once(&GetKeybagAssertionQueue_sGetKeybagAssertionQueueOnce, block);
  }

  return GetKeybagAssertionQueue_sGetKeybagAssertionQueueSingleton;
}

dispatch_queue_t __GetKeybagAssertionQueue_block_invoke(uint64_t a1)
{
  result = dispatch_queue_create("AKS Lock Assertion Queue", 0);
  **(a1 + 32) = result;
  return result;
}

uint64_t __SecAKSKeybagHoldLockAssertion_block_invoke(uint64_t result)
{
  v1 = result;
  v9 = *MEMORY[0x1E69E9840];
  if (!count)
  {
    v2 = secLogObjForScope("lockassertions");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 40);
      v7 = 134217984;
      v8 = v3;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Requesting lock assertion for %lld seconds", &v7, 0xCu);
    }

    v4 = *(v1 + 48);
    v5 = *(v1 + 40);
    result = aks_assert_hold();
    *(*(*(v1 + 32) + 8) + 24) = result;
  }

  if (!*(*(*(v1 + 32) + 8) + 24))
  {
    ++count;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __SecAKSKeybagDropLockAssertion_block_invoke(uint64_t result)
{
  v3 = count;
  if (count)
  {
    --count;
    if (v3 == 1)
    {
      v8 = v1;
      v9 = v2;
      v4 = result;
      v5 = secLogObjForScope("lockassertions");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Dropping lock assertion", v7, 2u);
      }

      v6 = *(v4 + 40);
      result = aks_assert_drop();
      *(*(*(v4 + 32) + 8) + 24) = result;
    }
  }

  return result;
}

void __SecIsEduMode_block_invoke()
{
  v0 = MKBUserTypeDeviceMode();
  if (v0)
  {
    v1 = v0;
    value = 0;
    if (CFDictionaryGetValueIfPresent(v0, *MEMORY[0x1E69B1A10], &value))
    {
      if (CFEqual(value, *MEMORY[0x1E69B1A20]))
      {
        SecIsEduMode_result = 1;
      }
    }

    CFRelease(v1);
  }

  else
  {
    v2 = secLogObjForScope("edumode");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Cannot determine because deviceMode is NULL", v3, 2u);
    }
  }
}

CFURLRef SecCopyURLForFileInBaseDirectory(const __CFString *a1, uint64_t a2)
{
  v4 = SecCopyBaseFilesURL(1);
  if (a2)
  {
    v5 = *MEMORY[0x1E695E480];
    Copy = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@/%@", a1, a2);
  }

  else
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    v5 = *MEMORY[0x1E695E480];
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], a1);
  }

  v7 = Copy;
  if (v4 && Copy)
  {
    v8 = CFURLCreateCopyAppendingPathComponent(v5, v4, Copy, a2 == 0);
    CFRelease(v7);
LABEL_11:
    CFRelease(v4);
    return v8;
  }

  if (Copy)
  {
    CFRelease(Copy);
  }

LABEL_10:
  v8 = 0;
  if (v4)
  {
    goto LABEL_11;
  }

  return v8;
}

void WithPathInDirectory(const __CFURL *a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    memset(__b, 170, sizeof(__b));
    CFURLGetFileSystemRepresentation(a1, 0, __b, 1024);
    (*(a2 + 16))(a2, __b);
    CFRelease(a1);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void WithPathInKeychainDirectory(uint64_t a1, uint64_t a2)
{
  syslog(5, "SecCopyURLForFileInParameterizedKeychainDirectory: forceUserScope:%d", 0);
  v4 = SecCopyURLForFileInBaseDirectory(@"Library/Keychains", a1);

  WithPathInDirectory(v4, a2);
}

uint64_t __security_simulatecrash(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = a1;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Simulating crash, reason: %@, code=%08x", &v7, 0x12u);
  }

  getpid();
  result = SimulateCrash();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

xpc_object_t SecCreateXPCObjectWithCFError(__CFError *a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  Domain = CFErrorGetDomain(a1);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 0x40000000;
  v21[2] = __SecXPCDictionarySetCFString_block_invoke;
  v21[3] = &__block_descriptor_tmp_16943;
  v21[4] = v2;
  v21[5] = "domain";
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 0x40000000;
  v22[2] = __CFStringPerformWithCString_block_invoke;
  v22[3] = &unk_1E70E4418;
  v22[4] = v21;
  CFStringPerformWithCStringAndLength(Domain, v22);
  Code = CFErrorGetCode(a1);
  xpc_dictionary_set_int64(v2, "code", Code);
  v5 = CFErrorCopyUserInfo(a1);
  v12 = der_sizeof_plist(v5, 0, v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    v13 = v12;
    v14 = malloc_type_malloc(v12, 0xD5244697uLL);
    v15 = &v14[v13];
    v19 = der_encode_plist_repair(v5, 0, 0, v14, v15, v16, v17, v18);
    if (v19)
    {
      xpc_dictionary_set_data(v2, "userinfo", v19, v15 - v19);
    }

    free(v14);
  }

  CFRelease(v5);
  return v2;
}

uint64_t SecGetCurrentServerLoggingInfo(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecGetCurrentServerLoggingInfo_block_invoke;
  v3[3] = &unk_1E70E46F0;
  v3[4] = &v4;
  v3[5] = a1;
  _os_activity_initiate(&dword_1887D2000, "SecGetCurrentServerLoggingInfo", OS_ACTIVITY_FLAG_DEFAULT, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void __SecGetCurrentServerLoggingInfo_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 520)) != 0)
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
    v5[2] = __void_to_dict_error_request_block_invoke;
    v5[3] = &unk_1E70E4768;
    v5[4] = &v6;
    securityd_send_sync_and_do(0x1Fu, v4, 0, v5);
    v3 = v7[3];
    _Block_object_dispose(&v6, 8);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

BOOL __void_to_dict_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v4 = SecXPCDictionaryCopyPListAndPossiblyMutateMessage(1, a2, "status", a3);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return v4 != 0;
}

uint64_t SecSetLoggingInfoForXPCScope(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = -86;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecSetLoggingInfoForXPCScope_block_invoke;
  activity_block[3] = &unk_1E70E4718;
  activity_block[4] = &v5;
  activity_block[5] = a1;
  activity_block[6] = a2;
  _os_activity_initiate(&dword_1887D2000, "SecSetLoggingInfoForXPCScope", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __SecSetLoggingInfoForXPCScope_block_invoke(void *a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 528)) != 0)
  {
    result = v2(a1[5], a1[6]);
  }

  else
  {
    v5 = a1[5];
    v4 = a1[6];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __dict_to_error_request_block_invoke_16954;
    v6[3] = &__block_descriptor_tmp_5_16955;
    v6[4] = v5;
    result = securityd_send_sync_and_do(0x20u, v4, v6, 0);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t SecSetLoggingInfoForCircleScope(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = -86;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecSetLoggingInfoForCircleScope_block_invoke;
  activity_block[3] = &unk_1E70E4740;
  activity_block[4] = &v5;
  activity_block[5] = a1;
  activity_block[6] = a2;
  _os_activity_initiate(&dword_1887D2000, "SecSetLoggingInfoForCircleScope", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __SecSetLoggingInfoForCircleScope_block_invoke(void *a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 536)) != 0)
  {
    result = v2(a1[5], a1[6]);
  }

  else
  {
    v5 = a1[5];
    v4 = a1[6];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __dict_to_error_request_block_invoke_16954;
    v6[3] = &__block_descriptor_tmp_5_16955;
    v6[4] = v5;
    result = securityd_send_sync_and_do(0x21u, v4, v6, 0);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

char *Security::CFMake::makestring(Security::CFMake *this)
{
  v2 = *this;
  if (**this == 39)
  {
    *this = ++v2;
    result = strchr(v2, 39);
    if (!result)
    {
      return result;
    }

    v4 = result + 1;
  }

  else
  {
    v5 = MEMORY[0x1E69E9830];
    v4 = *this;
    do
    {
      while (1)
      {
        v7 = *++v4;
        v6 = v7;
        if ((v7 & 0x80000000) != 0)
        {
          break;
        }

        if ((*(v5 + 4 * v6 + 60) & 0x500) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    while (__maskrune(v6, 0x500uLL));
LABEL_9:
    result = v4;
  }

  *this = v4;
  v8 = result - v2;
  v9 = *(this + 2);

  return CFStringCreateWithBytes(v9, v2, v8, 0x8000100u, 0);
}

uint64_t Security::CFScan::scan(Security::CFScan *this, const __CFString *a2)
{
  while (Security::CFMunge::next(this) == 64)
  {
    v4 = (*this)++;
    v5 = *(v4 + 1);
    if (v5 == 69)
    {
      *this = v4 + 2;
      v8 = *(this + 1);
      v9 = *v8;
      *v8 += 2;
      *(this + 6) = *v9;
    }

    else if (v5 == 65)
    {
      *this = v4 + 2;
      v6 = *(this + 1);
      v7 = (*v6)++;
      *(this + 2) = *v7;
    }
  }

  v10 = Security::CFMunge::next(this);
  if (v10 <= 0x5A)
  {
    if (!v10)
    {
      return 1;
    }

    if (v10 != 37)
    {
      if (v10 != 61)
      {
        return 0;
      }

      ++*this;
      v11 = Security::CFMake::make(this);
      v12 = CFEqual(a2, v11) != 0;
      CFRelease(v11);
      return v12;
    }

    v12 = 0;
    v19 = (*this)++;
    v20 = *(v19 + 1);
    if (v20 <= 0x52)
    {
      if (*(v19 + 1) <= 0x43u)
      {
        if (v20 != 65)
        {
          if (v20 != 66)
          {
            return v12;
          }

          TypeID = CFBooleanGetTypeID();
          v27 = Security::CFScan::typescan(this, a2, TypeID);
          v12 = v27 == 1;
          if (v27)
          {
            return v12;
          }

          if (**this == 102)
          {
            v28 = *(this + 1);
            v29 = *v28;
            *v28 += 2;
            v30 = *v29;
            v31 = *(this + 1);
            v32 = (*v31)++;
            if (*MEMORY[0x1E695E4D0] != a2 || (*(this + 28) & 1) != 0)
            {
              return 1;
            }

            v33 = *v32;
            v34 = *v33 | v30;
          }

          else
          {
            if (*(this + 28))
            {
              return 1;
            }

            v34 = *MEMORY[0x1E695E4D0] == a2;
            v43 = *(this + 1);
            v44 = (*v43)++;
            v33 = *v44;
          }

          *v33 = v34;
          return 1;
        }

        v35 = CFArrayGetTypeID();
      }

      else
      {
        switch(v20)
        {
          case 'D':
            v35 = CFDictionaryGetTypeID();
            break;
          case 'N':
            v35 = CFNumberGetTypeID();
            break;
          case 'O':
            if ((*(this + 28) & 1) == 0)
            {
              v21 = *(this + 1);
              v22 = (*v21)++;
              **v22 = a2;
            }

            return 1;
          default:
            return v12;
        }
      }

      return Security::CFScan::typescan(this, a2, v35) == 1;
    }

    if (*(v19 + 1) <= 0x63u)
    {
      if (v20 != 83)
      {
        if (v20 != 88)
        {
          return v12;
        }

        v35 = CFDataGetTypeID();
        return Security::CFScan::typescan(this, a2, v35) == 1;
      }
    }

    else
    {
      if (v20 == 100)
      {
        *this = v19 + 2;
        if (!a2)
        {
          return 1;
        }

        v40 = CFGetTypeID(a2);
        if (v40 != CFNumberGetTypeID())
        {
          return 0;
        }

        v24 = Security::cfNumber<int>(a2);
        goto LABEL_63;
      }

      if (v20 != 115)
      {
        if (v20 != 117)
        {
          return v12;
        }

        *this = v19 + 2;
        if (!a2)
        {
          return 1;
        }

        v23 = CFGetTypeID(a2);
        if (v23 != CFNumberGetTypeID())
        {
          return 0;
        }

        v24 = Security::cfNumber<unsigned int>(a2);
LABEL_63:
        if ((*(this + 28) & 1) == 0)
        {
          v41 = *(this + 1);
          v42 = (*v41)++;
          **v42 = v24;
        }

        return 1;
      }
    }

    v36 = CFStringGetTypeID();
    v37 = Security::CFScan::typescan(this, a2, v36);
    v12 = v37 == 1;
    if (v37)
    {
      return v12;
    }

    Security::cfString(&__str, a2);
    if ((*(this + 28) & 1) == 0)
    {
      v38 = *(this + 1);
      v39 = (*v38)++;
      std::string::operator=(*v39, &__str);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return 1;
  }

  if (v10 <= 122)
  {
    if (v10 != 91)
    {
      return 0;
    }

    if (!a2)
    {
      v17 = this;
      v18 = 0;
      goto LABEL_36;
    }

    v16 = CFGetTypeID(a2);
    if (v16 == CFArrayGetTypeID())
    {
      v17 = this;
      v18 = a2;
LABEL_36:

      return Security::CFScan::scanarray(v17, v18);
    }

    return 0;
  }

  if (v10 != 123)
  {
    return 0;
  }

  if (a2)
  {
    v13 = CFGetTypeID(a2);
    if (v13 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    v14 = this;
    v15 = a2;
  }

  else
  {
    v14 = this;
    v15 = 0;
  }

  return Security::CFScan::scandictionary(v14, v15);
}

void sub_18891AF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFDataRef Security::CFScan::scandictionary(Security::CFScan *this, const __CFDictionary *a2)
{
  ++*this;
  while (1)
  {
    v4 = Security::CFMunge::next(this) == 125;
    result = v4;
    if (v4)
    {
      break;
    }

    v6 = Security::CFMunge::next(this);
    if (v6 == 63)
    {
      ++*this;
    }

    result = Security::CFMake::make(this);
    if (!result)
    {
      break;
    }

    v7 = result;
    v8 = *(this + 28);
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, result);
    }

    else
    {
      Value = 0;
    }

    if (v6 != 63 && !Value || (*(this + 28) |= Value == 0, Security::CFMunge::next(this) != 61) || (++*this, (Security::CFScan::scan(this, Value) & 1) == 0))
    {
      CFRelease(v7);
      return 0;
    }

    *(this + 28) = v8;
    CFRelease(v7);
  }

  return result;
}

uint64_t Security::CFScan::scanarray(Security::CFScan *this, CFArrayRef theArray)
{
  ++*this;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    v10 = 0;
  }

  else
  {
    v5 = Count;
    v6 = 0;
    v7 = 1;
    while (1)
    {
      if (Security::CFMunge::next(this) == 93)
      {
        v9 = 1;
        goto LABEL_10;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      if ((Security::CFScan::scan(this, ValueAtIndex) & 1) == 0)
      {
        break;
      }

      v7 = v5 > ++v6;
      if (v5 == v6)
      {
        goto LABEL_10;
      }
    }

    v9 = 0;
LABEL_10:
    v10 = v7 & v9;
  }

  return v10 & 1;
}

uint64_t Security::CFScan::typescan(Security::CFScan *this, CFTypeRef cf, uint64_t a3)
{
  if (cf && CFGetTypeID(cf) != a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = (*this)++;
  v6 = *(v5 + 1);
  if (v6 == 110)
  {
    *this = v5 + 2;
    return 1;
  }

  if (v6 == 79)
  {
    *this = v5 + 2;
    if ((*(this + 28) & 1) == 0)
    {
      v7 = *(this + 1);
      v8 = (*v7)++;
      **v8 = cf;
    }

    return 1;
  }

  return 0;
}

uint64_t Security::cfNumber<unsigned int>(const __CFNumber *a1)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  Value = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
  if (!Value)
  {
    Security::CFError::throwMe(Value);
  }

  return valuePtr;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E70D0D08, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

uint64_t Security::cfNumber<int>(const __CFNumber *a1)
{
  valuePtr = -1431655766;
  Value = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
  if (!Value)
  {
    Security::CFError::throwMe(Value);
  }

  return valuePtr;
}

__CFDictionary *Security::cfadd(Security *this, __CFDictionary *a2, const char *a3, ...)
{
  va_start(va, a3);
  va_copy(v7, va);
  v5[0] = a2;
  v5[1] = &v7;
  v5[2] = 0;
  v6 = 0;
  result = Security::CFMunge::next(v5);
  if (result == 123)
  {
    ++v5[0];
    return Security::CFMake::add(v5, this);
  }

  return result;
}

uint64_t Security::cfscan(const __CFString *this, const void *a2, const char *a3, ...)
{
  va_start(va, a3);
  va_copy(v4, va);
  v5[0] = a2;
  v5[1] = &v4;
  v5[2] = 0;
  v6 = 0;
  v7 = 0;
  return Security::CFScan::scan(v5, this);
}

void Security::SecPointerBase::assign(Security::SecPointerBase *this, atomic_uchar *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a2 && (atomic_exchange(a2 - 8, 1u) & 1) != 0)
  {
    v5 = (*(*a2 + 16))(a2);
    CFRetain(v5);
  }

  if (*this)
  {
    v6 = (*(**this + 16))(*this);
    CFRelease(v6);
  }

  *this = a2;

  objc_autoreleasePoolPop(v4);
}

void DYLDCache::~DYLDCache(DYLDCache *this)
{
  DYLDCache::~DYLDCache(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A8A8;
  munmap(*(this + 2), *(this + 3));
  Security::UnixPlusPlus::FileDesc::closeAndLog((this + 8));
}

const char *DYLDCache::matchArchitecture(char *__s1)
{
  v2 = "\a";
  while (1)
  {
    v3 = strcmp(__s1, v2 + 8);
    if (!v3)
    {
      break;
    }

    v4 = *(v2 + 9);
    v2 += 36;
    if (!v4)
    {
      v2 = &unk_188967360;
      break;
    }
  }

  if (*__s1 == 0x2031765F646C7964)
  {
    v5 = &DYLDCache::defaultArchitecture;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

Security::UnixError *Security::Mutex::lock(pthread_mutex_t *this)
{
  result = pthread_mutex_lock(this);
  if (result)
  {
    Security::UnixError::throwMe(result);
  }

  return result;
}

CFDataRef Security::CFMallocData::operator __CFData const*(uint64_t a1)
{
  result = CFDataCreateWithBytesNoCopy(0, *a1, *(a1 + 8), *MEMORY[0x1E695E488]);
  if (!result)
  {
    Security::CFError::throwMe(0);
  }

  *a1 = 0;
  return result;
}

CFMutableDictionaryRef Security::makeCFMutableDictionary(CFDictionaryRef theDict, const __CFDictionary *a2)
{
  result = CFDictionaryCreateMutableCopy(0, 0, theDict);
  if (!result)
  {
    Security::CFError::throwMe(0);
  }

  return result;
}

_BYTE *Security::cfString(Security *this, CFStringRef theString)
{
  if (theString)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
    if (!CStringPtr)
    {
      *this = 0;
      *(this + 1) = 0;
      *(this + 2) = 0;
      Length = CFStringGetLength(theString);
      if (CFStringGetMaximumSizeForEncoding(Length, 0x8000100u) > -2)
      {
        operator new();
      }

      std::vector<char>::__throw_length_error[abi:ne200100]();
    }

    v5 = CStringPtr;
  }

  else
  {
    v5 = &unk_188967DD7;
  }

  return std::string::basic_string[abi:ne200100]<0>(this, v5);
}

void sub_18891B768(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
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

const void **Security::cfString(Security *this, __CFString *cf)
{
  if (!cf)
  {
    Security::MacOSError::throwMe(0xFFFEFA13);
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFStringGetTypeID())
  {

    return Security::cfString(this, cf);
  }

  else if (v4 == CFURLGetTypeID())
  {

    return Security::cfString(this, cf);
  }

  else if (v4 == CFBundleGetTypeID())
  {
    v6 = CFBundleCopyBundleURL(cf);

    return Security::cfStringRelease(this, v6);
  }

  else
  {
    v7 = CFCopyDescription(cf);
    Security::cfString(this, v7);
    return Security::CFRef<__CFString const*>::~CFRef(&v7);
  }
}

void sub_18891B9BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::CFRef<__CFString const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

uint64_t Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = pthread_mutex_unlock(*a1);
    if (v2)
    {
      Security::UnixError::throwMe(v2);
    }
  }

  return a1;
}

void Security::Dispatch::Group::~Group(Security::Dispatch::Group *this)
{
  Security::Dispatch::Group::~Group(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A990;
  dispatch_group_wait(*(this + 11), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(*(this + 11));
  std::exception_ptr::~exception_ptr(this + 10);
  Security::Mutex::~Mutex((this + 8));
}

void Security::Dispatch::Semaphore::~Semaphore(dispatch_object_t *this)
{
  *this = &unk_1EFA8A9B0;
  dispatch_release(this[1]);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A9B0;
  dispatch_release(this[1]);
}

void Security::Dispatch::SemaphoreWait::~SemaphoreWait(Security::Dispatch::SemaphoreWait *this)
{
  *this = &unk_1EFA8A9D0;
  if (*(this + 16) == 1)
  {
    dispatch_semaphore_signal(*(*(this + 1) + 8));
  }

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8A9D0;
  if (*(this + 16) == 1)
  {
    dispatch_semaphore_signal(*(*(this + 1) + 8));
  }
}

uint64_t ___ZN8Security8Dispatch23ExceptionAwareEnqueuing21enqueueWithDispatcherEU13block_pointerFvU13block_pointerFvvEES3__block_invoke(uint64_t result)
{
  if ((*(*(result + 40) + 64) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_18891BCC4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12)
{
  __cxa_begin_catch(a1);
  a11 = v12;
  a12 = 0xAAAAAAAAAAAAAA01;
  Security::Mutex::lock(v12);
  *(v12 + 64) = 1;
  std::current_exception();
  std::exception_ptr::operator=((v12 + 72), &a10);
  std::exception_ptr::~exception_ptr(&a10);
  Security::StLock<Security::Mutex,&Security::Mutex::lock,&Security::Mutex::unlock>::~StLock(&a11);
  __cxa_end_catch();
  JUMPOUT(0x18891BCB4);
}

void Security::Dispatch::Group::wait(Security::Dispatch::Group *this)
{
  dispatch_group_wait(*(this + 11), 0xFFFFFFFFFFFFFFFFLL);
  if (*(this + 72) == 1)
  {
    *(this + 72) = 0;
    std::exception_ptr::exception_ptr(&v3, this + 10);
    v2.__ptr_ = &v3;
    std::rethrow_exception(v2);
    __break(1u);
  }
}

_DWORD *Security::BlobWrapper::alloc(Security::BlobWrapper *this, unint64_t a2)
{
  if (a2 > 0xFFFFFFFFFFFFFFF7)
  {
    return 0;
  }

  v4 = a2 + 8;
  v5 = malloc_type_malloc(a2 + 8, 0x100004000313F17uLL);
  v2 = v5;
  if (v5)
  {
    *v5 = 17555194;
    v5[1] = bswap32(v4);
    memcpy(v5 + 2, this, v4 - 8);
  }

  return v2;
}

void Security::UnixError::~UnixError(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x18CFD9760);
}

uint64_t Security::MacOSError::unixError(Security::MacOSError *this)
{
  v1 = *(this + 36) - 100000;
  if (v1 >= 0x100)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v1;
  }
}

void Security::MacOSError::~MacOSError(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x18CFD9760);
}

void Security::CFError::~CFError(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x18CFD9760);
}

void Security::ModuleNexusError::~ModuleNexusError(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x18CFD9760);
}

void Security::CommonError::LogBacktrace(Security::CommonError *this)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = secLogObjForScope("security_exception");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36 = v2;
    v37 = v2;
    v34 = v2;
    v35 = v2;
    v32 = v2;
    v33 = v2;
    v30 = v2;
    v31 = v2;
    v28 = v2;
    v29 = v2;
    v26 = v2;
    v27 = v2;
    v24 = v2;
    v25 = v2;
    *v22 = v2;
    v23 = v2;
    v3 = backtrace(v22, 32);
    v4 = backtrace_symbols(v22, v3);
    v5 = v4;
    memset(&v19, 0, sizeof(v19));
    if (v3 < 1)
    {
      free(v4);
    }

    else
    {
      for (i = 0; i != v3; ++i)
      {
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          v19.__r_.__value_.__l.__size_ = 0;
          v7 = v19.__r_.__value_.__r.__words[0];
        }

        else
        {
          *(&v19.__r_.__value_.__s + 23) = 0;
          v7 = &v19;
        }

        v7->__r_.__value_.__s.__data_[0] = 0;
        __stringp = v5[i];
        while (1)
        {
          v8 = strsep(&__stringp, " ");
          v9 = v8;
          if (!v8)
          {
            break;
          }

          if (*v8)
          {
            status = 0;
            v10 = __cxa_demangle(v8, 0, 0, &status);
            v11 = v10;
            if (status)
            {
              v12 = strlen(v9);
              std::string::append(&v19, v9, v12);
            }

            else
            {
              v13 = strlen(v10);
              std::string::append(&v19, v11, v13);
            }

            std::string::append(&v19, " ", 1uLL);
            if (v11)
            {
              free(v11);
            }
          }

          else
          {
            std::string::append(&v19, " ", 1uLL);
          }
        }

        v14 = secLogObjForScope("security_exception");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = &v19;
          }

          else
          {
            v15 = v19.__r_.__value_.__r.__words[0];
          }

          status = 136315138;
          v21 = v15;
          _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "%s", &status, 0xCu);
        }
      }

      v16 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
      free(v5);
      if (v16 < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

Security::UnixError *Security::UnixError::UnixError(Security::UnixError *this, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  *(this + 72) = xmmword_1889674AE;
  *(this + 88) = unk_1889674BE;
  *(this + 104) = xmmword_1889674CE;
  *(this + 120) = unk_1889674DE;
  *(this + 8) = *"CommonError";
  *(this + 24) = unk_18896747E;
  *(this + 40) = xmmword_18896748E;
  *(this + 56) = unk_18896749E;
  *(this + 17) = 128;
  *this = &unk_1EFA8AA30;
  *(this + 36) = a2;
  snprintf(this + 8, *(this + 17), "UNIX error exception: %d", *(this + 36));
  v3 = secLogObjForScope("security_exception");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = (*(*this + 16))(this);
    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  Security::CommonError::LogBacktrace(v4);
  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void Security::UnixError::throwMe(Security::UnixError *this)
{
  v1 = this;
  exception = __cxa_allocate_exception(0x98uLL);
  Security::UnixError::UnixError(exception, v1);
}

Security::MacOSError *Security::MacOSError::MacOSError(Security::MacOSError *this, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  *(this + 72) = xmmword_1889674AE;
  *(this + 88) = unk_1889674BE;
  *(this + 104) = xmmword_1889674CE;
  *(this + 120) = unk_1889674DE;
  *(this + 8) = *"CommonError";
  *(this + 24) = unk_18896747E;
  *(this + 40) = xmmword_18896748E;
  *(this + 56) = unk_18896749E;
  *(this + 17) = 128;
  *this = &unk_1EFA8AA68;
  *(this + 36) = a2;
  snprintf(this + 8, *(this + 17), "MacOS error: %d", *(this + 36));
  if (a2 != -67050)
  {
    v4 = secLogObjForScope("security_exception");
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v6 = (*(*this + 16))(this);
      *buf = 136315138;
      v10 = v6;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    Security::CommonError::LogBacktrace(v5);
  }

  v7 = *MEMORY[0x1E69E9840];
  return this;
}

void Security::MacOSError::throwMe(Security::MacOSError *this, uint64_t a2, const char *a3, ...)
{
  v3 = this;
  exception = __cxa_allocate_exception(0x98uLL);
  Security::MacOSError::MacOSError(exception, v3);
}

Security::CFError *Security::CFError::CFError(Security::CFError *this)
{
  *(this + 72) = xmmword_1889674AE;
  *(this + 88) = unk_1889674BE;
  *(this + 104) = xmmword_1889674CE;
  *(this + 120) = unk_1889674DE;
  *(this + 8) = *"CommonError";
  *(this + 24) = unk_18896747E;
  *(this + 40) = xmmword_18896748E;
  *(this + 56) = unk_18896749E;
  *(this + 17) = 128;
  *this = &unk_1EFA8AAA0;
  v2 = secLogObjForScope("security_exception");
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *v5 = 0;
    _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "CFError", v5, 2u);
  }

  Security::CommonError::LogBacktrace(v3);
  return this;
}

void Security::ModuleNexusError::throwMe(Security::ModuleNexusError *this)
{
  exception = __cxa_allocate_exception(0x90uLL);
  *(exception + 72) = xmmword_1889674AE;
  *(exception + 88) = unk_1889674BE;
  *(exception + 104) = xmmword_1889674CE;
  *(exception + 120) = unk_1889674DE;
  *(exception + 8) = *"CommonError";
  *(exception + 24) = unk_18896747E;
  *(exception + 40) = xmmword_18896748E;
  *(exception + 56) = unk_18896749E;
  *(exception + 17) = 128;
  *exception = &unk_1EFA8AAF0;
}

void Security::UnixPlusPlus::FileDesc::close(Security::UnixPlusPlus::FileDesc *this)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if ((v2 & 0x80000000) == 0)
  {
    if (close(v2) == -1)
    {
      v6 = __error();
      Security::UnixError::throwMe(*v6);
    }

    v3 = secLogObjForScope("unixio");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *this;
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_debug_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEBUG, "close(%d)", v7, 8u);
    }

    *this = -1;
  }

  v4 = *MEMORY[0x1E69E9840];
}

ssize_t Security::UnixPlusPlus::FileDesc::writeAll(ssize_t this, char *__buf, size_t __nbyte)
{
  if (__nbyte)
  {
    v3 = __nbyte;
    v5 = this;
    do
    {
      this = write(*v5, __buf, v3);
      if (this == -1)
      {
        if (*__error() != 35)
        {
          v6 = __error();
          Security::UnixError::throwMe(*v6);
        }

        this = 0;
      }

      __buf += this;
      v3 -= this;
    }

    while (v3);
  }

  return this;
}

off_t Security::UnixPlusPlus::FileDesc::seek(Security::UnixPlusPlus::FileDesc *this, off_t a2)
{
  result = lseek(this, a2, 0);
  if (result == -1)
  {
    v3 = __error();
    Security::UnixError::throwMe(*v3);
  }

  return result;
}

void Security::UnixPlusPlus::FileDesc::fcntl(Security::UnixPlusPlus::FileDesc *this, int a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = fcntl(*this, 48, a3, 1);
  v5 = secLogObjForScope("unixio");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *this;
    *buf = 67109888;
    v10 = v7;
    v11 = 1024;
    v12 = 48;
    v13 = 2048;
    v14 = 1;
    v15 = 1024;
    v16 = v4;
    _os_log_debug_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEBUG, "%d fcntl(%d,%p) = %d", buf, 0x1Eu);
  }

  if (v4 == -1)
  {
    v8 = __error();
    Security::UnixError::throwMe(*v8);
  }

  v6 = *MEMORY[0x1E69E9840];
}

int *Security::UnixPlusPlus::FileDesc::removeAttr(Security::UnixPlusPlus::FileDesc *this, const char *a2)
{
  result = fremovexattr(this, a2, 0);
  if (result)
  {
    result = __error();
    if (*result != 93)
    {
      v3 = __error();
      Security::UnixError::throwMe(*v3);
    }
  }

  return result;
}

ssize_t Security::UnixPlusPlus::FileDesc::listAttr(Security::UnixPlusPlus::FileDesc *this, char *a2, size_t a3)
{
  result = flistxattr(this, a2, a3, 0);
  if (result == -1)
  {
    v4 = __error();
    Security::UnixError::throwMe(*v4);
  }

  return result;
}

const void **Security::UnixPlusPlus::FileDesc::mediumType(Security::UnixPlusPlus::FileDesc *this, Security::UnixPlusPlus::FileDesc *a2)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v3.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v19.st_blksize = v3;
  *v19.st_qspare = v3;
  v19.st_birthtimespec = v3;
  *&v19.st_size = v3;
  v19.st_mtimespec = v3;
  v19.st_ctimespec = v3;
  *&v19.st_uid = v3;
  v19.st_atimespec = v3;
  *&v19.st_dev = v3;
  Security::UnixPlusPlus::FileDesc::fstat(a2, &v19);
  matching = 0xAAAAAAAAAAAAAAAALL;
  Security::CFTemp<__CFDictionary const*>::CFTemp(&matching, "{%s=%d,%s=%d}", v4, v5, v6, v7, v8, v9, "BSD Major");
  v10 = *MEMORY[0x1E696CD60];
  v11 = matching;
  matching = 0;
  MatchingService = IOServiceGetMatchingService(v10, v11);
  v13 = MatchingService;
  if (!MatchingService)
  {
    Security::CFRef<__CFDictionary const*>::~CFRef(&matching);
    v17 = 0;
LABEL_6:
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    return Security::CFRef<__CFDictionary const*>::~CFRef(&v17);
  }

  v14 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"Device Characteristics", 0, 3u);
  IOObjectRelease(v13);
  Security::CFRef<__CFDictionary const*>::~CFRef(&matching);
  v17 = v14;
  if (!v14)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(v14, @"Medium Type");
  if (!Value)
  {
    goto LABEL_6;
  }

  Security::cfString(this, Value);
  return Security::CFRef<__CFDictionary const*>::~CFRef(&v17);
}

void sub_18891CB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  Security::CFRef<__CFDictionary const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef *Security::CFTemp<__CFDictionary const*>::CFTemp(CFTypeRef *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = 0;
  v12 = &a9;
  v13[0] = a2;
  v13[1] = &v12;
  v13[2] = 0;
  v14 = 0;
  v10 = Security::CFMake::make(v13);
  if (*a1)
  {
    CFRelease(*a1);
  }

  *a1 = v10;
  return a1;
}

void *DefaultAllocator::realloc(DefaultAllocator *this, void *ptr, size_t size)
{
  result = malloc_type_realloc(ptr, size, 0x301F5A77uLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v5, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  return result;
}

void *DefaultAllocator::malloc(DefaultAllocator *this, size_t size)
{
  result = malloc_type_malloc(size, 0xD24D8E0BuLL);
  if (!result)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_alloc::bad_alloc(exception);
    __cxa_throw(v4, MEMORY[0x1E69E5430], MEMORY[0x1E69E5388]);
  }

  return result;
}

void *SensitiveAllocator::realloc(SensitiveAllocator *this, char *ptr, size_t a3)
{
  v5 = malloc_size(ptr);
  if (v5 > a3)
  {
    v5 = memset_s(&ptr[a3], v5 - a3, 0, v5 - a3);
  }

  return DefaultAllocator::realloc(v5, ptr, a3);
}

void SensitiveAllocator::free(SensitiveAllocator *this, void *ptr)
{
  v3 = malloc_size(ptr);
  memset_s(ptr, v3, 0, v3);

  free(ptr);
}

uint64_t Security::Allocator::standard(Security::Allocator *this)
{
  os_unfair_lock_lock(&unk_1EA91CDF8);
  if (!defaultAllocators)
  {
    defaultAllocators = Security::ModuleNexusCommon::create(&defaultAllocators, Security::ModuleNexus<DefaultAllocators>::make);
  }

  os_unfair_lock_unlock(&unk_1EA91CDF8);
  return defaultAllocators;
}

void sub_18891CDE8(void *a1)
{
  __cxa_begin_catch(a1);
  os_unfair_lock_unlock(&unk_1EA91CDF8);
  __cxa_rethrow();
}

uint64_t Security::CFClass::copyDebugDescType(Security::CFClass *this, const void *a2)
{
  if (this)
  {
    v2 = this + 24;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 48))(v2, a2);
}

void sub_18891CEC0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18891CEB8);
}

uint64_t Security::CFClass::copyFormattingDescType(Security::CFClass *this, const void *a2, const __CFDictionary *a3)
{
  if (this)
  {
    v3 = this + 24;
  }

  else
  {
    v3 = 0;
  }

  return (*(*v3 + 40))(v3, a2, a3);
}

void sub_18891CF1C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18891CF14);
}

uint64_t Security::CFClass::hashType(Security::CFClass *this, const void *a2)
{
  if (this)
  {
    v2 = this + 24;
  }

  else
  {
    v2 = 0;
  }

  return (*(*v2 + 32))(v2, a2);
}

void sub_18891CF78(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18891CF70);
}

uint64_t Security::CFClass::equalType(Security::CFClass *this, char *a2, const void *a3)
{
  if (this)
  {
    v3 = this + 24;
  }

  else
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = a2 + 24;
  }

  else
  {
    v4 = 0;
  }

  return (*(*v3 + 24))(v3, v4, a3);
}

void sub_18891CFDC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18891CFD4);
}

uint64_t Security::Architecture::local(Security::Architecture *this)
{
  image_header = _dyld_get_image_header(0);
  v12 = &unk_1EFA8AC20;
  Security::MachOBase::initHeader(&v12, image_header);
  v2 = 28;
  if (v16)
  {
    v2 = 32;
  }

  v3 = image_header + v2;
  LODWORD(v4) = v13[5];
  v5 = bswap32(v4);
  if (v17)
  {
    v4 = v5;
  }

  else
  {
    v4 = v4;
  }

  v14 = image_header + v2;
  v15 = &v3[v4];
  if (v3 + 8 > &v3[v4])
  {
    Security::UnixError::throwMe(8);
  }

  v7 = v13[1];
  LODWORD(v6) = v13[2];
  v8 = bswap32(v7);
  if (v17)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v10 = bswap32(v6);
  if (v17)
  {
    v6 = v10;
  }

  else
  {
    v6 = v6;
  }

  return v9 | (v6 << 32);
}

CFDataRef Security::MachO::dataAt(Security::MachO *this, uint64_t a2, size_t size)
{
  v9[0] = 0xAAAAAAAAAAAAAAAALL;
  v9[1] = 0xAAAAAAAAAAAAAAAALL;
  Security::CFMallocData::CFMallocData(v9, size);
  if (Security::UnixPlusPlus::FileDesc::read(*(this + 9), v9[0], size, *(this + 6) + a2) != size)
  {
    v8 = __error();
    Security::UnixError::throwMe(*v8);
  }

  v6 = Security::CFMallocData::operator __CFData const*(v9);
  if (v9[0])
  {
    free(v9[0]);
  }

  return v6;
}

void sub_18891D1AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9)
{
  if (a9)
  {
    free(a9);
  }

  _Unwind_Resume(exception_object);
}

Security::CFMallocData *Security::CFMallocData::CFMallocData(Security::CFMallocData *this, size_t size)
{
  v4 = malloc_type_malloc(size, 0x168A441uLL);
  *this = v4;
  *(this + 1) = size;
  if (!v4)
  {
    v6 = __error();
    Security::UnixError::throwMe(*v6);
  }

  return this;
}

uint64_t *std::list<fat_arch *>::__sort<BOOL({block_pointer})(fat_arch const*,fat_arch const*)>(uint64_t **a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      v8 = *a2;
      v9 = (*a2)[2];
      v10 = a1[2];
      if ((*(*a4 + 16))())
      {
        v12 = *v8;
        v11 = v8[1];
        *(v12 + 8) = v11;
        *v11 = v12;
        v13 = *v4;
        v13[1] = v8;
        *v8 = v13;
        *v4 = v8;
        v8[1] = v4;
        return v8;
      }
    }

    else
    {
      v15 = a3 >> 1;
      v16 = (a3 >> 1) + 1;
      v17 = a1;
      do
      {
        v17 = v17[1];
        --v16;
      }

      while (v16 > 1);
      v18 = std::list<fat_arch *>::__sort<BOOL({block_pointer})(fat_arch const*,fat_arch const*)>(a1, v17, a3 >> 1, a4);
      v4 = std::list<fat_arch *>::__sort<BOOL({block_pointer})(fat_arch const*,fat_arch const*)>(v17, a2, a3 - v15, a4);
      v19 = v4[2];
      v20 = v18[2];
      if ((*(*a4 + 16))())
      {
        for (i = v4[1]; i != a2; i = i[1])
        {
          v22 = i[2];
          v23 = v18[2];
          if (!(*(*a4 + 16))())
          {
            break;
          }
        }

        v25 = *i;
        v26 = *(*i + 8);
        v27 = *v4;
        v27[1] = v26;
        *v26 = v27;
        v28 = *v18;
        v24 = v18[1];
        v28[1] = v4;
        *v4 = v28;
        *v18 = v25;
        v25[1] = v18;
      }

      else
      {
        v24 = v18[1];
        i = v4;
        v4 = v18;
      }

      if (v24 != i && i != a2)
      {
        v29 = i;
        do
        {
          v30 = i[2];
          v31 = v24[2];
          if ((*(*a4 + 16))())
          {
            for (j = i[1]; j != a2; j = j[1])
            {
              v33 = j[2];
              v34 = v24[2];
              if (!(*(*a4 + 16))())
              {
                break;
              }
            }

            v36 = *j;
            v37 = *(*j + 8);
            v38 = *i;
            *(v38 + 8) = v37;
            *v37 = v38;
            if (v29 == i)
            {
              v29 = j;
            }

            v39 = *v24;
            v35 = v24[1];
            *(v39 + 8) = i;
            *i = v39;
            *v24 = v36;
            *(v36 + 8) = v24;
            i = j;
          }

          else
          {
            v35 = v24[1];
          }

          v40 = v35 == v29 || i == a2;
          v24 = v35;
        }

        while (!v40);
      }
    }
  }

  return v4;
}

void *std::__list_imp<fat_arch *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

unint64_t Security::Universal::bestNativeArch(Security::Universal *this)
{
  if (*(this + 1))
  {
    v2 = Security::Architecture::local(this);
    v3 = NXFindBestFatArch(v2, HIDWORD(v2) & 0xFFFFFF, *(this + 1), *(this + 4));
    if (v3)
    {
      cputype = v3->cputype;
      cpusubtype = v3->cpusubtype;
    }

    else
    {
      v6 = *(this + 1);
      cputype = *v6;
      cpusubtype = v6[1];
    }
  }

  else
  {
    cputype = *(this + 5);
    cpusubtype = *(this + 6);
  }

  return cputype | (cpusubtype << 32);
}

Security::Universal *Security::Universal::findArch(Security::Universal *this, const Security::Architecture *a2, int a3, int a4)
{
  if (!a2)
  {
LABEL_19:
    Security::UnixError::throwMe(8);
  }

  v4 = (this + 20 * a2);
  v5 = this;
  while (*v5 != a3 || *(v5 + 1) != a4)
  {
    v5 = (v5 + 20);
    if (v5 >= v4)
    {
      v5 = this;
      while (*v5 != a3 || ((*(v5 + 1) ^ a4) & 0xFFFFFF) != 0)
      {
        v5 = (v5 + 20);
        if (v5 >= v4)
        {
          v5 = this;
          while (*v5 != a3 || (*(v5 + 1) & 0xFFFFFF) != 0)
          {
            v5 = (v5 + 20);
            if (v5 >= v4)
            {
              while (*this != a3)
              {
                this = (this + 20);
                if (this >= v4)
                {
                  goto LABEL_19;
                }
              }

              return this;
            }
          }

          return v5;
        }
      }

      return v5;
    }
  }

  return v5;
}

void Security::Universal::architecture(Security::Universal **this, const Security::Architecture *a2, int a3)
{
  if (this[1])
  {

    Security::Universal::findImage(this, a2, a3);
  }

  if (*(this + 5) == a2 && (a3 == -1 || ((*(this + 6) ^ a3) & 0xFFFFFF) == 0))
  {
    operator new();
  }

  Security::UnixError::throwMe(8);
}

uint64_t Security::Universal::archOffset(Security::Universal *this, const Security::Architecture *a2, int a3)
{
  if (*(this + 1))
  {
    v3 = *(this + 4);
    return v3 + *(Security::Universal::findArch(*(this + 1), *(this + 4), a2, a3) + 2);
  }

  else
  {
    if (*(this + 5) != a2 || a3 != -1 && ((*(this + 6) ^ a3) & 0xFFFFFF) != 0)
    {
      Security::UnixError::throwMe(8);
    }

    return 0;
  }
}

void *Security::Bundle::lookupSymbol(Security::Bundle *this, const char *a2)
{
  functionName = CFStringCreateWithCString(0, a2, 0);
  if (!functionName)
  {
    Security::UnixError::throwMe(0x55);
  }

  v3 = Security::Bundle::cfBundle(this);
  FunctionPointerForName = CFBundleGetFunctionPointerForName(v3, functionName);
  if (!FunctionPointerForName)
  {
    Security::UnixError::throwMe(0x55);
  }

  Security::CFRef<__CFString const*>::~CFRef(&functionName);
  return FunctionPointerForName;
}

void sub_18891D8B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  Security::CFRef<__CFString const*>::~CFRef(va);
  _Unwind_Resume(a1);
}

uint64_t Security::Bundle::cfBundle(Security::Bundle *this)
{
  v10 = *MEMORY[0x1E69E9840];
  result = *(this + 8);
  if (!result)
  {
    v3 = secLogObjForScope("bundle");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = (this + 16);
      if (*(this + 39) < 0)
      {
        v8 = *v8;
      }

      *v9 = 136315138;
      *&v9[4] = v8;
      _os_log_debug_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEBUG, "instantiating CFBundle for %s", v9, 0xCu);
    }

    v4 = *(this + 39);
    if (v4 < 0)
    {
      v5 = *(this + 2);
      v4 = *(this + 3);
    }

    else
    {
      v5 = this + 16;
    }

    v6 = CFURLCreateFromFileSystemRepresentation(0, v5, v4, 1u);
    *v9 = v6;
    if (!v6 || (v6 = CFBundleCreate(0, v6), (*(this + 8) = v6) == 0))
    {
      Security::CFError::throwMe(v6);
    }

    Security::CFRef<__CFURL const*>::~CFRef(v9);
    result = *(this + 8);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

SecStaticCodeRef Security::OSXCode::codeRef(Security::OSXCode *this)
{
  staticCode = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 16))(__p);
  if (v6 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  CFURL = Security::makeCFURL(v2, 0, 0, v1);
  v3 = SecStaticCodeCreateWithPath(CFURL, 0, &staticCode);
  if (v3)
  {
    Security::MacOSError::throwMe(v3);
  }

  Security::CFRef<__CFURL const*>::~CFRef(&CFURL);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  return staticCode;
}

void sub_18891DAA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::Bundle::executablePath(Security::Bundle *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 63) < 0)
  {
    v4 = *(this + 6);
    if (v4)
    {
      v5 = *(this + 5);

      std::string::__init_copy_ctor_external(a2, v5, v4);
      return;
    }
  }

  else if (*(this + 63))
  {
LABEL_11:
    *&a2->__r_.__value_.__l.__data_ = *(this + 40);
    a2->__r_.__value_.__r.__words[2] = *(this + 7);
    return;
  }

  v6 = Security::Bundle::cfBundle(this);
  v7 = CFBundleCopyExecutableURL(v6);
  Security::cfStringRelease(__p, v7);
  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *(this + 7) = v9;
  *(this + 40) = *__p;
  HIBYTE(v9) = 0;
  LOBYTE(__p[0]) = 0;
  if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  std::string::__init_copy_ctor_external(a2, *(this + 5), *(this + 6));
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_18891DBB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Security::Bundle::canonicalPath(Security::Bundle *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 2), *(this + 3));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 1);
    a2->__r_.__value_.__r.__words[2] = *(this + 4);
  }
}

void Security::Bundle::~Bundle(Security::Bundle *this)
{
  Security::Bundle::~Bundle(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8ACD0;
  v2 = *(this + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void Security::LoadableBundle::unload(Security::LoadableBundle *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = secLogObjForScope("bundle");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 2), *(this + 3));
    }

    else
    {
      __p = *(this + 16);
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 134218242;
    v8 = this;
    v9 = 2080;
    v10 = p_p;
    _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "%p (%s) unloaded", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v3 = Security::Bundle::cfBundle(this);
  CFBundleUnloadExecutable(v3);
  v4 = *MEMORY[0x1E69E9840];
}

void Security::LoadableBundle::load(Security::LoadableBundle *this)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = Security::Bundle::cfBundle(this);
  Executable = CFBundleLoadExecutable(v2);
  if (!Executable)
  {
    Security::CFError::throwMe(Executable);
  }

  v4 = secLogObjForScope("bundle");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(this + 2), *(this + 3));
    }

    else
    {
      __p = *(this + 16);
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 134218242;
    v9 = this;
    v10 = 2080;
    v11 = p_p;
    _os_log_debug_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEBUG, "%p (%s) loaded", buf, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

void Security::LoadableBundle::~LoadableBundle(Security::LoadableBundle *this)
{
  Security::Bundle::~Bundle(this);

  JUMPOUT(0x18CFD9760);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E70D0D10, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t Security::ModuleNexusCommon::create(Security::ModuleNexusCommon *this, void *(*a2)(void))
{
  v4 = *(this + 1);
  v3 = (this + 8);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN8Security17ModuleNexusCommon6createEPFPvvE_block_invoke;
  v6[3] = &__block_descriptor_tmp_17145;
  v6[4] = this;
  v6[5] = a2;
  if (v4 != -1)
  {
    dispatch_once(v3, v6);
  }

  result = *this;
  if (!*this)
  {
    Security::ModuleNexusError::throwMe(0);
  }

  return result;
}

uint64_t ___ZN8Security17ModuleNexusCommon6createEPFPvvE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = (*(a1 + 40))();
  *v1 = result;
  return result;
}

void sub_18891E0B8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;

  __cxa_end_catch();
}

CFDataRef Security::CodeSigning::DetachedRep::component(Security::CodeSigning::EmbeddedSignatureBlob **this, Security::CodeSigning::EmbeddedSignatureBlob *a2, const Security::BlobCore *a3)
{
  result = Security::CodeSigning::EmbeddedSignatureBlob::component(this[14], a2, a3);
  if (!result)
  {
    v7 = this[15];
    if (!v7 || (result = Security::CodeSigning::EmbeddedSignatureBlob::component(v7, a2, v6)) == 0)
    {
      v8 = *(*(*(*this + 2))(this) + 24);

      return v8();
    }
  }

  return result;
}

void Security::CodeSigning::DetachedRep::~DetachedRep(Security::CodeSigning::DetachedRep *this)
{
  *this = &unk_1EFA8AD68;
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  Security::CFRef<__CFData const*>::~CFRef(this + 12);
  Security::CFRef<__CFData const*>::~CFRef(this + 11);
  *this = &unk_1EFA8AEA0;
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 16);
  Security::CodeSigning::DiskRep::~DiskRep(this);

  JUMPOUT(0x18CFD9760);
}

{
  *this = &unk_1EFA8AD68;
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  Security::CFRef<__CFData const*>::~CFRef(this + 12);
  Security::CFRef<__CFData const*>::~CFRef(this + 11);
  *this = &unk_1EFA8AEA0;
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 16);

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

_DWORD *Security::Blob<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u>::specific(_DWORD *result)
{
  if (result)
  {
    if (*result == -1072898310 && (v1 = 8 * bswap32(result[2]), v2 = v1 + 12, v3 = bswap32(result[1]), v1 + 12 <= v3))
    {
      if ((v1 | 4uLL) >= 0xC)
      {
        for (i = v1 + 8; ; i -= 8)
        {
          v6 = *(result + i);
          if (v6)
          {
            v7 = bswap32(v6);
            v8 = v2 > v7 || v7 + 8 > v3;
            if (v8 || bswap32(*(result + v7 + 4)) + v7 > v3)
            {
              break;
            }
          }

          v9 = i - 4;
          if (v9 <= 19)
          {
            return result;
          }
        }

        return 0;
      }
    }

    else
    {
      v4 = __error();
      result = 0;
      *v4 = 22;
    }
  }

  return result;
}

uint64_t Security::SuperBlobCore<Security::SuperBlob<4208856257u,unsigned int>,4208856257u,unsigned int>::find(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = bswap32(v2);
  v4 = v4 <= 1 ? 1 : v4;
  v5 = (a1 + 12);
  while (1)
  {
    v6 = *v5;
    v5 += 2;
    if (bswap32(v6) == a2)
    {
      break;
    }

    if (v4 == ++v3)
    {
      return 0;
    }
  }

  v7 = *(a1 + 12 + 8 * v3 + 4);
  if (v7)
  {
    return bswap32(v7) + a1;
  }

  else
  {
    return 0;
  }
}

void Security::CodeSigning::FilterRep::~FilterRep(Security::CodeSigning::FilterRep *this)
{
  *this = &unk_1EFA8AEA0;
  Security::RefPointer<Security::CodeSigning::DiskRep>::~RefPointer(this + 16);

  Security::CodeSigning::DiskRep::~DiskRep(this);
}

Security::CodeSigning::SingleDiskRep::Writer *Security::CodeSigning::SingleDiskRep::Writer::Writer(Security::CodeSigning::SingleDiskRep::Writer *this, atomic_uint *a2, int a3)
{
  *(this + 2) = 0;
  *(this + 12) = -1;
  *(this + 5) = a3;
  *this = &unk_1EFA8C070;
  Security::Mutex::Mutex((this + 32));
  if (a2)
  {
    atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
  }

  *(this + 3) = a2;
  *(this + 24) = -1;
  *(this + 100) = 0;
  return this;
}

ssize_t Security::CodeSigning::DYLDCacheRep::Writer::flush(Security::CodeSigning::DYLDCacheRep::Writer *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 17);
  if (v9)
  {
    MEMORY[0x18CFD9760](v9, 0x1000C403E1C8BA9);
  }

  *(this + 17) = Security::SuperBlobCore<Security::CodeSigning::EmbeddedSignatureBlob,4208856256u,unsigned int>::Maker::make(this + 104, a2, a3, a4, a5, a6, a7, a8);
  v10 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  Security::UnixPlusPlus::FileDesc::seek(*v10, *(*(this + 16) + 104));
  v11 = Security::CodeSigning::SingleDiskRep::Writer::fd(this);
  v12 = *(this + 17);
  v13 = bswap32(*(v12 + 4));

  return Security::UnixPlusPlus::FileDesc::writeAll(v11, v12, v13);
}