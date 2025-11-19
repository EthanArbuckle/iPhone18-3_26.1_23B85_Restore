CFStringRef SOSCircleCopyHashString(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = ccsha256_di();
  v3 = *v2;
  MEMORY[0x1EEE9AC00](v2);
  if (v3)
  {
    memset(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v3);
  }

  SOSCircleHashGenAndPeers(v2, *(a1 + 24), *(a1 + 32), v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), 0);
  result = SOSCopyHashBufAsString(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SOSCircleVerifyPeerSignatureExists(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = SOSCircleGetSignature(a1, v3, 0) != 0;
  CFRelease(v4);
  return v5;
}

uint64_t SOSCircleSignOldStyleResetToOfferingCircle(const __CFSet **a1, uint64_t a2, __SecKey *a3, __CFString **a4)
{
  result = SOSFullPeerInfoCopyDeviceKey(a2, a4);
  if (!result)
  {
    return result;
  }

  v9 = result;
  if ((SOSCircleUpgradePeerInfo(a1, a3, a2) & 1) == 0)
  {
    v12 = v9;
    goto LABEL_14;
  }

  SOSCircleRemoveRetired(a1);
  CFSetRemoveAllValues(a1[6]);
  v10 = SecKeyCopyPublicKey(a3);
  SOSCircleRejectNonValidApplicants(a1, v10);
  v11 = secLogObjForScope("Development");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 0;
    _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "SOSCircleEnsureRingConsistency requires ring membership and generation count consistency check", v13, 2u);
  }

  CFDictionaryRemoveAllValues(a1[7]);
  if (!SOSCircleSign(a1, a3, a4) || !SOSCircleSign(a1, v9, a4))
  {
    CFRelease(v9);
    if (!v10)
    {
      return 0;
    }

    v12 = v10;
LABEL_14:
    CFRelease(v12);
    return 0;
  }

  CFRelease(v9);
  if (v10)
  {
    CFRelease(v10);
  }

  return 1;
}

uint64_t SOSCircleUpgradePeerInfo(const __CFSet **a1, SecKeyRef key, uint64_t a3)
{
  v6 = SecKeyCopyPublicKey(key);
  if (a3 && (v7 = *(a3 + 16)) != 0)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = 0;
  }

  v9 = SOSCircleCopyPeerInfo(a1[4], v8);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_17;
  }

  if (SOSPeerInfoApplicationVerify(v9, v6, 0))
  {
    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v10);
    return 1;
  }

  v13 = secLogObjForScope("circle");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "SOSCircleGenerationSign: Upgraded peer's Application Signature", v21, 2u);
  }

  v14 = SOSFullPeerInfoCopyDeviceKey(a3, 0);
  if (v14)
  {
    v19 = v14;
    v20 = SOSPeerInfoCopyAsApplication(v10, key, v14, 0, v15, v16, v17, v18);
    updated = SOSCircleUpdatePeerInfo(a1, v20);
    if (v20)
    {
      CFRelease(v20);
    }

    CFRelease(v19);
  }

  else
  {
LABEL_17:
    updated = 0;
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return updated;
}

uint64_t SOSCircleRemoveRetired(uint64_t a1)
{
  v1 = *(a1 + 32);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __CFSetRemoveAllPassing_block_invoke;
  context[3] = &unk_1E70DAAB8;
  context[4] = &__block_literal_global_6767;
  context[5] = Mutable;
  CFSetApplyFunction(v1, apply_block_1_6744, context);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CFSetRemoveAllPassing_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_178;
  v4[4] = v1;
  v6.length = CFArrayGetCount(Mutable);
  v6.location = 0;
  CFArrayApplyFunction(Mutable, v6, apply_block_1_6744, v4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 1;
}

void SOSCircleRejectNonValidApplicants(uint64_t a1, uint64_t a2)
{
  MutableCopy = CFSetCreateMutableCopy(0, 0, *(a1 + 40));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SOSCircleRejectNonValidApplicants_block_invoke;
  v5[3] = &__block_descriptor_tmp_105_6766;
  v5[4] = a2;
  v5[5] = a1;
  CFSetApplyFunction(MutableCopy, apply_block_1_6744, v5);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }
}

void __SOSCircleRejectNonValidApplicants_block_invoke(uint64_t a1, const void *a2)
{
  if ((SOSPeerInfoApplicationVerify(a2, *(a1 + 32), 0) & 1) == 0)
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 40);
    CFSetAddValue(*(v4 + 48), a2);

    CFSetRemoveValue(v5, a2);
  }
}

void __CFSetRemoveAllPassing_block_invoke(uint64_t a1, const void *a2)
{
  if ((*(*(a1 + 32) + 16))())
  {
    v4 = *(a1 + 40);

    CFArrayAppendValue(v4, a2);
  }
}

uint64_t SOSCircleCopyPeerInfo(const __CFSet *a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SOSCircleCopyPeerInfo_block_invoke;
  v5[3] = &unk_1E70DAB00;
  v5[4] = &v6;
  v5[5] = a2;
  CFSetApplyFunction(a1, apply_block_1_6744, v5);
  v2 = v7[3];
  if (v2)
  {
    CFRetain(v2);
    v3 = v7[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t SOSCircleUpdatePeerInfo(const __CFSet **a1, const void *a2)
{
  if (sosCircleUpdatePeerInfoSet(a1[4], a2) & 1) != 0 || (sosCircleUpdatePeerInfoSet(a1[5], a2))
  {
    return 1;
  }

  v5 = a1[6];

  return sosCircleUpdatePeerInfoSet(v5, a2);
}

uint64_t sosCircleUpdatePeerInfoSet(const __CFSet *a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CFSetGetValue(a1, a2);
  if (result)
  {
    if (CFEqual(result, a2))
    {
      return 0;
    }

    else
    {
      CFSetReplaceValue(a1, a2);
      return 1;
    }
  }

  return result;
}

uint64_t __SOSCircleCopyPeerInfo_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(*(*(result + 32) + 8) + 24))
  {
    v3 = result;
    if (a2)
    {
      v4 = *(a2 + 40);
    }

    else
    {
      v4 = 0;
    }

    result = CFEqual(v4, *(v3 + 40));
    if (result)
    {
      *(*(*(v3 + 32) + 8) + 24) = a2;
    }
  }

  return result;
}

uint64_t SOSCirclePreGenerationSign(uint64_t a1, uint64_t a2)
{
  SOSCircleRemoveRetired(a1);
  CFSetRemoveAllValues(*(a1 + 48));
  SOSCircleRejectNonValidApplicants(a1, a2);
  CFDictionaryRemoveAllValues(*(a1 + 56));
  return 1;
}

uint64_t SOSCircleGenerationSign(const __CFSet **a1, SecKeyRef key, uint64_t a3, __CFString **a4)
{
  v8 = SecKeyCopyPublicKey(key);
  SOSCirclePreGenerationSign(a1, v8);
  SOSCircleGenerationIncrement(a1);
  v9 = SOSCircleGenerationSign_Internal(a1, key, a3, a4);
  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

void SOSCircleGenerationIncrement(uint64_t a1)
{
  v1 = *(a1 + 24);
  *(a1 + 24) = sosGenerationCreateOrIncrement(v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t SOSCircleGenerationSign_Internal(const __CFSet **a1, __SecKey *a2, uint64_t a3, __CFString **a4)
{
  if (!SOSCircleCountPeers(a1))
  {
    return 1;
  }

  v8 = SOSFullPeerInfoCopyDeviceKey(a3, a4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = SOSCircleUpgradePeerInfo(a1, a2, a3) && SOSCircleSign(a1, a2, a4) && SOSCircleSign(a1, v9, a4);
  CFRelease(v9);
  return v10;
}

uint64_t SOSCircleCountPeers(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleCountPeers_block_invoke;
  v4[3] = &unk_1E70DA498;
  v4[4] = &v5;
  v1 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_60;
  context[5] = v4;
  CFSetApplyFunction(v1, apply_block_1_6744, context);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

BOOL SOSCircleConcordanceSign(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v5 = SOSFullPeerInfoCopyDeviceKey(a2, a3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = SOSCircleSign(a1, v5, a3);
  v8 = secLogObjForScope("Development");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "SOSCircleEnsureRingConsistency requires ring signing op", v10, 2u);
  }

  CFRelease(v6);
  return v7;
}

uint64_t SOSCircleIsOlderGeneration(uint64_t a1, uint64_t a2)
{
  v2 = CFNumberCompare(*(a1 + 24), *(a2 + 24), 0);
  if ((v2 + 1) < 3)
  {
    return 1u >> ((v2 + 1) & 7);
  }

  else
  {
    return 0;
  }
}

uint64_t SOSCircleSharedTrustedPeers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SOSCircleSharedTrustedPeers_block_invoke;
  v6[3] = &unk_1E70DA470;
  v6[5] = a3;
  v6[6] = a2;
  v6[4] = &v7;
  v3 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_60;
  context[5] = v6;
  CFSetApplyFunction(v3, apply_block_1_6744, context);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

const void *__SOSCircleSharedTrustedPeers_block_invoke(uint64_t a1, const void **a2)
{
  result = CFEqual(*(a1 + 40), a2);
  if (a2 && !result)
  {
    result = SOSCircleHasPeerWithID(*(a1 + 48), a2[5]);
    if (result)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
    }
  }

  return result;
}

const void *SOSCircleHasPeerWithID(uint64_t a1, const void *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = CFSetGetValue(*(a1 + 32), a2);
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 != SOSPeerInfoGetTypeID())
    {
      return 0;
    }

    v5 = *(v3 + 16);
    if (v5 && CFDictionaryGetValue(v5, @"RetirementDate"))
    {
      return 0;
    }

    else
    {
      return !SOSPeerInfoIsCloudIdentity(v3);
    }
  }

  return result;
}

void SOSCircleForEachPeer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SOSCircleForEachPeerMatching_block_invoke;
  v3[3] = &unk_1E70DAB28;
  v3[4] = &__block_literal_global_60;
  v3[5] = a2;
  CFSetApplyFunction(v2, apply_block_1_6744, v3);
}

const void *SOSCircleHasPeer(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return SOSCircleHasPeerWithID(a1, *(a2 + 40));
  }

  else
  {
    return 0;
  }
}

uint64_t SOSCircleConcordanceTrust(uint64_t a1, uint64_t a2, int a3, __SecKey *a4, uint64_t a5, CFTypeRef *a6)
{
  if (!a4)
  {
    SOSCreateErrorWithFormat(2, 0, a6, 0, @"%@", @"Concordance with no user public key");
    return 3;
  }

  valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
  CFNumberGetValue(*(a2 + 24), kCFNumberCFIndexType, valuePtr);
  if (!valuePtr[0] && !SOSCircleCountPeers(a2))
  {
    return 0;
  }

  if (!SOSCircleCountPeers(a2))
  {
    v11 = CFNumberCompare(*(a1 + 24), *(a2 + 24), 0);
    if (v11 + 1) <= 2 && ((1u >> ((v11 + 1) & 7)))
    {
      return 0;
    }
  }

  if (SOSCircleGetSignature(a2, a4, a6))
  {
    if (SOSCircleVerify(a2, a4, a6))
    {
      if (!SOSCircleCountPeers(a1))
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2000000000;
        v25 = 4;
        valuePtr[0] = MEMORY[0x1E69E9820];
        valuePtr[1] = 0x40000000;
        valuePtr[2] = __GetSignersStatus_block_invoke;
        valuePtr[3] = &unk_1E70DA958;
        valuePtr[6] = a4;
        valuePtr[7] = a6;
        valuePtr[8] = 0;
        valuePtr[4] = &v22;
        valuePtr[5] = a2;
        v18 = *(a2 + 32);
        context[0] = MEMORY[0x1E69E9820];
        context[1] = 0x40000000;
        context[2] = __SOSCircleForEachPeerMatching_block_invoke;
        context[3] = &unk_1E70DAB28;
        context[4] = &__block_literal_global_69;
        context[5] = valuePtr;
        CFSetApplyFunction(v18, apply_block_1_6744, context);
        v12 = *(v23 + 6);
        _Block_object_dispose(&v22, 8);
        return v12;
      }

      valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
      CFNumberGetValue(*(a2 + 24), kCFNumberCFIndexType, valuePtr);
      if (valuePtr[0] || !SOSCircleIsOffering(a2))
      {
        v17 = CFNumberCompare(*(a2 + 24), *(a1 + 24), 0);
        if ((v17 + 1) <= 2 && 1u >> ((v17 + 1) & 7))
        {
          SOSCreateErrorWithFormat(1039, 0, a6, 0, @"%@", @"Bad generation - proposed circle gencount is older than known circle gencount");
          debugDumpCircle(@"isOlderGeneration known_circle", a1);
          debugDumpCircle(@"isOlderGeneration proposed_circle", a2);
          return 1;
        }

        if (!SOSCircleCountRetiredPeers(a2) && SOSCircleCountPeers(a2) == 1)
        {
          return GetOfferingStatus(a2, a4, a6);
        }

        v13 = a1;
        v14 = a2;
        v15 = a4;
        v16 = a5;
      }

      else
      {
        v13 = a2;
        v14 = a2;
        v15 = a4;
        v16 = 0;
      }

      return GetSignersStatus(v13, v14, v15, v16, a6);
    }

    if (a6)
    {
      SOSCreateErrorWithFormat(1038, *a6, a6, 0, @"%@", @"Bad user public signature");
    }

    else
    {
      SOSCreateErrorWithFormat(1038, 0, 0, 0, @"%@", @"Bad user public signature");
    }

    debugDumpCircle(@"proposed_circle", a2);
    return 5;
  }

  else
  {
    if (a6)
    {
      SOSCreateErrorWithFormat(1038, *a6, a6, 0, @"%@", @"No public signature to match current user key");
    }

    else
    {
      SOSCreateErrorWithFormat(1038, 0, 0, 0, @"%@", @"No public signature to match current user key");
    }

    return 2;
  }
}

void debugDumpCircle(__CFString *a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v4 = secLogObjForScope("circledebug");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v19 = a1;
    v20 = 2112;
    v21 = a2;
    _os_log_debug_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEBUG, "%@: %@", buf, 0x16u);
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else if (!a2)
  {
    goto LABEL_11;
  }

  v6 = SOSCircleCopyEncodedData(a2, v5, &v17);
  if (v6)
  {
    v7 = v6;
    v8 = *MEMORY[0x1E695E480];
    Length = CFDataGetLength(v6);
    Mutable = CFStringCreateMutable(v8, 2 * Length);
    BytePtr = CFDataGetBytePtr(v7);
    v12 = CFDataGetLength(v7);
    if (v12 >= 1)
    {
      v13 = v12;
      do
      {
        v14 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v14, v17);
        --v13;
      }

      while (v13);
    }

    v15 = secLogObjForScope("circledebug");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v19 = Mutable;
      _os_log_debug_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEBUG, "Full contents: %@", buf, 0xCu);
      if (!Mutable)
      {
        goto LABEL_10;
      }
    }

    else if (!Mutable)
    {
LABEL_10:
      CFRelease(v7);
      goto LABEL_11;
    }

    CFRelease(Mutable);
    goto LABEL_10;
  }

LABEL_11:
  v16 = *MEMORY[0x1E69E9840];
}

uint64_t GetSignersStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v7 = *(a4 + 40);
  }

  else
  {
    v7 = 0;
  }

  v16[8] = v5;
  v16[9] = v6;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __GetSignersStatus_block_invoke;
  v11[3] = &unk_1E70DA958;
  v11[6] = a3;
  v11[7] = a5;
  v11[8] = v7;
  v11[4] = &v12;
  v11[5] = a2;
  v8 = *(a1 + 32);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __SOSCircleForEachPeerMatching_block_invoke;
  v16[3] = &unk_1E70DAB28;
  v16[4] = &__block_literal_global_69;
  v16[5] = v11;
  CFSetApplyFunction(v8, apply_block_1_6744, v16);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t GetOfferingStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __GetOfferingStatus_block_invoke;
  v6[3] = &unk_1E70DA980;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  v3 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_60;
  context[5] = v6;
  CFSetApplyFunction(v3, apply_block_1_6744, context);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __GetOfferingStatus_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", v6);
  if (v7)
  {
    v8 = v7;
    if (a2 && SOSCircleHasActiveValidPeerWithID(v4, *(a2 + 40), v5))
    {
      if (SOSCircleGetSignature(v4, v8, v6))
      {
        if (SOSCircleVerify(v4, v8, v6))
        {
          v9 = 0;
        }

        else
        {
          v9 = 6;
        }
      }

      else
      {
        v9 = 7;
      }
    }

    else
    {
      v9 = 4;
    }

    CFRelease(v8);
  }

  else
  {
    v9 = 4;
  }

  *(*(a1[4] + 8) + 24) = v9;
  v10 = *(a1[4] + 8);
  if (*(v10 + 24))
  {
    *(v10 + 24) = 4;
  }
}

uint64_t SOSCircleHasActiveValidPeerWithID(uint64_t a1, const void *a2, __SecKey *a3)
{
  Value = CFSetGetValue(*(a1 + 32), a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != SOSPeerInfoGetTypeID())
  {
    return 0;
  }

  return SOSPeerInfoApplicationVerify(v5, a3, 0);
}

uint64_t SOSCircleCountRetiredPeers(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleCountRetiredPeers_block_invoke;
  v4[3] = &unk_1E70DA538;
  v4[4] = &v5;
  v1 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_63;
  context[5] = v4;
  CFSetApplyFunction(v1, apply_block_1_6744, context);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __GetSignersStatus_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", v6);
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = v7;
  if (!a2 || !SOSCircleHasActiveValidPeerWithID(v4, *(a2 + 40), v5))
  {
    v9 = 4;
LABEL_8:
    CFRelease(v8);
    goto LABEL_9;
  }

  if (SOSCircleGetSignature(v4, v8, v6))
  {
    if (SOSCircleVerify(v4, v8, v6))
    {
      v9 = 0;
    }

    else
    {
      v9 = 6;
    }

    goto LABEL_8;
  }

  CFRelease(v8);
  v15 = *(a2 + 40);
  v16 = a1[8];
  if (!v15 || !v16)
  {
    if (v15 != v16)
    {
      goto LABEL_29;
    }

LABEL_30:
    v9 = 4;
    goto LABEL_9;
  }

  if (CFEqual(v15, v16))
  {
    goto LABEL_30;
  }

LABEL_29:
  if (SOSPeerInfoIsCloudIdentity(a2))
  {
    goto LABEL_30;
  }

  v9 = 7;
LABEL_9:
  v10 = *(a1[4] + 8);
  if (v9)
  {
    v11 = *(v10 + 24);
    if (v9 == 7)
    {
      v12 = 7;
    }

    else
    {
      v12 = *(v10 + 24);
    }

    if (v11 == 6)
    {
      v12 = 6;
    }

    if (v9 == 6)
    {
      v13 = 6;
    }

    else
    {
      v13 = v12;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  *(v10 + 24) = v14;
}

uint64_t SOSCircleGetName(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

char *SOSCircleGetNameC(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    CFRetain(*(a1 + 16));
    Length = CFStringGetLength(v1);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (!CFStringGetCString(v1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      *v4 = 0;
    }

    CFRelease(v1);
    return v4;
  }

  else
  {

    return strdup(&unk_188967DD7);
  }
}

void SOSCircleSetGeneration(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 24) = 0;
    CFRelease(v4);
  }

  if (cf)
  {
    CFRetain(cf);
  }

  *(a1 + 24) = cf;
}

const __CFNumber *SOSCircleGetGenerationSint(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

void SOSCircleGenerationSetValue(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 24) = v3;
}

uint64_t SOSCircleCountActivePeers(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleCountActivePeers_block_invoke;
  v4[3] = &unk_1E70DA4C0;
  v4[4] = &v5;
  v1 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_69;
  context[5] = v4;
  CFSetApplyFunction(v1, apply_block_1_6744, context);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void SOSCircleForEachActivePeer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SOSCircleForEachPeerMatching_block_invoke;
  v3[3] = &unk_1E70DAB28;
  v3[4] = &__block_literal_global_69;
  v3[5] = a2;
  CFSetApplyFunction(v2, apply_block_1_6744, v3);
}

uint64_t SOSCircleCountActiveValidPeers(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleCountActiveValidPeers_block_invoke;
  v4[3] = &unk_1E70DA4E8;
  v4[4] = &v5;
  SOSCircleForEachActiveValidPeer(a1, a2, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void SOSCircleForEachActiveValidPeer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleForEachActiveValidPeer_block_invoke;
  v4[3] = &__block_descriptor_tmp_70_6808;
  v3 = *(a1 + 32);
  v4[4] = a2;
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = v4;
  context[5] = a3;
  CFSetApplyFunction(v3, apply_block_1_6744, context);
}

uint64_t SOSCircleCountValidSyncingPeers(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleCountValidSyncingPeers_block_invoke;
  v4[3] = &unk_1E70DA510;
  v4[4] = &v5;
  SOSCircleForEachValidPeer(a1, a2, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void SOSCircleForEachValidPeer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleForEachValidPeer_block_invoke;
  v4[3] = &__block_descriptor_tmp_71_6810;
  v3 = *(a1 + 32);
  v4[4] = a2;
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = v4;
  context[5] = a3;
  CFSetApplyFunction(v3, apply_block_1_6744, context);
}

uint64_t __SOSCircleForEachValidPeer_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      if (CFDictionaryGetValue(v4, @"RetirementDate"))
      {
        return 0;
      }
    }
  }

  if (SOSPeerInfoIsCloudIdentity(a2))
  {
    return 0;
  }

  v6 = *(a1 + 32);

  return SOSPeerInfoApplicationVerify(a2, v6, 0);
}

void SOSCircleForEachRetiredPeer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SOSCircleForEachPeerMatching_block_invoke;
  v3[3] = &unk_1E70DAB28;
  v3[4] = &__block_literal_global_63;
  v3[5] = a2;
  CFSetApplyFunction(v2, apply_block_1_6744, v3);
}

const void *SOSCircleCopyRejectedApplicant(uint64_t a1, const void *a2)
{
  Value = CFSetGetValue(*(a1 + 48), a2);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  return v3;
}

uint64_t SOSCircleResetToEmpty(const __CFNumber **a1)
{
  CFSetRemoveAllValues(a1[5]);
  CFSetRemoveAllValues(a1[6]);
  CFSetRemoveAllValues(a1[4]);
  CFDictionaryRemoveAllValues(a1[7]);
  v2 = SOSGenerationCreateWithBaseline(a1[3]);
  SOSCircleSetGeneration(a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return 1;
}

uint64_t SOSCircleResetToEmptyWithSameGeneration(const __CFNumber **a1)
{
  v2 = SOSGenerationCopy(a1[3]);
  SOSCircleResetToEmpty(a1);
  SOSCircleSetGeneration(a1, v2);
  if (v2)
  {
    CFRelease(v2);
  }

  return 1;
}

uint64_t SOSCircleResetToOffering(const __CFNumber **a1, __SecKey *a2, uint64_t a3, CFTypeRef *a4)
{
  SOSCircleResetToEmpty(a1);
  result = SOSCircleRequestAdmission(a1, a2, a3, a4);
  if (result)
  {
    if (a3)
    {
      v9 = *(a3 + 16);
    }

    else
    {
      v9 = 0;
    }

    return SOSCircleAcceptRequest(a1, a2, a3, v9, a4);
  }

  return result;
}

uint64_t SOSCircleRequestAdmission(uint64_t a1, SecKeyRef key, uint64_t a3, CFTypeRef *a4)
{
  v8 = SecKeyCopyPublicKey(key);
  if (v8)
  {
    v9 = v8;
    if (SOSFullPeerInfoPromoteToApplication(a3, key, a4))
    {
      if (a3)
      {
        v10 = *(a3 + 16);
      }

      else
      {
        v10 = 0;
      }

      v11 = SOSCircleRecordAdmissionRequest(a1, v10, a4);
    }

    else
    {
      v11 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    SOSCreateErrorWithFormat(1034, 0, a4, 0, @"%@", @"No public key for key");
    return 0;
  }

  return v11;
}

uint64_t SOSCircleAcceptRequest(const __CFSet **a1, __SecKey *a2, uint64_t a3, void *value, CFTypeRef *a5)
{
  if (!CFSetContainsValue(a1[5], value))
  {
    SOSCreateErrorWithFormat(1031, 0, a5, 0, @"%@", @"Cannot accept non-applicant");
    return 0;
  }

  v10 = SecKeyCopyPublicKey(a2);
  if (!SOSPeerInfoApplicationVerify(value, v10, a5))
  {
    v12 = 0;
    if (!v10)
    {
      return v12;
    }

    goto LABEL_4;
  }

  v11 = a1[5];
  CFSetAddValue(a1[4], value);
  CFSetRemoveValue(v11, value);
  v12 = SOSCircleGenerationSign(a1, a2, a3, a5);
  if (v10)
  {
LABEL_4:
    CFRelease(v10);
  }

  return v12;
}

uint64_t SOSCircleRecordAdmissionRequest(uint64_t a1, const void **value, CFTypeRef *a3)
{
  if (value && SOSCircleHasPeerWithID(a1, value[5]))
  {
    SOSCreateErrorWithFormat(1030, 0, a3, 0, @"%@", @"Cannot request admission when already a peer");
    return 0;
  }

  else
  {
    v6 = *(a1 + 48);
    CFSetAddValue(*(a1 + 40), value);
    CFSetRemoveValue(v6, value);
    return 1;
  }
}

uint64_t SOSCircleRequestReadmission(uint64_t a1, __SecKey *a2, const void **a3, CFTypeRef *a4)
{
  result = SOSPeerInfoApplicationVerify(a3, a2, a4);
  if (result)
  {

    return SOSCircleRecordAdmissionRequest(a1, a3, a4);
  }

  return result;
}

uint64_t SOSCircleRemovePeers(const __CFSet **a1, __SecKey *a2, uint64_t a3, CFSetRef theSet, __CFString **a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __SOSCircleRemovePeers_block_invoke;
  v11[3] = &unk_1E70DA580;
  v11[4] = &v12;
  v11[5] = a1;
  v11[6] = a3;
  v11[7] = a5;
  CFSetApplyFunction(theSet, apply_block_1_6744, v11);
  if (*(v13 + 24) == 1)
  {
    v9 = SOSCircleGenerationSign(a1, a2, a3, a5);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __SOSCircleRemovePeers_block_invoke(uint64_t result, void *cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = SOSPeerInfoGetTypeID();
    if (v4 == result)
    {
      result = SOSCircleRemovePeerInternal(*(v3 + 40), *(v3 + 48), cf, *(v3 + 56));
      *(*(*(v3 + 32) + 8) + 24) &= result;
    }
  }

  return result;
}

uint64_t SOSCircleRemovePeerInternal(uint64_t a1, void *a2, const void **value, CFTypeRef *a4)
{
  if (a2)
  {
    v8 = a2[2];
    if (!value)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
    if (!value)
    {
      goto LABEL_9;
    }
  }

  if (SOSCircleHasPeerWithID(a1, value[5]))
  {
    if (!v8 || (SOSCircleHasPeerWithID(a1, *(v8 + 40)) & 1) == 0)
    {
      SOSCreateErrorWithFormat(1030, 0, a4, 0, @"%@", @"Must be peer to remove peer");
      return 0;
    }

    CFSetRemoveValue(*(a1 + 32), value);
  }

LABEL_9:
  if (!CFSetContainsValue(*(a1 + 40), value))
  {
    return 1;
  }

  return SOSCircleRejectRequest(a1, a2, value, a4);
}

uint64_t SOSCircleRejectRequest(uint64_t a1, void *a2, void *a3, CFTypeRef *a4)
{
  if (a3)
  {
    v7 = a3[5];
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  v8 = a2[2];
  if (v8)
  {
    a2 = *(v8 + 40);
  }

  else
  {
    a2 = 0;
  }

LABEL_8:
  v9 = CFEqual(v7, a2);
  v10 = *(a1 + 40);
  if (v9)
  {
LABEL_11:
    CFSetRemoveValue(v10, a3);
    return 1;
  }

  if (CFSetContainsValue(v10, a3))
  {
    v11 = *(a1 + 40);
    CFSetAddValue(*(a1 + 48), a3);
    v10 = v11;
    goto LABEL_11;
  }

  SOSCreateErrorWithFormat(1031, 0, a4, 0, @"%@", @"Cannot reject non-applicant");
  return 0;
}

uint64_t SOSCircleRemovePeersByID(const __CFSet **a1, __SecKey *a2, uint64_t a3, CFSetRef theSet, __CFString **a5)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __SOSCircleRemovePeersByID_block_invoke;
  v11[3] = &unk_1E70DA5A8;
  v11[4] = &v12;
  v11[5] = a1;
  v11[6] = a3;
  v11[7] = a5;
  CFSetApplyFunction(theSet, apply_block_1_6744, v11);
  if (*(v13 + 24) == 1)
  {
    v9 = SOSCircleGenerationSign(a1, a2, a3, a5);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v9;
}

void __SOSCircleRemovePeersByID_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = SOSCircleCopyPeerInfo(*(*(a1 + 40) + 32), cf);
      if (v5)
      {
        v6 = v5;
        *(*(*(a1 + 32) + 8) + 24) &= SOSCircleRemovePeerInternal(*(a1 + 40), *(a1 + 48), v5, *(a1 + 56));

        CFRelease(v6);
      }
    }
  }
}

uint64_t SOSCircleRemovePeersByIDUnsigned(uint64_t a1, CFSetRef theSet)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SOSCircleRemovePeersByIDUnsigned_block_invoke;
  v4[3] = &unk_1E70DA5D0;
  v4[4] = &v5;
  v4[5] = a1;
  CFSetApplyFunction(theSet, apply_block_1_6744, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __SOSCircleRemovePeersByIDUnsigned_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (!cf || (v3 = cf, v4 = CFGetTypeID(cf), v4 != CFStringGetTypeID()))
  {
    v3 = 0;
  }

  v5 = SOSCircleCopyPeerInfo(*(*(a1 + 40) + 32), v3);
  if (v5)
  {
    v6 = v5;
    v7 = *(a1 + 40);
    v8 = SOSCircleHasPeerWithID(v7, *(v5 + 40));
    v9 = v8;
    if (v8)
    {
      CFSetRemoveValue(*(v7 + 32), v6);
    }

    *(*(*(a1 + 32) + 8) + 24) &= v9;

    CFRelease(v6);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

uint64_t SOSCircleRemovePeer(const __CFSet **a1, __SecKey *a2, void *a3, const void **value, CFTypeRef *a5)
{
  result = SOSCircleRemovePeerInternal(a1, a3, value, a5);
  if (result)
  {

    return SOSCircleGenerationSign(a1, a2, a3, a5);
  }

  return result;
}

uint64_t SOSCircleAcceptRequests(const __CFSet **a1, __SecKey *a2, uint64_t a3, __CFString **a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __SOSCircleAcceptRequests_block_invoke;
  v12[3] = &unk_1E70DA5F8;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = a4;
  v12[4] = &v13;
  v12[5] = a1;
  v8 = a1[5];
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachApplicant_block_invoke;
  context[3] = &unk_1E70DA720;
  context[4] = v12;
  CFSetApplyFunction(v8, apply_block_1_6744, context);
  if (*(v14 + 24) == 1)
  {
    SOSCircleGenerationSign(a1, a2, a3, a4);
    v9 = secLogObjForScope("circle");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(context[0]) = 0;
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "Countersigned accepted requests", context, 2u);
    }
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void __SOSCircleAcceptRequests_block_invoke(uint64_t a1, void *value)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = SOSCircleAcceptRequest(*(a1 + 40), *(a1 + 48), *(a1 + 56), value, *(a1 + 64));
  v5 = secLogObjForScope("circle");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v8 = 138412290;
      v9 = value;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Accepted peer: %@", &v8, 0xCu);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  else if (v6)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "error in SOSCircleAcceptRequest\n", &v8, 2u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void SOSCircleForEachApplicant(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachApplicant_block_invoke;
  context[3] = &unk_1E70DA720;
  context[4] = a2;
  CFSetApplyFunction(v2, apply_block_1_6744, context);
}

uint64_t SOSCirclePeerSigUpdate(const __CFSet **a1, SecKeyRef key, uint64_t a3, __CFString **a4)
{
  v8 = SecKeyCopyPublicKey(key);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __SOSCirclePeerSigUpdate_block_invoke;
  v14[3] = &__block_descriptor_tmp_56_6833;
  v14[4] = v8;
  v14[5] = a1;
  v9 = a1[5];
  v14[6] = a3;
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachApplicant_block_invoke;
  context[3] = &unk_1E70DA720;
  context[4] = v14;
  CFSetApplyFunction(v9, apply_block_1_6744, context);
  if (a3)
  {
    v10 = *(a3 + 16);
  }

  else
  {
    v10 = 0;
  }

  updated = SOSCircleUpdatePeerInfo(a1, v10);
  if (updated)
  {
    SOSCircleGenerationSign(a1, key, a3, a4);
    v12 = secLogObjForScope("circle");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(context[0]) = 0;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "Generation signed updated signatures on peerinfo", context, 2u);
    }
  }

  return updated;
}

uint64_t __SOSCirclePeerSigUpdate_block_invoke(uint64_t a1, void *a2)
{
  result = SOSPeerInfoApplicationVerify(a2, *(a1 + 32), 0);
  if ((result & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);

    return SOSCircleRejectRequest(v5, v6, a2, 0);
  }

  return result;
}

void SOSCircleForEachiCloudIdentityPeer(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SOSCircleForEachPeerMatching_block_invoke;
  v3[3] = &unk_1E70DAB28;
  v3[4] = &__block_literal_global_66;
  v3[5] = a2;
  CFSetApplyFunction(v2, apply_block_1_6744, v3);
}

void SOSCircleForEachBackupCapablePeerForView(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SOSCircleForEachBackupCapablePeerForView_block_invoke;
  v5[3] = &__block_descriptor_tmp_72_6836;
  v5[4] = a3;
  v5[5] = a2;
  v4 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = v5;
  context[5] = a4;
  CFSetApplyFunction(v4, apply_block_1_6744, context);
}

uint64_t __SOSCircleForEachBackupCapablePeerForView_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 16);
    if (v4)
    {
      if (CFDictionaryGetValue(v4, @"RetirementDate"))
      {
        return 0;
      }
    }
  }

  if (SOSPeerInfoIsCloudIdentity(a2) || !SOSPeerInfoIsEnabledView(a2, *(a1 + 32)))
  {
    return 0;
  }

  v5 = *(a1 + 40);

  return SOSPeerInfoApplicationVerify(a2, v5, 0);
}

void SOSCircleForEachRejectedApplicant(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachRejectedApplicant_block_invoke;
  context[3] = &unk_1E70DA748;
  context[4] = a2;
  CFSetApplyFunction(v2, apply_block_1_6744, context);
}

uint64_t SOSCircleCopyPeerWithID(uint64_t a1, const void *a2)
{
  Value = CFSetGetValue(*(a1 + 32), a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  v4 = CFGetTypeID(Value);
  if (v4 != SOSPeerInfoGetTypeID())
  {
    return 0;
  }

  v10 = *MEMORY[0x1E695E480];

  return SOSPeerInfoCreateCopy(v10, v3, 0, v5, v6, v7, v8, v9);
}

const void *SOSCircleHasActivePeerWithID(uint64_t a1, const void *a2)
{
  result = CFSetGetValue(*(a1 + 32), a2);
  if (result)
  {
    v3 = CFGetTypeID(result);
    return (v3 == SOSPeerInfoGetTypeID());
  }

  return result;
}

const void *SOSCircleHasActivePeer(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return SOSCircleHasActivePeerWithID(a1, *(a2 + 40));
  }

  else
  {
    return 0;
  }
}

uint64_t SOSCircleHasValidSyncingPeer(uint64_t a1, const void *a2, __SecKey *a3)
{
  Value = CFSetGetValue(*(a1 + 32), a2);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != SOSPeerInfoGetTypeID())
  {
    return 0;
  }

  v7 = *(v5 + 16);
  if (v7)
  {
    if (CFDictionaryGetValue(v7, @"RetirementDate"))
    {
      return 0;
    }
  }

  if (SOSPeerInfoIsCloudIdentity(v5))
  {
    return 0;
  }

  return SOSPeerInfoApplicationVerify(v5, a3, 0);
}

uint64_t SOSCircleHasActiveValidPeer(uint64_t a1, uint64_t a2, __SecKey *a3)
{
  if (a2)
  {
    return SOSCircleHasActiveValidPeerWithID(a1, *(a2 + 40), a3);
  }

  else
  {
    return 0;
  }
}

CFMutableSetRef SOSCircleCopyPeers(uint64_t a1, CFAllocatorRef allocator)
{
  Mutable = CFSetCreateMutable(allocator, 0, &kSOSPeerSetCallbacks);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SOSCircleCopyPeers_block_invoke;
  v6[3] = &__block_descriptor_tmp_75_6838;
  v6[4] = Mutable;
  v4 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_60;
  context[5] = v6;
  CFSetApplyFunction(v4, apply_block_1_6744, context);
  return Mutable;
}

CFMutableSetRef SOSCircleCopyBackupCapablePeersForView(uint64_t a1, CFAllocatorRef allocator, uint64_t a3, uint64_t a4)
{
  Mutable = CFSetCreateMutable(allocator, 0, &kSOSPeerSetCallbacks);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __SOSCircleCopyBackupCapablePeersForView_block_invoke;
  v9[3] = &__block_descriptor_tmp_76_6839;
  v9[4] = Mutable;
  SOSCircleForEachBackupCapablePeerForView(a1, a3, a4, v9);
  return Mutable;
}

uint64_t SOSCircleAppendConcurringPeers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SOSCircleAppendConcurringPeers_block_invoke;
  v5[3] = &__block_descriptor_tmp_77_6840;
  v5[4] = a1;
  v5[5] = a3;
  v5[6] = a2;
  v3 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_69;
  context[5] = v5;
  CFSetApplyFunction(v3, apply_block_1_6744, context);
  return 1;
}

void __SOSCircleAppendConcurringPeers_block_invoke(uint64_t a1, CFDictionaryRef *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (SOSCircleVerifyPeerSigned(*(a1 + 32), a2, &cf))
  {
    Copy = SOSPeerInfoCreateCopy(*MEMORY[0x1E695E480], a2, *(a1 + 40), v4, v5, v6, v7, v8);
    CFArrayAppendValue(*(a1 + 48), Copy);
    CFRelease(Copy);
  }

  else if (*(a1 + 40))
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = cf;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "Error checking concurrence: %@", buf, 0xCu);
    }
  }

  v11 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

CFMutableArrayRef SOSCircleCopyConcurringPeers(uint64_t a1, uint64_t a2)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  SOSCircleAppendConcurringPeers(a1, Mutable, a2);
  return Mutable;
}

uint64_t SOSCircleCopyiCloudFullPeerInfoRef(uint64_t a1, CFTypeRef *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __SOSCircleCopyiCloudFullPeerInfoRef_block_invoke;
  v10[3] = &unk_1E70DA7D0;
  v10[4] = &v15;
  v10[5] = &v11;
  v10[6] = a1;
  v3 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_69;
  context[5] = v10;
  CFSetApplyFunction(v3, apply_block_1_6744, context);
  if (!v16[3] && !v12[3])
  {
    SOSErrorCreate(1044, v12 + 3, 0, @"No iCloud identity PeerInfo found in circle");
    v4 = secLogObjForScope("icloud-identity");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(context[0]) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "No iCloud identity PeerInfo found in circle", context, 2u);
    }
  }

  v5 = v12;
  if (a2)
  {
    v6 = v12[3];
    v12[3] = 0;
    if (*a2)
    {
      CFRelease(*a2);
      v5 = v12;
    }

    *a2 = v6;
  }

  v7 = v5[3];
  if (v7)
  {
    v5[3] = 0;
    CFRelease(v7);
  }

  v8 = v16[3];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void __SOSCircleCopyiCloudFullPeerInfoRef_block_invoke(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (SOSPeerInfoIsCloudIdentity(a2))
  {
    if (*(*(a1[4] + 8) + 24))
    {
      v4 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[6];
        v16 = 138412290;
        v17 = v5;
        v6 = "Additional cloud identity found in circle after successful creation: %@";
        v7 = v4;
        v8 = 12;
LABEL_5:
        _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, v6, &v16, v8);
      }
    }

    else
    {
      if (*(*(a1[5] + 8) + 24))
      {
        v9 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v16) = 0;
          _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "More than one cloud identity found, first had error, trying new one.", &v16, 2u);
        }
      }

      v10 = *(a1[5] + 8);
      v11 = *(v10 + 24);
      if (v11)
      {
        *(v10 + 24) = 0;
        CFRelease(v11);
        v10 = *(a1[5] + 8);
      }

      *(*(a1[4] + 8) + 24) = SOSFullPeerInfoCreateCloudIdentity(*MEMORY[0x1E695E480], a2, (v10 + 24));
      if (!*(*(a1[4] + 8) + 24))
      {
        v12 = secLogObjForScope("icloud-identity");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(*(a1[4] + 8) + 24);
          v14 = *(*(a1[5] + 8) + 24);
          v16 = 138412546;
          v17 = v13;
          v18 = 2112;
          v19 = v14;
          v6 = "Failed to make FullPeer for iCloud Identity: %@ (%@)";
          v7 = v12;
          v8 = 22;
          goto LABEL_5;
        }
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t SOSCircleCopyiCloudFullPeerInfoVerifier(uint64_t a1, CFTypeRef *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __SOSCircleCopyiCloudFullPeerInfoVerifier_block_invoke;
  v10[3] = &unk_1E70DA7F8;
  v10[5] = &v15;
  v10[6] = a1;
  v10[4] = &v11;
  v3 = *(a1 + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SOSCircleForEachPeerMatching_block_invoke;
  context[3] = &unk_1E70DAB28;
  context[4] = &__block_literal_global_69;
  context[5] = v10;
  CFSetApplyFunction(v3, apply_block_1_6744, context);
  if (!v12[3] && !v16[3])
  {
    SOSErrorCreate(1044, v16 + 3, 0, @"No iCloud identity PeerInfo found in circle");
    v4 = secLogObjForScope("icloud-identity");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(context[0]) = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "No iCloud identity PeerInfo found in circle", context, 2u);
    }
  }

  v5 = v16;
  if (a2)
  {
    v6 = v16[3];
    v16[3] = 0;
    if (*a2)
    {
      CFRelease(*a2);
      v5 = v16;
    }

    *a2 = v6;
  }

  v7 = v5[3];
  if (v7)
  {
    v5[3] = 0;
    CFRelease(v7);
  }

  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
  return v8;
}

void *__SOSCircleCopyiCloudFullPeerInfoVerifier_block_invoke(void *result, CFDictionaryRef *a2)
{
  if (!*(*(result[4] + 8) + 24))
  {
    v3 = result;
    result = SOSPeerInfoIsCloudIdentity(a2);
    if (result)
    {
      result = SOSCircleVerifyPeerSignatureExists(v3[6], a2);
      if (result)
      {
        result = SOSFullPeerInfoCreateCloudIdentity(*MEMORY[0x1E695E480], a2, (*(v3[5] + 8) + 24));
        *(*(v3[4] + 8) + 24) = result;
      }
    }
  }

  return result;
}

BOOL SOSCircleAcceptPeerFromHSA2(const __CFSet **a1, __SecKey *a2, const __CFNumber *a3, __SecKey *a4, const void *a5, uint64_t a6, CFTypeRef *a7)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v14 = *(a6 + 16);
  }

  else
  {
    v14 = 0;
  }

  CFSetAddValue(a1[4], v14);
  v15 = CFNumberCompare(a1[3], a3, 0);
  if ((v15 + 1) > 2 || ((1u >> ((v15 + 1) & 7)) & 1) == 0)
  {
    SOSCreateErrorWithFormat(1039, 0, a7, 0, @"%@", @"Generation Count for new circle is too old");
    goto LABEL_24;
  }

  SOSCirclePreGenerationSign(a1, a2);
  SOSCircleSetGeneration(a1, a3);
  if ((SOSCircleGenerationSign_Internal(a1, a2, a6, a7) & 1) == 0)
  {
LABEL_24:
    v22 = SOSGenerationCountCopyDescription(a3);
    v23 = SOSGenerationCountCopyDescription(a1[3]);
    v24 = secLogObjForScope("circleOps");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if (a7)
      {
        v25 = *a7;
      }

      else
      {
        v25 = 0;
      }

      *buf = 138412802;
      v28 = v22;
      v29 = 2112;
      v30 = v23;
      v31 = 2112;
      v32 = v25;
      _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "Failed to regenerate circle with new gen count: %@  current gencount: %@  error: %@", buf, 0x20u);
    }

    if (v22)
    {
      CFRelease(v22);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    goto LABEL_33;
  }

  if (!SOSCircleSetSignature(a1, a4, a5, a7))
  {
    v17 = secLogObjForScope("circleOps");
    result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      goto LABEL_34;
    }

    if (a7)
    {
      v19 = *a7;
    }

    else
    {
      v19 = 0;
    }

    *buf = 138412290;
    v28 = v19;
    v21 = "Failed to set signature: %@";
    goto LABEL_22;
  }

  v16 = SOSCircleVerify(a1, a4, a7);
  v17 = secLogObjForScope("circleOps");
  result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if ((v16 & 1) == 0)
  {
    if (!result)
    {
      goto LABEL_34;
    }

    if (a7)
    {
      v20 = *a7;
    }

    else
    {
      v20 = 0;
    }

    *buf = 138412290;
    v28 = v20;
    v21 = "Circle failed to validate after peer signature: %@";
LABEL_22:
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
LABEL_33:
    result = 0;
    goto LABEL_34;
  }

  if (result)
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "Circle accepted successfully", buf, 2u);
  }

  result = 1;
LABEL_34:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SOSCirclePeerInfoCopyStateString(uint64_t a1, __SecKey *a2, const void *a3, CFDictionaryRef *a4)
{
  if (SOSCircleVerifyPeerSignatureExists(a1, a4))
  {
    v7 = 86;
  }

  else
  {
    v7 = 118;
  }

  return SOSPeerInfoCopyStateString(a4, a2, a3, v7);
}

CFStringRef SOSCircleCopyStateString(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = SOSGenerationCountCopyDescription(*(a1 + 24));
  v5 = 118;
  if (a2)
  {
    if (SOSCircleGetSignature(a1, a2, 0))
    {
      v5 = 86;
    }

    else
    {
      v5 = 118;
    }
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"CIRCLE:    [%20@] UserSigned: %c", v4, v5);
  if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

void SOSCircleLogState(const char *a1, CFSetRef *a2, uint64_t a3, uint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = SOSCircleCopyStateString(a2, a3);
    v9 = secLogObjForScope(a1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "CIRCLE:    %@", &buf, 0xCu);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    Count = CFSetGetCount(a2[4]);
    v11 = secLogObjForScope(a1);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (Count)
    {
      if (v12)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Peers In Circle:", &buf, 2u);
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 0x40000000;
      v29[2] = __SOSCircleLogState_block_invoke;
      v29[3] = &__block_descriptor_tmp_89_6865;
      v29[4] = a1;
      v29[5] = a2;
      v29[6] = a3;
      v29[7] = a4;
      v13 = a2[4];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v31 = __SOSCircleForEachPeerMatching_block_invoke;
      v32 = &unk_1E70DAB28;
      v33 = &__block_literal_global_60;
      v34 = v29;
      CFSetApplyFunction(v13, apply_block_1_6744, &buf);
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 0x40000000;
      v28[2] = __SOSCircleLogState_block_invoke_2;
      v28[3] = &__block_descriptor_tmp_90_6866;
      v28[4] = a1;
      v28[5] = a2;
      v28[6] = a3;
      v28[7] = a4;
      v14 = a2[4];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v31 = __SOSCircleForEachPeerMatching_block_invoke;
      v32 = &unk_1E70DAB28;
      v33 = &__block_literal_global_63;
      v34 = v28;
      CFSetApplyFunction(v14, apply_block_1_6744, &buf);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 0x40000000;
      v27[2] = __SOSCircleLogState_block_invoke_3;
      v27[3] = &__block_descriptor_tmp_91_6867;
      v27[4] = a1;
      v27[5] = a2;
      v27[6] = a3;
      v27[7] = a4;
      v15 = a2[4];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v31 = __SOSCircleForEachPeerMatching_block_invoke;
      v32 = &unk_1E70DAB28;
      v33 = &__block_literal_global_66;
      v34 = v27;
      CFSetApplyFunction(v15, apply_block_1_6744, &buf);
    }

    else if (v12)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "Peers In Circle: None", &buf, 2u);
    }

    v16 = CFSetGetCount(a2[5]);
    v17 = secLogObjForScope(a1);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v18)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "Applicants To Circle:", &buf, 2u);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 0x40000000;
      v26[2] = __SOSCircleLogState_block_invoke_92;
      v26[3] = &__block_descriptor_tmp_93_6870;
      v26[4] = a1;
      v26[5] = a3;
      v26[6] = a4;
      v19 = a2[5];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v31 = __SOSCircleForEachApplicant_block_invoke;
      v32 = &unk_1E70DA720;
      v33 = v26;
      CFSetApplyFunction(v19, apply_block_1_6744, &buf);
    }

    else if (v18)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "Applicants To Circle: None", &buf, 2u);
    }

    v20 = CFSetGetCount(a2[6]);
    v21 = secLogObjForScope(a1);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "Rejected Applicants To Circle:", &buf, 2u);
      }

      v23 = a2[6];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = __SOSCircleLogState_block_invoke_94;
      v25[3] = &__block_descriptor_tmp_95_6873;
      v25[4] = a1;
      v25[5] = a3;
      v25[6] = a4;
      CFSetApplyFunction(v23, apply_block_1_6744, v25);
    }

    else if (v22)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "Rejected Applicants To Circle: None", &buf, 2u);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __SOSCircleLogState_block_invoke(void *a1, CFDictionaryRef *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  if (SOSCircleVerifyPeerSignatureExists(a1[5], a2))
  {
    v6 = 86;
  }

  else
  {
    v6 = 118;
  }

  SOSPeerInfoLogState(v3, a2, v4, v5, v6);
}

void __SOSCircleLogState_block_invoke_2(void *a1, CFDictionaryRef *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  if (SOSCircleVerifyPeerSignatureExists(a1[5], a2))
  {
    v6 = 86;
  }

  else
  {
    v6 = 118;
  }

  SOSPeerInfoLogState(v3, a2, v4, v5, v6);
}

void __SOSCircleLogState_block_invoke_3(void *a1, CFDictionaryRef *a2)
{
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  if (SOSCircleVerifyPeerSignatureExists(a1[5], a2))
  {
    v6 = 86;
  }

  else
  {
    v6 = 118;
  }

  SOSPeerInfoLogState(v3, a2, v4, v5, v6);
}

uint64_t SOSCircleIsLegacy(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v4 = secLogObjForScope("SOSMonitorMode");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = a1;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Checking if circle %@ is legacy", buf, 0xCu);
  }

  if (a1 && a2)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SOSCircleIsLegacy_block_invoke;
    v10[3] = &unk_1E70DA8C0;
    v10[4] = &v11;
    SOSCircleForEachValidPeer(a1, a2, v10);
  }

  v5 = secLogObjForScope("SOSMonitorMode");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v12 + 24))
    {
      v6 = "Legacy";
    }

    else
    {
      v6 = "Not Legacy";
    }

    *buf = 136315138;
    v16 = v6;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "END: Circle is %s", buf, 0xCu);
  }

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL __SOSCircleIsLegacy_block_invoke(uint64_t a1, uint64_t a2)
{
  result = SOSPeerInfoIsLegacy(a2);
  *(*(*(a1 + 32) + 8) + 24) |= result;
  return result;
}

uint64_t SOSPeerInfoGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSPeerInfoGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSPeerInfoGetTypeID_sSOSPeerInfoGetTypeIDSingleton;
  if (SOSPeerInfoGetTypeID_sSOSPeerInfoGetTypeIDOnce != -1)
  {
    dispatch_once(&SOSPeerInfoGetTypeID_sSOSPeerInfoGetTypeIDOnce, block);
  }

  return SOSPeerInfoGetTypeID_sSOSPeerInfoGetTypeIDSingleton;
}

uint64_t __SOSPeerInfoGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef SOSPeerInfoCopyDescription(uint64_t a1)
{
  DebugDescriptionFormatOptions = SecGetDebugDescriptionFormatOptions();

  return SOSPeerInfoCopyFormatDescription(a1, DebugDescriptionFormatOptions);
}

CFStringRef SOSPeerInfoCopyFormatDescription(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 16);
  v5 = 114;
  if (v4)
  {
    if (CFDictionaryGetValue(v4, @"RetirementDate"))
    {
      v5 = 82;
    }

    else
    {
      v5 = 114;
    }
  }

  v36 = SOSPeerInfoVerify(a1, 0);
  HasBackupKey = SOSPeerInfoHasBackupKey(a1);
  v34 = SOSPeerInfoKVSOnly(a1);
  v33 = SOSPeerInfoSupportsCKKSForAll(a1);
  Value = CFDictionaryGetValue(*(a1 + 32), @"OSVersion");
  v7 = SOSPeerInfoV2DictionaryCopyString(a1, sDeviceID);
  if (v7)
  {
    v8 = v7;
    Length = CFStringGetLength(v7);
    v10 = *MEMORY[0x1E695E480];
    if (Length > 8)
    {
      v37.location = 0;
      v37.length = 8;
      Copy = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v8, v37);
    }

    else
    {
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v8);
    }

    v13 = Copy;
    CFRelease(v8);
  }

  else
  {
    v13 = 0;
    v10 = *MEMORY[0x1E695E480];
  }

  v14 = SOSPeerInfoCopySerialNumber(a1);
  v15 = CFStringCreateWithFormat(v10, a2, @"PI@%p", a1);
  v16 = CFDictionaryGetValue(*(a1 + 32), @"ComputerName");
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"Unknown ";
  }

  v18 = CFDictionaryGetValue(*(a1 + 32), @"ModelName");
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = @"Unknown ";
  }

  v20 = *(a1 + 48);
  if (!v20)
  {
    v20 = @"Unknown ";
  }

  if (Value)
  {
    v21 = Value;
  }

  else
  {
    v21 = @"Unknown ";
  }

  if (v13)
  {
    v22 = v13;
  }

  else
  {
    v22 = @"Unknown ";
  }

  if (v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = @"Unknown ";
  }

  v32 = v21;
  v31 = v19;
  v24 = 95;
  if (v33)
  {
    v24 = 67;
  }

  v30 = v24;
  v25 = 73;
  if (v34)
  {
    v25 = 75;
  }

  v26 = 98;
  if (HasBackupKey)
  {
    v26 = 66;
  }

  v29 = v25;
  v27 = 115;
  if (v36)
  {
    v27 = 83;
  }

  v12 = CFStringCreateWithFormat(v10, a2, @"<%@: [name: %20@] [%c%c%c%c%c%c%c%c] [type: %-20@] [spid: %8@] [os: %10@] [devid: %10@] [serial: %12@]", v15, v17, 45, 45, v27, v5, v26, v29, 45, v30, v31, v20, v32, v22, v23);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  return v12;
}

uint64_t SOSPeerInfoVerify(CFDictionaryRef *a1, CFTypeRef *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = ccsha256_di();
  v5 = *v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    memset(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v6);
  }

  v8 = _SOSPeerInfoCopyPubKey(a1, @"PublicSigningKey", a2);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_8;
  }

  v9 = v8;
  if (!SOSDescriptionHash(a1, v4, v7, a2))
  {
    goto LABEL_11;
  }

  if (!sosVerifyHash(v9, *v4, v7, a1[3]))
  {
    SOSErrorCreate(1038, a2, 0, @"Signature didn't verify for %@", a1);
LABEL_11:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:
  CFRelease(v9);
LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

BOOL SOSPeerInfoHasBackupKey(uint64_t a1)
{
  v1 = SOSPeerInfoV2DictionaryCopyData(a1, sBackupKeyKey);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

BOOL SOSPeerInfoKVSOnly(uint64_t a1)
{
  v1 = SOSPeerInfoCopyTransportType(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFEqual(v1, @"KVS") != 0;
  CFRelease(v2);
  return v3;
}

CFMutableStringRef SOSPeerInfoCopyTransportType(uint64_t a1)
{
  result = SOSPeerInfoV2DictionaryCopyString(a1, sTransportType);
  if (!result)
  {

    return CFRetain(@"KVS");
  }

  return result;
}

void *_SOSPeerInfoCopyPubKey(CFDictionaryRef *a1, const void *a2, CFTypeRef *a3)
{
  Value = CFDictionaryGetValue(a1[2], a2);
  v6 = Value;
  if (Value && (v7 = CFGetTypeID(Value), v7 == CFDataGetTypeID()))
  {
    v8 = CFGetAllocator(a1);
    v9 = SecKeyCreateFromPublicData(v8, 3, v6);
    SecAllocationError(v9, a3, @"Failed to create public key from data %@", v6);
  }

  else
  {
    if (a3)
    {
      SecError(-50, a3, @"object %@ is not a data", v6);
    }

    return 0;
  }

  return v9;
}

uint64_t SOSDescriptionHash(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 8) + *(a2 + 16) + 19;
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - v10;
  if (v12 >= 8)
  {
    memset(v20 - v10, 170, v9);
  }

  ccdigest_init();
  updated = SOSPeerInfoUpdateDigestWithDescription(a1, a2, v11, a4, v13, v14, v15, v16);
  if (updated)
  {
    (*(a2 + 56))(a2, v11, a3);
  }

  v18 = *MEMORY[0x1E69E9840];
  return updated;
}

BOOL sosVerifyHash(__SecKey *a1, size_t a2, const uint8_t *a3, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  return SecKeyRawVerify(a1, 0, a3, a2, BytePtr, Length) == 0;
}

uint64_t SOSPeerInfoUpdateDigestWithDescription(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 56) >= 2)
  {
    SOSPeerInfoPackV2Data(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  v10 = der_sizeof_plist(*(a1 + 16), a4, a3, a4, a5, a6, a7, a8);
  if (v10)
  {
    v11 = v10;
    v12 = malloc_type_malloc(v10, 0xCA9AB614uLL);
    if (v12)
    {
      v16 = v12;
      if (der_encode_plist_repair(*(a1 + 16), a4, 0, v16, v16 + v11, v13, v14, v15))
      {
        ccdigest_update();
        free(v16);
        return 1;
      }

      free(v16);
      SOSCreateErrorWithFormat(1025, 0, a4, 0, @"Description encode failed");
    }

    else
    {
      SOSCreateErrorWithFormat(1025, 0, a4, 0, @"Description alloc failed");
    }
  }

  else
  {
    SOSCreateErrorWithFormat(1025, 0, a4, 0, @"Description length failed");
  }

  return 0;
}

uint64_t SOSPeerInfoCompare(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
    if (v5)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (v5 != v6)
      {
        return 0;
      }
    }

    else
    {
      result = CFEqual(v5, v6);
      if (!result)
      {
        return result;
      }
    }

    v8 = *(a1 + 24);
    v9 = *(a2 + 24);
    if (v8 && v9)
    {
      return CFEqual(v8, v9) != 0;
    }

    else
    {
      return v8 == v9;
    }
  }

  return result;
}

void SOSPeerInfoDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      *(a1 + 16) = 0;
      CFRelease(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 24) = 0;
      CFRelease(v3);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      *(a1 + 32) = 0;
      CFRelease(v4);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      *(a1 + 40) = 0;
      CFRelease(v5);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      *(a1 + 48) = 0;
      CFRelease(v6);
    }

    v7 = *(a1 + 64);
    if (v7)
    {
      *(a1 + 64) = 0;
      CFRelease(v7);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      *(a1 + 80) = 0;
      CFRelease(v8);
    }

    *(a1 + 72) = 0;
  }
}

const void *SOSPeerInfoGetAutoAcceptInfo(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"PublicSigningKey");
  if (!Value)
  {
    return 0;
  }

  v2 = Value;
  v3 = CFGetTypeID(Value);
  if (v3 != CFDataGetTypeID())
  {
    return 0;
  }

  return v2;
}

uint64_t SOSPeerInfoSign(__SecKey *a1, uint64_t a2, CFTypeRef *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = ccsha256_di();
  v7 = *v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    memset(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v8);
  }

  if ((SOSDescriptionHash(a2, v6, v9, a3) & 1) == 0)
  {
    v15 = @"Failed to hash description for peer";
LABEL_11:
    SOSCreateErrorWithFormat(1040, 0, a3, 0, @"%@", v15);
    result = 0;
    goto LABEL_8;
  }

  v10 = sosCopySignedHash(a1, v6, v9);
  if (!v10)
  {
    v15 = @"Failed to sign peerinfo for peer";
    goto LABEL_11;
  }

  v11 = v10;
  v12 = *(a2 + 24);
  if (v12)
  {
    *(a2 + 24) = 0;
    CFRelease(v12);
  }

  *(a2 + 24) = v11;
  result = 1;
LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

CFDataRef sosCopySignedHash(__SecKey *a1, size_t *a2, const uint8_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  sigLen = 128;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13 = v3;
  v14 = v3;
  v11 = v3;
  v12 = v3;
  v9 = v3;
  v10 = v3;
  *sig = v3;
  v8 = v3;
  if (SecKeyRawSign(a1, 0, a3, *a2, sig, &sigLen))
  {
    result = 0;
  }

  else
  {
    result = CFDataCreate(0, sig, sigLen);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SOSPeerInfoCreate_Internal(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, __SecKey *a5, __SecKey *a6, __SecKey *a7, int a8, CFTypeRef *a9, void *a10)
{
  v17 = a10;
  SOSPeerInfoGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 32) = a2;
  CFRetain(a2);
  *(Instance + 56) = SOSPeerInfoGetPeerProtocolVersion(Instance);
  v52 = 0;
  cf = 0;
  v51 = 0;
  v19 = SecKeyCopyPublicKey(a5);
  if (!v19)
  {
    SOSCreateErrorWithFormat(1034, 0, a9, 0, @"%@", @"Unable to get public");
    CFRelease(Instance);
    v22 = 0;
    goto LABEL_9;
  }

  v20 = v19;
  if (SecKeyCopyPublicBytes(v19, &cf))
  {
    goto LABEL_3;
  }

  v49 = a8;
  if (a6)
  {
    v27 = SecKeyCopyPublicKey(a6);
    if (!v27)
    {
      goto LABEL_27;
    }

    v28 = v27;
    v29 = SecKeyCopyPublicBytes(v27, &v52);
    CFRelease(v28);
    if (v29)
    {
      goto LABEL_3;
    }
  }

  if (!a7)
  {
    goto LABEL_20;
  }

  v30 = SecKeyCopyPublicKey(a7);
  if (!v30)
  {
LABEL_27:
    v21 = @"Unable to get public key";
    goto LABEL_4;
  }

  v31 = v30;
  v32 = SecKeyCopyPublicBytes(v30, &v51);
  CFRelease(v31);
  if (!v32)
  {
LABEL_20:
    *(Instance + 24) = CFDataCreateMutable(a1, 0);
    valuePtr = *(Instance + 56);
    v33 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    v48 = *(Instance + 32);
    MutableForCFTypesWith = CFDictionaryCreateMutableForCFTypesWith(a1, v34, v35, v36, v37, v38, v39, v40, @"ConflictVersion", v33);
    v42 = MutableForCFTypesWith;
    *(Instance + 16) = MutableForCFTypesWith;
    if (v52)
    {
      CFDictionarySetValue(MutableForCFTypesWith, @"OctagonPublicSigningKey", v52);
      v42 = *(Instance + 16);
    }

    if (v51)
    {
      CFDictionarySetValue(v42, @"OctagonPublicEncryptionKey", v51);
      v42 = *(Instance + 16);
    }

    v17[2](v17, v42);
    Copy = SOSCopyIDOfKey(v20, a9);
    *(Instance + 40) = Copy;
    if (Copy)
    {
      v44 = Copy;
      Length = CFStringGetLength(Copy);
      v46 = *MEMORY[0x1E695E480];
      if (Length > 8)
      {
        v55.location = 0;
        v55.length = 8;
        Copy = CFStringCreateWithSubstring(v46, v44, v55);
      }

      else
      {
        Copy = CFStringCreateCopy(v46, v44);
      }
    }

    *(Instance + 48) = Copy;
    *(Instance + 64) = 0;
    *(Instance + 72) = 0;
    if (*(Instance + 40))
    {
      if (!SOSPeerInfoUpdateToV2(Instance, a9))
      {
        goto LABEL_36;
      }

      if (a3)
      {
        SOSPeerInfoV2DictionarySetValue(Instance, sBackupKeyKey, a3);
      }

      SOSPeerInfoV2DictionarySetValue(Instance, sViewsKey, a4);
      v47 = MEMORY[0x1E695E4C0];
      if (v49)
      {
        v47 = MEMORY[0x1E695E4D0];
      }

      SOSPeerInfoV2DictionarySetValue(Instance, sCKKSForAll, *v47);
      if ((SOSPeerInfoSign(a5, Instance, a9) & 1) == 0)
      {
LABEL_36:
        CFRelease(Instance);
        Instance = 0;
      }
    }

    v22 = Instance;
    Instance = v33;
    if (!v33)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_3:
  v21 = @"Failed to export public bytes";
LABEL_4:
  SOSCreateErrorWithFormat(1034, 0, a9, 0, @"%@", v21);
  v22 = 0;
LABEL_5:
  CFRelease(Instance);
LABEL_6:
  CFRelease(v20);
  v23 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v23);
  }

LABEL_9:
  v24 = v52;
  if (v52)
  {
    v52 = 0;
    CFRelease(v24);
  }

  v25 = v51;
  if (v51)
  {
    v51 = 0;
    CFRelease(v25);
  }

  return v22;
}

uint64_t SOSPeerInfoGetPeerProtocolVersion(uint64_t a1)
{
  v1 = 3;
  valuePtr = 3;
  Value = CFDictionaryGetValue(*(a1 + 32), @"MessageProtocolVersion");
  if (Value)
  {
    v3 = Value;
    v4 = CFGetTypeID(Value);
    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberCFIndexType, &valuePtr);
      return valuePtr;
    }

    else
    {
      return 3;
    }
  }

  return v1;
}

__CFDictionary *CFDictionaryCreateMutableForCFTypesWith(const __CFAllocator *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
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

uint64_t SOSPeerInfoCreateCopy(const __CFAllocator *a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    return 0;
  }

  SOSPeerInfoPackV2Data(a2, a2, a3, a4, a5, a6, a7, a8);
  SOSPeerInfoGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = CFDictionaryCreateMutableCopy(a1, 0, *(a2 + 16));
  *(Instance + 24) = CFDataCreateCopy(a1, *(a2 + 24));
  *(Instance + 32) = CFDictionaryCreateCopy(a1, *(a2 + 32));
  *(Instance + 40) = CFStringCreateCopy(a1, *(a2 + 40));
  Copy = CFStringCreateCopy(a1, *(a2 + 48));
  *(Instance + 64) = 0;
  *(Instance + 72) = 0;
  v13 = *(a2 + 56);
  *(Instance + 48) = Copy;
  *(Instance + 56) = v13;
  if (v13 <= 1)
  {
    SOSPeerInfoExpandV2Data(Instance, a3);
  }

  return Instance;
}

const void *SOSPeerInfoCreateCurrentCopy(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8, __SecKey *a9, CFTypeRef *a10)
{
  Copy = SOSPeerInfoCreateCopy(a1, a2, a10, a4, a5, a6, a7, a8);
  v12 = Copy;
  if (*(Copy + 56) <= 1)
  {
    SOSPeerInfoUpdateToV2(Copy, a10);
  }

  if (a8)
  {
    SOSPeerInfoV2DictionarySetValue(v12, sViewsKey, a8);
  }

  if ((SOSPeerInfoSign(a9, v12, a10) & 1) == 0)
  {
    CFRelease(v12);
    return 0;
  }

  return v12;
}

const void *SOSPeerInfoCopyWithModification(const __CFAllocator *a1, uint64_t a2, __SecKey *a3, CFTypeRef *a4, void *a5)
{
  v9 = a5;
  Copy = SOSPeerInfoCreateCopy(a1, a2, a4, v10, v11, v12, v13, v14);
  LODWORD(a1) = v9[2](v9, Copy, a4);

  if (!a1 || (SOSPeerInfoSign(a3, Copy, a4) & 1) == 0)
  {
    if (Copy)
    {
      CFRelease(Copy);
      return 0;
    }
  }

  return Copy;
}

const void *SOSPeerInfoCopyWithGestaltUpdate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, __SecKey *a4, CFTypeRef *a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SOSPeerInfoCopyWithGestaltUpdate_block_invoke;
  v6[3] = &__block_descriptor_40_e170_B24__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8_____CFError_16l;
  v6[4] = a3;
  return SOSPeerInfoCopyWithModification(a1, a2, a4, a5, v6);
}

uint64_t __SOSPeerInfoCopyWithGestaltUpdate_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    if (*(a2 + 32) == v2)
    {
      v2 = *(a2 + 32);
    }

    else
    {
      CFRetain(*(a1 + 32));
      v6 = *(a2 + 32);
      if (v6)
      {
        CFRelease(v6);
      }

      *(a2 + 32) = v2;
    }

    CFDictionarySetValue(*(a2 + 16), @"DeviceGestalt", v2);
  }

  return v4;
}

const void *SOSPeerInfoCopyWithBackupKeyUpdate(const __CFAllocator *a1, uint64_t a2, uint64_t a3, __SecKey *a4, CFTypeRef *a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SOSPeerInfoCopyWithBackupKeyUpdate_block_invoke;
  v6[3] = &__block_descriptor_40_e170_B24__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8_____CFError_16l;
  v6[4] = a3;
  return SOSPeerInfoCopyWithModification(a1, a2, a4, a5, v6);
}

uint64_t __SOSPeerInfoCopyWithBackupKeyUpdate_block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = SOSCopyIDOfDataBufferWithLength(v4, 8);
    v6 = secLogObjForScope("backup");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Setting peerInfo backupKey to %@", &v10, 0xCu);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    SOSPeerInfoV2DictionarySetValue(a2, sBackupKeyKey, *(a1 + 32));
  }

  else
  {
    v7 = secLogObjForScope("backup");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Setting peerInfo backupKey to NULL", &v10, 2u);
    }

    SOSPeerInfoV2DictionaryRemoveValue(a2, sBackupKeyKey);
  }

  v8 = *MEMORY[0x1E69E9840];
  return 1;
}

const void *SOSPeerInfoCopyWithReplacedEscrowRecords(const __CFAllocator *a1, uint64_t a2, uint64_t a3, __SecKey *a4, CFTypeRef *a5)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SOSPeerInfoCopyWithReplacedEscrowRecords_block_invoke;
  v6[3] = &__block_descriptor_40_e170_B24__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8_____CFError_16l;
  v6[4] = a3;
  return SOSPeerInfoCopyWithModification(a1, a2, a4, a5, v6);
}

uint64_t __SOSPeerInfoCopyWithReplacedEscrowRecords_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    SOSPeerInfoV2DictionarySetValue(a2, sEscrowRecord, v2);
  }

  return 1;
}

const void *SOSPeerInfoCopyWithViewsChange(const __CFAllocator *a1, uint64_t a2, int a3, const void *a4, _DWORD *a5, __SecKey *a6, CFTypeRef *a7, uint64_t a8)
{
  Copy = SOSPeerInfoCreateCopy(a1, a2, a7, a4, a5, a6, a7, a8);
  v14 = Copy;
  if (a3 == 2)
  {
    v16 = SOSViewsDisable(Copy, a4, a7);
    *a5 = v16;
    if (v16 != 2)
    {
      goto LABEL_9;
    }
  }

  else if (a3 == 1)
  {
    v15 = SOSViewsEnable(Copy, a4, a7);
    *a5 = v15;
    if (v15 != 1)
    {
      goto LABEL_9;
    }
  }

  if (SOSPeerInfoSign(a6, v14, a7))
  {
    return v14;
  }

  *a5 = 0;
LABEL_9:
  if (v14)
  {
    CFRelease(v14);
    return 0;
  }

  return v14;
}

uint64_t SOSPeerInfoCopyWithPing(const __CFAllocator *a1, uint64_t a2, __SecKey *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Copy = SOSPeerInfoCreateCopy(a1, a2, a4, a4, a5, a6, a7, a8);
  v11 = CFDataCreateWithRandomBytes(8uLL);
  SOSPeerInfoV2DictionarySetValue(Copy, @"Ping", v11);
  v12 = _SOSPeerInfoCopyPubKey(Copy, @"PublicSigningKey", a4);
  v13 = v12;
  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = SOSCopyIDOfKey(v12, a4);
  *(Copy + 40) = v14;
  if (!v14)
  {
    *(Copy + 48) = 0;
    if (!v11)
    {
      goto LABEL_12;
    }

LABEL_11:
    CFRelease(v11);
    goto LABEL_12;
  }

  v15 = v14;
  Length = CFStringGetLength(v14);
  v17 = *MEMORY[0x1E695E480];
  if (Length > 8)
  {
    v21.location = 0;
    v21.length = 8;
    v18 = CFStringCreateWithSubstring(v17, v15, v21);
  }

  else
  {
    v18 = CFStringCreateCopy(v17, v15);
  }

  v19 = *(Copy + 40);
  *(Copy + 48) = v18;
  if (!v19 || (SOSPeerInfoSign(a3, Copy, a4) & 1) != 0)
  {
LABEL_10:
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  CFRelease(Copy);
  Copy = 0;
  if (v11)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (v13)
  {
    CFRelease(v13);
  }

  return Copy;
}

CFComparisonResult SOSPeerInfoCompareByID(const __CFString *info, const __CFString *a2)
{
  if (info && a2)
  {
    info = info[1].info;
    a2 = a2[1].info;
    if (info && a2 != 0)
    {
      return CFStringCompare(info, a2, 0);
    }
  }

  if (info - a2 < 0)
  {
    return -1;
  }

  return (info != a2);
}

uint64_t SOSPeerInfoGetPeerID(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t SOSPeerInfoCompareByApplicationDate(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    Date = sosPeerInfoGetDate(a1, @"ApplicationDate");
    v4 = sosPeerInfoGetDate(a2, @"ApplicationDate");
    v5 = v4;
    if (Date && v4)
    {
      v6 = CFDateCompare(Date, v4, 0);
      CFRelease(Date);
      CFRelease(v5);
      return v6;
    }

    else
    {
      if (Date)
      {
        CFRelease(Date);
      }

      if (v5)
      {
        CFRelease(v5);
      }

      if (Date - v5 < 0)
      {
        return -1;
      }

      else
      {
        return Date != v5;
      }
    }
  }

  else if (a1 - a2 < 0)
  {
    return -1;
  }

  else
  {
    return a1 != a2;
  }
}

unint64_t sosPeerInfoGetDate(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), a2);
  if (!Value)
  {
    return 0;
  }

  return sosCreateCFDate(Value);
}

unint64_t sosCreateCFDate(const __CFData *a1)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  BytePtr = CFDataGetBytePtr(a1);
  v3 = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  der_decode_date(0, &v9, 0, BytePtr, &v3[Length], v5, v6, v7);
  return v9;
}

CFStringRef SOSPeerInfoCopyStateString(uint64_t a1, __SecKey *a2, const void *a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v49 = SOSPeerInfoApplicationVerify(a1, a2, 0);
  v6 = *(a1 + 16);
  v7 = 114;
  if (v6)
  {
    if (CFDictionaryGetValue(v6, @"RetirementDate"))
    {
      v7 = 82;
    }

    else
    {
      v7 = 114;
    }
  }

  HasBackupKey = SOSPeerInfoHasBackupKey(a1);
  v8 = *(a1 + 40);
  if (a3 && v8)
  {
    v9 = CFEqual(v8, a3) != 0;
  }

  else
  {
    v9 = v8 == a3;
  }

  v47 = v9;
  v45 = SOSPeerInfoKVSOnly(a1);
  v44 = SOSPeerInfoSupportsCKKSForAll(a1);
  HasUserVisibleViewsEnabled = SOSPeerInfoHasUserVisibleViewsEnabled(a1);
  IsLegacy = SOSPeerInfoIsLegacy(a1);
  Value = CFDictionaryGetValue(*(a1 + 32), @"OSVersion");
  v14 = SOSPeerInfoV2DictionaryCopyString(a1, sMachineIDKey);
  if (v14)
  {
    v15 = v14;
    Length = CFStringGetLength(v14);
    v17 = *MEMORY[0x1E695E480];
    if (Length > 8)
    {
      v50.location = 0;
      v50.length = 8;
      Copy = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v15, v50);
    }

    else
    {
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], v15);
    }

    v19 = Copy;
    CFRelease(v15);
  }

  else
  {
    v19 = 0;
    v17 = *MEMORY[0x1E695E480];
  }

  v20 = SOSPeerInfoCopySerialNumber(a1);
  v21 = CFDictionaryGetValue(*(a1 + 32), @"ComputerName");
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = @"Unknown ";
  }

  v23 = CFDictionaryGetValue(*(a1 + 32), @"ModelName");
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = @"Unknown ";
  }

  v25 = *(a1 + 48);
  if (!v25)
  {
    v25 = @"Unknown ";
  }

  if (Value)
  {
    v26 = Value;
  }

  else
  {
    v26 = @"Unknown ";
  }

  if (v19)
  {
    v27 = v19;
  }

  else
  {
    v27 = @"Unknown ";
  }

  if (v20)
  {
    v28 = v20;
  }

  else
  {
    v28 = @"Unknown ";
  }

  v42 = v25;
  v43 = v26;
  v41 = v24;
  v29 = 79;
  if (IsLegacy)
  {
    v29 = 76;
  }

  v30 = 85;
  if (!HasUserVisibleViewsEnabled)
  {
    v30 = 95;
  }

  v40 = v29;
  v31 = 67;
  if (!v44)
  {
    v31 = 95;
  }

  v32 = 73;
  if (v45)
  {
    v32 = 75;
  }

  v38 = v32;
  v39 = v31;
  v33 = 98;
  if (HasBackupKey)
  {
    v33 = 66;
  }

  v37 = v33;
  v34 = 97;
  if (v49)
  {
    v34 = 65;
  }

  v35 = 109;
  if (v47)
  {
    v35 = 77;
  }

  v10 = CFStringCreateWithFormat(v17, 0, @"[name: %-20@] [%c%c%c%c%c%c%c%c%c%c] [type: %-20@] [spid: %8@] [os: %10@] [mid: %10@] [serial: %12@]", v22, v35, v34, 83, v7, v37, v38, v39, v30, v40, a4, v41, v42, v43, v27, v28);
  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v10;
}

uint64_t SOSPeerInfoApplicationVerify(uint64_t a1, __SecKey *a2, CFTypeRef *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = ccsha256_di();
  v7 = *v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    memset(v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v8);
  }

  if (!a2)
  {
    SOSErrorCreate(1033, a3, 0, @"Can't validate PeerInfos with no userKey");
    v15 = 0;
    goto LABEL_17;
  }

  v10 = SOSCopyIDOfKey(a2, a3);
  v11 = v10;
  v12 = *(a1 + 64);
  if (!v10 || !v12)
  {
    if (v10 != v12)
    {
      goto LABEL_9;
    }

LABEL_19:
    v15 = *(a1 + 72);
    goto LABEL_15;
  }

  if (CFEqual(v10, v12))
  {
    goto LABEL_19;
  }

  v12 = *(a1 + 64);
LABEL_9:
  if (v12)
  {
    *(a1 + 64) = 0;
    CFRelease(v12);
  }

  *(a1 + 72) = 0;
  Value = CFDictionaryGetValue(*(a1 + 16), @"ApplicationUsig");
  if (Value)
  {
    v14 = Value;
    if (sospeer_application_hash(a1, v6, v9))
    {
      if (sosVerifyHash(a2, *v6, v9, v14))
      {
        *(a1 + 64) = CFStringCreateCopy(*MEMORY[0x1E695E480], v11);
        *(a1 + 72) = 1;
        v15 = SOSPeerInfoVerify(a1, a3);
        goto LABEL_15;
      }

      v18 = @"user signature of public key hash fails to verify";
    }

    else
    {
      v18 = @"Failed to create hash for peer applicant";
    }
  }

  else
  {
    v18 = @"Peer is not an applicant";
  }

  SOSCreateErrorWithFormat(1040, 0, a3, 0, @"%@", v18);
  v15 = 0;
LABEL_15:
  if (v11)
  {
    CFRelease(v11);
  }

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

BOOL SOSPeerInfoIsLegacy(uint64_t a1)
{
  CFDictionaryGetValue(*(a1 + 32), @"ModelName");
  Class = SOSPeerInfoGetClass(a1);
  if (Class)
  {
    if (Class == 3)
    {
      Value = CFDictionaryGetValue(*(a1 + 32), @"OSVersion");
      v4 = majorVersion(Value) < 21;
      v5 = "MacOS";
    }

    else
    {
      if (Class != 2)
      {
        reportLegacyStatus("Default", a1, 0);
        return 0;
      }

      v3 = CFDictionaryGetValue(*(a1 + 32), @"OSVersion");
      v4 = majorVersion(v3) < 19;
      v5 = "IOS";
    }

    v7 = a1;
    v8 = v4;
  }

  else
  {
    v5 = "Unknown";
    v4 = 1;
    v7 = a1;
    v8 = 1;
  }

  reportLegacyStatus(v5, v7, v8);
  return v4;
}

uint64_t SOSPeerInfoGetClass(uint64_t a1)
{
  if (SOSPeerInfoIsCloudIdentity(a1))
  {
    return 1;
  }

  result = CFDictionaryGetValue(*(a1 + 32), @"ModelName");
  if (result)
  {
    v3 = result;
    if (CFStringHasPrefix(result, @"Mac") || CFStringHasPrefix(v3, @"iMac"))
    {
      return 3;
    }

    else if (CFStringHasPrefix(v3, @"iPhone") || CFStringHasPrefix(v3, @"iPad") || CFStringHasPrefix(v3, @"iPod"))
    {
      return 2;
    }

    else if (CFStringHasPrefix(v3, @"Watch"))
    {
      return 4;
    }

    else if (CFStringHasPrefix(v3, @"AppleTV"))
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }

  return result;
}

uint64_t majorVersion(const __CFString *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = secLogObjForScope("SOSMonitorMode");
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (v3)
    {
      *buf = 138412290;
      *&buf[4] = a1;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Parsing :%@:", buf, 0xCu);
    }

    memset(buf, 170, 20);
    if (CFStringGetCString(a1, buf, 20, 0x600u))
    {
      v4 = buf[0];
      if ((buf[0] - 48) > 9)
      {
        v5 = 0;
      }

      else
      {
        LODWORD(v5) = 0;
        v6 = &buf[1];
        do
        {
          v5 = (v4 + 10 * v5 - 48);
          v7 = *v6++;
          v4 = v7;
        }

        while ((v7 - 48) < 0xA);
      }

      v8 = secLogObjForScope("SOSMonitorMode");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11[0] = 67109120;
        v11[1] = v5;
        _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "majorVersion: %d", v11, 8u);
      }
    }

    else
    {
      v8 = secLogObjForScope("SOSMonitorMode");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "No OS CString to parse", v11, 2u);
      }

      v5 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (v3)
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "No OS String to parse", buf, 2u);
    }

    v5 = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

void reportLegacyStatus(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = secLogObjForScope("SOSMonitorMode");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "Not Legacy";
    v9 = 136315650;
    v10 = a1;
    if (a3)
    {
      v7 = "Legacy";
    }

    v11 = 2112;
    v12 = a2;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "%s Peer %@ is %s", &v9, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

BOOL SOSPeerInfoIsCloudIdentity(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    Value = CFDictionaryGetValue(v1, @"CloudIdentity");
    v3 = *MEMORY[0x1E695E4D0];
    if (Value)
    {
      v4 = v3 == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      return CFEqual(Value, v3) != 0;
    }
  }

  else
  {
    Value = 0;
    v3 = *MEMORY[0x1E695E4D0];
  }

  return Value == v3;
}

BOOL sospeer_application_hash(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(*(a1 + 16), @"ApplicationDate");
  if (Value && (v7 = Value, v8 = CFGetTypeID(Value), TypeID = CFDataGetTypeID(), v8 == TypeID))
  {
    v10 = *(a2 + 8) + *(a2 + 16) + 19;
    MEMORY[0x1EEE9AC00](TypeID);
    v13 = v18 - v12;
    if (v14 >= 8)
    {
      memset(v18 - v12, 170, v11);
    }

    ccdigest_init();
    CFDataGetLength(v7);
    CFDataGetBytePtr(v7);
    ccdigest_update();
    updated = SOSPeerInfoUpdateDigestWithPublicKeyBytes(a1, a2, v13, 0);
    if (updated)
    {
      (*(a2 + 56))(a2, v13, a3);
    }
  }

  else
  {
    updated = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return updated;
}

BOOL SOSPeerInfoUpdateDigestWithPublicKeyBytes(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"PublicSigningKey");
  v6 = Value;
  if (Value)
  {
    CFDataGetLength(Value);
    CFDataGetBytePtr(v6);
    ccdigest_update();
  }

  else
  {
    SOSCreateErrorWithFormat(1025, 0, a4, 0, @"Digest failed – no public key");
  }

  return v6 != 0;
}

const __CFDictionary *SOSPeerInfoIsRetirementTicket(const __CFDictionary *result)
{
  if (result)
  {
    result = *(result + 2);
    if (result)
    {
      return (CFDictionaryGetValue(result, @"RetirementDate") != 0);
    }
  }

  return result;
}

uint64_t SOSPeerInfoGetSPID(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void SOSPeerInfoLogState(const char *a1, uint64_t a2, __SecKey *a3, const void *a4, int a5)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = SOSPeerInfoCopyStateString(a2, a3, a4, a5);
    v7 = secLogObjForScope(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "PI:    %@", &v9, 0xCu);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

BOOL SOSPeerInfoPeerIDEqual(uint64_t a1, CFTypeRef cf1)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (cf1 && v2)
    {
      return CFEqual(cf1, v2) != 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 == cf1;
}

uint64_t SOSPeerInfoCopyAsApplication(uint64_t a1, __SecKey *a2, __SecKey *a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = *MEMORY[0x1E69E9840];
  Copy = SOSPeerInfoCreateCopy(*MEMORY[0x1E695E480], a1, a4, a4, a5, a6, a7, a8);
  v12 = ccsha256_di();
  v13 = *v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &buf[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (v14)
  {
    memset(&buf[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], 170, v14);
  }

  Date = sosCreateDate();
  CFDictionarySetValue(*(Copy + 16), @"ApplicationDate", Date);
  if (Date)
  {
    CFRelease(Date);
  }

  if (!sospeer_application_hash(Copy, v12, v15))
  {
    v24 = @"Failed to create hash for peer applicant";
LABEL_16:
    SOSCreateErrorWithFormat(1040, 0, a4, 0, @"%@", v24);
LABEL_17:
    CFRelease(Copy);
    Copy = 0;
    goto LABEL_13;
  }

  v17 = sosCopySignedHash(a2, v12, v15);
  if (!v17)
  {
    v24 = @"Failed to sign public key hash for peer";
    goto LABEL_16;
  }

  v18 = v17;
  CFDictionarySetValue(*(Copy + 16), @"ApplicationUsig", v17);
  v19 = SOSCopyIDOfKey(a2, a4);
  *(Copy + 64) = v19;
  if (v19)
  {
    *(Copy + 72) = 1;
  }

  else
  {
    v20 = secLogObjForScope("PICache");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "failed to get userKeyID", buf, 2u);
    }
  }

  v21 = SOSPeerInfoSign(a3, Copy, a4);
  CFRelease(v18);
  if ((v21 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
  return Copy;
}

CFDataRef sosCreateDate()
{
  v14 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v1 = CFDateCreate(0, Current);
  v2 = der_sizeof_date();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v10 = &v13[-v9];
  if (v3)
  {
    memset(&v13[-v9], 170, v2);
  }

  der_encode_date(v1, v10, &v10[v2], v4, v5, v6, v7, v8, v13[0]);
  if (v1)
  {
    CFRelease(v1);
  }

  result = CFDataCreate(0, v10, v2);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFDictionary *SOSPeerGestaltGetName(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"ComputerName");
    if (result)
    {
      v1 = result;
      v2 = CFGetTypeID(result);
      if (v2 == CFStringGetTypeID())
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFDictionaryRef SOSPeerGestaltGetAnswer(CFDictionaryRef theDict, const void *key)
{
  if (theDict)
  {
    return CFDictionaryGetValue(theDict, key);
  }

  return theDict;
}

CFMutableDictionaryRef *SOSPeerInfoCreateRetirementTicket(const __CFAllocator *a1, __SecKey *a2, uint64_t a3, CFTypeRef *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Copy = SOSPeerInfoCreateCopy(a1, a3, a4, a4, a5, a6, a7, a8);
  if (Copy)
  {
    Date = sosCreateDate();
    CFDictionaryAddValue(Copy[2], @"RetirementDate", Date);
    if (Date)
    {
      CFRelease(Date);
    }

    if ((SOSPeerInfoSign(a2, Copy, a4) & 1) == 0)
    {
      CFRelease(Copy);
      return 0;
    }
  }

  return Copy;
}

uint64_t SOSPeerInfoInspectRetirementTicket(uint64_t a1, CFTypeRef *a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(0, Current);
  if (!SOSPeerInfoVerify(a1, a2))
  {
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(*(a1 + 16), @"RetirementDate");
  if (!Value)
  {
    SOSCreateErrorWithFormat(1040, 0, a2, 0, @"%@", @"PeerInfo doesn't have a retirement date");
LABEL_11:
    CFDate = 0;
    goto LABEL_15;
  }

  CFDate = sosCreateCFDate(Value);
  if (CFDate)
  {
    if (CFDateCompare(v5, CFDate, 0) == kCFCompareGreaterThan)
    {
      v8 = *(a1 + 40);
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v10 = @"Retirement date is after current date";
  }

  else
  {
    v10 = @"Peer is not retired";
  }

  SOSCreateErrorWithFormat(1040, 0, a2, 0, @"%@", v10);
LABEL_15:
  v8 = 0;
  if (v5)
  {
LABEL_6:
    CFRelease(v5);
  }

LABEL_7:
  if (CFDate)
  {
    CFRelease(CFDate);
  }

  return v8;
}

BOOL SOSPeerInfoRetireRetirementTicket(unint64_t a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  v5 = CFDateCreate(0, Current);
  Value = CFDictionaryGetValue(*(a2 + 16), @"RetirementDate");
  CFDate = sosCreateCFDate(Value);
  TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(v5, CFDate);
  if (v5)
  {
    CFRelease(v5);
  }

  if (CFDate)
  {
    CFRelease(CFDate);
  }

  return TimeIntervalSinceDate > a1;
}

uint64_t SOSPeerInfoUpgradeSignatures(int a1, SecKeyRef key, __SecKey *a3, uint64_t a4, CFTypeRef *a5)
{
  v9 = SecKeyCopyPublicKey(key);
  v14 = SOSPeerInfoCopyAsApplication(a4, key, a3, a5, v10, v11, v12, v13);
  if (v9)
  {
    CFRelease(v9);
  }

  return v14;
}

uint64_t SOSPeerInfoSetOctagonKeysInDescription(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  cf = 0;
  value = 0;
  v7 = SecKeyCopyPublicBytes(a2, &value);
  v8 = SecKeyCopyPublicBytes(a3, &cf);
  if (v7)
  {
    SecError(v7, a4, @"failed to copy signing public key bytes", cf);
  }

  else
  {
    if (!v8)
    {
      CFDictionarySetValue(*(a1 + 16), @"OctagonPublicSigningKey", value);
      CFDictionarySetValue(*(a1 + 16), @"OctagonPublicEncryptionKey", cf);
      v9 = 1;
      goto LABEL_4;
    }

    SecError(v8, a4, @"failed to copy encryption public key bytes", cf);
  }

  v9 = 0;
LABEL_4:
  v10 = value;
  if (value)
  {
    value = 0;
    CFRelease(v10);
  }

  v11 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v11);
  }

  return v9;
}

const void *SOSPeerInfoSetOctagonKeys(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, __SecKey *a5, __CFString **a6)
{
  v19 = 0;
  cf = 0;
  v11 = SecKeyCopyPublicBytes(a3, &v19);
  v12 = SecKeyCopyPublicBytes(a4, &cf);
  if (v11)
  {
    SecError(v11, a6, @"failed to copy signing public key bytes");
  }

  else
  {
    if (!v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __SOSPeerInfoSetBothOctagonKeys_block_invoke;
      v17[3] = &__block_descriptor_64_e170_B24__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8_____CFError_16l;
      v17[4] = v19;
      v17[5] = @"OctagonPublicSigningKey";
      v17[6] = cf;
      v17[7] = @"OctagonPublicEncryptionKey";
      v13 = SOSPeerInfoCopyWithModification(a1, a2, a5, a6, v17);
      goto LABEL_4;
    }

    SecError(v12, a6, @"failed to copy encryption public key bytes");
  }

  v13 = 0;
LABEL_4:
  v14 = v19;
  if (v19)
  {
    v19 = 0;
    CFRelease(v14);
  }

  v15 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v15);
  }

  return v13;
}

uint64_t __SOSPeerInfoSetBothOctagonKeys_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  if (a2 && (v5 = *(a2 + 16)) != 0 && *(a1 + 32) && (v6 = *(a1 + 40)) != 0 && *(a1 + 48) && *(a1 + 56))
  {
    CFDictionarySetValue(v5, v6, *(a1 + 32));
    CFDictionarySetValue(*(a2 + 16), *(a1 + 56), *(a1 + 48));
  }

  else
  {
    SecError(-50, a3, @"Bad key bytes or dictionary key");
  }

  return 1;
}

const void *SOSPeerInfoSetOctagonKey(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, __SecKey *a5, __CFString **a6)
{
  cf = 0;
  v11 = SecKeyCopyPublicBytes(a4, &cf);
  if (v11)
  {
    SecError(v11, a6, @"failed to copy public key bytes");
    v12 = 0;
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SOSPeerInfoSetOctagonKey_block_invoke;
    v15[3] = &__block_descriptor_48_e170_B24__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8_____CFError_16l;
    v15[4] = cf;
    v15[5] = a3;
    v12 = SOSPeerInfoCopyWithModification(a1, a2, a5, a6, v15);
  }

  v13 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v13);
  }

  return v12;
}

uint64_t __SOSPeerInfoSetOctagonKey_block_invoke(uint64_t a1, uint64_t a2, __CFString **a3)
{
  if (a2 && (v4 = *(a2 + 16)) != 0 && *(a1 + 32) && (v5 = *(a1 + 40)) != 0)
  {
    CFDictionarySetValue(v4, v5, *(a1 + 32));
  }

  else
  {
    SecError(-50, a3, @"Bad key bytes or dictionary key");
  }

  return 1;
}

uint64_t SOSCloudCopyKVSState()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (SOSCloudCopyKVSState_onceToken != -1)
  {
    dispatch_once(&SOSCloudCopyKVSState_onceToken, &__block_literal_global_7112);
  }

  if (SOSCloudCopyKVSState_processQueue)
  {
    v0 = dispatch_semaphore_create(0);
    SOSCloudKeychainGetAllObjectsFromCloud();
    dispatch_semaphore_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v0);
    v1 = v4[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

intptr_t __SOSCloudCopyKVSState_block_invoke_2(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v3 = *(*(*(a1 + 32) + 8) + 24);
  if (v3)
  {
    CFRetain(v3);
  }

  v4 = *(a1 + 40);

  return dispatch_semaphore_signal(v4);
}

uint64_t SOSCloudKeychainGetAllObjectsFromCloud()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 32);

    return v1();
  }

  return result;
}

void __SOSCloudTransportDefaultTransport_block_invoke()
{
  if (!defaultTransport)
  {
    v0 = malloc_type_calloc(1uLL, 0x98uLL, 0xE00402F027784uLL);
    *v0 = SOSCloudTransportPut;
    v0[1] = SOSCloudTransportUpdateKeys;
    v0[3] = SOSCloudTransportGet;
    v0[4] = SOSCloudTransportGetAll;
    v0[5] = SOSCloudTransportSync;
    v0[6] = SOSCloudTransportSyncAndWait;
    v0[7] = SOSCloudTransportClearAll;
    v0[10] = SOSCloudTransportRequestSyncWithPeers;
    v0[9] = SOSCloudTransportHasPendingKey;
    v0[11] = SOSCloudTransportRequestEnsurePeerRegistration;
    v0[12] = SOSCloudTransportRequestPerfCounters;
    v0[13] = SOSCloudTransportFlush;
    v0[15] = SOSCloudTransportRemoveKeys;
    v0[14] = _Block_copy(&__block_literal_global_24_7115);
    v1 = dispatch_queue_create("com.apple.security.cloudkeychainproxy3", 0);
    v0[18] = v1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SOSXPCCloudTransportInit_block_invoke;
    block[3] = &__block_descriptor_tmp_27_7116;
    block[4] = v0;
    dispatch_sync(v1, block);
    out_token = -1431655766;
    v2 = v0[18];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __SOSXPCCloudTransportInit_block_invoke_2;
    handler[3] = &__block_descriptor_tmp_30_7117;
    handler[4] = v0;
    notify_register_dispatch("com.apple.system.loginwindow.desktopUp", &out_token, v2, handler);
    defaultTransport = v0;
  }
}

void __SOSXPCCloudTransportInit_block_invoke_2(uint64_t a1)
{
  v2 = secLogObjForScope("sync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "CKP Transport: desktopUp happened, reestablishing xpc connections", v3, 2u);
  }

  teardownServiceConnection(*(a1 + 32));
}

void teardownServiceConnection(uint64_t a1)
{
  v2 = secLogObjForScope("sync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "CKP Transport: tearing down xpc connection", v4, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 144));
  v3 = *(a1 + 136);
  if (v3)
  {
    xpc_release(v3);
    *(a1 + 136) = 0;
  }
}

void setupServiceConnection(uint64_t a1)
{
  v2 = secLogObjForScope("sync");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "CKP Transport: setting up xpc connection", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 144));
  mach_service = xpc_connection_create_mach_service("com.apple.security.cloudkeychainproxy3", *(a1 + 144), 0);
  *(a1 + 136) = mach_service;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __setupServiceConnection_block_invoke;
  handler[3] = &__block_descriptor_tmp_17_7124;
  handler[4] = a1;
  xpc_connection_set_event_handler(mach_service, handler);
  xpc_connection_activate(*(a1 + 136));
}

void __setupServiceConnection_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == MEMORY[0x1E69E9E20])
  {
    v10 = v2;
    v11 = v3;
    v5 = secLogObjForScope("sync");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "CKP Transport: xpc connection invalid. Will tear down connection.", v9, 2u);
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 144);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __setupServiceConnection_block_invoke_15;
    block[3] = &__block_descriptor_tmp_16_7127;
    block[4] = v6;
    dispatch_async(v7, block);
  }
}

uint64_t __SOSCloudTransportCreateXPCTransport_block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a2;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Calling default itemsChangedBlock - fatal: %@", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

void SOSCloudTransportRemoveKeys(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "version", 1uLL);
  xpc_dictionary_set_string(v10, "operation", "RemoveKeys");
  SecXPCDictionarySetCFObject(v10, "AcctUUID", a3);
  SecXPCDictionarySetCFObject(v10, "value", a2);
  talkWithKVS(a1, v10, a4, a5);

  xpc_release(v10);
}

void SecXPCDictionarySetCFObject(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = _CFXPCCreateXPCObjectFromCFObject();
  }

  else
  {
    v5 = xpc_null_create();
  }

  v6 = v5;
  xpc_dictionary_set_value(a1, a2, v5);

  xpc_release(v6);
}

void talkWithKVS(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (OctagonIsSOSFeatureEnabled())
  {
    v15 = 0;
    dispatch_retain(a3);
    v8 = *(a1 + 144);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __talkWithKVS_block_invoke;
    v14[3] = &unk_1E70DAC60;
    v14[4] = a4;
    v14[5] = a3;
    if (!messageToProxy(a1, a2, &v15, v8, v14))
    {
      v9 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v17 = v15;
        _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "talkWithKVS error: %@", buf, 0xCu);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 0x40000000;
      v13[2] = __talkWithKVS_block_invoke_11;
      v13[3] = &unk_1E70DAC88;
      v13[4] = a4;
      v13[5] = v15;
      v13[6] = a3;
      dispatch_async(a3, v13);
    }

    goto LABEL_11;
  }

  if (!a4 || (v10 = CFErrorCreate(*MEMORY[0x1E695E480], @"com.apple.security.sos.transport.error", 9, 0), (*(a4 + 16))(a4, 0, v10), !v10))
  {
LABEL_11:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v11 = *MEMORY[0x1E69E9840];

  CFRelease(v10);
}

void __talkWithKVS_block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x18CFDC200](a2) == MEMORY[0x1E69E9E80])
  {
    if (xpc_dictionary_get_value(a2, "value"))
    {
      v6 = _CFXPCCreateCFObjectFromXPCObject();
    }

    else
    {
      v7 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "missing value reply", buf, 2u);
      }

      v6 = 0;
    }

    value = xpc_dictionary_get_value(a2, "error");
    if (value)
    {
      CFErrorWithXPCObject = SecCreateCFErrorWithXPCObject(value);
    }

    else
    {
      CFErrorWithXPCObject = 0;
    }
  }

  else
  {
    CFErrorWithXPCObject = CFErrorCreate(*MEMORY[0x1E695E480], @"com.apple.security.sos.transport.error", 8, 0);
    v5 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = a2;
      v14 = 2112;
      v15 = CFErrorWithXPCObject;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Odd reply from CloudKeychainProxy: %@: %@", buf, 0x16u);
    }

    v6 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __talkWithKVS_block_invoke_7;
  v11[3] = &unk_1E70DAC38;
  v9 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v11[5] = v6;
  v11[6] = CFErrorWithXPCObject;
  v11[7] = v9;
  dispatch_async(v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

BOOL messageToProxy(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v6 = *(a1 + 144);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __messageToProxy_block_invoke;
  block[3] = &unk_1E70DACB0;
  block[6] = a1;
  block[7] = a2;
  block[8] = a4;
  block[4] = a5;
  block[5] = &v10;
  dispatch_sync(v6, block);
  v7 = v11[3];
  if (v7)
  {
    if (a3 && !*a3)
    {
      *a3 = v7;
    }

    else
    {
      CFRelease(v7);
    }
  }

  _Block_object_dispose(&v10, 8);
  return v7 == 0;
}

void __talkWithKVS_block_invoke_11(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))(v2, 0, a1[5]);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];

  dispatch_release(v4);
}

void __messageToProxy_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = *(v2 + 136);
  if ((v3 || (setupServiceConnection(v2), (v3 = *(a1[6] + 136)) != 0)) && (v4 = a1[7]) != 0)
  {
    v5 = a1[8];
    v6 = a1[4];

    xpc_connection_send_message_with_reply(v3, v4, v5, v6);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = CFErrorCreate(*MEMORY[0x1E695E480], @"com.apple.security.sos.transport.error", 6, 0);
  }
}

void __talkWithKVS_block_invoke_7(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 40), *(a1 + 48));
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(a1 + 48))
  {
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "callback error: %@", &v8, 0xCu);
    }

    v6 = *(a1 + 48);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  dispatch_release(*(a1 + 56));
  v7 = *MEMORY[0x1E69E9840];
}

void SOSCloudTransportFlush(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "version", 1uLL);
  xpc_dictionary_set_string(v6, "operation", "Flush");
  talkWithKVS(a1, v6, a2, a3);

  xpc_release(v6);
}

void SOSCloudTransportRequestPerfCounters(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "version", 1uLL);
  xpc_dictionary_set_string(v6, "operation", "PerfCounters");
  talkWithKVS(a1, v6, a2, a3);

  xpc_release(v6);
}

void SOSCloudTransportRequestEnsurePeerRegistration(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "version", 1uLL);
  xpc_dictionary_set_string(v6, "operation", "requestEnsurePeerRegistration");
  talkWithKVS(a1, v6, a2, a3);

  xpc_release(v6);
}

uint64_t SOSCloudTransportHasPendingKey(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "version", 1uLL);
  xpc_dictionary_set_string(v6, "operation", "hasPendingKey");
  SecXPCDictionarySetCFObject(v6, "key", a2);
  v7 = dispatch_semaphore_create(0);
  global_queue = dispatch_get_global_queue(-2, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __SOSCloudTransportHasPendingKey_block_invoke;
  v11[3] = &unk_1E70DAD58;
  v11[4] = &v12;
  v11[5] = v7;
  if (messageToProxy(a1, v6, a3, global_queue, v11))
  {
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v7);
    v9 = *(v13 + 24);
  }

  else
  {
    dispatch_release(v7);
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);
  return v9 & 1;
}

intptr_t __SOSCloudTransportHasPendingKey_block_invoke(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_BOOL(xdict, "value");
  v4 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v3;

  return dispatch_semaphore_signal(v4);
}

void SOSCloudTransportRequestSyncWithPeers(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v10, "version", 1uLL);
  xpc_dictionary_set_string(v10, "operation", "requestSyncWithPeers");
  SecXPCDictionarySetCFObject(v10, "peerIDList", a2);
  SecXPCDictionarySetCFObject(v10, "backupPeerIDList", a3);
  talkWithKVS(a1, v10, a4, a5);

  xpc_release(v10);
}

void SOSCloudTransportClearAll(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "version", 1uLL);
  xpc_dictionary_set_string(v6, "operation", "ClearStore");
  talkWithKVS(a1, v6, a2, a3);

  xpc_release(v6);
}

void SOSCloudTransportSyncAndWait(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = secLogObjForScope("sync");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "EFRESH";
    v11 = 2080;
    v12 = "SynchronizeAndWait";
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "%s XPC request to CKD: %s", &v9, 0x16u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v7, "version", 1uLL);
  xpc_dictionary_set_string(v7, "operation", "SynchronizeAndWait");
  talkWithKVS(a1, v7, a2, a3);
  xpc_release(v7);
  v8 = *MEMORY[0x1E69E9840];
}

void SOSCloudTransportSync(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v6, "version", 1uLL);
  xpc_dictionary_set_string(v6, "operation", "Synchronize");
  talkWithKVS(a1, v6, a2, a3);

  xpc_release(v6);
}

void SOSCloudTransportGet(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v8 = xpc_dictionary_create(0, 0, 0);
  if (a2)
  {
    v9 = _CFXPCCreateXPCObjectFromCFObject();
    if (v9)
    {
      v10 = v9;
      xpc_dictionary_set_value(v8, "KeysToGet", v9);
LABEL_5:
      v11 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v11, "version", 1uLL);
      xpc_dictionary_set_string(v11, "operation", "GETv2");
      xpc_dictionary_set_value(v11, "value", v8);
      talkWithKVS(a1, v11, a3, a4);
      xpc_release(v10);
      xpc_release(v8);

      xpc_release(v11);
      return;
    }
  }

  else
  {
    v10 = xpc_null_create();
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v12 = CFErrorCreate(*MEMORY[0x1E695E480], @"com.apple.security.sos.transport.error", 1, 0);
  if (v8)
  {
    xpc_release(v8);
  }

  if (a4)
  {
    (*(a4 + 16))(a4, 0, v12);
  }

  if (v12)
  {

    CFRelease(v12);
  }
}

void SOSCloudTransportUpdateKeys(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v10 = xpc_dictionary_create(0, 0, 0);
  SecXPCDictionarySetCFObject(v10, "AllKeys", a2);
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v11, "version", 1uLL);
  xpc_dictionary_set_string(v11, "operation", "RegisterKeys");
  xpc_dictionary_set_value(v11, "value", v10);
  SecXPCDictionarySetCFObject(v11, "AcctUUID", a3);
  talkWithKVS(a1, v11, a4, a5);
  xpc_release(v11);

  xpc_release(v10);
}

void SOSCloudTransportPut(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  if (a2)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v7, "version", 1uLL);
    xpc_dictionary_set_string(v7, "operation", "PUTDictionary");
    v8 = _CFXPCCreateXPCObjectFromCFObject();
    if (v8)
    {
      v9 = v8;
      xpc_dictionary_set_value(v7, "value", v8);
      xpc_release(v9);
      talkWithKVS(a1, v7, a3, a4);

      xpc_release(v7);
      return;
    }

    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = CFErrorCreate(*MEMORY[0x1E695E480], @"com.apple.security.sos.transport.error", v10, 0);
  if (a4)
  {
    (*(a4 + 16))(a4, 0, v11);
  }

  if (v11)
  {

    CFRelease(v11);
  }
}

dispatch_queue_t __SOSCloudCopyKVSState_block_invoke()
{
  result = dispatch_queue_create("KVSStateCapture", 0);
  SOSCloudCopyKVSState_processQueue = result;
  return result;
}

void SOSCloudKeychainSetItemsChangedBlock(const void *a1)
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  v2 = defaultTransport;
  if (*(defaultTransport + 112) != a1)
  {
    v3 = secLogObjForScope("sync");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Changing itemsChangedBlock", v5, 2u);
    }

    v4 = *(v2 + 112);
    if (v4)
    {
      _Block_release(v4);
    }

    *(v2 + 112) = _Block_copy(a1);
  }
}

uint64_t SOSCloudKeychainPutObjectsInCloud()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *defaultTransport;

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainUpdateKeys()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 8);

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainRemoveKeys()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 120);

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainHandleUpdateMessage()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = *(defaultTransport + 112);
  if (result)
  {
    v1 = *(result + 16);

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainGetObjectsFromCloud()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 24);

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainSynchronizeAndWait()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 48);

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainSynchronize()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 40);

    return v1();
  }

  return result;
}

void SOSCloudKeychainClearAll(uint64_t a1, uint64_t a2)
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  v4 = defaultTransport;
  v5 = secLogObjForScope("circleOps");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "SOSCloudKeychainClearAll called", v6, 2u);
  }

  if (v4)
  {
    (*(v4 + 56))(v4, a1, a2);
  }
}

uint64_t SOSCloudKeychainRequestSyncWithPeers()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 80);

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainHasPendingKey()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 72);

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainRequestEnsurePeerRegistration()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 88);

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainRequestPerfCounters()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 96);

    return v1();
  }

  return result;
}

uint64_t SOSCloudKeychainFlush()
{
  if (SOSCloudTransportDefaultTransport_sTransportOnce != -1)
  {
    dispatch_once(&SOSCloudTransportDefaultTransport_sTransportOnce, &__block_literal_global_20);
  }

  result = defaultTransport;
  if (defaultTransport)
  {
    v1 = *(defaultTransport + 104);

    return v1();
  }

  return result;
}

__CFData *SOSPiggyBackBlobCopyEncodedData(const __CFNumber *a1, uint64_t a2, const __CFData *a3, CFTypeRef *a4)
{
  v8 = *MEMORY[0x1E695E480];
  cf = 0;
  if (SecKeyCopyPublicBytes(a2, &cf))
  {
    SOSCreateErrorWithFormat(1034, 0, a4, 0, @"%@", @"Failed to export public bytes");
LABEL_3:
    v9 = 0;
    goto LABEL_10;
  }

  if (!der_sizeof_number(a1, a4) || !der_sizeof_data_or_null(cf) || !der_sizeof_data_or_null(a3))
  {
    SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain, 0, a4, v10, @"don't know how to encode", v11, v12, v16);
    v15 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v15);
    }

    goto LABEL_3;
  }

  v13 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v13);
  }

  v9 = ccder_sizeof();
LABEL_10:
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __SOSPiggyBackBlobCopyEncodedData_block_invoke;
  v17[3] = &__block_descriptor_64_e11__24__0Q8_16l;
  v17[4] = a1;
  v17[5] = a2;
  v17[6] = a3;
  v17[7] = a4;
  return CFDataCreateWithDER(v8, v9, v17);
}

uint64_t __SOSPiggyBackBlobCopyEncodedData_block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  cf = 0;
  if (SecKeyCopyPublicBytes(v4, &cf))
  {
    SOSCreateErrorWithFormat(1034, 0, v6, 0, @"%@", @"Failed to export public bytes");
    return 0;
  }

  else
  {
    v9 = cf;
    der_encode_data_or_null(v7, v6);
    v10 = der_encode_data_or_null(v9, v6);
    der_encode_number(v5, v6, a3, v10);
    v8 = ccder_encode_constructed_tl();
    v11 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v11);
    }
  }

  return v8;
}

uint64_t SOSPiggyBackAddToKeychain(void *a1, void *a2)
{
  v3 = a1;
  [a2 enumerateObjectsUsingBlock:&__block_literal_global_7167];
  [v3 enumerateObjectsUsingBlock:&__block_literal_global_14];

  return 1;
}

void __SOSPiggyBackAddToKeychain_block_invoke_11(uint64_t a1, void *a2)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v30[0] = @"kcls";
  v30[1] = @"type";
  v31[0] = @"1";
  v31[1] = @"73";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v4 = SecKeyCreateWithData(v2, v3, 0);
  if (!v4)
  {
    v21 = secLogObjForScope("piggy");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v21, OS_LOG_TYPE_DEFAULT, "privKey failed to be created", buf, 2u);
    }

    goto LABEL_25;
  }

  v5 = v4;
  v6 = SecKeyCopyPublicKey(v4);
  if (!v6)
  {
    v22 = secLogObjForScope("piggy");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, "public key failed to be created", buf, 2u);
    }

    CFRelease(v5);
LABEL_25:
    v14 = 0;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = SecKeyCopyPublicKeyHash(v6);
  if (v8)
  {
    v23 = v3;
    v9 = SOSCopyIDOfKey(v7, 0);
    v28[0] = @"class";
    v28[1] = @"nleg";
    v29[0] = @"keys";
    v29[1] = MEMORY[0x1E695E118];
    v28[2] = @"agrp";
    v28[3] = @"klbl";
    v29[2] = @"com.apple.security.sos";
    v29[3] = v8;
    v28[4] = @"labl";
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cloud Identity-piggy-%@", v9];
    v11 = *MEMORY[0x1E695E4D0];
    v29[4] = v10;
    v29[5] = v11;
    v28[5] = @"sync";
    v28[6] = @"u_Tomb";
    v28[7] = @"v_Data";
    v29[6] = v11;
    v29[7] = v2;
    v12 = v2;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:8];
    v14 = [v13 mutableCopy];

    v15 = SecItemAdd(v14, 0);
    if (v15 == -25299)
    {
      v26 = @"v_Data";
      v27 = v12;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v17 = [v16 mutableCopy];

      [(__CFDictionary *)v14 setObject:0 forKeyedSubscript:@"v_Data"];
      v15 = SecItemUpdate(v14, v17);
    }

    if (!v15)
    {
      v3 = v23;
      v2 = v12;
      goto LABEL_12;
    }

    v18 = secLogObjForScope("SecError");
    v2 = v12;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v25 = v15;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "Couldn't save backupV0 to keychain %d", buf, 8u);
    }

    v3 = v23;
  }

  else
  {
    v18 = secLogObjForScope("piggy");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "can't create public key hash", buf, 2u);
    }

    v9 = 0;
    v14 = 0;
  }

LABEL_12:
  CFRelease(v7);
  CFRelease(v5);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

LABEL_16:
  v19 = secLogObjForScope("piggy");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "key not available", buf, 2u);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __SOSPiggyBackAddToKeychain_block_invoke(uint64_t a1, void *a2)
{
  v22[11] = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"v_Data"];
  v4 = [v2 objectForKeyedSubscript:@"acct"];
  v5 = [v2 objectForKeyedSubscript:@"srvr"];

  v6 = [v3 base64EncodedDataWithOptions:0];
  v21[0] = @"class";
  v21[1] = @"nleg";
  v7 = MEMORY[0x1E695E118];
  v22[0] = @"inet";
  v22[1] = MEMORY[0x1E695E118];
  v21[2] = @"agrp";
  v21[3] = @"desc";
  v22[2] = @"com.apple.security.ckks";
  v22[3] = @"tlk-piggy";
  v8 = *MEMORY[0x1E695E4C0];
  v21[4] = @"sync";
  v21[5] = @"vwht";
  v22[4] = v8;
  v22[5] = @"PCS-MasterKey";
  v22[6] = v5;
  v21[6] = @"srvr";
  v21[7] = @"acct";
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-piggy", v4];
  v22[7] = v9;
  v22[8] = v4;
  v21[8] = @"path";
  v21[9] = @"invi";
  v21[10] = @"v_Data";
  v22[9] = v7;
  v22[10] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:11];
  v11 = [v10 mutableCopy];

  v12 = SecItemAdd(v11, 0);
  if (v12 == -25299)
  {
    v19 = @"v_Data";
    v20 = v3;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v14 = [v13 mutableCopy];

    v12 = SecItemUpdate(v11, v14);
  }

  if (v12)
  {
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v18 = v12;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "Couldn't save tlks to keychain %d", buf, 8u);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

id SOSPiggyCopyInitialSyncData(void *a1)
{
  v59 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = *a1;
  if (!ccder_decode_tl())
  {
    v6 = secLogObjForScope("piggy");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Failed to parse CONS SEQ";
LABEL_15:
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }

LABEL_55:
    v42 = 0;
    goto LABEL_66;
  }

  v4 = ccder_decode_tl();
  if (!v4)
  {
    v6 = secLogObjForScope("piggy");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "Failed to parse CONS SEQ of ident";
      goto LABEL_15;
    }

    goto LABEL_55;
  }

  v5 = v4;
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = v5 - 0x5555555555555556;
  v8 = v5;
  do
  {
    *buf = 0;
    v8 = piggy_decode_data(v8, v7, buf);
    v9 = *buf;
    v10 = v9;
    if (!v8)
    {

      v6 = 0;
      goto LABEL_17;
    }

    if (v9)
    {
      [v6 addObject:v9];
    }
  }

  while (v8 != v7);
  if (v6)
  {
    [v2 setObject:v6 forKeyedSubscript:@"idents"];
  }

LABEL_17:
  v12 = ccder_decode_tl();
  if (!v12)
  {
    v41 = secLogObjForScope("piggy");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v41, OS_LOG_TYPE_DEFAULT, "Failed to parse CONS SEQ of TLKs", buf, 2u);
    }

    goto LABEL_55;
  }

  v13 = v12;
  v48 = a1;
  v14 = v12 - 0x5555555555555556;
  v49 = [MEMORY[0x1E695DF70] array];
  *&v15 = 67109120;
  v46 = v15;
  v47 = v13;
  while (v13 != v14)
  {
    v16 = [MEMORY[0x1E695DF90] dictionary];
    v55 = 0;
    v17 = ccder_decode_tl();
    if (!v17)
    {
      v23 = 0;
LABEL_59:

LABEL_60:
      goto LABEL_61;
    }

    v18 = v17 + v55;
    v54 = 0;
    v19 = piggy_decode_data(v17, v17 + v55, &v54);
    v20 = v54;
    [v16 setObject:v20 forKeyedSubscript:@"v_Data"];

    v53 = 0;
    v21 = piggy_decode_data(v19, v18, &v53);
    v22 = v53;
    v23 = v22;
    if (!v21 || [v22 length] != 16)
    {
      goto LABEL_59;
    }

    v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v23, "bytes")}];
    v25 = [v24 UUIDString];

    [v16 setObject:v25 forKeyedSubscript:@"acct"];
    v52 = 0;
    v26 = ccder_decode_uint64();
    if (v26)
    {
      v30 = v26;
      if (v52 > 2)
      {
        if (v52 == 3)
        {
          v31 = @"AutoUnlock";
        }

        else
        {
          if (v52 != 4)
          {
LABEL_39:
            v34 = secLogObjForScope("piggy");
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v46;
              *&buf[4] = v52;
              v35 = buf;
              v36 = v34;
              v37 = "unexpected view number: %d";
              v38 = 8;
LABEL_41:
              _os_log_impl(&dword_1887D2000, v36, OS_LOG_TYPE_DEFAULT, v37, v35, v38);
            }

            goto LABEL_42;
          }

          v31 = @"Health";
        }
      }

      else if (v52 == 1)
      {
        v31 = @"Manatee";
      }

      else
      {
        if (v52 != 2)
        {
          goto LABEL_39;
        }

        v31 = @"Engram";
      }
    }

    else
    {
      *buf = 0;
      cf = 0;
      v32 = der_decode_string(0, &cf, buf, v21, v18, v27, v28, v29);
      v31 = cf;
      if (!v32 || !cf)
      {
        if (cf)
        {
          CFRelease(cf);
        }

        v34 = secLogObjForScope("piggy");
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v50 = 0;
          v35 = &v50;
          v36 = v34;
          v37 = "Failed to parse view name";
          v38 = 2;
          goto LABEL_41;
        }

LABEL_42:

        v31 = 0;
        goto LABEL_46;
      }

      v30 = v32;
      v33 = *buf;
      if (*buf)
      {
        *buf = 0;
        CFRelease(v33);
      }
    }

    [v16 setObject:v31 forKeyedSubscript:{@"srvr", v46}];
    if (v30 == v18)
    {
      v40 = secLogObjForScope("piggy");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v31;
        v57 = 2112;
        v58 = v25;
        _os_log_impl(&dword_1887D2000, v40, OS_LOG_TYPE_DEFAULT, "Adding %@ %@", buf, 0x16u);
      }

      [v49 addObject:v16];
      v39 = 1;
      v13 = v18;
      goto LABEL_50;
    }

LABEL_46:
    v39 = 0;
LABEL_50:

    if ((v39 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  if (v49)
  {
    [v2 setObject:v49 forKeyedSubscript:@"tlks"];
  }

LABEL_61:
  *v48 = v47 - 0x5555555555555556;
  if (![v2 count])
  {
    v43 = secLogObjForScope("piggy");
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v43, OS_LOG_TYPE_DEFAULT, "NO DATA, falling back to waiting 5 minutes for initial sync to finish", buf, 2u);
    }

    v2 = 0;
  }

  v2 = v2;
  v42 = v2;
LABEL_66:

  v44 = *MEMORY[0x1E69E9840];

  return v42;
}

uint64_t piggy_decode_data(uint64_t a1, uint64_t a2, void *a3)
{
  result = ccder_decode_tl();
  if (result)
  {
    v5 = result;
    *a3 = [MEMORY[0x1E695DEF0] dataWithBytes:result length:0];
    return v5;
  }

  return result;
}

uint64_t SOSPiggyBackBlobCreateFromDER(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5, int a6, _BYTE *a7, CFTypeRef *a8)
{
  v56 = *MEMORY[0x1E69E9840];
  v50 = 0;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  cf = 0;
  v49 = 0;
  *a7 = 1;
  v16 = *a4;
  v17 = ccder_decode_constructed_tl();
  *a4 = v17;
  if (!v51)
  {
    if (a8)
    {
      v45 = *a8;
      v46 = @"Bad Blob DER";
LABEL_22:
      SOSCreateErrorWithFormat(1035, v45, a8, 0, @"%@", v46);
      goto LABEL_15;
    }

    v47 = @"Bad Blob DER";
LABEL_25:
    SOSCreateErrorWithFormat(1035, 0, 0, 0, @"%@", v47);
    goto LABEL_15;
  }

  v21 = *MEMORY[0x1E695E480];
  v22 = der_decode_number(*MEMORY[0x1E695E480], &v50, a8, v17, v51, v18, v19, v20);
  *a4 = v22;
  v26 = der_decode_data_or_null(v21, &cf, a8, v22, v51, v23, v24, v25);
  *a4 = v26;
  v30 = der_decode_data_or_null(v21, &v49, a8, v26, v51, v27, v28, v29);
  *a4 = v30;
  if (!a6 || v30 == a5)
  {
    v39 = secLogObjForScope("piggy");
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v39, OS_LOG_TYPE_DEFAULT, "Piggybacking version 0, setting initial sync timeout to 5 minutes", buf, 2u);
    }

    *a7 = 1;
    if (*a4 && *a4 == a5)
    {
      goto LABEL_13;
    }

    if (a8)
    {
      v45 = *a8;
      v46 = @"Didn't consume all bytes for pbblob";
      goto LABEL_22;
    }

    v47 = @"Didn't consume all bytes for pbblob";
    goto LABEL_25;
  }

  v31 = SOSPiggyCopyInitialSyncData(a4);
  v32 = v31;
  if (v31)
  {
    v33 = [v31 objectForKeyedSubscript:@"idents"];
    v34 = [v32 objectForKeyedSubscript:@"tlks"];
    v35 = secLogObjForScope("piggy");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = [v33 count];
      v37 = [v34 count];
      *buf = 67109376;
      v53 = v36;
      v54 = 1024;
      v55 = v37;
      _os_log_impl(&dword_1887D2000, v35, OS_LOG_TYPE_DEFAULT, "Piggybacking include identities(%d) and tlks(%d)", buf, 0xEu);
    }

    v38 = v33;
    [v34 enumerateObjectsUsingBlock:&__block_literal_global_7167];
    [v38 enumerateObjectsUsingBlock:&__block_literal_global_14];

    *a7 = 0;
  }

LABEL_13:
  v40 = SecKeyCreateFromPublicData(v21, 3, cf);
  *a2 = v40;
  if (v40)
  {
    v41 = v49;
    *a1 = v50;
    *a3 = v41;
  }

LABEL_15:
  v42 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v42);
  }

  v43 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t SOSPiggyBackBlobCreateFromData(void *a1, void *a2, void *a3, CFDataRef theData, int a5, _BYTE *a6, CFTypeRef *a7)
{
  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  SOSPiggyBackBlobCreateFromDER(a1, a2, a3, &BytePtr, &BytePtr[Length], a5, a6, a7);
  return 1;
}

__CFData *SOSCopyECWrappedData(uint64_t a1, const __CFData *a2, CFTypeRef *a3)
{
  SecRequirementError(a2 != 0, a3, @"data required for wrapping");
  if (!a2)
  {
    return 0;
  }

  SecRequirementError(a1 != 0, a3, @"ec pub key required for wrapping");
  if (!a1)
  {
    return 0;
  }

  CFDataGetLength(a2);
  v6 = ccec_rfc6637_wrap_key_size();
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v6);
  if (!SecAllocationError(Mutable, a3, @"%s CFData allocation failed", "SOSCopyECWrappedData"))
  {
LABEL_7:
    if (!Mutable)
    {
      return Mutable;
    }

    CFRelease(Mutable);
    return 0;
  }

  CFDataGetMutableBytePtr(Mutable);
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  v10 = ccrng();
  v8 = ccec_rfc6637_wrap_key();
  if (v8)
  {
    SOSErrorCreate(1028, a3, 0, @"Wrap failed with %d", v8, v10);
    goto LABEL_7;
  }

  return Mutable;
}

uint64_t SOSPerformWithUnwrappedData(uint64_t a1, CFDataRef theData, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  Length = CFDataGetLength(theData);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __SOSPerformWithUnwrappedData_block_invoke;
  v11[3] = &unk_1E70DAE20;
  v11[6] = a1;
  v11[7] = theData;
  v11[8] = a3;
  v11[4] = a4;
  v11[5] = &v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __PerformWithBufferAndClear_block_invoke;
  v16[3] = &unk_1E70E46A8;
  v16[4] = v11;
  PerformWithBuffer(Length, v16);
  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t __SOSPerformWithUnwrappedData_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  CFDataGetLength(*(a1 + 56));
  BytePtr = CFDataGetBytePtr(*(a1 + 56));
  v3 = ccec_rfc6637_unwrap_key();
  if (v3)
  {
    return SOSErrorCreate(1028, *(a1 + 64), 0, @"ccec_rfc6637_unwrap_key failed with %d", v3, BytePtr);
  }

  else
  {
    return SecRequirementError(0, *(a1 + 64), @"Unexpected algorithm: %d", 170);
  }
}

__CFData *SOSCopyECUnwrappedData(int a1, CFDataRef theData, CFTypeRef *a3)
{
  length = CFDataGetLength(theData);
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, length);
  if (SecAllocationError(Mutable, a3, @"%s CFData allocation failed", "SOSCopyECUnwrappedData"))
  {
    CFDataGetMutableBytePtr(Mutable);
    CFDataGetLength(theData);
    BytePtr = CFDataGetBytePtr(theData);
    v6 = ccec_rfc6637_unwrap_key();
    if (v6)
    {
      SOSErrorCreate(1028, a3, 0, @"Unwrap failed with %d", v6, BytePtr, length);
    }

    else
    {
      SecRequirementError(0, a3, @"Unexpected algorithm: %d", 170);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t SOSFullPeerInfoGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSFullPeerInfoGetTypeID_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSFullPeerInfoGetTypeID_sSOSFullPeerInfoGetTypeIDSingleton;
  if (SOSFullPeerInfoGetTypeID_sSOSFullPeerInfoGetTypeIDOnce != -1)
  {
    dispatch_once(&SOSFullPeerInfoGetTypeID_sSOSFullPeerInfoGetTypeIDOnce, block);
  }

  return SOSFullPeerInfoGetTypeID_sSOSFullPeerInfoGetTypeIDSingleton;
}

uint64_t __SOSFullPeerInfoGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t SOSFullPeerInfoCompare(uint64_t a1, uint64_t a2)
{
  if (!CFEqual(*(a1 + 16), *(a2 + 16)))
  {
    return 0;
  }

  if (CFEqual(*(a1 + 24), *(a2 + 24)))
  {
    return 1;
  }

  v5 = SOSFullPeerInfoCopyDeviceKey(a1, 0);
  v6 = SOSFullPeerInfoCopyDeviceKey(a2, 0);
  v7 = v6;
  if (v5 && v6)
  {
    v8 = CFEqual(v5, v6) != 0;
  }

  else
  {
    v8 = 0;
    v4 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  CFRelease(v5);
  v4 = v8;
LABEL_10:
  if (v7)
  {
    CFRelease(v7);
  }

  return v4;
}

CFTypeRef SOSFullPeerInfoCopyDeviceKey(uint64_t a1, __CFString **a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 && (v3 = *(a1 + 16)) != 0 && (v5 = _SOSPeerInfoCopyPubKey(v3, @"PublicSigningKey", a2)) != 0)
  {
    v6 = v5;
    v7 = SecKeyCopyMatchingPrivateKey(v5, a2);
    if (!v7)
    {
      v8 = secLogObjForScope("circleOp");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 16);
        if (v9)
        {
          v9 = *(v9 + 48);
        }

        v12 = 138412290;
        v13 = v9;
        _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Failed to find my private key for spid %@", &v12, 0xCu);
      }
    }

    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

void SOSFullPeerInfoDestroy(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    a1[2] = 0;
    CFRelease(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[3] = 0;
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[4] = 0;
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    a1[5] = 0;

    CFRelease(v5);
  }
}

BOOL SOSFullPeerInfoUpdate(uint64_t a1, __CFString **a2, void *a3)
{
  v5 = a3;
  v6 = SOSFullPeerInfoCopyDeviceKey(a1, a2);
  if (v6)
  {
    v7 = v6;
    v8 = v5[2](v5, *(a1 + 16), v6, a2);
    v9 = v8 != 0;
    if (v8)
    {
      v10 = v8;
      v11 = *(a1 + 16);
      if (v11)
      {
        CFRelease(v11);
      }

      *(a1 + 16) = v10;
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL SOSFullPeerInfoUpdateToThisPeer(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SOSFullPeerInfoUpdateToThisPeer_block_invoke;
  v4[3] = &__block_descriptor_40_e375_____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__32__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8____SecKey____CFRuntimeBase_QAQ_____SecKeyDescriptor__v_16_____CFError_24l;
  v4[4] = a2;
  return SOSFullPeerInfoUpdate(a1, a3, v4);
}

const void *__SOSFullPeerInfoUpdateToThisPeer_block_invoke(uint64_t a1, uint64_t a2, __SecKey *a3, CFTypeRef *a4)
{
  if (!SOSPeerInfoSign(a3, *(a1 + 32), a4))
  {
    return 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRetain(v5);
  }

  return v5;
}

uint64_t SOSFullPeerInfoCreateWithViews(const __CFAllocator *a1, void *a2, const void *a3, const void *a4, const void *a5, __SecKey *a6, __SecKey *a7, __SecKey *a8, CFTypeRef *a9)
{
  SOSFullPeerInfoGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Internal = SOSPeerInfoCreate_Internal(a1, a3, a4, a5, a6, a7, a8, 1, a9, &__block_literal_global_59);
  *(Instance + 16) = Internal;
  if (!Internal)
  {
    goto LABEL_31;
  }

  v25 = SecKeyCopyPersistentRef(a6, (Instance + 24), v19, v20, v21, v22, v23, v24);
  if (!SecError(v25, a9, @"Inflating persistent ref"))
  {
    goto LABEL_31;
  }

  v32 = SecKeyCopyPersistentRef(a7, (Instance + 32), v26, v27, v28, v29, v30, v31);
  if (v32 == -25300)
  {
    v33 = [objc_alloc(get_SFECKeyPairClass()) initWithSecKey:a7];
    v34 = createKeyLabel(a3, a2, @"Octagon Peer Signing ");
    v35 = SecKeyCopyPublicKey(a7);
    if (v35)
    {
      v36 = v35;
      v69 = a2;
      v37 = [v33 keyData];
      v71 = 0;
      LODWORD(v36) = SOSFullPeerInfoSaveOctagonKeysToKeychain(v34, v37, v36, &v71);
      v38 = v71;

      if (!v36 || v38)
      {
        v46 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1887D2000, v46, OS_LOG_TYPE_DEFAULT, "Unable to save octagon signing key to the keychain", buf, 2u);
        }

        v32 = -25300;
      }

      else
      {
        v32 = SecKeyCopyPersistentRef(a7, (Instance + 32), v39, v40, v41, v42, v43, v44);
      }

      a2 = v69;
    }

    else
    {
      v45 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v45, OS_LOG_TYPE_DEFAULT, "Unable to get public from octagon peer signing key", buf, 2u);
      }

      v32 = -25300;
    }
  }

  if (!SecError(v32, a9, @"Inflating octagon peer signing persistent ref"))
  {
    goto LABEL_31;
  }

  v53 = SecKeyCopyPersistentRef(a8, (Instance + 40), v47, v48, v49, v50, v51, v52);
  if (v53 != -25300)
  {
    goto LABEL_29;
  }

  v54 = [objc_alloc(get_SFECKeyPairClass()) initWithSecKey:a8];
  v55 = createKeyLabel(a3, a2, @"Octagon Peer Encryption ");
  v56 = SecKeyCopyPublicKey(a8);
  if (!v56)
  {
    v66 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v67 = "Unable to get public from octagon peer encryption key";
LABEL_26:
      _os_log_impl(&dword_1887D2000, v66, OS_LOG_TYPE_DEFAULT, v67, buf, 2u);
    }

LABEL_27:

    v53 = -25300;
    goto LABEL_28;
  }

  v57 = v56;
  v58 = [v54 keyData];
  v70 = 0;
  LODWORD(v57) = SOSFullPeerInfoSaveOctagonKeysToKeychain(v55, v58, v57, &v70);
  v59 = v70;

  if (!v57 || v59)
  {
    v66 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v67 = "Unable to save octagon encryption key to the keychain";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  v53 = SecKeyCopyPersistentRef(a8, (Instance + 40), v60, v61, v62, v63, v64, v65);
LABEL_28:

LABEL_29:
  if (!SecError(v53, a9, @"Inflating octagon peer encryption persistent ref"))
  {
LABEL_31:
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

id get_SFECKeyPairClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = get_SFECKeyPairClass_softClass;
  v7 = get_SFECKeyPairClass_softClass;
  if (!get_SFECKeyPairClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __get_SFECKeyPairClass_block_invoke;
    v3[3] = &unk_1E70E1270;
    v3[4] = &v4;
    __get_SFECKeyPairClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18889CE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id createKeyLabel(const __CFDictionary *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = [v5 stringWithFormat:@"ID for %@-%@", SOSPeerGestaltGetName(a1), v7];

  v9 = [v6 stringByAppendingString:v8];

  return v9;
}

BOOL SOSFullPeerInfoSaveOctagonKeysToKeychain(void *a1, const __CFData *a2, const void *a3, void *a4)
{
  v7 = a1;
  v8 = SecKeyCopyAttributeDictionaryWithLocalKey(a3, @"73", a2);
  v9 = [(__CFDictionary *)v8 mutableCopy];

  [v9 setObject:v7 forKeyedSubscript:@"labl"];
  [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"nleg"];
  [v9 setObject:*MEMORY[0x1E695E4C0] forKeyedSubscript:@"sync"];
  [v9 setObject:@"com.apple.security.sos" forKeyedSubscript:@"agrp"];
  result = 0;
  v10 = SecItemAdd(v9, &result);
  if (v10)
  {
    if (v10 == -25299)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v12 = [v9 objectForKeyedSubscript:@"class"];
      [v11 setObject:v12 forKeyedSubscript:@"class"];

      v13 = [v9 objectForKeyedSubscript:@"73"];
      [v11 setObject:v13 forKeyedSubscript:@"type"];

      v14 = [v9 objectForKeyedSubscript:@"1"];
      [v11 setObject:v14 forKeyedSubscript:@"kcls"];

      v15 = [v9 objectForKeyedSubscript:@"agrp"];
      [v11 setObject:v15 forKeyedSubscript:@"agrp"];

      v16 = [v9 objectForKeyedSubscript:@"labl"];
      [v11 setObject:v16 forKeyedSubscript:@"labl"];

      v17 = [v9 objectForKeyedSubscript:@"klbl"];
      [v11 setObject:v17 forKeyedSubscript:@"klbl"];

      v18 = [v9 objectForKeyedSubscript:@"nleg"];
      [v11 setObject:v18 forKeyedSubscript:@"nleg"];

      v19 = [v9 mutableCopy];
      [v19 setObject:0 forKeyedSubscript:@"class"];
      v20 = SecItemUpdate(v11, v19);
      v21 = v20 == 0;
      if (v20)
      {
        v22 = MEMORY[0x1E696ABC0];
        v23 = *MEMORY[0x1E696A768];
        v24 = v20;
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecItemUpdate: %d", v20];
        v26 = [v22 errorWithDomain:v23 code:v24 description:v25];
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = *MEMORY[0x1E696A768];
      v29 = v10;
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SecItemAdd: %d", v10];
      v26 = [v27 errorWithDomain:v28 code:v29 description:v11];
      v21 = 0;
    }

    if (a4 && v26)
    {
      v30 = v26;
      *a4 = v26;
    }
  }

  else
  {
    v26 = 0;
    v21 = 1;
  }

  return v21;
}

uint64_t __SecurityFoundationLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SecurityFoundationLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *SOSFullPeerInfoCopyFullPeerInfo(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  SOSFullPeerInfoGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v9 = Instance;
  if (!a1 || ((v10 = *(a1 + 16)) != 0 ? (v11 = Instance == 0) : (v11 = 1), v11))
  {
    if (!Instance)
    {
      return v9;
    }

LABEL_11:
    CFRelease(v9);
    return 0;
  }

  Copy = SOSPeerInfoCreateCopy(v2, v10, 0, v4, v5, v6, v7, v8);
  v9[2] = Copy;
  if (!Copy)
  {
    goto LABEL_11;
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    CFRetain(v13);
  }

  v9[3] = v13;
  return v9;
}

uint64_t SOSFullPeerInfoGetPeerInfo(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

BOOL SOSFullPeerInfoUpdateOctagonKeys(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SOSFullPeerInfoUpdateOctagonKeys_block_invoke;
  v5[3] = &__block_descriptor_48_e375_____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__32__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8____SecKey____CFRuntimeBase_QAQ_____SecKeyDescriptor__v_16_____CFError_24l;
  v5[4] = a2;
  v5[5] = a3;
  return SOSFullPeerInfoUpdate(a1, a4, v5);
}

BOOL SOSFullPeerInfoUpdateOctagonSigningKey(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SOSFullPeerInfoUpdateOctagonSigningKey_block_invoke;
  v4[3] = &__block_descriptor_40_e375_____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__32__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8____SecKey____CFRuntimeBase_QAQ_____SecKeyDescriptor__v_16_____CFError_24l;
  v4[4] = a2;
  return SOSFullPeerInfoUpdate(a1, a3, v4);
}

BOOL SOSFullPeerInfoUpdateOctagonEncryptionKey(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SOSFullPeerInfoUpdateOctagonEncryptionKey_block_invoke;
  v4[3] = &__block_descriptor_40_e375_____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__32__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8____SecKey____CFRuntimeBase_QAQ_____SecKeyDescriptor__v_16_____CFError_24l;
  v4[4] = a2;
  return SOSFullPeerInfoUpdate(a1, a3, v4);
}

BOOL SOSFullPeerInfoSetCKKS4AllSupport(uint64_t a1, int a2, __CFString **a3)
{
  v5 = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    a1 = *(a1 + 16);
  }

  if (SOSPeerInfoSupportsCKKSForAll(a1) == a2)
  {
    result = 1;
  }

  else
  {
    v6 = secLogObjForScope("circleChange");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"not supported";
      if (a2)
      {
        v7 = @"supported";
      }

      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Setting CKKS4All status to '%@'", buf, 0xCu);
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __SOSFullPeerInfoSetCKKS4AllSupport_block_invoke;
    v10[3] = &__block_descriptor_33_e375_____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__32__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8____SecKey____CFRuntimeBase_QAQ_____SecKeyDescriptor__v_16_____CFError_24l;
    v11 = a2;
    result = SOSFullPeerInfoUpdate(v5, a3, v10);
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

const void *__SOSFullPeerInfoSetCKKS4AllSupport_block_invoke(uint64_t a1, uint64_t a2, __SecKey *a3, CFTypeRef *a4)
{
  v4 = *MEMORY[0x1E695E480];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SOSFullPeerInfoSetCKKS4AllSupport_block_invoke_2;
  v6[3] = &__block_descriptor_33_e170_B24__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8_____CFError_16l;
  v7 = *(a1 + 32);
  return SOSPeerInfoCopyWithModification(v4, a2, a3, a4, v6);
}

uint64_t __SOSFullPeerInfoSetCKKS4AllSupport_block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    v2 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  SOSPeerInfoV2DictionarySetValue(a2, sCKKSForAll, *v2);
  return 1;
}

CFTypeRef SOSPeerInfoCopyData(CFDictionaryRef *a1, CFTypeRef *a2)
{
  result = 0;
  v3 = _SOSPeerInfoCopyPubKey(a1, @"PublicSigningKey", a2);
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = v3;
  v5 = SecKeyCopyPublicKeyHash(v3);
  v17 = *MEMORY[0x1E695E4D0];
  v13 = CFDictionaryCreateForCFTypes(*MEMORY[0x1E695E480], v6, v7, v8, v9, v10, v11, v12, @"class", @"keys");
  if (v5)
  {
    CFRelease(v5);
  }

  v14 = SecItemCopyMatching(v13, &result);
  SecError(v14, a2, @"Error finding persistent ref to key from public: %@", v4);
  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(v4);
  v15 = result;
  if (!result)
  {
LABEL_7:
    v16 = secLogObjForScope("fpi");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "no private key found", buf, 2u);
    }

    return result;
  }

  return v15;
}

CFDictionaryRef CFDictionaryCreateForCFTypes(CFAllocatorRef allocator, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v23 = &a10;
  v11 = 0;
  if (a9)
  {
    do
    {
      v11 += 2;
      v12 = v23;
      v23 += 2;
    }

    while (v12[1]);
  }

  v13 = v11 >> 1;
  v24 = &a9;
  Mutable = CFDictionaryCreateMutable(allocator, v11 >> 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v15 = Mutable;
  if (v11)
  {
    v16 = *MEMORY[0x1E695E738];
    do
    {
      v17 = v24;
      v18 = *v24;
      v24 += 2;
      v19 = v17[1];
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v16;
      }

      CFDictionarySetValue(v15, v18, v20);
      --v13;
    }

    while (v13);
  }

  Copy = CFDictionaryCreateCopy(allocator, v15);
  CFRelease(v15);
  return Copy;
}

void *SOSFullPeerInfoCreateCloudIdentity(uint64_t a1, void *a2, CFTypeRef *a3)
{
  SOSFullPeerInfoGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance[2] = a2;
  if (!a2 || (CFRetain(a2), !Instance[2]))
  {
    v7 = Instance;
    goto LABEL_7;
  }

  v6 = _SOSPeerInfoCopyPubKey(a2, @"PublicSigningKey", a3);
  if (v6)
  {
    v7 = v6;
    PersistentRefToMatchingPrivateKey = SecKeyCreatePersistentRefToMatchingPrivateKey(v6, a3);
    Instance[3] = PersistentRefToMatchingPrivateKey;
    if (PersistentRefToMatchingPrivateKey)
    {
LABEL_8:
      CFRelease(v7);
      return Instance;
    }

    CFRelease(Instance);
LABEL_7:
    Instance = 0;
    goto LABEL_8;
  }

  return Instance;
}

uint64_t SOSFullPeerInfoCreateFromDER(const __CFAllocator *a1, CFTypeRef *a2, uint64_t *a3)
{
  SOSFullPeerInfoGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v7 = *a3;
  *a3 = ccder_decode_constructed_tl();
  v8 = *(Instance + 16);
  if (v8)
  {
    *(Instance + 16) = 0;
    CFRelease(v8);
  }

  v9 = SOSPeerInfoCreateFromDER(a1, a2, a3);
  *(Instance + 16) = v9;
  if (!v9 || (v13 = der_decode_data(a1, (Instance + 24), a2, *a3, 0xAAAAAAAAAAAAAAAALL, v10, v11, v12), (*a3 = v13) == 0))
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t SOSFullPeerInfoCreateFromData(const __CFAllocator *a1, CFDataRef theData, CFTypeRef *a3)
{
  if (!theData)
  {
    return 0;
  }

  CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return SOSFullPeerInfoCreateFromDER(a1, a3, &BytePtr);
}

BOOL SOSFullPeerInfoUpdateGestalt(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SOSFullPeerInfoUpdateGestalt_block_invoke;
  v4[3] = &__block_descriptor_40_e375_____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__32__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8____SecKey____CFRuntimeBase_QAQ_____SecKeyDescriptor__v_16_____CFError_24l;
  v4[4] = a2;
  return SOSFullPeerInfoUpdate(a1, a3, v4);
}

const void *__SOSFullPeerInfoUpdateGestalt_block_invoke(uint64_t a1, uint64_t a2, __SecKey *a3, CFTypeRef *a4)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SOSPeerInfoCopyWithGestaltUpdate_block_invoke;
  v7[3] = &__block_descriptor_40_e170_B24__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8_____CFError_16l;
  v7[4] = v5;
  return SOSPeerInfoCopyWithModification(v4, a2, a3, a4, v7);
}

BOOL SOSFullPeerInfoUpdateV2Dictionary(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SOSFullPeerInfoUpdateV2Dictionary_block_invoke;
  v4[3] = &__block_descriptor_40_e375_____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__32__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8____SecKey____CFRuntimeBase_QAQ_____SecKeyDescriptor__v_16_____CFError_24l;
  v4[4] = a2;
  return SOSFullPeerInfoUpdate(a1, a3, v4);
}

BOOL SOSFullPeerInfoUpdateBackupKey(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SOSFullPeerInfoUpdateBackupKey_block_invoke;
  v4[3] = &__block_descriptor_40_e375_____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__32__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8____SecKey____CFRuntimeBase_QAQ_____SecKeyDescriptor__v_16_____CFError_24l;
  v4[4] = a2;
  return SOSFullPeerInfoUpdate(a1, a3, v4);
}

const void *__SOSFullPeerInfoUpdateBackupKey_block_invoke(uint64_t a1, uint64_t a2, __SecKey *a3, CFTypeRef *a4)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SOSPeerInfoCopyWithBackupKeyUpdate_block_invoke;
  v7[3] = &__block_descriptor_40_e170_B24__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8_____CFError_16l;
  v7[4] = v5;
  return SOSPeerInfoCopyWithModification(v4, a2, a3, a4, v7);
}

BOOL SOSFullPeerInfoReplaceEscrowRecords(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SOSFullPeerInfoReplaceEscrowRecords_block_invoke;
  v4[3] = &__block_descriptor_40_e375_____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__32__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8____SecKey____CFRuntimeBase_QAQ_____SecKeyDescriptor__v_16_____CFError_24l;
  v4[4] = a2;
  return SOSFullPeerInfoUpdate(a1, a3, v4);
}

const void *__SOSFullPeerInfoReplaceEscrowRecords_block_invoke(uint64_t a1, uint64_t a2, __SecKey *a3, CFTypeRef *a4)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = *(a1 + 32);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __SOSPeerInfoCopyWithReplacedEscrowRecords_block_invoke;
  v7[3] = &__block_descriptor_40_e170_B24__0____OpaqueSOSPeerInfo____CFRuntimeBase_QAQ_____CFDictionary_____CFData_____CFDictionary_____CFString_____CFString_q____CFString_BB____CFDictionary__8_____CFError_16l;
  v7[4] = v5;
  return SOSPeerInfoCopyWithModification(v4, a2, a3, a4, v7);
}

uint64_t SOSFullPeerInfoUpdateViews(uint64_t a1, int a2, uint64_t a3, __CFString **a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v8 = secLogObjForScope("viewChange");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2 - 1) > 2)
    {
      v9 = "unknownViewAction";
    }

    else
    {
      v9 = off_1E70DB390[a2 - 1];
    }

    *buf = 136315394;
    v20 = v9;
    v21 = 2112;
    v22 = a3;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "%s view %@", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SOSFullPeerInfoUpdateViews_block_invoke;
  v13[3] = &unk_1E70DAEC8;
  v14 = a2;
  v13[4] = &v15;
  v13[5] = a3;
  if (SOSFullPeerInfoUpdate(a1, a4, v13))
  {
    v10 = *(v16 + 6);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_18889E2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SOSFullPeerInfoUpdateToCurrent(uint64_t a1, const void *a2, const void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v25 = 0;
  cf = 0;
  v6 = *(a1 + 16);
  if (*(v6 + 56) >= 3 && SOSPeerInfoSerialNumberIsSet(v6))
  {
    v7 = SOSFullPeerInfoCopyViewUpdate(a1, a2, a3);
    if (!v7)
    {
      v18 = 0;
      v14 = 0;
      goto LABEL_11;
    }

    CFRelease(v7);
  }

  v8 = SOSFullPeerInfoCopyViewUpdate(a1, a2, a3);
  v14 = SOSFullPeerInfoCopyDeviceKey(a1, &cf);
  if (!v14)
  {
    v23 = secLogObjForScope("upgrade");
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    *buf = 138412290;
    v28 = cf;
    v24 = "SOSFullPeerInfoCopyDeviceKey failed: %@";
    goto LABEL_22;
  }

  v15 = SOSPeerInfoCreateCurrentCopy(*MEMORY[0x1E695E480], *(a1 + 16), v9, v10, v11, v12, v13, v8, v14, &v25);
  if (v15)
  {
    v16 = v15;
    v17 = *(a1 + 16);
    if (v17)
    {
      CFRelease(v17);
    }

    *(a1 + 16) = v16;
    v18 = 1;
    if (v8)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v23 = secLogObjForScope("upgrade");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v25;
    v24 = "Peer info v2 create copy failed: %@";
LABEL_22:
    _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
  }

LABEL_23:

  v18 = 0;
  if (v8)
  {
LABEL_10:
    CFRelease(v8);
  }

LABEL_11:
  v19 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v19);
  }

  v20 = v25;
  if (v25)
  {
    v25 = 0;
    CFRelease(v20);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v18;
}

CFMutableSetRef SOSFullPeerInfoCopyViewUpdate(uint64_t a1, const void *a2, const void *a3)
{
  v6 = SOSPeerInfoCopyEnabledViews(*(a1 + 16));
  v7 = SOSPeerInfoCopyEnabledViews(*(a1 + 16));
  if (a2)
  {
    v8 = CFGetTypeID(a2);
    if (v8 == CFSetGetTypeID())
    {
      context = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __CFSetUnion_block_invoke;
      v18 = &__block_descriptor_40_e10_v16__0r_v8l;
      v19 = v7;
      CFSetApplyFunction(a2, apply_block_1_7434, &context);
    }
  }

  if (a3)
  {
    v9 = CFGetTypeID(a3);
    if (v9 == CFSetGetTypeID())
    {
      context = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __CFSetSubtract_block_invoke;
      v18 = &__block_descriptor_40_e10_v16__0r_v8l;
      v19 = v7;
      CFSetApplyFunction(a3, apply_block_1_7434, &context);
    }
  }

  if (v6)
  {
    v10 = v7 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (v7 == v6)
    {
      v11 = 0;
    }

    else
    {
      v11 = v7;
    }

    if (v7 != v6 || v7 == 0)
    {
      v7 = v11;
      if (!v6)
      {
        return v7;
      }

      goto LABEL_24;
    }
  }

  else if (!CFEqual(v7, v6))
  {
    goto LABEL_24;
  }

  CFRelease(v7);
  v7 = 0;
  if (v6)
  {
LABEL_24:
    CFRelease(v6);
  }

  return v7;
}

uint64_t SOSFullPeerInfoViewStatus(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (a1 && (v3 = *(a1 + 16)) != 0)
  {
    return SOSViewsQuery(v3, a2, a3);
  }

  else
  {
    return 0;
  }
}

void *SOSFullPeerInfoCopyPubKey(uint64_t a1, CFTypeRef *a2)
{
  if (a1 && (v2 = *(a1 + 16)) != 0)
  {
    return _SOSPeerInfoCopyPubKey(v2, @"PublicSigningKey", a2);
  }

  else
  {
    return 0;
  }
}

void *SOSFullPeerInfoCopyOctagonPublicSigningKey(uint64_t a1, CFTypeRef *a2)
{
  if (a1 && (v2 = *(a1 + 16)) != 0)
  {
    return _SOSPeerInfoCopyPubKey(v2, @"OctagonPublicSigningKey", a2);
  }

  else
  {
    return 0;
  }
}

void *SOSFullPeerInfoCopyOctagonPublicEncryptionKey(uint64_t a1, CFTypeRef *a2)
{
  if (a1 && (v2 = *(a1 + 16)) != 0)
  {
    return _SOSPeerInfoCopyPubKey(v2, @"OctagonPublicEncryptionKey", a2);
  }

  else
  {
    return 0;
  }
}

uint64_t SOSFullPeerInfoGetMatchingPrivateKeyStatus(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    return 4294967246;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 4294967246;
  }

  v4 = _SOSPeerInfoCopyPubKey(v2, @"PublicSigningKey", a2);
  if (!v4)
  {
    return 4294967246;
  }

  v5 = v4;
  MatchingPrivateKeyStatus = SecKeyGetMatchingPrivateKeyStatus(v4, a2);
  CFRelease(v5);
  return MatchingPrivateKeyStatus;
}

uint64_t SOSFullPeerInfoPurgePersistentKey(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = _SOSPeerInfoCopyPubKey(v3, @"PublicSigningKey", a2);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = _SOSPeerInfoCopyPubKey(v6, @"OctagonPublicSigningKey", a2);
    v8 = *(a1 + 16);
    if (v8)
    {
      v9 = _SOSPeerInfoCopyPubKey(v8, @"OctagonPublicEncryptionKey", a2);
      if (v5)
      {
        goto LABEL_6;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = 0;
  if (v5)
  {
LABEL_6:
    PrivateKeyMatchingQuery = CreatePrivateKeyMatchingQuery(v5);
    v11 = *MEMORY[0x1E695E480];
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, PrivateKeyMatchingQuery);
    v13 = *MEMORY[0x1E695E4C0];
    CFDictionaryAddValue(MutableCopy, @"u_Tomb", *MEMORY[0x1E695E4C0]);
    v14 = SecItemDelete(MutableCopy);
    v15 = SecError(v14, a2, @"Deleting while purging");
    cf = v7;
    if (v7)
    {
      v16 = CreatePrivateKeyMatchingQuery(v7);
      v17 = CFDictionaryCreateMutableCopy(v11, 0, v16);
      CFDictionaryAddValue(v17, @"u_Tomb", v13);
      v18 = SecItemDelete(v17);
      v15 = v15 & SecError(v18, a2, @"Deleting signing key while purging");
      if (v16)
      {
        CFRelease(v16);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    if (v9)
    {
      v19 = CreatePrivateKeyMatchingQuery(v9);
      v20 = CFDictionaryCreateMutableCopy(v11, 0, v19);
      CFDictionaryAddValue(v20, @"u_Tomb", v13);
      v21 = SecItemDelete(v20);
      v15 = v15 & SecError(v21, a2, @"Deleting encryption key while purging");
      if (!PrivateKeyMatchingQuery)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v20 = 0;
      v19 = 0;
      if (!PrivateKeyMatchingQuery)
      {
LABEL_14:
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        CFRelease(v5);
        if (v19)
        {
          CFRelease(v19);
        }

        if (v20)
        {
          CFRelease(v20);
        }

        v7 = cf;
        if (!cf)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }
    }

    CFRelease(PrivateKeyMatchingQuery);
    goto LABEL_14;
  }

LABEL_30:
  v15 = 0;
  if (v7)
  {
LABEL_21:
    CFRelease(v7);
  }

LABEL_22:
  if (v9)
  {
    CFRelease(v9);
  }

  return v15;
}

CFTypeRef SOSFullPeerInfoCopyOctagonSigningKey(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = _SOSPeerInfoCopyPubKey(v2, @"OctagonPublicSigningKey", a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SecKeyCopyMatchingPrivateKey(v4, a2);
  CFRelease(v5);
  return v6;
}

CFTypeRef SOSFullPeerInfoCopyOctagonEncryptionKey(uint64_t a1, CFTypeRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = _SOSPeerInfoCopyPubKey(v2, @"OctagonPublicEncryptionKey", a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = SecKeyCopyMatchingPrivateKey(v4, a2);
  CFRelease(v5);
  return v6;
}

uint64_t SOSFullPeerInfoGetDEREncodedSize(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!SOSPeerInfoGetDEREncodedSize(*(a1 + 16), a2, a3, a4, a5, a6, a7, a8))
  {
    return 0;
  }

  CFDataGetLength(*(a1 + 24));
  if (!ccder_sizeof_raw_octet_string())
  {
    return 0;
  }

  return ccder_sizeof();
}

uint64_t SOSFullPeerInfoEncodeToDER(uint64_t a1, CFTypeRef *a2, UInt8 *a3)
{
  v5 = *(a1 + 16);
  v6 = der_encode_data(*(a1 + 24), a2);
  SOSPeerInfoEncodeToDER(v5, a2, a3, v6, v7, v8, v9, v10);

  return ccder_encode_constructed_tl();
}

__CFData *SOSFullPeerInfoCopyEncodedData(uint64_t a1, uint64_t a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E695E480];
  DEREncodedSize = SOSFullPeerInfoGetDEREncodedSize(a1, a3, a3, a4, a5, a6, a7, a8);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SOSFullPeerInfoCopyEncodedData_block_invoke;
  v13[3] = &__block_descriptor_48_e11__24__0Q8_16l;
  v13[4] = a1;
  v13[5] = a3;
  return CFDataCreateWithDER(v10, DEREncodedSize, v13);
}

BOOL SOSFullPeerInfoPromoteToApplication(uint64_t a1, __SecKey *a2, __CFString **a3)
{
  v6 = SOSFullPeerInfoCopyDeviceKey(a1, a3);
  if (!v6)
  {
    return 0;
  }

  v11 = v6;
  v12 = *(a1 + 16);
  v13 = SOSPeerInfoCopyAsApplication(v12, a2, v6, a3, v7, v8, v9, v10);
  *(a1 + 16) = v13;
  v14 = v13 != 0;
  if (v13)
  {
    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    *(a1 + 16) = v12;
  }

  CFRelease(v11);
  return v14;
}

BOOL SOSFullPeerInfoUpgradeSignatures(uint64_t a1, __SecKey *a2, __CFString **a3)
{
  v6 = SOSFullPeerInfoCopyDeviceKey(a1, a3);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(a1 + 16);
  v9 = SOSPeerInfoUpgradeSignatures(v6, a2, v6, v8, a3);
  *(a1 + 16) = v9;
  v10 = v9 != 0;
  if (v9)
  {
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    *(a1 + 16) = v8;
  }

  CFRelease(v7);
  return v10;
}

CFMutableDictionaryRef *SOSFullPeerInfoPromoteToRetiredAndCopy(uint64_t a1, __CFString **a2)
{
  v4 = SOSFullPeerInfoCopyDeviceKey(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v9 = v4;
  RetirementTicket = SOSPeerInfoCreateRetirementTicket(0, v4, *(a1 + 16), a2, v5, v6, v7, v8);
  v11 = RetirementTicket;
  if (!RetirementTicket || (v12 = *(a1 + 16), *(a1 + 16) = RetirementTicket, CFRetain(RetirementTicket), CFRelease(v9), (v9 = v12) != 0))
  {
    CFRelease(v9);
  }

  return v11;
}

BOOL SOSFullPeerInfoPing(uint64_t a1, __CFString **a2)
{
  v4 = SOSFullPeerInfoCopyDeviceKey(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v9 = v4;
  v10 = SOSPeerInfoCopyWithPing(*MEMORY[0x1E695E480], *(a1 + 16), v4, a2, v5, v6, v7, v8);
  v11 = v10 != 0;
  if (v10)
  {
    v12 = v10;
    v13 = *(a1 + 16);
    if (v13)
    {
      *(a1 + 16) = 0;
      CFRelease(v13);
    }

    *(a1 + 16) = v12;
  }

  CFRelease(v9);
  return v11;
}

void SOSGenerationCountWithDescription(const __CFNumber *a1, uint64_t a2)
{
  v3 = SOSGenerationCountCopyDescription(a1);
  (*(a2 + 16))(a2, v3);
  if (v3)
  {

    CFRelease(v3);
  }
}

__CFString *SOSGenerationCountCopyDescription(const __CFNumber *a1)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"[");
  v3 = MutableCopy;
  if (a1)
  {
    valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(a1, kCFNumberSInt64Type, valuePtr);
    v4 = valuePtr[0];
    v5 = ((valuePtr[0] >> 31) & 0xFFFFFFFE);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v9 = __SOSGenerationCountCopyDescription_block_invoke;
    v10 = &__block_descriptor_tmp_7452;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v11 = v3;
    valuePtr[0] = MEMORY[0x1E69E9820];
    valuePtr[1] = 0x40000000;
    valuePtr[2] = __withStringOfAbsoluteTime_block_invoke;
    valuePtr[3] = &unk_1E70E44C8;
    valuePtr[4] = &v13;
    *&valuePtr[5] = v5;
    block = MEMORY[0x1E69E9820];
    v18 = 0x40000000;
    v19 = __GetShortDateFormatterQueue_block_invoke;
    v20 = &__block_descriptor_tmp_55_16248;
    v21 = &GetShortDateFormatterQueue_sGetShortDateFormatterQueueSingleton;
    if (GetShortDateFormatterQueue_sGetShortDateFormatterQueueOnce != -1)
    {
      dispatch_once(&GetShortDateFormatterQueue_sGetShortDateFormatterQueueOnce, &block);
    }

    block = MEMORY[0x1E69E9820];
    v18 = 0x40000000;
    v19 = __withShortDateFormatter_block_invoke;
    v20 = &unk_1E70E4558;
    v21 = valuePtr;
    dispatch_sync(GetShortDateFormatterQueue_sGetShortDateFormatterQueueSingleton, &block);
    v9(v8, v14[3]);
    v6 = v14[3];
    if (v6)
    {
      v14[3] = 0;
      CFRelease(v6);
    }

    _Block_object_dispose(&v13, 8);
    CFStringAppendFormat(v3, 0, @" %u]", v4);
  }

  else
  {
    CFStringAppend(MutableCopy, @"NA]");
  }

  return v3;
}

const __CFNumber *SOSGetGenerationSint(const __CFNumber *result)
{
  if (result)
  {
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

CFNumberRef sosGenerationCreateOrIncrement(const __CFNumber *a1)
{
  if (a1)
  {
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
    v1 = valuePtr;
    if (HIDWORD(valuePtr))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v1 = 0;
  }

  v1 |= (CFAbsoluteTimeGetCurrent() >> 1) << 32;
LABEL_6:
  valuePtr = v1 + 1;
  return CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
}

const __CFNumber *SOSGenerationCopy(const __CFNumber *result)
{
  if (result)
  {
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  }

  return result;
}

uint64_t SOSGenerationIsOlder(const __CFNumber *a1, const __CFNumber *a2)
{
  v2 = CFNumberCompare(a1, a2, 0);
  if ((v2 + 1) < 3)
  {
    return 1u >> ((v2 + 1) & 7);
  }

  else
  {
    return 0;
  }
}

CFNumberRef SOSGenerationCreateWithBaseline(const __CFNumber *a1)
{
  v2 = sosGenerationCreateOrIncrement(0);
  if ((CFNumberCompare(v2, a1, 0) + 1) > 1)
  {
    return v2;
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return sosGenerationCreateOrIncrement(a1);
}

CFNumberRef SOSGenCountCreateFromDER(const __CFAllocator *a1, CFTypeRef *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = 0;
  *a3 = der_decode_number(a1, &v9, a2, *a3, a4, a6, a7, a8);
  result = v9;
  if (!v9)
  {

    return sosGenerationCreateOrIncrement(0);
  }

  return result;
}

BOOL SOSErrorCreate(CFIndex a1, CFTypeRef *a2, CFDictionaryRef formatOptions, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1 && a2 && !*a2)
  {
    SecCFCreateErrorWithFormatAndArguments(a1, @"com.apple.security.sos.error", 0, a2, formatOptions, format, va);
  }

  return a1 == 0;
}

uint64_t SOSCreateErrorWithFormat(CFIndex a1, __CFString *cf, CFTypeRef *a3, CFDictionaryRef formatOptions, CFStringRef format, ...)
{
  va_start(va, format);
  SecCFCreateErrorWithFormatAndArguments(a1, @"com.apple.security.sos.error", cf, a3, formatOptions, format, va);
  return 0;
}

uint64_t GenerateECPairImp(int a1, uint64_t a2, SecKeyRef *a3, SecKeyRef *a4)
{
  valuePtr = a1;
  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  v15 = CFDictionaryCreateForCFTypes(v6, v8, v9, v10, v11, v12, v13, v14, @"type", @"73");
  if (v7)
  {
    CFRelease(v7);
  }

  Pair = SecKeyGeneratePair(v15, a3, a4);
  if (v15)
  {
    CFRelease(v15);
  }

  return Pair;
}

__CFString *SOSItemsChangedCopyDescription(const __CFDictionary *a1, char a2)
{
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"<Changes: {\n");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SOSItemsChangedCopyDescription_block_invoke;
  v6[3] = &__block_descriptor_41_e15_v24__0r_v8r_v16l;
  v6[4] = MutableCopy;
  v7 = a2;
  CFDictionaryApplyFunction(a1, apply_block_2_7530, v6);
  CFStringAppendFormat(MutableCopy, 0, @"}");
  return MutableCopy;
}

void __SOSItemsChangedCopyDescription_block_invoke(uint64_t a1, const __CFString *cf, const __CFString *a3)
{
  if (!cf)
  {
    goto LABEL_9;
  }

  v6 = CFGetTypeID(cf);
  TypeID = CFStringGetTypeID();
  v8 = 0;
  if (!a3 || v6 != TypeID)
  {
    goto LABEL_10;
  }

  v9 = CFGetTypeID(a3);
  if (v9 != CFDataGetTypeID())
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  KeyType = SOSKVSKeyGetKeyType(cf);
  if (KeyType != 1)
  {
    if (!KeyType)
    {
      v16 = 0;
      v11 = *MEMORY[0x1E695E480];
      v12 = SOSCircleCreateFromData(*MEMORY[0x1E695E480], a3, &v16);
      if (v12)
      {
        v13 = v12;
        v8 = CFStringCreateWithFormat(v11, 0, @"%@", v12);
        CFRelease(v13);
        goto LABEL_10;
      }
    }

    goto LABEL_9;
  }

  v8 = CFCopyDescription(a3);
LABEL_10:
  if (*(a1 + 40))
  {
    v14 = "<=";
  }

  else
  {
    v14 = "=>";
  }

  if (v8)
  {
    v15 = v8;
  }

  else
  {
    v15 = a3;
  }

  CFStringAppendFormat(*(a1 + 32), 0, @"    '%@' %s %@\n", cf, v14, v15);
  if (v8)
  {
    CFRelease(v8);
  }
}

CFStringRef SOSCopyHashBufAsString(unsigned __int8 *a1, unint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = (2 * a2) | 1;
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 16) & 0xFFFFFFFFFFFFFFF0);
  memset(v6, 170, v4);
  v7 = SecBase64Encode_(a1, a2, v6, v4, 0, &v11 + 1);
  if (v7 - 1 >= 2 * a2)
  {
    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  }

  v8 = 26;
  if (v7 < 0x1A)
  {
    v8 = v7;
  }

  v6[v8] = 0;
  result = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x600u);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef SOSCopyIDOfDataBuffer(const __CFData *a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = ccsha1_di();
  v3 = *v2;
  MEMORY[0x1EEE9AC00](v2);
  if (v3)
  {
    memset(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), 170, v3);
  }

  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  ccdigest();
  result = SOSCopyHashBufAsString(v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFString *SOSCopyIDOfDataBufferWithLength(const __CFData *a1, CFIndex a2)
{
  result = SOSCopyIDOfDataBuffer(a1);
  if (result)
  {
    v4 = result;
    v6.location = 0;
    v6.length = a2;
    v5 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], result, v6);
    CFRelease(v4);
    return v5;
  }

  return result;
}

CFStringRef SOSCopyIDOfKey(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  if (!a1)
  {
    SOSErrorCreate(1033, a2, 0, @"NULL key passed to SOSCopyIDOfKey");
    return 0;
  }

  v4 = SecKeyCopyPublicBytes(a1, &cf);
  v5 = SecError(v4, a2, @"Failed to export public bytes %@", a1);
  v6 = cf;
  if (!v5)
  {
    v7 = 0;
    if (!cf)
    {
      return v7;
    }

    goto LABEL_4;
  }

  v7 = SOSCopyIDOfDataBuffer(cf);
  v6 = cf;
  if (cf)
  {
LABEL_4:
    cf = 0;
    CFRelease(v6);
  }

  return v7;
}

const __CFString *SOSCopyIDOfKeyWithLength(uint64_t a1, CFIndex a2, CFTypeRef *a3)
{
  result = SOSCopyIDOfKey(a1, a3);
  if (result)
  {
    v5 = result;
    v7.location = 0;
    v7.length = a2;
    v6 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], result, v7);
    CFRelease(v5);
    return v6;
  }

  return result;
}

uint64_t SOSGetBackupKeyCurveParameters()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSGetBackupKeyCurveParameters_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = &SOSGetBackupKeyCurveParameters_sSOSGetBackupKeyCurveParametersSingleton;
  if (SOSGetBackupKeyCurveParameters_sSOSGetBackupKeyCurveParametersOnce != -1)
  {
    dispatch_once(&SOSGetBackupKeyCurveParameters_sSOSGetBackupKeyCurveParametersOnce, block);
  }

  return SOSGetBackupKeyCurveParameters_sSOSGetBackupKeyCurveParametersSingleton;
}

uint64_t __SOSGetBackupKeyCurveParameters_block_invoke(uint64_t a1)
{
  result = MEMORY[0x18CFD9EA0]();
  **(a1 + 32) = result;
  return result;
}

uint64_t SOSPerformWithDeviceBackupFullKey(uint64_t *a1, const __CFData *a2, CFTypeRef *a3, void *a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = (32 * *a1) | 0x10;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = 0;
  do
  {
    v12 = &v10[v11];
    *v12 = 0xAAAAAAAAAAAAAAAALL;
    *(v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11 += 16;
  }

  while (v9 != v11);
  v13 = SOSGenerateDeviceBackupFullKey(v17 - v9, a1, a2, a3);
  if (v13)
  {
    v7[2](v7, v10);
  }

  v14 = *a1;
  cc_clear();

  v15 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t SOSGenerateDeviceBackupFullKey(uint64_t a1, uint64_t a2, const __CFData *a3, CFTypeRef *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  ccsha256_di();
  CFDataGetLength(a3);
  CFDataGetBytePtr(a3);
  v6 = ccpbkdf2_hmac();
  if (v6)
  {
    SOSErrorCreate(1028, a4, 0, @"ccpbkdf2_hmac failed: %d", v6);
LABEL_7:
    result = 0;
    goto LABEL_4;
  }

  ccrng();
  key_deterministic = ccec_generate_key_deterministic();
  if (key_deterministic)
  {
    SOSErrorCreate(1028, a4, 0, @"ccec_generate_key_deterministic failed: %d", key_deterministic);
    goto LABEL_7;
  }

  result = 1;
LABEL_4:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

__CFData *SOSCopyDeviceBackupPublicKey(const __CFData *a1, CFTypeRef *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = SOSGetBackupKeyCurveParameters();
  v5 = (32 * *v4) | 0x10;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v16 - v6);
  v8 = 0;
  do
  {
    v9 = &v7[v8 / 8];
    *v9 = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = 0xAAAAAAAAAAAAAAAALL;
    v8 += 16;
  }

  while (v6 != v8);
  v10 = SOSGetBackupKeyCurveParameters();
  if (!SOSGenerateDeviceBackupFullKey(v7, v10, a1, a2))
  {
    goto LABEL_9;
  }

  v11 = *v7;
  v12 = (cczp_bitlen() + 7) >> 3;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  CFDataSetLength(Mutable, v12);
  if (!SecAllocationError(Mutable, a2, @"Mutable data allocation"))
  {
    if (!Mutable)
    {
      goto LABEL_6;
    }

    CFRelease(Mutable);
LABEL_9:
    Mutable = 0;
    goto LABEL_6;
  }

  CFDataGetMutableBytePtr(Mutable);
  ccec_compact_export();
LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFDataRef SOSDateCreate()
{
  v14 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v1 = CFDateCreate(0, Current);
  v2 = der_sizeof_date();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v10 = &v13[-v9];
  if (v3)
  {
    memset(&v13[-v9], 170, v2);
  }

  der_encode_date(v1, v10, &v10[v2], v4, v5, v6, v7, v8, v13[0]);
  if (v1)
  {
    CFRelease(v1);
  }

  result = CFDataCreate(0, v10, v2);
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

__CFData *CFDataCreateWithDER(const __CFAllocator *a1, CFIndex a2, void *a3)
{
  v5 = a3;
  if (!a2)
  {
    goto LABEL_9;
  }

  Mutable = CFDataCreateMutable(a1, 0);
  CFDataSetLength(Mutable, a2);
  if (!Mutable)
  {
    goto LABEL_10;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  v8 = v5[2](v5, a2, MutableBytePtr);
  if (v8 == MutableBytePtr)
  {
    goto LABEL_10;
  }

  if (!v8 || v8 < MutableBytePtr)
  {
    CFRelease(Mutable);
LABEL_9:
    Mutable = 0;
    goto LABEL_10;
  }

  if (v8 > MutableBytePtr)
  {
    v10.location = 0;
    v10.length = v8 - MutableBytePtr;
    CFDataDeleteBytes(Mutable, v10);
  }

LABEL_10:

  return Mutable;
}

uint64_t SOSCachedNotificationOperation(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  out_token = -1;
  v4 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&SOSCachedNotificationOperation_token_lock);
  if (!SOSCachedNotificationOperation_tokenCache)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    v6 = SOSCachedNotificationOperation_tokenCache;
    SOSCachedNotificationOperation_tokenCache = v5;
  }

  v7 = [SOSCachedNotification notificationName:a1];
  if (v7)
  {
    v8 = v7;
    v9 = [SOSCachedNotificationOperation_tokenCache objectForKeyedSubscript:v7];
    v10 = v9;
    if (v9)
    {
      out_token = [v9 intValue];
    }

    else
    {
      v12 = notify_register_check([v8 UTF8String], &out_token);
      if (v12)
      {
        v13 = v12;
        v14 = secLogObjForScope("cachedStatus");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v19 = v8;
          v20 = 1024;
          v21 = v13;
          _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "Failed to retreive token for %@: error %d", buf, 0x12u);
        }
      }

      else
      {
        v14 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
        [SOSCachedNotificationOperation_tokenCache setObject:v14 forKeyedSubscript:v8];
      }
    }

    os_unfair_lock_unlock(&SOSCachedNotificationOperation_token_lock);

    objc_autoreleasePoolPop(v4);
    v11 = v3[2](v3);
  }

  else
  {
    os_unfair_lock_unlock(&SOSCachedNotificationOperation_token_lock);
    objc_autoreleasePoolPop(v4);
    v11 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t SOSGetCachedCircleBitmask()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __SOSGetCachedCircleBitmask_block_invoke;
  v2[3] = &unk_1E70DAF48;
  v2[4] = &v3;
  SOSCachedNotificationOperation(kSOSCCCircleChangedNotification, v2);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1888A0438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SOSGetCachedCircleBitmask_block_invoke(uint64_t a1, int token, int a3)
{
  if (a3)
  {
    notify_get_state(token, (*(*(a1 + 32) + 8) + 24));
  }

  return 0;
}

uint64_t SOSGetCachedCircleStatus(CFTypeRef *a1)
{
  v2 = SOSGetCachedCircleBitmask();
  if ((v2 & 0x8000000000000000) == 0)
  {
    return 4294967197;
  }

  v3 = v2;
  if ((v2 & 0x4000000000000000) == 0)
  {
    if (a1)
    {
      v4 = *a1;
      if (*a1)
      {
        *a1 = 0;
        CFRelease(v4);
      }

      if ((v3 & 0x1000000000000000) != 0)
      {
        v5 = @"Public Key isn't available, this peer is in the circle, but invalid. The iCloud Password must be provided to keychain syncing subsystem to repair this.";
      }

      else
      {
        v5 = @"Public Key isn't available. The iCloud Password must be provided to keychain syncing subsystem to repair this.";
      }

      SOSCreateErrorWithFormat(2, 0, a1, 0, @"%@", v5);
    }

    return 0xFFFFFFFFLL;
  }

  return v3;
}

uint64_t SOSCachedViewBitmask()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v0 = SOSGetCachedCircleBitmask();
  if (v0 >> 62 == 3 && v0 == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __SOSCachedViewBitmask_block_invoke;
    v4[3] = &unk_1E70DAF48;
    v4[4] = &v5;
    SOSCachedNotificationOperation(kSOSCCViewMembershipChangedNotification, v4);
  }

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1888A05E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SOSCachedViewBitmask_block_invoke(uint64_t a1, int token, uint64_t a3)
{
  if (a3)
  {
    notify_get_state(token, (*(*(a1 + 32) + 8) + 24));
  }

  return a3;
}

CFMutableSetRef SOSCreateCachedViewStatus()
{
  result = SOSCachedViewBitmask();
  if (result)
  {

    return SOSViewCreateSetFromBitmask(result);
  }

  return result;
}

id SOSCreateRandomDateBetweenNowPlus(double a1, double a2)
{
  v3 = (a2 - a1);
  v4 = *MEMORY[0x1E69E94D8];
  if (CCRandomCopyBytes())
  {
    v5 = v3 >> 1;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAAALL % v3;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:v5 + a1];

  return v6;
}

id SOSCCCredentialQueue()
{
  if (SOSCCCredentialQueue_onceToken != -1)
  {
    dispatch_once(&SOSCCCredentialQueue_onceToken, &__block_literal_global_7580);
  }

  v1 = SOSCCCredentialQueue_credQueue;

  return v1;
}

uint64_t __SOSCCCredentialQueue_block_invoke()
{
  SOSCCCredentialQueue_credQueue = dispatch_queue_create("com.apple.SOSCredentialsQueue", 0);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t SOSDoWithCredentialsWhileUnlocked(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = SOSCCCredentialQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __SOSDoWithCredentialsWhileUnlocked_block_invoke;
  block[3] = &unk_1E70DAF70;
  v10 = &v12;
  v11 = a1;
  v9 = v3;
  v5 = v3;
  dispatch_sync(v4, block);

  v6 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v6;
}

void __SOSDoWithCredentialsWhileUnlocked_block_invoke(uint64_t a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v2 = *(a1 + 48);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v11 = __SOSDoWithCredentialsWhileUnlocked_block_invoke_2;
  v12 = &unk_1E70DAF70;
  v14 = &v16;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v13 = v3;
  v15 = v4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  KeybagAssertionQueue = GetKeybagAssertionQueue();
  block = MEMORY[0x1E69E9820];
  v21 = 0x40000000;
  v22 = __SecAKSKeybagHoldLockAssertion_block_invoke;
  v23 = &unk_1E70E4638;
  v24 = &v27;
  v25 = 60;
  v26 = 0;
  dispatch_sync(KeybagAssertionQueue, &block);
  v6 = SecKernError(*(v28 + 6), v2, @"Kern return error", v10[0], 3221225472);
  _Block_object_dispose(&v27, 8);
  if (v6)
  {
    v11(v10);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = 0;
    v7 = GetKeybagAssertionQueue();
    block = MEMORY[0x1E69E9820];
    v21 = 0x40000000;
    v22 = __SecAKSKeybagDropLockAssertion_block_invoke;
    v23 = &unk_1E70E4660;
    v24 = &v27;
    LODWORD(v25) = 0;
    dispatch_sync(v7, &block);
    SecKernError(*(v28 + 6), v2, @"Kern return error");
    _Block_object_dispose(&v27, 8);
  }

  *(*(*(a1 + 40) + 8) + 24) = *(v17 + 24);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v8 = *(a1 + 48);
    v9 = *v8;
    if (*v8)
    {
      *v8 = 0;
      CFRelease(v9);
    }
  }

  _Block_object_dispose(&v16, 8);
}

void sub_1888A0AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SOSDoWithCredentialsWhileUnlocked_block_invoke_2(void *a1)
{
  v2 = a1[6];
  result = (*(a1[4] + 16))();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

uint64_t SOSVisibleKeychainNotAllowed(double a1)
{
  Helper_x8__OBJC_CLASS___MCProfileConnection = gotLoadHelper_x8__OBJC_CLASS___MCProfileConnection(a1);
  v3 = [*(v2 + 4032) sharedConnection];
  v4 = [v3 isCloudKeychainSyncAllowed];
  if ((v4 & 1) == 0)
  {
    v5 = secLogObjForScope("views");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "V0 views disabled by Managed Preferences Profile", v7, 2u);
    }
  }

  return v4 ^ 1u;
}

void _SOSControlSetupInterface(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v1 = +[SecXPCHelper safeErrorClasses];
  [v3 setClasses:v1 forSelector:sel_userPublicKey_ argumentIndex:2 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_stashedCredentialPublicKey_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_assertStashedAccountCredential_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_validatedStashedAccountCredential_flowID_deviceSessionID_canSendMetrics_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_stashAccountCredential_altDSID_flowID_deviceSessionID_canSendMetrics_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_ghostBust_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_ghostBustPeriodic_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_ghostBustTriggerTimed_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_ghostBustInfo_ argumentIndex:0 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_iCloudIdentityStatus_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_accountStatus_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_keyStatusFor_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_myPeerInfo_flowID_deviceSessionID_canSendMetrics_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_circleHash_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_circleJoiningBlob_flowID_deviceSessionID_canSendMetrics_applicant_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_joinCircleWithBlob_altDSID_flowID_deviceSessionID_canSendMetrics_version_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_initialSyncCredentials_altDSID_flowID_deviceSessionID_canSendMetrics_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_importInitialSyncCredentials_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_rpcTriggerSync_complete_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_getWatchdogParameters_ argumentIndex:1 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_setWatchdogParmeters_complete_ argumentIndex:0 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_rpcTriggerBackup_complete_ argumentIndex:0 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_rpcTriggerRingUpdate_ argumentIndex:0 ofReply:1];
  [v3 setClasses:v1 forSelector:sel_removeV0Peers_ argumentIndex:1 ofReply:1];

  v2 = *MEMORY[0x1E69E9840];
}

CFStringRef SOSCircleKeyCreateWithName(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithFormat(0, 0, @"%@%@", @"o", result);
  }

  return result;
}

uint64_t SOSKVSKeyGetKeyType(const __CFString *a1)
{
  if (CFStringHasPrefix(a1, @"o"))
  {
    return 0;
  }

  if (CFStringHasPrefix(a1, @"~"))
  {
    return 7;
  }

  if (CFStringHasPrefix(a1, @"-"))
  {
    return 4;
  }

  if (CFStringHasPrefix(a1, @">KeyParameters"))
  {
    return 2;
  }

  if (CFStringHasPrefix(a1, @"^InitialSync"))
  {
    return 3;
  }

  if (CFStringHasPrefix(a1, @"^OfficialDSID"))
  {
    return 5;
  }

  if (CFStringHasPrefix(a1, @"dbg-"))
  {
    return 6;
  }

  if (CFStringHasPrefix(a1, @"k"))
  {
    return 9;
  }

  return 1;
}

BOOL SOSKVSKeyParse(int a1, CFStringRef theString, CFStringRef *a3, CFStringRef *a4, CFStringRef *a5, uint64_t a6, CFStringRef *a7, CFStringRef *a8)
{
  v11 = 1;
  if (a1 <= 5)
  {
    switch(a1)
    {
      case 0:
        if (a3)
        {
          v41.length = CFStringGetLength(theString) - 1;
          v11 = 1;
          v41.location = 1;
          *a3 = CFStringCreateWithSubstring(0, theString, v41);
          return v11;
        }

        return 1;
      case 1:
        MutableCopy = CFStringCreateMutableCopy(0, 128, theString);
        v32 = copyStringEndingIn(MutableCopy, @"|");
        if (!v32)
        {
          goto LABEL_45;
        }

        v17 = v32;
        v33 = copyStringEndingIn(MutableCopy, @":");
        if (v33)
        {
          v34 = v33;
          Length = CFStringGetLength(v33);
          v11 = Length > 0;
          if (Length < 1)
          {
            Copy = 0;
          }

          else
          {
            Copy = CFStringCreateCopy(0, MutableCopy);
            if (a3)
            {
              *a3 = CFStringCreateCopy(0, v17);
            }

            if (a7)
            {
              *a7 = CFStringCreateCopy(0, v34);
            }

            if (a8 && Copy)
            {
              *a8 = CFStringCreateCopy(0, Copy);
            }
          }

          CFRelease(v17);
          CFRelease(v34);
          v17 = Copy;
          if (!Copy)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v11 = 0;
        }

        break;
      case 4:
        MutableCopy = CFStringCreateMutableCopy(0, 128, theString);
        v39.location = 0;
        v39.length = 1;
        CFStringDelete(MutableCopy, v39);
        v14 = copyStringEndingIn(MutableCopy, @"|");
        if (!v14)
        {
          goto LABEL_45;
        }

        v15 = v14;
        v16 = CFStringCreateCopy(0, MutableCopy);
        v11 = v16 != 0;
        if (v16)
        {
          v17 = v16;
          if (a3)
          {
            *a3 = CFStringCreateCopy(0, v15);
          }

          if (a7)
          {
            *a7 = CFStringCreateCopy(0, v17);
          }

          CFRelease(v15);
        }

        else
        {
          v17 = v15;
        }

        break;
      default:
        return v11;
    }

    v30 = v17;
LABEL_53:
    CFRelease(v30);
    goto LABEL_54;
  }

  if (a1 <= 7)
  {
    if (a1 == 6)
    {
      if (a4)
      {
        v24 = CFStringGetLength(@"dbg-");
        v25 = CFStringGetLength(theString);
        v42.length = v25 - CFStringGetLength(@"dbg-");
        v42.location = v24;
        *a4 = CFStringCreateWithSubstring(0, theString, v42);
      }
    }

    else if (a5)
    {
      v40.length = CFStringGetLength(theString) - 1;
      v11 = 1;
      v40.location = 1;
      *a5 = CFStringCreateWithSubstring(0, theString, v40);
      return v11;
    }

    return 1;
  }

  if (a1 == 8)
  {
    v11 = 1;
    if (!a3 || !a7)
    {
      return v11;
    }

    MutableCopy = CFStringCreateMutableCopy(0, 128, theString);
    v26 = copyStringEndingIn(MutableCopy, @"|");
    if (v26)
    {
      v27 = v26;
      v28 = CFStringCreateCopy(0, MutableCopy);
      v11 = v28 != 0;
      if (v28)
      {
        v29 = v28;
        *a3 = CFStringCreateCopy(0, v27);
        *a7 = CFStringCreateCopy(0, v29);
        CFRelease(v27);
        v27 = v29;
      }

      v30 = v27;
      goto LABEL_53;
    }

LABEL_45:
    v11 = 0;
LABEL_54:
    if (!MutableCopy)
    {
      return v11;
    }

    v37 = MutableCopy;
LABEL_56:
    CFRelease(v37);
    return v11;
  }

  if (a1 != 9)
  {
    return v11;
  }

  if (!a7)
  {
    return 1;
  }

  v18 = CFStringCreateMutableCopy(0, 128, theString);
  v19 = copyStringEndingIn(v18, @"|");
  if (!v19)
  {
    v11 = 0;
    if (!v18)
    {
      return v11;
    }

    goto LABEL_47;
  }

  v20 = v19;
  v21 = CFStringCreateCopy(0, v18);
  v11 = v21 != 0;
  if (v21)
  {
    v22 = v21;
    *a7 = CFStringCreateCopy(0, v21);
    CFRelease(v20);
    v20 = v22;
  }

  CFRelease(v20);
  if (v18)
  {
LABEL_47:
    v37 = v18;
    goto LABEL_56;
  }

  return v11;
}

CFStringRef copyStringEndingIn(__CFString *theString, const __CFString *a2)
{
  if (a2)
  {
    location = CFStringFind(theString, a2, 0).location;
    if (location == -1)
    {
      return 0;
    }

    else
    {
      v4 = location;
      v9.location = 0;
      v9.length = location;
      v5 = CFStringCreateWithSubstring(0, theString, v9);
      v8.length = v4 + 1;
      v8.location = 0;
      CFStringDelete(theString, v8);
      return v5;
    }
  }

  else
  {

    return CFStringCreateCopy(0, theString);
  }
}

uint64_t SOSKVSKeyGetKeyTypeAndParse(const __CFString *a1, CFStringRef *a2, CFStringRef *a3, CFStringRef *a4, uint64_t a5, CFStringRef *a6, CFStringRef *a7)
{
  KeyType = SOSKVSKeyGetKeyType(a1);
  if (SOSKVSKeyParse(KeyType, a1, a2, a3, a4, v14, a6, a7))
  {
    return KeyType;
  }

  else
  {
    return 10;
  }
}

CFStringRef SOSCircleKeyCreateWithCircle(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 16)) != 0)
  {
    return CFStringCreateWithFormat(0, 0, @"%@%@", @"o", v1);
  }

  else
  {
    return 0;
  }
}

CFStringRef SOSRingKeyCreateWithName(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithFormat(0, 0, @"%@%@", @"~", result);
  }

  return result;
}

CFTypeRef SOSCircleKeyCopyCircleName(const __CFString *a1, CFTypeRef *a2)
{
  cf = 0;
  KeyType = SOSKVSKeyGetKeyType(a1);
  if (!SOSKVSKeyParse(KeyType, a1, &cf, 0, 0, v5, 0, 0) || KeyType)
  {
    SOSCreateErrorWithFormat(1036, 0, a2, 0, @"Couldn't find circle name in key '%@'", a1);
    v6 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v6);
    }
  }

  return cf;
}

CFTypeRef SOSMessageKeyCopyCircleName(const __CFString *a1, CFTypeRef *a2)
{
  cf = 0;
  KeyType = SOSKVSKeyGetKeyType(a1);
  if (!SOSKVSKeyParse(KeyType, a1, &cf, 0, 0, v5, 0, 0) || KeyType != 1)
  {
    SOSCreateErrorWithFormat(1036, 0, a2, 0, @"Couldn't find circle name in key '%@'", a1);
    v6 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v6);
    }
  }

  return cf;
}

CFTypeRef SOSMessageKeyCopyFromPeerName(const __CFString *a1, CFTypeRef *a2)
{
  cf = 0;
  KeyType = SOSKVSKeyGetKeyType(a1);
  if (!SOSKVSKeyParse(KeyType, a1, 0, 0, 0, v5, &cf, 0) || KeyType != 1)
  {
    SOSCreateErrorWithFormat(1036, 0, a2, 0, @"Couldn't find from peer in key '%@'", a1);
    v6 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v6);
    }
  }

  return cf;
}

CFStringRef SOSMessageKeyCreateWithCircleAndPeerNames(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *(a1 + 16);
  }

  else
  {
    v3 = 0;
  }

  return CFStringCreateWithFormat(0, 0, @"%@%@%@%@%@", v3, @"|", a2, @":", a3);
}

CFStringRef SOSMessageKeyCreateWithCircleAndPeerInfos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v3 = *(a2 + 40);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (a1)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    return CFStringCreateWithFormat(0, 0, @"%@%@%@%@%@", v5, @"|", v3, @":", v4);
  }

  v3 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = *(a3 + 40);
  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = *(a1 + 16);
  return CFStringCreateWithFormat(0, 0, @"%@%@%@%@%@", v5, @"|", v3, @":", v4);
}

CFStringRef SOSRetirementKeyCreateWithCircleAndPeer(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(a1 + 16);
  }

  else
  {
    v4 = 0;
  }

  return CFStringCreateWithFormat(0, 0, @"%@%@%@%@", @"-", v4, @"|", a2, v2, v3);
}

CFStringRef SOSLastKeyParametersPushedKeyCreateWithAccountGestalt(void *a1)
{
  v1 = [a1 gestalt];
  if (v1)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"{");
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __CFDictionaryCopySuperCompactDescription_block_invoke;
    context[3] = &__block_descriptor_tmp_48_16234;
    context[4] = MutableCopy;
    CFDictionaryApplyFunction(v1, apply_block_2_16219, context);
    CFStringAppendFormat(MutableCopy, 0, @"}");
  }

  else
  {
    MutableCopy = CFCopyDescription(*MEMORY[0x1E695E738]);
  }

  v3 = CFStringCreateWithFormat(0, 0, @"%@", MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  v4 = CFStringCreateWithFormat(0, 0, @"%@%@%@%@", @"k", @">KeyParameters", @"|", v3);
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

__CFString *SOSKeyedPubKeyIdentifierCreateWithData(const __CFString *a1, const __CFData *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = SOSCopyIDOfDataBuffer(a2);
  v4 = v3;
  if (a1 && v3)
  {
    if (CFStringGetLength(a1) == 2)
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 50, a1);
      CFStringAppend(MutableCopy, @"-");
      CFStringAppend(MutableCopy, v4);
LABEL_5:
      CFRelease(v4);
      goto LABEL_6;
    }

LABEL_8:
    MutableCopy = 0;
    goto LABEL_5;
  }

  if (v3)
  {
    goto LABEL_8;
  }

  v8 = secLogObjForScope("kpid");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = 0;
    _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "Couldn't create kpid: %@", &v9, 0xCu);
  }

  MutableCopy = 0;
LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return MutableCopy;
}

CFStringRef SOSKeyedPubKeyIdentifierCopyPrefix(const __CFString *a1)
{
  if (CFStringFind(a1, @"-", 0).location != 2)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  v3.location = 0;
  v3.length = 2;

  return CFStringCreateWithSubstring(v2, a1, v3);
}

CFHashCode SOSPeerInfoIDHash(void *a1)
{
  IDOrString = GetIDOrString(a1);

  return CFHash(IDOrString);
}

void *GetIDOrString(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == SOSPeerInfoGetTypeID())
    {
      return v1[5];
    }

    else
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFStringGetTypeID())
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL SOSPeerInfoIDEqual(void *a1, void *a2)
{
  IDOrString = GetIDOrString(a1);
  v4 = GetIDOrString(a2);
  if (IDOrString && v4)
  {
    return CFEqual(IDOrString, v4) != 0;
  }

  else
  {
    return IDOrString == v4;
  }
}

uint64_t SOSPeerInfoSetContainsIdenticalPeers(CFTypeRef cf1, CFTypeRef cf2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  if (!cf1 || !cf2)
  {
    if (cf1 == cf2)
    {
      goto LABEL_4;
    }

LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  if (!CFEqual(cf1, cf2))
  {
    goto LABEL_6;
  }

LABEL_4:
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SOSPeerInfoSetContainsIdenticalPeers_block_invoke;
  v6[3] = &unk_1E70DAFF8;
  v6[4] = &v7;
  v6[5] = cf2;
  CFSetApplyFunction(cf1, apply_block_1_7727, v6);
  v4 = *(v8 + 24);
LABEL_7:
  _Block_object_dispose(&v7, 8);
  return v4 & 1;
}

const void *__SOSPeerInfoSetContainsIdenticalPeers_block_invoke(uint64_t a1, const void *a2)
{
  result = CFSetGetValue(*(a1 + 40), a2);
  if (a2 && result)
  {
    result = CFEqual(a2, result);
    v5 = result != 0;
  }

  else
  {
    v5 = result == a2;
  }

  *(*(*(a1 + 32) + 8) + 24) &= v5;
  return result;
}

CFMutableSetRef CFSetCreateMutableForSOSPeerInfosByIDWithArray(const __CFAllocator *a1, const __CFArray *a2)
{
  Mutable = CFSetCreateMutable(a1, 0, &kSOSPeerSetCallbacks);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __CFSetCreateMutableForSOSPeerInfosByIDWithArray_block_invoke;
  context[3] = &__block_descriptor_tmp_1_7731;
  context[4] = Mutable;
  v6.length = CFArrayGetCount(a2);
  v6.location = 0;
  CFArrayApplyFunction(a2, v6, apply_block_1_7727, context);
  return Mutable;
}

void __CFSetCreateMutableForSOSPeerInfosByIDWithArray_block_invoke(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == SOSPeerInfoGetTypeID())
    {
      v5 = *(a1 + 32);

      CFSetAddValue(v5, cf);
    }
  }
}

void CFArrayOfSOSPeerInfosSortByID(const __CFArray *a1)
{
  if (a1 && CFArrayGetCount(a1) >= 1)
  {
    v2.length = CFArrayGetCount(a1);
    v2.location = 0;

    CFArraySortValues(a1, v2, SOSPeerInfoCompareByID, 0);
  }
}

__CFArray *SOSPeerInfoArrayCreateFromDER(const __CFAllocator *a1, CFTypeRef *a2, uint64_t *a3)
{
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  v7 = *a3;
  v8 = ccder_decode_constructed_tl();
  *a3 = v8;
  if (!v8)
  {
    SOSCreateErrorWithFormat(1035, 0, a2, 0, @"%@", @"Bad Peer Info Array Sequence Header");
    if (!Mutable)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v8 != 0xAAAAAAAAAAAAAAAALL)
  {
    while (1)
    {
      v9 = SOSPeerInfoCreateFromDER(a1, a2, a3);
      v10 = v9;
      if (!v9)
      {
        break;
      }

      if (!*a3)
      {
        v11 = v9;
        if (!a2)
        {
          goto LABEL_11;
        }

LABEL_9:
        SOSCreateErrorWithFormat(1035, *a2, a2, 0, @"%@", @"Bad Peer Info Array DER");
        goto LABEL_12;
      }

      CFArrayAppendValue(Mutable, v9);
      CFRelease(v10);
      if (*a3 == 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_6;
      }
    }

    v11 = 0;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_11:
    SOSCreateErrorWithFormat(1035, 0, 0, 0, @"%@", @"Bad Peer Info Array DER");
LABEL_12:
    if (v10)
    {
      CFRelease(v11);
    }

    if (!Mutable)
    {
      goto LABEL_16;
    }

LABEL_15:
    CFRelease(Mutable);
LABEL_16:
    Mutable = 0;
    *a3 = 0;
    return Mutable;
  }

LABEL_6:
  if (!Mutable)
  {
    goto LABEL_16;
  }

  return Mutable;
}