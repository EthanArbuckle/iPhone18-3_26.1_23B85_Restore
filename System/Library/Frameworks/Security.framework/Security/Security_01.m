CFTypeID __SecPolicyAddPinningRequiredIfInfoSpecified_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    result = CFBundleGetInfoDictionary(result);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"SecTrustPinningRequired");
      if (result)
      {
        v1 = result;
        v2 = CFGetTypeID(result);
        result = CFBooleanGetTypeID();
        if (v2 == result)
        {
          result = CFBooleanGetValue(v1);
          if (result)
          {
            SecPolicyAddPinningRequiredIfInfoSpecified_hasPinningRequiredKey = 1;
          }
        }
      }

      SecPolicyAddPinningRequiredIfInfoSpecified_result = 1;
    }
  }

  return result;
}

CFDictionaryRef __SecCertificateGetTypeID_block_invoke(uint64_t a1)
{
  **(a1 + 32) = _CFRuntimeRegisterClass();
  result = CFDictionaryCreate(*MEMORY[0x1E695E480], SecCertificateInitializeExtensionParsers_extnOIDs, SecCertificateInitializeExtensionParsers_extnParsers, 21, &SecDERItemKeyCallBacks, 0);
  sExtensionParsers = result;
  return result;
}

uint64_t __SecPolicyGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t __SecTrustGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

void SecPolicyAddBasicX509Options(__CFDictionary *a1)
{
  SecPolicyAddBasicCertOptions(a1);
  v2 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(a1, @"TemporalValidity", *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(a1, @"BlackListedLeaf", v2);

  CFDictionaryAddValue(a1, @"GrayListedLeaf", v2);
}

void SecPolicyAddBasicCertOptions(__CFDictionary *a1)
{
  v2 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(a1, @"CriticalExtensions", *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(a1, @"UnparseableExtension", v2);
  CFDictionaryAddValue(a1, @"DuplicateExtension", v2);
  CFDictionaryAddValue(a1, @"IdLinkage", v2);
  CFDictionaryAddValue(a1, @"BasicConstraints", v2);
  CFDictionaryAddValue(a1, @"NonEmptySubject", v2);
  CFDictionaryAddValue(a1, @"WeakKeySize", v2);

  CFDictionaryAddValue(a1, @"WeakSignature", v2);
}

uint64_t SecECPublicKeyInit(uint64_t a1, unint64_t **__src, uint64_t a3, int a4)
{
  v5 = *(a1 + 24);
  if (a4 == 7)
  {
    v8 = 4294941021;
    if (!getCPForPublicSize())
    {
      return v8;
    }

    goto LABEL_14;
  }

  if (a4 == 6)
  {
    v11 = **__src;
    if (v11 <= 9)
    {
      memcpy(*(a1 + 24), __src, 24 * v11 + 16);
      return 0;
    }

    return 4294967246;
  }

  if (a4 != 4)
  {
    return 4294967246;
  }

  if (a3 != 48)
  {
    return 4294941021;
  }

  v6 = __src[2];
  if (!v6)
  {
    return 4294941021;
  }

  v7 = __src[3];
  if (v7 < 3 || v7 - 2 < *(v6 + 1))
  {
    return 4294941021;
  }

  v8 = 4294941021;
  if (ccec_cp_for_oid_0(v6))
  {
    v10 = __src[4];
    v9 = __src[5];
LABEL_14:
    if (MEMORY[0x18CFD9F40]())
    {
      return 4294941021;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

uint64_t ccec_cp_for_oid(int **a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1[1];
  if (v1 != 7)
  {
    if (v1 == 10 && **a1 == 0x33DCE48862A0806 && *(*a1 + 4) == 1793)
    {
      JUMPOUT(0x18CFD9EA0);
    }

    return 0;
  }

  v3 = *a1;
  if (**a1 == -2127887098 && *(*a1 + 3) == 570426497)
  {
    JUMPOUT(0x18CFD9EB0);
  }

  v5 = *v3;
  v6 = *(v3 + 3);
  if (v5 != -2127887098 || v6 != 587203713)
  {
    return 0;
  }

  return ccec_cp_521();
}

uint64_t ccec_cp_for_oid_0(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (ccoid_equal())
  {

    return ccec_cp_192();
  }

  if (ccoid_equal())
  {

    JUMPOUT(0x18CFD9EA0);
  }

  if (ccoid_equal())
  {

    JUMPOUT(0x18CFD9E90);
  }

  if ((ccoid_equal() & 1) != 0 || ccoid_equal())
  {

    JUMPOUT(0x18CFD9EB0);
  }

  if ((ccoid_equal() & 1) == 0 && !ccoid_equal())
  {
    return 0;
  }

  return ccec_cp_521();
}

uint64_t sec_protocol_options_copy_sec_protocol_configuration(uint64_t a1)
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
  v3[2] = __sec_protocol_options_copy_sec_protocol_configuration_block_invoke;
  v3[3] = &unk_1E70D5850;
  v3[4] = &v4;
  sec_protocol_options_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

id sec_protocol_configuration_copy_transformed_options_for_host(void *a1, const char *a2, int a3)
{
  v5 = a1;
  v6 = sec_protocol_options_copy_sec_protocol_configuration(v5);
  v7 = v6;
  if (v6 && ((sec_protocol_configuration_find_exception_for_host(v6, a2, 0), v8 = objc_claimAutoreleasedReturnValue(), v9 = sec_protocol_configuration_tls_required_for_host_or_address_internal(v7, a3, v8), v8) || v9))
  {
    v10 = sec_protocol_options_copy(v5);
    sec_protocol_configuration_copy_transformed_options_with_ats_minimums(v10);
    objc_claimAutoreleasedReturnValue();
    sec_protocol_configuration_copy_transformed_options_for_host_or_address_internal(v7, v10, v8);
    objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

BOOL __sec_protocol_options_copy_sec_protocol_configuration_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 296);
    if (v4)
    {
      v4 = os_retain(v4);
    }

    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  return a2 != 0;
}

BOOL sec_protocol_options_get_enable_encrypted_client_hello(sec_protocol_options_t options)
{
  if (options)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_options_get_enable_encrypted_client_hello_block_invoke;
    v3[3] = &unk_1E70D5310;
    v3[4] = &v4;
    sec_protocol_options_access_handle(options, v3);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL __sec_protocol_options_get_enable_encrypted_client_hello_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 369) & 0x2000000) != 0;
  }

  return a2 != 0;
}

sec_certificate_t sec_certificate_create(SecCertificateRef certificate)
{
  v2 = [SecConcrete_sec_certificate alloc];

  return [(SecConcrete_sec_certificate *)v2 initWithCertificate:certificate];
}

uint64_t SecKeyCopyPublicBytes(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = _os_activity_create(&dword_1887D2000, "SecKeyCopyPublicBytes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v10.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &v10);
  _SecKeyCheck(a1, "SecKeyCopyPublicBytes");
  v6 = *(a1 + 16);
  if (*v6 >= 2u && (v7 = *(v6 + 112)) != 0)
  {
    v8 = v7(a1, a2);
  }

  else
  {
    v8 = 4294967292;
  }

  os_activity_scope_leave(&v10);

  objc_autoreleasePoolPop(v4);
  return v8;
}

dispatch_queue_t __SecCFCalendarGetZuluQueue_block_invoke()
{
  result = dispatch_queue_create("ZuluCalendar", 0);
  fqueue_cf = result;
  return result;
}

void __SecCFCalendarGetZulu_block_invoke()
{
  v0 = *MEMORY[0x1E695E480];
  sZuluCalendar = CFCalendarCreateWithIdentifier(*MEMORY[0x1E695E480], *MEMORY[0x1E695E678]);
  v1 = CFTimeZoneCreateWithTimeIntervalFromGMT(v0, 0.0);
  CFCalendarSetTimeZone(sZuluCalendar, v1);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t __SecKeyGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t SecRSAPublicKeyInit(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  result = 4294967246;
  if (a4 <= 2)
  {
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    if (a4 != 2)
    {
      return result;
    }

    v8 = malloc_type_calloc(1uLL, 0xC28uLL, 0x10600407F0B3959uLL);
    *(a1 + 24) = v8;
    if (!v8)
    {
      return 4294967188;
    }

    v9 = v8;
    *v8 = 128;
    v27[0] = a2;
    v27[1] = a3;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v26[1] = v10;
    v26[2] = v10;
    v26[0] = v10;
    if (DERParseSequence(v27, DERNumRSAPubKeyAppleItemSpecs, &DERRSAPubKeyAppleItemSpecs, v26, 0x30uLL))
    {
      return 4294941021;
    }

    v11 = *(&v26[0] + 1);
    v12 = *&v26[0];
    v13 = v9;
  }

  else
  {
    if (a4 != 3)
    {
      if (a4 == 6)
      {
        v21 = *a2;
        v22 = 24 * *a2 + 40;
        v23 = malloc_type_calloc(1uLL, v22, 0x10600407F0B3959uLL);
        *(a1 + 24) = v23;
        if (v23)
        {
          v24 = v23;
          *v23 = v21;
          v25 = ccrsa_ctx_public();
          memcpy(v24, v25, v22);
          return 0;
        }

        return 4294967188;
      }

      if (a4 != 7)
      {
        return result;
      }

LABEL_11:
      v14 = ccrsa_import_pub_n();
      if ((v14 - 129) < 0xFFFFFFFFFFFFFF80)
      {
        return 4294967246;
      }

      v15 = v14;
      v16 = malloc_type_calloc(1uLL, 24 * v14 + 40, 0x10600407F0B3959uLL);
      *(a1 + 24) = v16;
      if (v16)
      {
        *v16 = v15;
        v17 = ccrsa_import_pub();
        goto LABEL_17;
      }

      return 4294967188;
    }

    v18 = a2[1] + 7;
    v13 = malloc_type_calloc(1uLL, 3 * (v18 & 0xFFFFFFFFFFFFFFF8) + 40, 0x10600407F0B3959uLL);
    *(a1 + 24) = v13;
    if (!v13)
    {
      return 4294967188;
    }

    *v13 = v18 >> 3;
    v12 = *a2;
    v11 = a2[1];
    v20 = a2[2];
    v19 = a2[3];
  }

  v17 = ccrsa_pub_init(v13, v11, v12);
LABEL_17:
  if (v17)
  {
    return 4294967246;
  }

  else
  {
    return 0;
  }
}

CFArrayRef __SecTrustGetCurrentAccessGroups_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = CFArrayCreateForCFTypes(*MEMORY[0x1E695E480], a2, a3, a4, a5, a6, a7, a8, @"com.apple.trustd");
  SecTrustGetCurrentAccessGroups_accessGroups = result;
  return result;
}

_xpc_connection_s *__trustd_connection_block_invoke()
{
  result = securityd_create_connection("com.apple.trustd", -1);
  sTrustdConnection = result;
  return result;
}

uint64_t SecXPCDictionarySetPolicies(void *a1, const __CFArray *a2, __CFString **a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = xpc_array_create(0, 0);
  if (v6)
  {
    v7 = v6;
    TypeID = SecPolicyGetTypeID();
    validate_array_of_items(a2, @"policy", TypeID, 1);
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v11 = Count;
      v12 = 0;
      *&v10 = 134217984;
      v32 = v10;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v12);
        if (!ValueAtIndex)
        {
          goto LABEL_27;
        }

        v14 = ValueAtIndex;
        objects = 0;
        object = 0;
        v15 = ValueAtIndex[2];
        if (!v15)
        {
LABEL_14:
          v24 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v32;
            v34 = v14;
            _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "policy 0x%lX has no _oid", buf, 0xCu);
          }

          goto LABEL_16;
        }

        v16 = CFGetTypeID(v15);
        if (v16 == CFStringGetTypeID() && (v17 = v14[3]) != 0 && (v18 = CFGetTypeID(v17), v18 == CFStringGetTypeID()))
        {
          MutableCopy = CFStringCreateMutableCopy(0, 0, v14[2]);
          if (MutableCopy)
          {
            v20 = MutableCopy;
            CFStringAppend(MutableCopy, @"++");
            CFStringAppend(v20, v14[3]);
            objects = _CFXPCCreateXPCObjectFromCFObject();
            CFRelease(v20);
            goto LABEL_16;
          }
        }

        else
        {
          v21 = v14[2];
          if (!v21)
          {
            goto LABEL_14;
          }

          v22 = CFGetTypeID(v21);
          if (v22 != CFStringGetTypeID())
          {
            goto LABEL_14;
          }
        }

        v23 = v14[2];
        objects = _CFXPCCreateXPCObjectFromCFObject();
LABEL_16:
        v25 = v14[4];
        if (v25 && (v26 = CFGetTypeID(v25), v26 == CFDictionaryGetTypeID()))
        {
          v27 = v14[4];
          object = _CFXPCCreateXPCObjectFromCFObject();
        }

        else
        {
          v28 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v32;
            v34 = v14;
            _os_log_impl(&dword_1887D2000, v28, OS_LOG_TYPE_DEFAULT, "policy 0x%lX has no _options", buf, 0xCu);
          }
        }

        v29 = xpc_array_create(&objects, 2uLL);
        if (objects)
        {
          xpc_release(objects);
        }

        if (object)
        {
          xpc_release(object);
        }

        if (!v29)
        {
          xpc_release(v7);
          goto LABEL_30;
        }

        xpc_array_append_value(v7, v29);
        xpc_release(v29);
LABEL_27:
        ++v12;
      }

      while (v11 != v12);
    }

    xpc_dictionary_set_value(a1, "policies", v7);
    xpc_release(v7);
    result = 1;
  }

  else
  {
LABEL_30:
    SecError(-108, a3, @"failed to create xpc_array of policies", v32);
    result = 0;
  }

  v31 = *MEMORY[0x1E69E9840];
  return result;
}

__CFBundle *__getNSPinnedIdentitiesForHostName_block_invoke()
{
  result = CFBundleGetMainBundle();
  if (!result)
  {
    goto LABEL_7;
  }

  result = CFBundleGetInfoDictionary(result);
  if (!result)
  {
    goto LABEL_7;
  }

  result = CFDictionaryGetValue(result, @"NSAppTransportSecurity");
  if (!result || (v1 = result, v2 = CFGetTypeID(result), result = CFDictionaryGetTypeID(), v2 != result) || (result = CFDictionaryGetValue(v1, @"NSPinnedDomains"), (getNSPinnedIdentitiesForHostName_nsPinnedDomainsDict = result) == 0) || (v3 = CFGetTypeID(result), result = CFDictionaryGetTypeID(), v3 != result))
  {
LABEL_7:
    getNSPinnedIdentitiesForHostName_nsPinnedDomainsDict = 0;
  }

  return result;
}

unint64_t SecCertificateHash(void *a1)
{
  v1 = 0;
  v2 = a1[11];
  v3 = v2 - 4;
  if (v2 < 4)
  {
    v3 = 0;
  }

  if (v3 < v2)
  {
    v1 = 0;
    v4 = 4;
    if (v2 < 4)
    {
      v4 = a1[11];
    }

    v5 = -v4;
    do
    {
      v1 = *(a1[10] + v2 + v5) | (v1 << 8);
    }

    while (!__CFADD__(v5++, 1));
  }

  return v2 + a1[3] + v1;
}

CFAbsoluteTime SecTrustGetVerifyTime(SecTrustRef trust)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  Current = CFAbsoluteTimeGetCurrent();
  if (trust)
  {
    v2 = *(trust + 17);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __SecTrustGetVerifyTime_block_invoke;
    v5[3] = &unk_1E70E2880;
    v5[4] = &v6;
    v5[5] = trust;
    dispatch_sync(v2, v5);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t SecSignatureHashAlgorithmForAlgorithmOid(void *a1)
{
  if (!a1 || !*a1 || !a1[1])
  {
    return 0;
  }

  if (DEROidCompare(a1, &oidEd448) || DEROidCompare(a1, &oidSHAKE256))
  {
    return 9;
  }

  v2 = 8;
  if (DEROidCompare(a1, &oidEd25519))
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  if (!DEROidCompare(a1, &oidSha512Ecdsa) && !DEROidCompare(a1, &oidSha512Rsa) && !DEROidCompare(a1, &oidSha512))
  {
    if (DEROidCompare(a1, &oidSha384Ecdsa) || DEROidCompare(a1, &oidSha384Rsa) || DEROidCompare(a1, &oidSha384))
    {
      return 7;
    }

    else if (DEROidCompare(a1, &oidSha256Ecdsa) || DEROidCompare(a1, &oidSha256Rsa) || DEROidCompare(a1, &oidSha256))
    {
      return 6;
    }

    else if (DEROidCompare(a1, &oidSha224Ecdsa) || DEROidCompare(a1, &oidSha224Rsa) || DEROidCompare(a1, &oidSha224))
    {
      return 5;
    }

    else if (DEROidCompare(a1, &oidSha1Ecdsa) || DEROidCompare(a1, &oidSha1Rsa) || DEROidCompare(a1, &oidSha1Dsa) || DEROidCompare(a1, &oidSha1DsaOIW) || DEROidCompare(a1, &oidSha1DsaCommonOIW) || DEROidCompare(a1, &oidSha1RsaOIW) || DEROidCompare(a1, &oidSha1Fee) || DEROidCompare(a1, &oidSha1))
    {
      return 4;
    }

    else if (DEROidCompare(a1, &oidMd5Rsa) || DEROidCompare(a1, &oidMd5Fee) || DEROidCompare(a1, &oidMd5))
    {
      return 3;
    }

    else if (DEROidCompare(a1, &oidMd4Rsa) || DEROidCompare(a1, &oidMd4))
    {
      return 2;
    }

    else
    {
      if (DEROidCompare(a1, &oidMd2Rsa))
      {
        return 1;
      }

      v2 = v4;
      if (DEROidCompare(a1, &oidMd2))
      {
        return 1;
      }
    }
  }

  return v2;
}

__CFArray *SecCertificateXPCArrayCopyArray(void *a1, __CFString **a2)
{
  if (MEMORY[0x18CFDC200]() != MEMORY[0x1E69E9E50])
  {
    SecError(-50, a2, @"certificates xpc value is not an array");
    return 0;
  }

  count = xpc_array_get_count(a1);
  v5 = count;
  if (count >= 0x7FFFFFFFFFFFFFFFLL)
  {
    SecError(-108, a2, @"failed to create CFArray of capacity %zu", count);
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    SecError(-108, a2, @"failed to create CFArray of capacity %zu", v5);
    return Mutable;
  }

  if (v5)
  {
    v7 = 0;
    while (1)
    {
      v8 = SecCertificateCreateWithXPCArrayAtIndex(a1, v7, a2);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      CFArraySetValueAtIndex(Mutable, v7, v8);
      CFRelease(v9);
      if (v5 == ++v7)
      {
        return Mutable;
      }
    }

    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

void *SecCertificateCreateWithXPCArrayAtIndex(void *a1, size_t a2, __CFString **a3)
{
  length = 0;
  data = xpc_array_get_data(a1, a2, &length);
  if (!data || length > 0x7FFFFFFFFFFFFFFELL || (result = SecCertificateCreateWithBytes(*MEMORY[0x1E695E480], data, length)) == 0)
  {
    SecError(-50, a3, @"certificates[%zu] failed to decode", a2);
    return 0;
  }

  return result;
}

uint64_t SecTrustValidateInput(void *a1)
{
  v2 = a1[2];
  TypeID = SecCertificateGetTypeID();
  v4 = validate_array_of_items(v2, @"certificate", TypeID, 1);
  v5 = a1[3];
  v6 = SecCertificateGetTypeID();
  v7 = validate_array_of_items(v5, @"input anchor", v6, 0);
  if (v7)
  {
    v4 = v7;
  }

  v8 = a1[4];
  v9 = SecPolicyGetTypeID();
  LODWORD(result) = validate_array_of_items(v8, @"policy", v9, 1);
  if (result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

uint64_t validate_array_of_items(const __CFArray *a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a4;
  v32 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    v9 = Count;
    if (Count || (v4 & 1) == 0)
    {
      if (Count >= 1)
      {
        v10 = 0;
        v11 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v11);
          if (!ValueAtIndex)
          {
            v17 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v27 = a2;
              v28 = 2112;
              v29 = @"reference is nil";
              v30 = 1024;
              v31 = v11;
              _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "%@ %@ (index %d)", buf, 0x1Cu);
            }

            v10 = 4294967246;
            goto LABEL_29;
          }

          v13 = ValueAtIndex;
          v14 = CFGetTypeID(ValueAtIndex);
          if (v14 != a3)
          {
            v15 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v27 = a2;
              v28 = 2112;
              v29 = @"is not the expected CF type";
              v30 = 1024;
              v31 = v11;
              _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "%@ %@ (index %d)", buf, 0x1Cu);
            }

            v10 = 4294967246;
          }

          if (v14 == SecCertificateGetTypeID())
          {
            v16 = v13[2];
            if (!v13[3])
            {
              v18 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v27 = a2;
                v28 = 2112;
                v29 = @"has zero length";
                v30 = 1024;
                v31 = v11;
                _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "%@ %@ (index %d)", buf, 0x1Cu);
              }

              v10 = 4294967246;
              if (v16)
              {
                goto LABEL_24;
              }

LABEL_21:
              v19 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v27 = a2;
                v28 = 2112;
                v29 = @"has nil bytes";
                v30 = 1024;
                v31 = v11;
                _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "%@ %@ (index %d)", buf, 0x1Cu);
              }

              v10 = 4294967246;
              goto LABEL_24;
            }

            if (!v16)
            {
              goto LABEL_21;
            }
          }

LABEL_24:
          if (v14 == SecPolicyGetTypeID())
          {
            v20 = v13[2];
            if (!v20 || (v21 = CFGetTypeID(v20), v21 != CFStringGetTypeID()))
            {
              v22 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v27 = a2;
                v28 = 2112;
                v29 = @"has invalid OID string!";
                v30 = 1024;
                v31 = v11;
                _os_log_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEFAULT, "%@ %@ (index %d)", buf, 0x1Cu);
              }
            }
          }

LABEL_29:
          if (v9 == ++v11)
          {
            goto LABEL_36;
          }
        }
      }

      goto LABEL_35;
    }
  }

  else if (!a4)
  {
LABEL_35:
    v10 = 0;
    goto LABEL_36;
  }

  v23 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = a2;
    _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "no %@ in array!", buf, 0xCu);
  }

  v10 = 4294967246;
LABEL_36:
  v24 = *MEMORY[0x1E69E9840];
  return v10;
}

CFMutableArrayRef SecPolicyXPCArrayCopyArray(void *a1, __CFString **a2)
{
  if (MEMORY[0x18CFDC200]() != MEMORY[0x1E69E9E50])
  {
    SecError(-50, a2, @"policies xpc value is not an array");
    return 0;
  }

  count = xpc_array_get_count(a1);
  v4 = count;
  if (count >= 0x7FFFFFFFFFFFFFFFLL)
  {
    SecError(-108, a2, @"failed to create CFArray of capacity %zu", count);
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    SecError(-108, a2, @"failed to create CFArray of capacity %zu", v4);
    return Mutable;
  }

  if (v4)
  {
    v6 = 0;
    while (1)
    {
      value = xpc_array_get_value(a1, v6);
      if (!value)
      {
        v21 = @"policy xpc value is NULL";
        goto LABEL_35;
      }

      v8 = value;
      if (MEMORY[0x18CFDC200]() != MEMORY[0x1E69E9E50])
      {
        v21 = @"policy xpc value is not an array";
LABEL_33:
        v22 = -26275;
        goto LABEL_36;
      }

      if (xpc_array_get_count(v8) <= 1)
      {
        v21 = @"policy xpc array count < 2";
        goto LABEL_33;
      }

      xpc_array_get_value(v8, 0);
      v9 = _CFXPCCreateCFObjectFromXPCObject();
      if (!v9)
      {
        v25 = 0;
        v21 = @"failed to convert xpc policy[0]=%@ to CFString";
LABEL_35:
        v22 = -50;
LABEL_36:
        SecError(v22, a2, v21, v25);
        goto LABEL_37;
      }

      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 != CFStringGetTypeID())
      {
        SecError(-50, a2, @"failed to convert xpc policy[0]=%@ to CFString", v10);
        goto LABEL_41;
      }

      xpc_array_get_value(v8, 1uLL);
      v12 = _CFXPCCreateCFObjectFromXPCObject();
      if (!v12)
      {
        SecError(-50, a2, @"failed to convert xpc policy[1]=%@ to CFDictionary", 0);
LABEL_41:
        v24 = v10;
LABEL_42:
        CFRelease(v24);
LABEL_37:
        CFRelease(Mutable);
        return 0;
      }

      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 != CFDictionaryGetTypeID())
      {
        SecError(-50, a2, @"failed to convert xpc policy[1]=%@ to CFDictionary", v13);
        CFRelease(v10);
        v24 = v13;
        goto LABEL_42;
      }

      v15 = CFStringFind(v10, @"++", 0);
      if (v15.length != 2)
      {
        break;
      }

      v27.location = 0;
      v27.length = v15.location;
      v16 = CFStringCreateWithSubstring(0, v10, v27);
      v17 = v16;
      if (v16)
      {
        CFRetain(v16);
        CFRelease(v17);
      }

      if (v15.location + 2 >= CFStringGetLength(v10))
      {
        v19 = 0;
      }

      else
      {
        v28.length = CFStringGetLength(v10) - v15.location - 2;
        v28.location = v15.location + 2;
        v18 = CFStringCreateWithSubstring(0, v10, v28);
        v19 = v18;
        if (v18)
        {
          CFRetain(v18);
          CFRelease(v19);
        }
      }

      v20 = SecPolicyCreate(v17, v19, v13);
      if (!v20)
      {
        SecError(-26275, a2, @"Failed to create policy");
      }

      CFRelease(v10);
      if (v17)
      {
        CFRelease(v17);
      }

      if (v19)
      {
        goto LABEL_26;
      }

LABEL_27:
      CFRelease(v13);
      if (!v20)
      {
        goto LABEL_37;
      }

      CFArraySetValueAtIndex(Mutable, v6, v20);
      CFRelease(v20);
      if (v4 == ++v6)
      {
        return Mutable;
      }
    }

    SecError(-50, a2, @"failed to convert combined %@ to name and oid", v10);
    v20 = 0;
    v19 = v10;
LABEL_26:
    CFRelease(v19);
    goto LABEL_27;
  }

  return Mutable;
}

uint64_t SecECPublicKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const __CFData *a6, const __CFData *a7, __CFString **a8)
{
  if (a2 != 1 || !CFEqual(cf1, @"algid:sign:ECDSA:digest-X962"))
  {
    v13 = MEMORY[0x1E695E738];
    return *v13;
  }

  if (a5)
  {
    v13 = MEMORY[0x1E695E4D0];
    return *v13;
  }

  CFDataGetLength(a7);
  CFDataGetBytePtr(a7);
  v15 = *(a1 + 24);
  CFDataGetLength(a6);
  CFDataGetBytePtr(a6);
  v16 = ccec_verify();
  if (v16)
  {
    SecError(-67808, a8, @"EC signature verification failed (ccerr %d)", v16);
  }

  else
  {
    SecError(-67808, a8, @"EC signature verification failed, no match");
  }

  return 0;
}

Boolean SecKeyVerifySignature(SecKeyRef key, SecKeyAlgorithm algorithm, CFDataRef signedData, CFDataRef signature, CFErrorRef *error)
{
  v10 = objc_autoreleasePoolPush();
  v11 = _os_activity_create(&dword_1887D2000, "SecKeyVerifySignature", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  _SecKeyCheck(key, "SecKeyVerifySignature");
  if (!signedData)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyVerifySignature() called with NULL signedData"];
  }

  if (!signature)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyVerifySignature() called with NULL signature"];
  }

  v22 = 0;
  v19[0] = key;
  v19[1] = 1;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, algorithm);
  cf = Mutable;
  v21 = 0;
  v13 = SecKeyRunAlgorithmAndCopyResult(v19, signedData, signature, &v22);
  v14 = v13;
  v15 = *MEMORY[0x1E695E4D0];
  if (v13 && v15)
  {
    v16 = CFEqual(v13, v15) != 0;
  }

  else
  {
    v16 = v13 == v15;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  CFRelease(v14);
LABEL_10:
  v17 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v17);
  }

  _SecKeyErrorPropagate(v16, "SecKeyVerifySignature", v22, error);
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v10);
  return v16;
}

__CFData *SecKeyRunAlgorithmAndCopyResult(uint64_t *a1, const __CFData *a2, const __CFData *a3, __CFString **a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = objc_autoreleasePoolPush();
  Count = CFArrayGetCount(a1[2]);
  v10 = Count - 1;
  if (Count > 1)
  {
    v11 = Count;
    v12 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[2], v12++);
      v14 = v12;
      do
      {
        v15 = CFArrayGetValueAtIndex(a1[2], v14);
        if (CFEqual(ValueAtIndex, v15))
        {
          goto LABEL_56;
        }

        ++v14;
      }

      while (v11 != v14);
    }

    while (v12 != v10);
  }

  v16 = CFArrayGetValueAtIndex(a1[2], v10);
  if (CFArrayGetCount(a1[2]) < 1)
  {
    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
  }

  v17 = *MEMORY[0x1E695E738];
  v18 = *(*a1 + 16);
  if (*v18 >= 4u)
  {
    v19 = *(v18 + 152);
    if (v19)
    {
      v20 = a1[1];
      v21 = a1[2];
      v22 = a1[3];
      Mutable = v19();
      goto LABEL_44;
    }
  }

  v53 = v8;
  v24 = a3;
  v25 = a4;
  Mutable = *MEMORY[0x1E695E738];
  AlgorithmId = SecKeyGetAlgorithmId(*a1);
  v27 = &SecKeyCopyBackendOperationResult_paddingMap;
  v28 = 7;
  while (AlgorithmId != v27[1] || !CFEqual(v16, **v27))
  {
    v27 += 3;
    if (!--v28)
    {
      goto LABEL_16;
    }
  }

  v29 = *(v27 + 4);
  if (v29 == -1)
  {
LABEL_16:
    a4 = v25;
    a3 = v24;
    v8 = v53;
    goto LABEL_45;
  }

  length = 0;
  v30 = a1[1];
  if (v30 > 1)
  {
    if (v30 == 2)
    {
      a4 = v25;
      if (*(*(*a1 + 16) + 56))
      {
        if (!a1[3])
        {
          length = SecKeyGetSize(*a1, 2);
          Mutable = CFDataCreateMutable(0, 0);
          CFDataSetLength(Mutable, length);
          v34 = *a1;
          v35 = *(*(*a1 + 16) + 56);
          goto LABEL_36;
        }

LABEL_34:
        Mutable = *MEMORY[0x1E695E4D0];
      }
    }

    else
    {
      if (v30 != 3)
      {
        goto LABEL_16;
      }

      a4 = v25;
      if (*(*(*a1 + 16) + 64))
      {
        if (!a1[3])
        {
          length = SecKeyGetSize(*a1, 2);
          Mutable = CFDataCreateMutable(0, 0);
          CFDataSetLength(Mutable, length);
          v34 = *a1;
          v35 = *(*(*a1 + 16) + 64);
LABEL_36:
          BytePtr = CFDataGetBytePtr(a2);
          v50 = CFDataGetLength(a2);
          MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
          v33 = v35(v34, v29, BytePtr, v50, MutableBytePtr, &length);
          a4 = v25;
          a3 = v24;
          goto LABEL_37;
        }

        goto LABEL_34;
      }
    }

LABEL_40:
    v37 = CFGetTypeID(Mutable);
    if (v37 == CFDataGetTypeID())
    {
      CFDataSetLength(Mutable, length);
    }

    a3 = v24;
    goto LABEL_43;
  }

  if (!v30)
  {
    a4 = v25;
    if (*(*(*a1 + 16) + 40))
    {
      if (!a1[3])
      {
        length = SecKeyGetSize(*a1, 1);
        Mutable = CFDataCreateMutable(0, 0);
        CFDataSetLength(Mutable, length);
        v34 = *a1;
        v35 = *(*(*a1 + 16) + 40);
        goto LABEL_36;
      }

      goto LABEL_34;
    }

    goto LABEL_40;
  }

  if (v30 != 1)
  {
    goto LABEL_16;
  }

  v31 = *a1;
  a4 = v25;
  if (!*(*(*a1 + 16) + 48))
  {
    goto LABEL_40;
  }

  Mutable = *MEMORY[0x1E695E4D0];
  if (a1[3])
  {
    goto LABEL_40;
  }

  v51 = *(*(*a1 + 16) + 48);
  v49 = CFDataGetBytePtr(a2);
  v48 = CFDataGetLength(a2);
  a3 = v24;
  v47 = CFDataGetBytePtr(v24);
  v32 = CFDataGetLength(v24);
  v33 = v51(v31, v29, v49, v48, v47, v32);
LABEL_37:
  if (!v33)
  {
    goto LABEL_40;
  }

  SecError(v33, a4, @"legacy SecKey backend operation:%d(%d) failed", a1[1], v29);
  if (Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

LABEL_43:
  v8 = v53;
LABEL_44:
  if (Mutable == v17)
  {
LABEL_45:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v38 = a1[1];
    if (SecKeyGetAlgorithmAdaptor_onceToken != -1)
    {
      dispatch_once(&SecKeyGetAlgorithmAdaptor_onceToken, &__block_literal_global_12304);
    }

    Value = CFDictionaryGetValue(SecKeyGetAlgorithmAdaptor_adaptors[v38], v16);
    if (Value)
    {
      Mutable = Value(a1, a2, a3, a4);
      if (Mutable != v17)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (_SECKEY_LOG_once_12305 != -1)
      {
        dispatch_once(&_SECKEY_LOG_once_12305, &__block_literal_global_407);
      }

      v40 = _SECKEY_LOG_log_12306;
      if (os_log_type_enabled(_SECKEY_LOG_log_12306, OS_LOG_TYPE_DEBUG))
      {
        v44 = SecKeyGetAlgorithmAdaptor_adaptors[v38];
        v45 = v40;
        v46 = CFDictionaryGetCount(v44);
        LODWORD(length) = 67109634;
        HIDWORD(length) = v38;
        v55 = 2114;
        v56 = v16;
        v57 = 1024;
        v58 = v46;
        _os_log_debug_impl(&dword_1887D2000, v45, OS_LOG_TYPE_DEBUG, "failed to find adaptor: operation=%d, algorithm=%{public}@ (adaptors:%d)", &length, 0x18u);
      }
    }

LABEL_56:
    if (a1[3])
    {
      Mutable = *MEMORY[0x1E695E738];
    }

    else
    {
      v41 = CFArrayGetValueAtIndex(a1[2], 0);
      SecError(-50, a4, @"%@: algorithm not supported by the key %@", v41, *a1);
      Mutable = 0;
    }
  }

LABEL_59:
  objc_autoreleasePoolPop(v8);
  v42 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t _SecKeyErrorPropagate(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a1 & 1) == 0)
  {
    v8 = _SECKEY_LOG_11460();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446466;
      v12 = a2;
      v13 = 2114;
      v14 = a3;
      _os_log_error_impl(&dword_1887D2000, v8, OS_LOG_TYPE_ERROR, "%{public}s failed: %{public}@", &v11, 0x16u);
    }

    if (a4)
    {
      *a4 = a3;
    }

    else
    {
      CFRelease(a3);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return a1;
}

__CFData *SecKeyCopyECDSASignatureForDigest(uint64_t a1, const __CFData *a2, const __CFData *a3, uint64_t a4, void *a5, __CFString **a6)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-X962");
  if (*(a1 + 24) == 1)
  {
    v12 = a1;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    if (CFDataGetLength(a2) != *a5)
    {
      SecError(-50, a6, @"bad digest size for signing with algorithm %@", a4);
      return 0;
    }

    v12 = a1;
    v13 = a2;
    v14 = a3;
  }

  return SecKeyRunAlgorithmAndCopyResult(v12, v13, v14, a6);
}

void SecPolicyDestroy(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);

  CFRelease(v3);
}

uint64_t SecKeyDestroy(uint64_t result)
{
  v1 = *(*(result + 16) + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t SecKeyGetAlgorithmId(uint64_t a1)
{
  _SecKeyCheck(a1, "SecKeyGetAlgorithmId");
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 && (v3 = *(v2 + 104)) != 0)
    {

      return v3(a1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v5 = _SECKEY_LOG_11460();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *v6 = 0;
      _os_log_fault_impl(&dword_1887D2000, v5, OS_LOG_TYPE_FAULT, "Key with NULL class detected!", v6, 2u);
    }

    return 0;
  }
}

xpc_object_t sec_protocol_options_copy_transport_specific_application_protocol(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = xpc_array_create(0, 0);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __sec_protocol_options_copy_transport_specific_application_protocol_block_invoke;
  v6[3] = &__block_descriptor_tmp_31;
  v6[4] = v4;
  v7 = a2;
  if ((sec_protocol_options_access_handle(a1, v6) & 1) == 0)
  {
    xpc_release(v4);
    return 0;
  }

  return v4;
}

BOOL __sec_protocol_options_copy_transport_specific_application_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(a2 + 48);
  if (!v2)
  {
    return 0;
  }

  count = xpc_array_get_count(*(a2 + 48));
  if (count)
  {
    v5 = count;
    v6 = 0;
    v7 = MEMORY[0x1E69E9F10];
    v8 = MEMORY[0x1E69E9E50];
    do
    {
      value = xpc_array_get_value(v2, v6);
      if (MEMORY[0x18CFDC200]() == v7)
      {
        v12 = *(a1 + 32);
        string_ptr = xpc_string_get_string_ptr(value);
      }

      else
      {
        if (MEMORY[0x18CFDC200](value) != v8)
        {
          goto LABEL_12;
        }

        uint64 = xpc_array_get_uint64(value, 1uLL);
        v11 = *(a1 + 40);
        if (v11)
        {
          if (uint64 != v11)
          {
            goto LABEL_12;
          }
        }

        v12 = *(a1 + 32);
        string_ptr = xpc_array_get_string(value, 0);
      }

      xpc_array_set_string(v12, 0xFFFFFFFFFFFFFFFFLL, string_ptr);
LABEL_12:
      ++v6;
    }

    while (v5 != v6);
  }

  return xpc_array_get_count(*(a1 + 32)) != 0;
}

uint64_t sec_protocol_options_set_tls_certificate_compression_enabled(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_certificate_compression_enabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_73_3750;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

uint64_t sec_protocol_options_set_allow_unknown_alpn_protos(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_allow_unknown_alpn_protos_block_invoke;
    v2[3] = &__block_descriptor_tmp_80;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_tls_certificate_compression_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 369) | 0x40000000;
    *(a2 + 369) = v2;
    *(a2 + 369) = v2 & 0xDFFFFFFF | ((*(a1 + 32) & 1) << 29);
  }

  return a2 != 0;
}

BOOL __sec_protocol_options_set_allow_unknown_alpn_protos_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 373) = *(a2 + 373) & 0xF3 | (4 * *(a1 + 32)) | 8;
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_get_pqtls_mode(uint64_t a1)
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
  v3[2] = __sec_protocol_options_get_pqtls_mode_block_invoke;
  v3[3] = &unk_1E70D5338;
  v3[4] = &v4;
  sec_protocol_options_access_handle(a1, v3);
  v1 = *(v5 + 12);
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_options_get_pqtls_mode_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 334);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_pqtls_mode(uint64_t result, __int16 a2)
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_pqtls_mode_block_invoke;
    v2[3] = &__block_descriptor_tmp_79;
    v3 = a2;
    return sec_protocol_options_access_handle(result, v2);
  }

  return result;
}

BOOL __sec_protocol_options_set_pqtls_mode_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 334) = *(a1 + 32);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_output_handler_access_block(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_output_handler_access_block_block_invoke;
      v2[3] = &unk_1E70D59A0;
      v2[4] = a2;
      return sec_protocol_options_access_handle(result, v2);
    }
  }

  return result;
}

uint64_t sec_protocol_options_set_tls_encryption_secret_update_block(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    if (a3)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 0x40000000;
      v3[2] = __sec_protocol_options_set_tls_encryption_secret_update_block_block_invoke;
      v3[3] = &unk_1E70D57C0;
      v3[4] = a2;
      v3[5] = a3;
      return sec_protocol_options_access_handle(result, v3);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_output_handler_access_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 336) = _Block_copy(*(a1 + 32));
  }

  return a2 != 0;
}

BOOL __sec_protocol_options_set_tls_encryption_secret_update_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 144);
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a2 + 152);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = _Block_copy(*(a1 + 32));
    v7 = *(a1 + 40);
    *(a2 + 144) = v6;
    *(a2 + 152) = v7;
    dispatch_retain(v7);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_tls_encryption_level_update_block(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    if (a3)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 0x40000000;
      v3[2] = __sec_protocol_options_set_tls_encryption_level_update_block_block_invoke;
      v3[3] = &unk_1E70D57E8;
      v3[4] = a2;
      v3[5] = a3;
      return sec_protocol_options_access_handle(result, v3);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_tls_encryption_level_update_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 160);
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a2 + 168);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = _Block_copy(*(a1 + 32));
    v7 = *(a1 + 40);
    *(a2 + 160) = v6;
    *(a2 + 168) = v7;
    dispatch_retain(v7);
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_session_update_block(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result && a2)
  {
    if (a3)
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 0x40000000;
      v3[2] = __sec_protocol_options_set_session_update_block_block_invoke;
      v3[3] = &unk_1E70D5748;
      v3[4] = a2;
      v3[5] = a3;
      return sec_protocol_options_access_handle(result, v3);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_session_update_block_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 176);
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(a2 + 184);
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = _Block_copy(*(a1 + 32));
    v7 = *(a1 + 40);
    *(a2 + 176) = v6;
    *(a2 + 184) = v7;
    dispatch_retain(v7);
  }

  return a2 != 0;
}

void sec_protocol_options_set_quic_use_legacy_codepoint(sec_protocol_options_t options, BOOL quic_use_legacy_codepoint)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_quic_use_legacy_codepoint_block_invoke;
    v2[3] = &__block_descriptor_tmp_53;
    v3 = quic_use_legacy_codepoint;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_quic_use_legacy_codepoint_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 373) = *(a2 + 373) & 0xCF | (16 * *(a1 + 32)) | 0x20;
  }

  return a2 != 0;
}

uint64_t sec_protocol_options_set_quic_transport_parameters(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v2[0] = MEMORY[0x1E69E9820];
      v2[1] = 0x40000000;
      v2[2] = __sec_protocol_options_set_quic_transport_parameters_block_invoke;
      v2[3] = &__block_descriptor_tmp_63_3749;
      v2[4] = a2;
      return sec_protocol_options_access_handle(result, v2);
    }
  }

  return result;
}

BOOL __sec_protocol_options_set_quic_transport_parameters_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a2 + 136);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a1 + 32);
    *(a2 + 136) = v5;
    dispatch_retain(v5);
  }

  return a2 != 0;
}

SecPolicyRef SecPolicyCreateBasicX509(void)
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicX509Options(result);
    CFDictionaryAddValue(v1, @"NoNetworkAccess", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.2", @"basicX509", v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

SecKeyRef SecTrustCopyKey(SecTrustRef trust)
{
  if (!trust)
  {
    return 0;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v2 = *(trust + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecTrustCopyKey_block_invoke;
  block[3] = &unk_1E70E2ED8;
  block[4] = &v8;
  block[5] = trust;
  dispatch_sync(v2, block);
  v3 = v9[3];
  if (!v3)
  {
    SecTrustEvaluateIfNecessary(trust);
    v4 = *(trust + 17);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyKey_block_invoke_2;
    v6[3] = &unk_1E70E2F00;
    v6[4] = &v8;
    v6[5] = trust;
    dispatch_sync(v4, v6);
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  return v3;
}

void *__SecTrustCopyKey_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 80);
  if (v3 || (ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 16), 0), result = SecCertificateCopyKey(ValueAtIndex), *(*(a1 + 40) + 80) = result, (v3 = *(*(a1 + 40) + 80)) != 0))
  {
    result = CFRetain(v3);
    *(*(*(a1 + 32) + 8) + 24) = v3;
  }

  return result;
}

void SecTrustDestroy(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[17] = 0;
    dispatch_release(v2);
  }

  v3 = a1[21];
  if (v3)
  {
    a1[21] = 0;
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    a1[2] = 0;
    CFRelease(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    a1[4] = 0;
    CFRelease(v5);
  }

  v6 = a1[5];
  if (v6)
  {
    a1[5] = 0;
    CFRelease(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[6] = 0;
    CFRelease(v7);
  }

  v8 = a1[7];
  if (v8)
  {
    a1[7] = 0;
    CFRelease(v8);
  }

  v9 = a1[8];
  if (v9)
  {
    a1[8] = 0;
    CFRelease(v9);
  }

  v10 = a1[3];
  if (v10)
  {
    a1[3] = 0;
    CFRelease(v10);
  }

  v11 = a1[9];
  if (v11)
  {
    a1[9] = 0;
    CFRelease(v11);
  }

  v12 = a1[10];
  if (v12)
  {
    a1[10] = 0;
    CFRelease(v12);
  }

  v13 = a1[11];
  if (v13)
  {
    a1[11] = 0;
    CFRelease(v13);
  }

  v14 = a1[12];
  if (v14)
  {
    a1[12] = 0;
    CFRelease(v14);
  }

  v15 = a1[13];
  if (v15)
  {
    a1[13] = 0;
    CFRelease(v15);
  }

  v16 = a1[18];
  if (v16)
  {
    a1[18] = 0;
    CFRelease(v16);
  }

  v17 = a1[15];
  if (v17)
  {
    free(v17);
  }

  v18 = a1[16];
  if (v18)
  {

    free(v18);
  }
}

Boolean SecKeyIsAlgorithmSupported(SecKeyRef key, SecKeyOperationType operation, SecKeyAlgorithm algorithm)
{
  v6 = objc_autoreleasePoolPush();
  v7 = _os_activity_create(&dword_1887D2000, "SecKeyIsAlgorithmSupported", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  _SecKeyCheck(key, "SecKeyIsAlgorithmSupported");
  v16[0] = key;
  v16[1] = operation;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, algorithm);
  v17 = Mutable;
  v18 = 1;
  cf = 0;
  v9 = SecKeyRunAlgorithmAndCopyResult(v16, 0, 0, &cf);
  v10 = v9;
  v11 = *MEMORY[0x1E695E4D0];
  if (v9 && v11)
  {
    v12 = CFEqual(v9, v11) != 0;
  }

  else
  {
    v12 = v9 == v11;
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  CFRelease(v10);
LABEL_6:
  if (cf)
  {
    CFRelease(cf);
  }

  v13 = v17;
  if (v17)
  {
    v17 = 0;
    CFRelease(v13);
  }

  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v6);
  return v12;
}

void __sec_protocol_options_access_handle_block_invoke()
{
  v0 = dlopen("/usr/lib/libnetwork.dylib", 5);
  sec_protocol_options_access_handle_libnetworkImage = v0;
  if (v0)
  {
    sec_protocol_options_access_handle__nw_protocol_options_access_handle = dlsym(v0, "nw_protocol_options_access_handle");
    if (!sec_protocol_options_access_handle__nw_protocol_options_access_handle && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 0;
      v1 = MEMORY[0x1E69E9C10];
      v2 = "dlsym libnetwork nw_protocol_options_access_handle";
      v3 = &v5;
LABEL_8:
      _os_log_error_impl(&dword_1887D2000, v1, OS_LOG_TYPE_ERROR, v2, v3, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 0;
    v1 = MEMORY[0x1E69E9C10];
    v2 = "dlopen libnetwork";
    v3 = &v4;
    goto LABEL_8;
  }
}

void sec_release(void *obj)
{
  if (obj)
  {
    os_release(obj);
  }
}

BOOL SecAccessControlSetProtection(uint64_t a1, CFTypeRef cf, __CFString **a3)
{
  v11[8] = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFDictionaryGetTypeID())
    {
      goto LABEL_11;
    }
  }

  v7 = 0;
  v11[0] = @"dk";
  v11[1] = @"ck";
  v11[2] = @"ak";
  v11[3] = @"dku";
  v11[4] = @"cku";
  v11[5] = @"aku";
  v11[6] = @"akpu";
  v11[7] = @"f";
  do
  {
    v8 = v11[v7];
    if (cf && v8)
    {
      if (CFEqual(cf, v8))
      {
        goto LABEL_11;
      }
    }

    else if (v8 == cf)
    {
      goto LABEL_11;
    }

    ++v7;
  }

  while (v7 != 8);
  result = SecError(-50, a3, @"%@: %@", @"SecAccessControl: invalid protection", cf);
  if (result)
  {
LABEL_11:
    CFDictionarySetValue(*(a1 + 16), @"prot", cf);
    result = 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFAllocatorRef __SecCFAllocatorZeroize_block_invoke()
{
  CFAllocatorGetContext(*MEMORY[0x1E695E490], &sDefaultCtx);
  context.version = 0;
  *&context.info = unk_1ED441A30;
  context.release = qword_1ED441A40;
  context.copyDescription = SecCFAllocatorCopyDescription;
  *&context.allocate = *&algn_1ED441A48[8];
  context.deallocate = SecCFAllocatorDeallocate;
  context.preferredSize = qword_1ED441A68;
  result = CFAllocatorCreate(0, &context);
  SecCFAllocatorZeroize_sAllocator = result;
  return result;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureDigestX962SHA256(uint64_t a1, const __CFData *a2, const __CFData *a3, __CFString **a4)
{
  v8 = ccsha256_di();

  return SecKeyCopyECDSASignatureForDigest(a1, a2, a3, @"algid:sign:ECDSA:digest-X962:SHA256", v8, a4);
}

void SecCertificateDestroy(void *a1)
{
  v2 = a1[46];
  if (v2)
  {
    free(v2);
    a1[46] = 0;
  }

  v3 = a1[43];
  if (v3)
  {
    free(v3);
    a1[43] = 0;
  }

  v4 = a1[58];
  if (v4)
  {
    a1[58] = 0;
    CFRelease(v4);
  }

  v5 = a1[59];
  if (v5)
  {
    a1[59] = 0;
    CFRelease(v5);
  }

  v6 = a1[60];
  if (v6)
  {
    a1[60] = 0;
    CFRelease(v6);
  }

  v7 = a1[64];
  if (v7)
  {
    free(v7);
    a1[64] = 0;
  }

  v8 = a1[67];
  if (v8)
  {
    a1[67] = 0;
    CFRelease(v8);
  }

  v9 = a1[68];
  if (v9)
  {
    a1[68] = 0;
    CFRelease(v9);
  }

  v10 = a1[69];
  if (v10)
  {
    a1[69] = 0;
    CFRelease(v10);
  }

  v11 = a1[70];
  if (v11)
  {
    a1[70] = 0;
    CFRelease(v11);
  }

  v12 = a1[71];
  if (v12)
  {
    a1[71] = 0;
    CFRelease(v12);
  }

  v13 = a1[72];
  if (v13)
  {
    a1[72] = 0;
    CFRelease(v13);
  }

  v14 = a1[73];
  if (v14)
  {
    a1[73] = 0;
    CFRelease(v14);
  }

  v15 = a1[74];
  if (v15)
  {
    a1[74] = 0;
    CFRelease(v15);
  }

  v16 = a1[75];
  if (v16)
  {
    a1[75] = 0;
    CFRelease(v16);
  }

  v17 = a1[76];
  if (v17)
  {
    a1[76] = 0;
    CFRelease(v17);
  }

  v18 = a1[77];
  if (v18)
  {
    a1[77] = 0;
    CFRelease(v18);
  }

  v19 = a1[61];
  if (v19)
  {
    a1[61] = 0;
    CFRelease(v19);
  }

  v20 = a1[62];
  if (v20)
  {
    a1[62] = 0;
    CFRelease(v20);
  }

  v21 = a1[79];
  if (v21)
  {
    a1[79] = 0;
    CFRelease(v21);
  }

  v22 = a1[80];
  if (v22)
  {
    a1[80] = 0;

    dispatch_release(v22);
  }
}

uint64_t SecECPublicKeyDestroy(uint64_t result)
{
  v1 = *(result + 24);
  if (*v1)
  {
    v2 = **v1;
    return cc_clear();
  }

  return result;
}

CFDictionaryRef __SecKeyGetAlgorithmAdaptor_block_invoke()
{
  __dst[47] = *MEMORY[0x1E69E9840];
  memcpy(__dst, &off_1E70E0290, 0x178uLL);
  memcpy(values, &off_1EFA89C38, sizeof(values));
  v0 = *MEMORY[0x1E695E480];
  v1 = MEMORY[0x1E695E9D8];
  SecKeyGetAlgorithmAdaptor_adaptors[0] = CFDictionaryCreate(*MEMORY[0x1E695E480], __dst, values, 47, MEMORY[0x1E695E9D8], 0);
  memcpy(keys, &off_1E70E0408, sizeof(keys));
  memcpy(v21, &off_1EFA89DB0, sizeof(v21));
  qword_1ED441890 = CFDictionaryCreate(v0, keys, v21, 46, v1, 0);
  v19[12] = xmmword_1E70E0638;
  v19[13] = *&off_1E70E0648;
  v19[14] = xmmword_1E70E0658;
  v20 = @"algid:encrypt:ECIES:ECDHC:KDFX963:SHA512:AESGCM-KDFIV";
  v19[8] = xmmword_1E70E05F8;
  v19[9] = *&off_1E70E0608;
  v19[10] = xmmword_1E70E0618;
  v19[11] = *&off_1E70E0628;
  v19[4] = xmmword_1E70E05B8;
  v19[5] = *&off_1E70E05C8;
  v19[6] = xmmword_1E70E05D8;
  v19[7] = *&off_1E70E05E8;
  v19[0] = xmmword_1E70E0578;
  v19[1] = *&off_1E70E0588;
  v19[2] = xmmword_1E70E0598;
  v19[3] = *&off_1E70E05A8;
  v17[12] = xmmword_1EFA89FE0;
  v17[13] = *&off_1EFA89FF0;
  v17[14] = xmmword_1EFA8A000;
  v18 = off_1EFA8A010;
  v17[8] = xmmword_1EFA89FA0;
  v17[9] = *&off_1EFA89FB0;
  v17[10] = xmmword_1EFA89FC0;
  v17[11] = *&off_1EFA89FD0;
  v17[4] = xmmword_1EFA89F60;
  v17[5] = *&off_1EFA89F70;
  v17[6] = xmmword_1EFA89F80;
  v17[7] = *&off_1EFA89F90;
  v17[0] = xmmword_1EFA89F20;
  v17[1] = *&off_1EFA89F30;
  v17[2] = xmmword_1EFA89F40;
  v17[3] = *&off_1EFA89F50;
  qword_1ED441898 = CFDictionaryCreate(v0, v19, v17, 31, v1, 0);
  v16[12] = xmmword_1E70E0730;
  v16[13] = *&off_1E70E0740;
  v16[14] = xmmword_1E70E0750;
  v16[15] = *&off_1E70E0760;
  v16[8] = xmmword_1E70E06F0;
  v16[9] = *&off_1E70E0700;
  v16[10] = xmmword_1E70E0710;
  v16[11] = *&off_1E70E0720;
  v16[4] = xmmword_1E70E06B0;
  v16[5] = *&off_1E70E06C0;
  v16[6] = xmmword_1E70E06D0;
  v16[7] = *&off_1E70E06E0;
  v16[0] = xmmword_1E70E0670;
  v16[1] = *&off_1E70E0680;
  v16[2] = xmmword_1E70E0690;
  v16[3] = *&off_1E70E06A0;
  v15[12] = xmmword_1EFA8A0D8;
  v15[13] = *&off_1EFA8A0E8;
  v15[14] = xmmword_1EFA8A0F8;
  v15[15] = *&off_1EFA8A108;
  v15[8] = xmmword_1EFA8A098;
  v15[9] = *&off_1EFA8A0A8;
  v15[10] = xmmword_1EFA8A0B8;
  v15[11] = *&off_1EFA8A0C8;
  v15[4] = xmmword_1EFA8A058;
  v15[5] = *&off_1EFA8A068;
  v15[6] = xmmword_1EFA8A078;
  v15[7] = *&off_1EFA8A088;
  v15[0] = xmmword_1EFA8A018;
  v15[1] = *&off_1EFA8A028;
  v15[2] = xmmword_1EFA8A038;
  v15[3] = *&off_1EFA8A048;
  qword_1ED4418A0 = CFDictionaryCreate(v0, v16, v15, 32, v1, 0);
  v13 = *&off_1E70E07A0;
  v14 = xmmword_1E70E07B0;
  v11 = *&off_1E70E0780;
  v12 = xmmword_1E70E0790;
  v7 = xmmword_1EFA8A138;
  v8 = *&off_1EFA8A148;
  v9 = xmmword_1EFA8A158;
  *v10 = xmmword_1E70E0770;
  *v5 = xmmword_1EFA8A118;
  v6 = *&off_1EFA8A128;
  qword_1ED4418A8 = CFDictionaryCreate(v0, v10, v5, 10, v1, 0);
  qword_1ED4418B0 = CFDictionaryCreate(v0, &v4, &v4, 0, v1, 0);
  result = CFDictionaryCreate(v0, &v4, &v4, 0, v1, 0);
  qword_1ED4418B8 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *SecCertificateCopyExtendedKeyUsage(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = Mutable;
  if (!a1 || !Mutable)
  {
    goto LABEL_8;
  }

  v5 = *(a1 + 504);
  if (v5 < 1)
  {
    goto LABEL_9;
  }

  v6 = *(a1 + 512);
  while (*(v6 + 8) != 3 || memcmp(*v6, &_oidExtendedKeyUsage, 3uLL))
  {
    v6 += 40;
    if (!--v5)
    {
      goto LABEL_8;
    }
  }

  memset(v12, 170, sizeof(v12));
  if (DERDecodeSeqInit(v6 + 24, &v12[2], v12) || v12[2] != 0x2000000000000010)
  {
    goto LABEL_8;
  }

  memset(v11, 170, sizeof(v11));
  while (1)
  {
    v7 = DERDecodeSeqNext(v12, v11);
    if (v7)
    {
      break;
    }

    if (v11[0] != 6)
    {
      goto LABEL_8;
    }

    if (v11[2] > 0x7FFFFFFFFFFFFFFELL)
    {
      goto LABEL_8;
    }

    v8 = CFDataCreate(v2, v11[1], v11[2]);
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = v8;
    CFArrayAppendValue(v4, v8);
    CFRelease(v9);
  }

  if (v7 != 1)
  {
LABEL_8:
    if (!v4)
    {
      return v4;
    }

LABEL_9:
    CFRelease(v4);
    return 0;
  }

  return v4;
}

BOOL SecPolicyCheckCertExtendedKeyUsageFiltered(uint64_t a1, const __CFString *a2, char a3)
{
  v5 = SecCertificateCopyExtendedKeyUsage(a1);
  if (!a2)
  {
    goto LABEL_9;
  }

  v6 = CFGetTypeID(a2);
  if (v6 != CFArrayGetTypeID())
  {
    v11 = isExtendedKeyUsageAllowed(v5, a2, a3);
    if (!v5)
    {
      return v11;
    }

    goto LABEL_11;
  }

  Count = CFArrayGetCount(a2);
  v8 = Count - 1;
  if (Count >= 1)
  {
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v9);
      v11 = isExtendedKeyUsageAllowed(v5, ValueAtIndex, a3);
      if (v11)
      {
        break;
      }
    }

    while (v8 != v9++);
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  if (v5)
  {
LABEL_11:
    CFRelease(v5);
  }

  return v11;
}

BOOL isExtendedKeyUsageAllowed(const __CFArray *a1, const __CFString *cf, char a3)
{
  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  if (v6 != CFDataGetTypeID())
  {
    v8 = CFGetTypeID(cf);
    if (v8 == CFStringGetTypeID())
    {
      OidDataFromString = SecCertificateCreateOidDataFromString(0, cf);
      if (OidDataFromString)
      {
        v10 = OidDataFromString;
        v11 = extendedkeyusage_allows(a1, OidDataFromString, a3);
        CFRelease(v10);
        return v11;
      }
    }

    return 0;
  }

  return extendedkeyusage_allows(a1, cf, a3);
}

CFDataRef __SecCertificateGetAuthorityKeyID_block_invoke(CFDataRef result)
{
  v1 = result;
  v2 = *(result + 5);
  v3 = *(v2 + 592);
  if (!v3)
  {
    v4 = *(v2 + 416);
    if ((v4 - 1) > 0x7FFFFFFFFFFFFFFDLL)
    {
      v3 = 0;
    }

    else
    {
      result = CFDataCreate(*MEMORY[0x1E695E480], *(v2 + 408), v4);
      *(*(v1 + 5) + 592) = result;
      v3 = *(*(v1 + 5) + 592);
    }
  }

  *(*(*(v1 + 4) + 8) + 24) = v3;
  return result;
}

BOOL extendedkeyusage_allows(CFArrayRef theArray, CFDataRef theData, char a3)
{
  if (a3)
  {
    if (!theArray)
    {
      return CFDataGetLength(theData) == 0;
    }

    goto LABEL_12;
  }

  v6 = CFDataCreate(*MEMORY[0x1E695E480], _oidAnyExtendedKeyUsage, 4);
  if (v6)
  {
    v7 = v6;
    v8 = CFEqual(theData, v6);
    CFRelease(v7);
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = theArray == 0;
    }

    if (!v9)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (!theArray)
  {
    return 0;
  }

LABEL_12:
  v10.length = CFArrayGetCount(theArray);
  v10.location = 0;
  return CFArrayContainsValue(theArray, v10, theData) != 0;
}

uint64_t _SecCertificateIsSelfSigned(void *a1)
{
  if (SecCertificateIsCertificate(a1))
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    AuthorityKeyID = SecCertificateGetAuthorityKeyID(a1);
    SubjectKeyID = SecCertificateGetSubjectKeyID(a1);
    v4 = a1[80];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ___SecCertificateIsSelfSigned_block_invoke;
    v7[3] = &unk_1E70DE298;
    v7[6] = AuthorityKeyID;
    v7[7] = SubjectKeyID;
    v7[4] = &v8;
    v7[5] = a1;
    dispatch_sync(v4, v7);
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

CFStringRef SecDERItemCopyOIDDecimalRepresentation(const __CFAllocator *a1, unsigned __int8 **a2)
{
  v3 = a2[1];
  if (!v3)
  {
    v4 = @"<NULL>";
    goto LABEL_5;
  }

  if (v3 > 0x20)
  {
    v4 = @"OID too long";
LABEL_5:

    return SecFrameworkCopyLocalizedString(v4, @"Certificate");
  }

  Mutable = CFStringCreateMutable(a1, 0);
  v8 = Mutable;
  v9 = **a2;
  v10 = v9 / 0x28;
  v11 = v9 > 0x77;
  if (v9 <= 0x77)
  {
    v12 = v10;
  }

  else
  {
    v12 = 2;
  }

  if (v11)
  {
    v13 = 40 * v10 - 80;
  }

  else
  {
    v13 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @"%u.%u", v12, v13 + **a2 % 0x28u);
  v14 = a2[1];
  if (v14 >= 2)
  {
    v15 = 0;
    v16 = 2;
    v17 = 1;
    do
    {
      v18 = (*a2)[v17];
      if ((v18 & 0x80) != 0)
      {
        v15 = v18 & 0x7F | (v15 << 7);
      }

      else
      {
        CFStringAppendFormat(v8, 0, @".%u", v18 & 0x7F | (v15 << 7));
        v15 = 0;
        v14 = a2[1];
      }

      v17 = v16;
      v11 = v14 > v16++;
    }

    while (v11);
  }

  return v8;
}

void *SecCertificateIsCertificate(void *result)
{
  if (result)
  {
    if (!result[2] || (result[3] & 0x8000000000000000) != 0)
    {
      return 0;
    }

    else
    {
      v1 = CFGetTypeID(result);
      return (v1 == SecCertificateGetTypeID());
    }
  }

  return result;
}

const void *SecCertificateCopyQualifiedCertificateStatements(void *a1)
{
  if (!SecCertificateIsCertificate(a1))
  {
    return 0;
  }

  v2 = a1[79];
  if (v2)
  {
    CFRetain(v2);
  }

  return v2;
}

__CFString *SecTrustStoreForDomain(int a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  result = off_1E70E3F28[a1 - 1];
  if (gTrustd)
  {
    return (*gTrustd)(result, 0);
  }

  return result;
}

BOOL SecCertificateEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (a2)
  {
    v2 = *(a1 + 24);
    if (v2 == *(a2 + 24))
    {
      return memcmp(*(a1 + 16), *(a2 + 16), v2) == 0;
    }
  }

  return 0;
}

uint64_t SecCertificateGetCertificatePolicies(uint64_t a1)
{
  if (*(a1 + 352))
  {
    return a1 + 352;
  }

  else
  {
    return 0;
  }
}

uint64_t SecTrustStoreContains(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  if (!a1)
  {
LABEL_5:
    v4 = 0;
    goto LABEL_13;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __SecTrustStoreContains_block_invoke;
  v9[3] = &unk_1E70E3AC8;
  v9[5] = a1;
  v9[6] = a2;
  v9[4] = &v10;
  if (SecOSStatusWith(v9))
  {
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 141558274;
      v15 = 1752392040;
      v16 = 2112;
      v17 = a2;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Failed to read trust settings for %{mask.hash}@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if (!gTrustd)
  {
    v5 = secLogObjForScope("truststore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v11 + 24))
      {
        v6 = &unk_188967DD7;
      }

      else
      {
        v6 = "do not ";
      }

      *buf = 136446722;
      v15 = v6;
      v16 = 2160;
      v17 = 1752392040;
      v18 = 2112;
      v19 = a2;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Trust settings %{public}s exist for %{mask.hash}@", buf, 0x20u);
    }
  }

  v4 = *(v11 + 24);
LABEL_13:
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v4 & 1;
}

__CFString *SecCertificateCopyAnchorLookupKey(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 584);
  if (!v1)
  {
    return 0;
  }

  CFRetain(*(a1 + 584));
  v2 = ccsha1_di();
  CFDataGetBytePtr(v1);
  CFDataGetLength(v1);
  v3 = *v2;
  if (*v2 < 0 || (v4 = *MEMORY[0x1E695E480], v5 = CFDataCreateMutable(*MEMORY[0x1E695E480], 0), CFDataSetLength(v5, v3), CFDataGetMutableBytePtr(v5), ccdigest(), !v5))
  {
    Mutable = 0;
    v5 = v1;
  }

  else
  {
    Length = CFDataGetLength(v5);
    Mutable = CFStringCreateMutable(v4, 2 * Length);
    BytePtr = CFDataGetBytePtr(v5);
    v9 = CFDataGetLength(v5);
    if (v9 >= 1)
    {
      v10 = v9;
      do
      {
        v11 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v11);
        --v10;
      }

      while (v10);
    }

    CFRelease(v1);
  }

  CFRelease(v5);
  return Mutable;
}

uint64_t SecDNSMatch(const __CFString *a1, const __CFString *a2)
{
  Length = CFStringGetLength(a1);
  v5 = Length - 1;
  if (Length >= 1)
  {
    if (CFStringGetCharacterAtIndex(a1, v5) == 46)
    {
      v23.location = 0;
      v23.length = v5;
      v6 = CFStringCreateWithSubstring(0, a1, v23);
      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v6, @".");
      if (v6)
      {
        CFRelease(v6);
      }

      if (!ArrayBySeparatingStrings)
      {
        return 0;
      }

LABEL_8:
      v9 = CFStringCreateArrayBySeparatingStrings(0, a2, @".");
      if (!v9)
      {
        v8 = 0;
        v10 = ArrayBySeparatingStrings;
        goto LABEL_26;
      }

      v10 = v9;
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      if (Count == CFArrayGetCount(v10))
      {
        v12 = CFArrayGetCount(ArrayBySeparatingStrings);
        if (v12 < 1)
        {
LABEL_19:
          v8 = 1;
LABEL_25:
          CFRelease(ArrayBySeparatingStrings);
LABEL_26:
          CFRelease(v10);
          return v8;
        }

        v13 = v12;
        v22 = v12 - 1;
        v14 = v12;
        while (1)
        {
          v15 = v14 - 1;
          ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v14 - 1);
          if (!ValueAtIndex)
          {
            break;
          }

          v17 = ValueAtIndex;
          v18 = CFArrayGetValueAtIndex(v10, v14 - 1);
          if (!v18)
          {
            break;
          }

          v19 = v18;
          if (CFEqual(v18, @"*"))
          {
            v8 = 0;
            if (v14 == 1 && v13 >= 3 && v22 != 1)
            {
              v8 = SecDNSIsTLD(a2) ^ 1;
            }

            goto LABEL_25;
          }

          v20 = CFStringFind(v19, @"*", 0);
          v8 = 0;
          if (v20.location != -1 || v20.length)
          {
            goto LABEL_25;
          }

          if (CFStringCompare(v17, v19, 1uLL))
          {
            break;
          }

          --v14;
          if ((v15 + 1) <= 1)
          {
            goto LABEL_19;
          }
        }
      }

      v8 = 0;
      goto LABEL_25;
    }

    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a1, @".");
    if (ArrayBySeparatingStrings)
    {
      goto LABEL_8;
    }
  }

  return 0;
}

uint64_t __SecTrustStoreContains_block_invoke(void *a1, CFTypeRef *a2)
{
  if (gTrustd && (v3 = *(gTrustd + 8)) != 0)
  {
    v4 = a1[6];
    v5 = *(a1[4] + 8) + 24;
    v6 = a1[5];

    return v3(v6, v4, v5, a2);
  }

  else
  {
    v8 = *(a1[4] + 8) + 24;
    v11 = *(a1 + 5);
    v9 = _os_activity_create(&dword_1887D2000, "SecTrustStoreContains", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v9, &state);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = __string_cert_to_BOOL_BOOL_error_block_invoke;
    v13[3] = &__block_descriptor_tmp_55_14923;
    v14 = v11;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __string_cert_to_BOOL_BOOL_error_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_56_14924;
    v12[4] = v8;
    v10 = securityd_send_sync_and_do(4u, a2, v13, v12);
    os_release(v9);
    os_activity_scope_leave(&state);
    return v10;
  }
}

__CFData *SecCertificateCopySHA256Digest(void *cf)
{
  if (!cf || !cf[2] || (cf[3] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = CFGetAllocator(cf);
  v3 = cf[2];
  v4 = cf[3];

  return SecSHA256DigestCreate(v2, v3, v4);
}

__CFData *SecSHA256DigestCreate(const __CFAllocator *a1, uint64_t a2, unint64_t a3)
{
  Mutable = 0;
  if (a2 && !(a3 >> 31))
  {
    Mutable = CFDataCreateMutable(a1, 32);
    CFDataSetLength(Mutable, 32);
    CFDataGetMutableBytePtr(Mutable);
    CCDigest();
  }

  return Mutable;
}

uint64_t SecPolicyCheckCertWeakSignature(void *a1)
{
  Mutable = CFArrayCreateMutable(0, 3, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v3 = Mutable;
    CFArrayAppendValue(Mutable, @"SignatureDigestMD2");
    CFArrayAppendValue(v3, @"SignatureDigestMD4");
    CFArrayAppendValue(v3, @"SignatureDigestMD5");
    if (SecCertificateIsCertificate(a1))
    {
      IsSelfSigned = _SecCertificateIsSelfSigned(a1);
    }

    else
    {
      IsSelfSigned = 0;
    }

    v5 = SecPolicyCheckCertSignatureHashAlgorithms(a1, v3) | IsSelfSigned;
    CFRelease(v3);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t SecCertificateGetAuthorityKeyID(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 640);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecCertificateGetAuthorityKeyID_block_invoke;
  v4[3] = &unk_1E70DE088;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t SecCertificateGetSubjectKeyID(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 640);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecCertificateGetSubjectKeyID_block_invoke;
  v4[3] = &unk_1E70DE0B0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFDataRef __SecCertificateGetSubjectKeyID_block_invoke(CFDataRef result)
{
  v1 = result;
  v2 = *(result + 5);
  v3 = *(v2 + 600);
  if (!v3)
  {
    v4 = *(v2 + 400);
    if ((v4 - 1) > 0x7FFFFFFFFFFFFFFDLL)
    {
      v3 = 0;
    }

    else
    {
      result = CFDataCreate(*MEMORY[0x1E695E480], *(v2 + 392), v4);
      *(*(v1 + 5) + 600) = result;
      v3 = *(*(v1 + 5) + 600);
    }
  }

  *(*(*(v1 + 4) + 8) + 24) = v3;
  return result;
}

uint64_t SecPolicyCheckCertSSLHostname(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = SecCertificateCopyDNSNamesFromSAN(a1);
      if (v5)
      {
        v6 = v5;
        Count = CFArrayGetCount(v5);
        if (Count >= 1)
        {
          v8 = Count;
          v9 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
            if (SecDNSMatch(v2, ValueAtIndex))
            {
              break;
            }

            if (v8 == ++v9)
            {
              goto LABEL_8;
            }
          }

          v2 = 1;
          goto LABEL_27;
        }

LABEL_8:
        CFRelease(v6);
      }

      v18 = 0;
      if (convertIPAddress(v2, &v18))
      {
        v6 = v18;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        v11 = SecCertificateCopyIPAddressDatas(a1);
        if (v11)
        {
          v12 = v11;
          v13 = CFArrayGetCount(v11);
          if (v13 < 1)
          {
            v2 = 0;
          }

          else
          {
            v14 = v13;
            v15 = 1;
            do
            {
              v16 = CFArrayGetValueAtIndex(v12, v15 - 1);
              if (v16)
              {
                v2 = CFEqual(v6, v16) != 0;
              }

              else
              {
                v2 = 0;
              }

              if (v15 >= v14)
              {
                break;
              }

              ++v15;
            }

            while (!v2);
          }

          CFRelease(v12);
        }

        else
        {
          v2 = 0;
        }

LABEL_27:
        CFRelease(v6);
        return v2;
      }
    }

    return 0;
  }

  return v2;
}

CFMutableArrayRef SecCertificateCopyDNSNamesFromSAN(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = *(a1 + 456);
  if (v3 && SecCertificateParseGeneralNames(v3 + 24, Mutable, appendDNSNamesFromGeneralNames))
  {
    if (Mutable)
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __filterIPAddresses_block_invoke;
    context[3] = &unk_1E70DE270;
    context[4] = &v9;
    v13.length = CFArrayGetCount(Mutable);
    v13.location = 0;
    CFArrayApplyFunction(Mutable, v13, apply_block_1_9675, context);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    Count = CFArrayGetCount(v10[3]);
    v5 = v10;
    if (!Count)
    {
      v6 = v10[3];
      if (v6)
      {
        v10[3] = 0;
        CFRelease(v6);
        v5 = v10;
      }
    }

    Mutable = v5[3];
    _Block_object_dispose(&v9, 8);
  }

  return Mutable;
}

uint64_t appendDNSNamesFromGeneralNames(__CFArray *a1, int a2, uint64_t a3)
{
  if (a2 != 2)
  {
    return 0;
  }

  v3 = *(a3 + 8);
  if (v3 < 0)
  {
    return 4294941021;
  }

  v5 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], *a3, v3, 0x8000100u, 0);
  if (!v5)
  {
    return 4294941021;
  }

  v6 = v5;
  if (SecFrameworkIsDNSName(v5))
  {
    CFArrayAppendValue(a1, v6);
  }

  CFRelease(v6);
  return 0;
}

BOOL SecFrameworkIsDNSName(const __CFString *a1)
{
  memset(v23, 0, sizeof(v23));
  Length = CFStringGetLength(a1);
  if (Length > 255)
  {
    return 0;
  }

  v3 = Length;
  theString = a1;
  v27 = 0;
  v28 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v25 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v29 = 0;
  v30 = 0;
  v26 = CStringPtr;
  if (v3 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 64;
  do
  {
    if (v10 >= 4)
    {
      v13 = 4;
    }

    else
    {
      v13 = v10;
    }

    v14 = v28;
    if (v28 <= v10)
    {
      v16 = 0;
      ++v11;
      goto LABEL_14;
    }

    if (v25)
    {
      v15 = &v25[v27];
    }

    else
    {
      if (v26)
      {
        v16 = v26[v27 + v10];
        goto LABEL_21;
      }

      if (v30 <= v10 || v7 > v10)
      {
        v18 = v13 + v6;
        v19 = v12 - v13;
        v20 = v10 - v13;
        v21 = v20 + 64;
        if (v20 + 64 >= v28)
        {
          v21 = v28;
        }

        v29 = v20;
        v30 = v21;
        if (v28 >= v19)
        {
          v14 = v19;
        }

        v31.location = v20 + v27;
        v31.length = v14 + v18;
        CFStringGetCharacters(theString, v31, v23);
        v7 = v29;
      }

      v15 = v23 - v7;
    }

    v16 = v15[v10];
LABEL_21:
    if (v16 == 46)
    {
      if (v11 > 63 || (v9 & 0xFFFFFFFE) != 2)
      {
        return 0;
      }

      v11 = 0;
      v8 = 0;
      v9 = 1;
      goto LABEL_32;
    }

    ++v11;
    if ((v16 - 65) < 0x1Au)
    {
      v8 = 1;
LABEL_31:
      v9 = 2;
      goto LABEL_32;
    }

LABEL_14:
    if (v16 == 42 || (v16 - 97) < 0x1Au)
    {
      v9 = 2;
      v8 = 1;
      goto LABEL_32;
    }

    if ((v16 - 48) < 0xAu)
    {
      v9 = 3;
      goto LABEL_32;
    }

    if (v16 == 95)
    {
      goto LABEL_31;
    }

    if (v16 != 45 || (v9 - 2) > 2)
    {
      return 0;
    }

    v9 = 4;
LABEL_32:
    ++v10;
    --v6;
    ++v12;
  }

  while (v3 != v10);
  return v11 <= 63 && (v9 & 6) == 2 && v8 == 1;
}

void __filterIPAddresses_block_invoke(uint64_t a1, const __CFString *a2)
{
  if ((convertIPAddress(a2, 0) & 1) == 0)
  {
    v4 = *(*(*(a1 + 32) + 8) + 24);

    CFArrayAppendValue(v4, a2);
  }
}

uint64_t convertIPAddress(const __CFString *a1, CFTypeRef *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (CFStringGetLength(a1) >= 7 && CFStringGetLength(a1) <= 15)
  {
    v4 = CFCharacterSetCreateWithCharactersInString(0, @"0123456789.");
    InvertedSet = CFCharacterSetCreateInvertedSet(0, v4);
    Mutable = CFDataCreateMutable(0, 0);
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a1, @".");
    v8 = ArrayBySeparatingStrings;
    if (ArrayBySeparatingStrings)
    {
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
    }

    else
    {
      Count = 0;
    }

    v45.length = CFStringGetLength(a1);
    v45.location = 0;
    if (CFStringFindCharacterFromSet(a1, InvertedSet, v45, 0x200uLL, 0) || CFArrayGetCount(v8) != 4)
    {
      v17 = 0;
      if (!Mutable)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v41 = a2;
      if (Count < 1)
      {
LABEL_18:
        a2 = v41;
        if (v41)
        {
          *v41 = CFRetain(Mutable);
        }

        v17 = 1;
        if (!Mutable)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v10 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v10);
          if (ValueAtIndex)
          {
            v12 = ValueAtIndex;
            CFRetain(ValueAtIndex);
            Length = CFStringGetLength(v12);
            MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
            v15 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
            if (!CFStringGetCString(v12, v15, MaximumSizeForEncoding + 1, 0x8000100u))
            {
              *v15 = 0;
            }

            CFRelease(v12);
          }

          else
          {
            v15 = strdup(&unk_188967DD7);
          }

          v16 = atoi(v15);
          free(v15);
          if (v16 > 255)
          {
            break;
          }

          bytes = v16;
          CFDataAppendBytes(Mutable, &bytes, 1);
          if (Count == ++v10)
          {
            goto LABEL_18;
          }
        }

        v17 = 0;
        a2 = v41;
        if (!Mutable)
        {
LABEL_24:
          if (v8)
          {
            CFRelease(v8);
          }

          if (v4)
          {
            CFRelease(v4);
          }

          if (InvertedSet)
          {
            CFRelease(InvertedSet);
            if (v17)
            {
              return 1;
            }
          }

          else if (v17)
          {
            return 1;
          }

          goto LABEL_32;
        }
      }
    }

    CFRelease(Mutable);
    goto LABEL_24;
  }

LABEL_32:
  v19 = CFStringGetLength(a1);
  if ((v19 - 42) < 0xFFFFFFFFFFFFFFD8)
  {
    return 0;
  }

  v20 = v19;
  if (!CFStringHasPrefix(a1, @"[") || !CFStringHasSuffix(a1, @"]") || (v46.length = v20 - 2, v46.location = 1, (v21 = CFStringCreateWithSubstring(0, a1, v46)) == 0) || (v22 = v21, MutableCopy = CFStringCreateMutableCopy(0, 0, v21), CFRelease(v22), !MutableCopy))
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, a1);
  }

  System = CFLocaleGetSystem();
  CFStringUppercase(MutableCopy, System);
  v25 = CFCharacterSetCreateWithCharactersInString(0, @"0123456789ABCDEF:");
  v26 = CFCharacterSetCreateInvertedSet(0, v25);
  v27 = CFDataCreateMutable(0, 0);
  v28 = CFStringCreateArrayBySeparatingStrings(0, MutableCopy, @":");
  v29 = v28;
  if (v28)
  {
    v30 = CFArrayGetCount(v28);
  }

  else
  {
    v30 = 0;
  }

  v47.length = CFStringGetLength(MutableCopy);
  v47.location = 0;
  if (CFStringFindCharacterFromSet(MutableCopy, v26, v47, 0x200uLL, 0) || CFArrayGetCount(v29) < 3 || CFArrayGetCount(v29) > 8)
  {
    goto LABEL_69;
  }

  v42 = a2;
  if (v30 >= 1)
  {
    for (i = 0; i != v30; ++i)
    {
      *v44 = 0;
      v32 = CFArrayGetValueAtIndex(v29, i);
      if (v32)
      {
        v33 = v32;
        CFRetain(v32);
        v34 = CFStringGetLength(v33);
        v35 = CFStringGetMaximumSizeForEncoding(v34, 0x8000100u);
        v36 = malloc_type_malloc(v35 + 1, 0x100004077774924uLL);
        if (!CFStringGetCString(v33, v36, v35 + 1, 0x8000100u))
        {
          *v36 = 0;
        }

        CFRelease(v33);
        if (!v36)
        {
LABEL_56:
          if (i && i != v30 - 1)
          {
            if (v30 <= 8)
            {
              v38 = v30 - 9;
              do
              {
                CFDataAppendBytes(v27, v44, 2);
              }

              while (!__CFADD__(v38++, 1));
            }

            goto LABEL_64;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v36 = strdup(&unk_188967DD7);
        if (!v36)
        {
          goto LABEL_56;
        }
      }

      v37 = strlen(v36);
      if (!v37)
      {
        goto LABEL_56;
      }

      if (v37 <= 4)
      {
        *v44 = bswap32(strtoul(v36, 0, 16)) >> 16;
LABEL_63:
        CFDataAppendBytes(v27, v44, 2);
      }

LABEL_64:
      free(v36);
    }
  }

  if (CFDataGetLength(v27) != 16)
  {
LABEL_69:
    v18 = 0;
  }

  else
  {
    if (v42)
    {
      *v42 = CFRetain(v27);
    }

    v18 = 1;
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v18;
}

BOOL SecPolicyCheckCertKeyUsage(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v3 = *(a1 + 384);
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    v3 = 0;
    if (!cf)
    {
      return 0;
    }
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
    v6 = Count - 1;
    if (Count >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, v7);
        result = keyusage_allows(v3, ValueAtIndex);
        if (result)
        {
          break;
        }
      }

      while (v6 != v7++);
      return result;
    }

    return 0;
  }

  return keyusage_allows(v3, cf);
}

BOOL SecXPCDictionarySetString(uint64_t a1, uint64_t a2, const __CFString *a3, __CFString **a4)
{
  if (!a3)
  {
    return SecError(-50, a4, @"string for key %s is NULL", a2);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 1;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SecXPCDictionarySetString_block_invoke;
  v6[3] = &unk_1E70E3F60;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 0x40000000;
  v11[2] = __CFStringPerformWithCString_block_invoke;
  v11[3] = &unk_1E70E4418;
  v11[4] = v6;
  CFStringPerformWithCStringAndLength(a3, v11);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t SecTrustReportNetworkingAnalytics(char *cStr, uint64_t a2)
{
  v2 = 0;
  v27 = *MEMORY[0x1E69E9840];
  if (cStr && a2)
  {
    v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
    if (v4)
    {
      v5 = v4;
      err = 0;
      if (gTrustd && (v6 = *(gTrustd + 144)) != 0)
      {
        v2 = v6(v4, a2, &err);
        if (err)
        {
          v7 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            Code = CFErrorGetCode(err);
            *buf = 67109120;
            *&buf[4] = Code;
            _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "SecTrustReportNetworkingAnalytics failed with error: %d", buf, 8u);
          }
        }

        CFRelease(v5);
        v9 = err;
        if (err)
        {
          err = 0;
          CFRelease(v9);
        }
      }

      else
      {
        v10 = _os_activity_create(&dword_1887D2000, "SecTrustReportNetworkingAnalytics", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
        state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
        state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
        os_activity_scope_enter(v10, &state);
        *buf = 0;
        v24 = buf;
        v25 = 0x2000000000;
        v26 = 0;
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 0x40000000;
        v18[2] = __SecTrustReportNetworkingAnalytics_block_invoke;
        v18[3] = &__block_descriptor_tmp_379;
        v18[4] = v5;
        v18[5] = a2;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 0x40000000;
        v17[2] = __SecTrustReportNetworkingAnalytics_block_invoke_2;
        v17[3] = &unk_1E70E3268;
        v17[4] = buf;
        securityd_send_sync_and_do(0x73u, &err, v18, v17);
        if (err)
        {
          v11 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = CFErrorGetCode(err);
            *v21 = 67109120;
            v22 = v12;
            _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "SecTrustReportNetworkingAnalytics failed with error: %d", v21, 8u);
          }

          v13 = err;
          if (err)
          {
            err = 0;
            CFRelease(v13);
          }
        }

        CFRelease(v5);
        os_release(v10);
        v2 = v24[24];
        _Block_object_dispose(buf, 8);
        os_activity_scope_leave(&state);
      }
    }

    else
    {
      v14 = secLogObjForScope("SecError");
      v2 = 0;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "CFStringCreateWithCString failed", buf, 2u);
        v2 = 0;
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v2 & 1;
}

BOOL __SecTrustReportNetworkingAnalytics_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = SecXPCDictionarySetString(a2, "eventName", *(a1 + 32), a3);
  if (v5)
  {
    xpc_dictionary_set_value(a2, "eventAttributes", *(a1 + 40));
  }

  return v5;
}

void __SecXPCDictionarySetString_block_invoke(uint64_t a1, char *string)
{
  v3 = *(a1 + 48);
  if (string)
  {
    v4 = *(a1 + 40);

    xpc_dictionary_set_string(v4, v3, string);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = SecError(-50, *(a1 + 56), @"failed to convert string for key %s to utf8", *(a1 + 48));
  }
}

CFDictionaryRef SecKeyCopyAttributes(SecKeyRef key)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1887D2000, "SecKeyCopyAttributes", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v3, &state);
  _SecKeyCheck(key, "SecKeyCopyAttributes");
  v4 = *(*(key + 2) + 88);
  if (v4)
  {
    Mutable = v4(key);
    goto LABEL_14;
  }

  v6 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = *(*(key + 2) + 80);
  if (v7)
  {
    valuePtr = 8 * v7(key);
    if (valuePtr >= 1)
    {
      v8 = CFNumberCreate(v6, kCFNumberCFIndexType, &valuePtr);
      CFDictionarySetValue(Mutable, @"bsiz", v8);
      CFRelease(v8);
    }
  }

  else
  {
    valuePtr = 0;
  }

  v9 = SecKeyGetAlgorithmId(key) - 1;
  if (v9 <= 9 && ((0x3FDu >> v9) & 1) != 0)
  {
    CFDictionarySetValue(Mutable, @"type", *off_1E70DFF88[v9]);
  }

  v10 = *(key + 2);
  if (v10[5] || v10[8])
  {
    v11 = &kSecAttrKeyClassPrivate;
LABEL_13:
    CFDictionarySetValue(Mutable, @"kcls", *v11);
    goto LABEL_14;
  }

  if (v10[6] || v10[7])
  {
    v11 = &kSecAttrKeyClassPublic;
    goto LABEL_13;
  }

LABEL_14:
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v2);
  return Mutable;
}

CFDictionaryRef SecKeyCopyAttributeDictionaryWithLocalKey(const void *a1, uint64_t a2, const __CFData *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = CFGetAllocator(a1);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *keys = v7;
  v38 = v7;
  v39 = v7;
  v40 = v7;
  v41 = v7;
  v42 = v7;
  v43 = v7;
  v44 = v7;
  v45 = v7;
  v46 = v7;
  v47 = v7;
  v48 = v7;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  *values = v7;
  v25 = v7;
  v26 = v7;
  v27 = v7;
  v28 = v7;
  v29 = v7;
  v30 = v7;
  v31 = v7;
  v32 = v7;
  v33 = v7;
  v34 = v7;
  v35 = v7;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  theData = 0;
  Size = SecKeyGetSize(a1, 0);
  v8 = CFNumberCreate(v6, kCFNumberLongType, &Size);
  if (SecKeyCopyPublicBytes(a1, &theData))
  {
    goto LABEL_20;
  }

  if (!theData)
  {
    v19 = 0;
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v11 = SecSHA1DigestCreate(v6, BytePtr, Length);
  if (!v11)
  {
LABEL_20:
    v19 = 0;
  }

  else
  {
    v12 = v11;
    keys[0] = @"class";
    keys[1] = @"kcls";
    v13 = @"1";
    if (!a3)
    {
      v13 = @"0";
    }

    values[0] = @"keys";
    values[1] = v13;
    *&v38 = @"klbl";
    *(&v38 + 1) = @"perm";
    v14 = *MEMORY[0x1E695E4D0];
    *&v25 = v11;
    *(&v25 + 1) = v14;
    *&v39 = @"priv";
    *(&v39 + 1) = @"modi";
    *&v26 = v14;
    *(&v26 + 1) = v14;
    *&v40 = @"type";
    *(&v40 + 1) = @"bsiz";
    *&v27 = a2;
    *(&v27 + 1) = v8;
    *&v41 = @"esiz";
    *(&v41 + 1) = @"sens";
    v15 = *MEMORY[0x1E695E4C0];
    *&v28 = v8;
    *(&v28 + 1) = v15;
    *&v42 = @"asen";
    *(&v42 + 1) = @"extr";
    *&v29 = v15;
    *(&v29 + 1) = v14;
    *&v43 = @"next";
    *(&v43 + 1) = @"encr";
    if (a3)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    *&v30 = v15;
    *(&v30 + 1) = v16;
    if (a3)
    {
      v17 = v14;
    }

    else
    {
      v17 = v15;
    }

    *&v44 = @"decr";
    *(&v44 + 1) = @"drve";
    *&v31 = v17;
    *(&v31 + 1) = v14;
    *&v45 = @"sign";
    *(&v45 + 1) = @"vrfy";
    *&v32 = v17;
    *(&v32 + 1) = v16;
    *&v46 = @"snrc";
    *(&v46 + 1) = @"vyrc";
    *&v33 = v15;
    *(&v33 + 1) = v15;
    *&v47 = @"wrap";
    *(&v47 + 1) = @"unwp";
    *&v34 = v16;
    *(&v34 + 1) = v17;
    *&v48 = @"v_Data";
    v18 = theData;
    if (a3)
    {
      v18 = a3;
    }

    *&v35 = v18;
    v19 = CFDictionaryCreate(v6, keys, values, 23, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v12);
  }

  if (theData)
  {
    CFRelease(theData);
  }

  if (v8)
  {
LABEL_18:
    CFRelease(v8);
  }

LABEL_19:
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t SecKeyGetSize(uint64_t a1, int a2)
{
  _SecKeyCheck(a1, "SecKeyGetBlockSize");
  v4 = *(*(a1 + 16) + 80);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = 0;
  }

  if (a2 == 10)
  {
    a2 = 0;
  }

  if (SecKeyGetAlgorithmId(a1) == 3)
  {
    if (a2)
    {
      v6 = 8;
      if (v5 > 0x41)
      {
        v6 = 9;
      }

      v7 = v6 + 2 * v5;
      if (a2 == 2)
      {
        v8 = 0;
      }

      else
      {
        v8 = v5;
      }

      if (a2 == 1)
      {
        v5 = v7;
      }

      else
      {
        v5 = v8;
      }
    }

    else if (v5 > 0x41)
    {
      return 521;
    }
  }

  if (a2)
  {
    return v5;
  }

  else
  {
    return 8 * v5;
  }
}

__CFData *SecRSAPublicKeyCreatePKCS1(const __CFAllocator *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = ccn_write_int_size();
  v6 = ccn_write_int_size();
  v7 = DERLengthOfItem(2uLL, v5);
  v8 = DERLengthOfItem(2uLL, v6);
  v9 = DERLengthOfItem(0x10uLL, v8 + v7);
  Mutable = CFDataCreateMutable(a1, 0);
  CFDataSetLength(Mutable, v9);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr = 48;
  v12 = MutableBytePtr + 1;
  v19 = 4;
  DEREncodeLength(v8 + v7, (MutableBytePtr + 1), &v19);
  v13 = &v12[v19];
  v14 = *a2;
  *v13++ = 2;
  v20 = 4;
  DEREncodeLength(v5, v13, &v20);
  v15 = &v13[v20];
  ccn_write_int();
  v16 = &v15[v5];
  v17 = *a2;
  *v16 = 2;
  v20 = 4;
  DEREncodeLength(v6, (v16 + 1), &v20);
  ccn_write_int();
  return Mutable;
}

unint64_t DERLengthOfEncodedSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  result = DERContentLengthOfEncodedSequence(a2, a3, a4, a5, v18);
  if (result)
  {
    goto LABEL_10;
  }

  v9 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v10 = 1;
  if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >= 0x1F)
  {
    do
    {
      ++v10;
      v11 = v9 > 0x7F;
      v9 >>= 7;
    }

    while (v11);
  }

  v12 = 1;
  if (v18[0] >= 0x80uLL)
  {
    v13 = v18[0];
    do
    {
      ++v12;
      v11 = v13 > 0xFF;
      v13 >>= 8;
    }

    while (v11);
  }

  v14 = __CFADD__(v10, v12);
  v15 = v10 + v12;
  if (!v14)
  {
    v14 = __CFADD__(v15, v18[0]);
    v16 = v15 + v18[0];
    if (!v14)
    {
      result = 0;
      *a6 = v16;
LABEL_10:
      v17 = *MEMORY[0x1E69E9840];
      return result;
    }
  }

  __break(0x5500u);
  return result;
}

__SecCertificate *SecCertificateIsAtLeastMinKeySize(__SecCertificate *result, const __CFDictionary *a2)
{
  if (result)
  {
    value = 0xAAAAAAAAAAAAAAAALL;
    v8 = 0;
    valuePtr = 0xAAAAAAAAAAAAAAAALL;
    v3 = SecCertificateGetPublicKeyAlgorithmIdAndSize(result, &v8) - 1;
    if (v3 <= 5 && ((0x2Du >> v3) & 1) != 0 && (v4 = *off_1E70DE348[v3]) != 0 && (CFDictionaryGetValueIfPresent(a2, v4, &value) ? (v5 = value == 0) : (v5 = 1), !v5))
    {
      result = CFNumberGetValue(value, kCFNumberLongType, &valuePtr);
      if (result)
      {
        return (v8 >= (valuePtr + 7) >> 3);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DERLengthOfEncodedSequence(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) < a2)
  {
    __break(0x5519u);
  }

  if (DERLengthOfEncodedSequenceFromObject(a1, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, v6))
  {
    result = 0;
  }

  else
  {
    result = v6[0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t DERContentLengthOfEncodedSequence(unint64_t result, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  if (!a3)
  {
LABEL_38:
    result = 0;
LABEL_40:
    *a5 = v5;
    return result;
  }

  v6 = 0;
  v7 = result + a2;
  while (24 * v6 <= ~a4)
  {
    v8 = a4 + 24 * v6;
    v9 = *v8;
    v10 = *v8 > 0xFFFFFFFFFFFFFFEFLL || *v8 + 16 > a2;
    if (v10)
    {
      v5 = 0;
      result = 7;
      goto LABEL_40;
    }

    if (v9 > ~result)
    {
      break;
    }

    v11 = (result + v9);
    v12 = *(v8 + 16);
    if ((v12 & 0x200) == 0)
    {
      if (v12)
      {
        if (v11 < result || (v11 + 2) > v7)
        {
          goto LABEL_43;
        }

        if (!v11[1])
        {
          goto LABEL_37;
        }
      }

      v14 = *(v8 + 8) & 0x1FFFFFFFFFFFFFFFLL;
      v15 = 1;
      if (v14 >= 0x1F)
      {
        do
        {
          ++v15;
          v10 = v14 > 0x7F;
          v14 >>= 7;
        }

        while (v10);
      }

      v16 = __CFADD__(v5, v15);
      v17 = v5 + v15;
      if (v16)
      {
        goto LABEL_42;
      }

      if (v11 < result || (v11 + 2) > v7)
      {
        goto LABEL_43;
      }

      v18 = v11[1];
      if ((v12 & 0x100) != 0)
      {
        if (v18)
        {
          v18 += **v11 >> 7;
          goto LABEL_24;
        }

LABEL_25:
        v19 = 1;
      }

      else
      {
LABEL_24:
        if (v18 < 0x80)
        {
          goto LABEL_25;
        }

        v19 = 1;
        v22 = v18;
        do
        {
          ++v19;
          v10 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v10);
      }

      v16 = __CFADD__(v17, v19);
      v23 = v17 + v19;
      if (v16)
      {
        goto LABEL_42;
      }

      v16 = __CFADD__(v23, v18);
      v5 = v23 + v18;
      if (v16)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v11 < result || (v11 + 2) > v7)
    {
      goto LABEL_43;
    }

    v21 = v11[1];
    v16 = __CFADD__(v5, v21);
    v5 += v21;
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (++v6 == a3)
    {
      goto LABEL_38;
    }
  }

  __break(0x5513u);
LABEL_42:
  __break(0x5500u);
LABEL_43:
  __break(0x5519u);
  return result;
}

uint64_t DEREncodeSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8)
{
  v48[1] = *MEMORY[0x1E69E9840];
  v8 = ~a6;
  if (~a6 < a7)
  {
    goto LABEL_72;
  }

  v11 = *a8;
  v47 = a7;
  v48[0] = 0;
  if (v11 < a7)
  {
    goto LABEL_73;
  }

  result = DEREncodeTag(a1, a6, &v47);
  if (result)
  {
    goto LABEL_17;
  }

  v17 = v47;
  if (v47 > v8)
  {
    goto LABEL_72;
  }

  v18 = a7 - v47;
  if (a7 >= v47)
  {
    v19 = a6 + a7;
    v20 = a6 + v47;
    if (a6 + v47 >= v19)
    {
LABEL_16:
      result = 7;
      goto LABEL_17;
    }

    result = DERContentLengthOfEncodedSequence(a2, a3, a4, a5, v48);
    if (!result)
    {
      v47 = v18;
      if (v20 > a6 + v11 || v20 < a6 || v18 > v11 - v17)
      {
        goto LABEL_73;
      }

      v45 = a6 + v11;
      v21 = v48[0];
      result = DEREncodeLengthSized(v48[0], a6 + v17, v18, &v47);
      if (!result)
      {
        v22 = v45;
        if (__CFADD__(v20, v47))
        {
          goto LABEL_72;
        }

        v23 = v18 - v47;
        if (v18 >= v47)
        {
          v24 = (v20 + v47);
          if (!__CFADD__(v20 + v47, v21))
          {
            if (&v24[v21] > v19)
            {
              goto LABEL_16;
            }

            if (a4)
            {
              v26 = 0;
              v44 = a2 + a3;
              v43 = ~a5;
              v27 = a5 + 8;
              v42 = 24 * a4;
              do
              {
                if (v26 > v43)
                {
                  goto LABEL_72;
                }

                v28 = *(v27 - 8);
                if (v28 > ~a2)
                {
                  goto LABEL_72;
                }

                v29 = (a2 + v28);
                v30 = *(v27 + 8);
                if ((v30 & 0x200) != 0)
                {
                  v39 = v29 < a2 || (v29 + 2) > v44;
                  if (v39 || v24 > v22 || v24 < a6)
                  {
                    goto LABEL_73;
                  }

                  v37 = v29[1];
                  v38 = v22 - v24;
                }

                else
                {
                  if (v30)
                  {
                    if (v29 < a2 || (v29 + 2) > v44)
                    {
                      goto LABEL_73;
                    }

                    if (!v29[1])
                    {
                      goto LABEL_69;
                    }
                  }

                  v47 = v23;
                  if (v24 > v22 || v24 < a6 || v23 > v22 - v24)
                  {
                    goto LABEL_73;
                  }

                  result = DEREncodeTag(*v27, v24, &v47);
                  if (result)
                  {
                    goto LABEL_17;
                  }

                  if (__CFADD__(v24, v47))
                  {
                    goto LABEL_72;
                  }

                  v32 = v23 - v47;
                  if (v23 < v47)
                  {
                    goto LABEL_74;
                  }

                  if (v29 < a2 || (v29 + 2) > v44)
                  {
                    goto LABEL_73;
                  }

                  v33 = v29[1];
                  v48[0] = v33;
                  v34 = 1;
                  if ((v30 & 0x100) != 0 && v33 && **v29 < 0)
                  {
                    v34 = 0;
                    v48[0] = ++v33;
                  }

                  v35 = &v24[v47];
                  v47 = v23 - v47;
                  if (v35 > v45 || v35 < a6 || v32 > v45 - v35)
                  {
                    goto LABEL_73;
                  }

                  result = DEREncodeLengthSized(v33, v35, v32, &v47);
                  if (result)
                  {
                    goto LABEL_17;
                  }

                  v36 = v47;
                  if (__CFADD__(v35, v47))
                  {
                    goto LABEL_72;
                  }

                  v23 = v32 - v47;
                  if (v32 < v47)
                  {
                    goto LABEL_74;
                  }

                  v24 = (v35 + v47);
                  if ((v34 & 1) == 0)
                  {
                    if (v24 == -1)
                    {
                      goto LABEL_72;
                    }

                    if (v24 >= v45 || v24 < a6)
                    {
                      goto LABEL_73;
                    }

                    *v24 = 0;
                    --v23;
                    if (v32 == v36)
                    {
                      goto LABEL_74;
                    }

                    ++v24;
                  }

                  if (v24 > v45 || v24 < a6)
                  {
                    goto LABEL_73;
                  }

                  v37 = v29[1];
                  v38 = v45 - v24;
                }

                if (v37 > v38)
                {
                  goto LABEL_73;
                }

                result = memmove(v24, *v29, v37);
                if (v24 > &v24[v37])
                {
                  goto LABEL_73;
                }

                v40 = v29[1];
                v22 = v45;
                if (__CFADD__(v24, v40))
                {
                  goto LABEL_72;
                }

                v41 = v23 >= v40;
                v23 -= v40;
                if (!v41)
                {
                  goto LABEL_74;
                }

                v24 += v40;
LABEL_69:
                v27 += 24;
                v26 += 24;
              }

              while (v42 != v26);
            }

            if (&v24[-a6] <= *a8)
            {
              result = 0;
              *a8 = &v24[-a6];
              goto LABEL_17;
            }

LABEL_73:
            __break(0x5519u);
          }

LABEL_72:
          __break(0x5513u);
          goto LABEL_73;
        }

        goto LABEL_74;
      }
    }

LABEL_17:
    v25 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_74:
  __break(0x5515u);
  return result;
}

uint64_t DEREncodeSequence(uint64_t result, unint64_t a2, unsigned int a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) >= a2)
  {
    return DEREncodeSequenceFromObject(result, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, a5, *a6, a6);
  }

  __break(0x5519u);
  return result;
}

void __SecTrustGetVerifyTime_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2[8])
  {
    *(*(*(a1 + 32) + 8) + 24) = MEMORY[0x18CFD8B20](v2[8]);
  }

  else
  {
    v3 = CFGetAllocator(v2);
    *(*(a1 + 40) + 64) = CFDateCreate(v3, *(*(*(a1 + 32) + 8) + 24));
  }
}

uint64_t SecTrustIsTrustResultValid(uint64_t a1, double a2)
{
  if (!*(a1 + 112))
  {
    return 0;
  }

  Current = CFAbsoluteTimeGetCurrent();
  if (Current + 4500.0 < a2 || Current + -4500.0 > a2)
  {
    return 1;
  }

  v7 = *(a1 + 96);
  if (!v7)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a1 + 96), @"TrustResultNotBefore");
  v9 = CFDictionaryGetValue(v7, @"TrustResultNotAfter");
  result = 0;
  if (Value && v9)
  {
    v10 = CFGetTypeID(Value);
    if (v10 == CFDateGetTypeID())
    {
      v11 = CFGetTypeID(v9);
      if (v11 == CFDateGetTypeID() && Current < MEMORY[0x18CFD8B20](v9) && Current > MEMORY[0x18CFD8B20](Value))
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SecXPCDictionarySetCertificates(void *a1, const char *a2, const __CFArray *a3, __CFString **a4)
{
  v8 = xpc_array_create(0, 0);
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; v11 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        if (ValueAtIndex)
        {
          v14 = ValueAtIndex[2];
          v15 = ValueAtIndex[3];
          if (v15 < 1 || v14 == 0)
          {
            xpc_release(v9);
            goto LABEL_13;
          }

          xpc_array_set_data(v9, 0xFFFFFFFFFFFFFFFFLL, v14, v15);
        }
      }
    }

    xpc_dictionary_set_value(a1, a2, v9);
    xpc_release(v9);
    return 1;
  }

  else
  {
LABEL_13:
    SecError(-108, a4, @"failed to create xpc_array of certificates");
    return 0;
  }
}

uint64_t SecCertificateGetPublicKeyAlgorithmIdAndSize(__SecCertificate *a1, uint64_t *a2)
{
  v3 = SecCertificateCopyKey(a1);
  if (!v3)
  {
    AlgorithmId = 0;
    v6 = 0;
    if (!a2)
    {
      return AlgorithmId;
    }

    goto LABEL_6;
  }

  v4 = v3;
  _SecKeyCheck(v3, "SecKeyGetBlockSize");
  v5 = *(v4[2] + 80);
  if (v5)
  {
    v6 = v5(v4);
  }

  else
  {
    v6 = 0;
  }

  AlgorithmId = SecKeyGetAlgorithmId(v4);
  CFRelease(v4);
  if (a2)
  {
LABEL_6:
    *a2 = v6;
  }

  return AlgorithmId;
}

__CFData *SecSHA1DigestCreate(const __CFAllocator *a1, uint64_t a2, unint64_t a3)
{
  Mutable = 0;
  if (a2 && !(a3 >> 31))
  {
    Mutable = CFDataCreateMutable(a1, 20);
    CFDataSetLength(Mutable, 20);
    CFDataGetMutableBytePtr(Mutable);
    CCDigest();
  }

  return Mutable;
}

BOOL SecPolicyCheckCertSignatureHashAlgorithms(void *a1, const __CFArray *a2)
{
  v8[10] = *MEMORY[0x1E69E9840];
  if (SecCertificateIsCertificate(a1) && (_SecCertificateIsSelfSigned(a1) & 1) != 0)
  {
    result = 1;
  }

  else
  {
    if (a1)
    {
      v5 = a1 + 15;
    }

    else
    {
      v5 = 0;
    }

    v8[0] = @"SignatureDigestUnknown";
    v8[1] = @"SignatureDigestMD2";
    v8[2] = @"SignatureDigestMD4";
    v8[3] = @"SignatureDigestMD5";
    v8[4] = @"SignatureDigestSHA1";
    v8[5] = @"SignatureDigestSHA224";
    v8[6] = @"SignatureDigestSHA256";
    v8[7] = @"SignatureDigestSHA284";
    v8[8] = @"SignatureDigestSHA512";
    v8[9] = @"SignatureDigestSHAKE256";
    v6 = v8[SecSignatureHashAlgorithmForAlgorithmOid(v5)];
    v9.length = CFArrayGetCount(a2);
    v9.location = 0;
    result = CFArrayContainsValue(a2, v9, v6) == 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SecCertificateIsWeakKey(__SecCertificate *a1)
{
  if (!a1)
  {
    return 1;
  }

  v5 = 0;
  PublicKeyAlgorithmIdAndSize = SecCertificateGetPublicKeyAlgorithmIdAndSize(a1, &v5);
  v2 = PublicKeyAlgorithmIdAndSize;
  if (PublicKeyAlgorithmIdAndSize <= 3)
  {
    if (PublicKeyAlgorithmIdAndSize == 1)
    {
      v3 = v5 >= 0x80;
      return !v3;
    }

    if (PublicKeyAlgorithmIdAndSize == 3)
    {
      v3 = v5 >= 0x14;
      return !v3;
    }

    return 1;
  }

  result = 0;
  if (v2 != 4 && v2 != 6)
  {
    return 1;
  }

  return result;
}

BOOL SecCertificateIsValid(_BOOL8 result, double a2)
{
  if (result)
  {
    return *(result + 168) <= a2 && *(result + 176) >= a2;
  }

  return result;
}

__CFData *SecCertificateCopyPublicKeySHA1Digest(void *cf)
{
  if (!cf || !cf[31] || (cf[32] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v2 = CFGetAllocator(cf);
  v3 = cf[31];
  v4 = cf[32];

  return SecSHA1DigestCreate(v2, v3, v4);
}

BOOL SecCertificateHasMarkerExtension(const __CFData *OidDataFromString, const __CFString *a2)
{
  v2 = OidDataFromString;
  LOBYTE(OidDataFromString) = 0;
  if (!v2 || !a2)
  {
    return OidDataFromString & 1;
  }

  v4 = CFGetTypeID(a2);
  if (v4 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(a2);
    v6 = Count - 1;
    if (Count >= 1)
    {
      v7 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v7);
        LOBYTE(OidDataFromString) = SecCertificateHasMarkerExtension(v2, ValueAtIndex);
        if (OidDataFromString)
        {
          break;
        }
      }

      while (v6 != v7++);
      return OidDataFromString & 1;
    }

    goto LABEL_19;
  }

  v10 = CFGetTypeID(a2);
  if (v10 == CFDictionaryGetTypeID())
  {
    v16[0] = 0xAAAAAAAAAAAAAA00;
    v16[1] = v2;
    CFDictionaryApplyFunction(a2, check_for_marker, v16);
    LOBYTE(OidDataFromString) = v16[0];
    return OidDataFromString & 1;
  }

  v11 = CFGetTypeID(a2);
  if (v11 != CFDataGetTypeID())
  {
    v13 = CFGetTypeID(a2);
    if (v13 == CFStringGetTypeID())
    {
      OidDataFromString = SecCertificateCreateOidDataFromString(0, a2);
      if (OidDataFromString)
      {
        v14 = OidDataFromString;
        v15 = cert_contains_marker_extension_value(v2, OidDataFromString, 0);
        CFRelease(v14);
        return v15;
      }

      return OidDataFromString & 1;
    }

LABEL_19:
    LOBYTE(OidDataFromString) = 0;
    return OidDataFromString & 1;
  }

  return cert_contains_marker_extension_value(v2, a2, 0);
}

BOOL cert_contains_marker_extension_value(uint64_t a1, CFDataRef theData, const __CFString *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length < 0)
  {
    return 0;
  }

  v8 = *(a1 + 504);
  if (v8 < 1)
  {
    return 0;
  }

  v9 = Length;
  for (i = *(a1 + 512); *(i + 8) != v9 || memcmp(*i, BytePtr, v9); i += 40)
  {
    if (!--v8)
    {
      return 0;
    }
  }

  v11 = *(i + 32);
  v23[0] = *(i + 24);
  v23[1] = v11;
  if (v11 < 2)
  {
    return 0;
  }

  memset(v22, 170, sizeof(v22));
  DERDecodeItem(v23, v22);
  if ((v22[2] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  if (v22[0] > 4)
  {
    if (v22[0] != 22 && v22[0] != 12)
    {
      if (v22[0] == 5)
      {
        return (a3 | v22[2]) == 0;
      }

      return 0;
    }

    if (!a3)
    {
      return 0;
    }

    v15 = CFGetTypeID(a3);
    if (v15 != CFStringGetTypeID())
    {
      return 0;
    }

    v14 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v22[1], v22[2], 0x8000100u, 0, *MEMORY[0x1E695E498]);
    v12 = CFStringCompare(a3, v14, 0) == kCFCompareEqualTo;
    if (!v14)
    {
      return v12;
    }

LABEL_24:
    CFRelease(v14);
    return v12;
  }

  if (v22[0] != 2)
  {
    if (v22[0] != 4)
    {
      return 0;
    }

    if (!a3)
    {
      return 0;
    }

    v13 = CFGetTypeID(a3);
    if (v13 != CFDataGetTypeID())
    {
      return 0;
    }

    v14 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v22[1], v22[2], *MEMORY[0x1E695E498]);
    v12 = CFEqual(a3, v14) != 0;
    if (!v14)
    {
      return v12;
    }

    goto LABEL_24;
  }

  valuePtr = 0;
  if (a3)
  {
    v16 = CFGetTypeID(a3);
    if (v16 == CFStringGetTypeID())
    {
      valuePtr = CFStringGetIntValue(a3);
    }

    else
    {
      v17 = CFGetTypeID(a3);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
      }
    }
  }

  v20 = 0;
  v18 = DERParseInteger(&v22[1], &v20);
  v12 = valuePtr == v20;
  if (v18)
  {
    return 0;
  }

  return v12;
}

uint64_t SecCertificateGetBasicConstraints(uint64_t a1)
{
  if (*(a1 + 300))
  {
    return a1 + 300;
  }

  else
  {
    return 0;
  }
}

uint64_t SecCertificateGetKeyUsage(uint64_t result)
{
  if (result)
  {
    return *(result + 384);
  }

  return result;
}

void serializeCertificate(uint64_t a1, __CFArray *a2)
{
  if (a1)
  {
    TypeID = SecCertificateGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      v5 = CFGetAllocator(a1);
      v6 = CFDataCreate(v5, *(a1 + 16), *(a1 + 24));
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(a2, v6);

        CFRelease(v7);
      }
    }
  }
}

void serializePolicy(uint64_t a1, __CFArray *a2)
{
  if (a1)
  {
    TypeID = SecPolicyGetTypeID();
    if (TypeID == CFGetTypeID(a1))
    {
      Mutable = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, @"SecPolicyOid", *(a1 + 16));
      CFDictionaryAddValue(Mutable, @"policyOptions", *(a1 + 32));
      v6 = *(a1 + 24);
      if (v6)
      {
        CFDictionaryAddValue(Mutable, @"SecPolicyPolicyName", v6);
      }

      if (Mutable)
      {
        CFArrayAppendValue(a2, Mutable);

        CFRelease(Mutable);
      }
    }
  }
}

uint64_t sec_protocol_metadata_access_handle(uint64_t a1, uint64_t a2)
{
  if (sec_protocol_metadata_access_handle_onceToken != -1)
  {
    dispatch_once(&sec_protocol_metadata_access_handle_onceToken, &__block_literal_global_5);
  }

  v4 = sec_protocol_metadata_access_handle__nw_protocol_metadata_access_handle;
  if (!sec_protocol_metadata_access_handle__nw_protocol_metadata_access_handle)
  {
    return 0;
  }

  return v4(a1, a2);
}

tls_ciphersuite_t sec_protocol_metadata_get_negotiated_tls_ciphersuite(sec_protocol_metadata_t metadata)
{
  v1 = tls_ciphersuite_CHACHA20_POLY1305_SHA256|tls_ciphersuite_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256|0x2054;
  if (metadata)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = -1;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_metadata_get_negotiated_tls_ciphersuite_block_invoke;
    v3[3] = &unk_1E70D5E30;
    v3[4] = &v4;
    sec_protocol_metadata_access_handle(metadata, v3);
    v1 = *(v5 + 12);
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

BOOL __sec_protocol_metadata_get_negotiated_tls_ciphersuite_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 34);
  }

  return a2 != 0;
}

BOOL sec_protocol_metadata_access_peer_certificate_chain(sec_protocol_metadata_t metadata, void *handler)
{
  v2 = 0;
  if (metadata && handler)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_access_peer_certificate_chain_block_invoke;
    v4[3] = &unk_1E70D5D70;
    v4[4] = handler;
    return sec_protocol_metadata_access_handle(metadata, v4);
  }

  return v2;
}

unint64_t der_encode_generalizedtime_body_repair(CFTypeRef *a1, int a2, uint64_t a3, unint64_t a4, double a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v48 = 0;
  v49 = 0;
  v47 = 0;
  err = 0;
  p_err = &err;
  v52 = 0x2000000000;
  v53 = -86;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 0x40000000;
  *&buf[16] = __SecAbsoluteTimeGetGregorianDate_block_invoke;
  v57 = &unk_1E70E45A8;
  v58 = &err;
  v59 = a5;
  v60 = &v49 + 4;
  v61 = &v49;
  v62 = &v48 + 4;
  v63 = &v48;
  v64 = &v47 + 4;
  v65 = &v47;
  SecCFCalendarDoWithZuluCalendar(buf);
  if (*(p_err + 24) == 1)
  {
    _Block_object_dispose(&err, 8);
  }

  else
  {
    SecCFCreateErrorWithFormat(-1, sSecDERErrorDomain, 0, a1, v10, @"Failed to encode date.", v11, v12, v44);
    v13 = *(p_err + 24);
    _Block_object_dispose(&err, 8);
    if ((v13 & 1) == 0)
    {
      v29 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        if (a1)
        {
          v30 = *a1;
        }

        else
        {
          v30 = 0;
        }

        *buf = 138412290;
        *&buf[4] = v30;
        _os_log_impl(&dword_1887D2000, v29, OS_LOG_TYPE_DEFAULT, "der: unable to encode date: %@", buf, 0xCu);
      }

      goto LABEL_47;
    }
  }

  err = 0;
  if ((validateDateComponents(HIDWORD(v49), v49, HIDWORD(v48), v48, HIDWORD(v47), v47, 0, &err) & 1) == 0)
  {
    v14 = CFErrorCopyDescription(err);
    __security_simulatecrash(v14, 1405091842);
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "continuing";
      if (a2)
      {
        v16 = "setting default value";
      }

      *buf = 138412546;
      *&buf[4] = err;
      *&buf[12] = 2080;
      *&buf[14] = v16;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "der: invalid date: %@; %s", buf, 0x16u);
    }

    v17 = err;
    if (err)
    {
      err = 0;
      CFRelease(v17);
    }

    if (a2)
    {
      v49 = 0x7D100000001;
      HIDWORD(v48) = 1;
      HIDWORD(v47) = 1;
    }
  }

  if (a3 + 1 <= a4)
  {
    *(a4 - 1) = 90;
    v18 = a4 - 1;
  }

  else
  {
    v18 = 0;
  }

  v20 = v49;
  v19 = HIDWORD(v49);
  v45 = HIDWORD(v48);
  v46 = v48;
  v22 = v47;
  v21 = HIDWORD(v47);
  v54 = -1431655766;
  v55 = -1431655766;
  *buf = 0xAAAAAAAAAAAAAAAALL;
  v23 = __dtoa();
  v24 = v55;
  v25 = *buf;
  if (a5 < 0.0)
  {
    v26 = v23 + (v55 & ~(v55 >> 31));
    if (v26 < *buf)
    {
      v27 = (*buf - 1);
      for (*v27 = 106 - *(*buf - 1); v27 > v26; *v27 = 105 - v28)
      {
        v28 = *--v27;
      }
    }

    v24 = v55;
    v25 = *buf;
  }

  if (v25 - v23 > v24)
  {
    if ((v24 & 0x80000000) == 0)
    {
      v18 = ccder_encode_body();
LABEL_34:
      if (a3 + 1 <= v18)
      {
        *--v18 = 46;
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_38;
    }

    v44 = a1;
    v31 = v20;
    v32 = v19;
    ccder_encode_body();
    v33 = -v55;
    v34 = ccder_encode_body_nocopy();
    v18 = v34;
    if (v34)
    {
      if (a5 >= 0.0)
      {
        v35 = 48;
      }

      else
      {
        v35 = 57;
      }

      memset(v34, v35, v33);
      v19 = v32;
      v20 = v31;
      a1 = v44;
      goto LABEL_34;
    }

    v19 = v32;
    v20 = v31;
    a1 = v44;
  }

LABEL_38:
  __freedtoa();
  if (v18)
  {
    v39 = a3 + 2;
    if (a3 + 2 <= v18)
    {
      *(v18 - 2) = v22 / 10 + 48;
      *(v18 - 1) = v22 % 10 + 48;
      if (v39 <= v18 - 2)
      {
        *(v18 - 4) = v21 / 10 + 48;
        *(v18 - 3) = v21 % 10 + 48;
        if (v39 <= v18 - 4)
        {
          *(v18 - 6) = v46 / 10 + 48;
          *(v18 - 5) = v46 % 10 + 48;
          if (v39 <= v18 - 6)
          {
            *(v18 - 8) = v45 / 10 + 48;
            *(v18 - 7) = v45 % 10 + 48;
            if (v39 <= v18 - 8)
            {
              *(v18 - 10) = v20 / 10 + 48;
              *(v18 - 9) = v20 % 10 + 48;
              if (v39 <= v18 - 10)
              {
                v40 = (((103 * (v19 % 100)) >> 15) & 1) + ((103 * (v19 % 100)) >> 10);
                *(v18 - 12) = v40 + 48;
                *(v18 - 11) = v19 % 100 - 10 * v40 + 48;
                if (v39 <= v18 - 12)
                {
                  *(v18 - 14) = v19 / 1000 + 48;
                  v41 = v18 - 14;
                  *(v41 + 1) = v19 / 100 % 10 + 48;
                  goto LABEL_48;
                }
              }
            }
          }
        }
      }
    }
  }

  SecCFCreateErrorWithFormat(-7, sSecDERErrorDomain, 0, a1, v36, @"ccder failed to encode", v37, v38, v44);
LABEL_47:
  v41 = 0;
LABEL_48:
  v42 = *MEMORY[0x1E69E9840];
  return v41;
}

uint64_t __sec_protocol_metadata_access_peer_certificate_chain_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 88);
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_access_peer_certificate_chain_block_invoke_2;
    v4[3] = &unk_1E70D5D48;
    v4[4] = *(a1 + 32);
    sec_array_apply(result, v4);
    return 1;
  }

  return result;
}

__CFData *SecTrustSerialize(uint64_t a1, CFTypeRef *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  if (a1)
  {
    v3 = *(a1 + 136);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __SecTrustSerialize_block_invoke;
    v14[3] = &unk_1E70E32D8;
    v14[4] = &v15;
    v14[5] = a1;
    dispatch_sync(v3, v14);
    v10 = v16[3];
    if (v10)
    {
      DERData = CFPropertyListCreateDERData(v4, v10, a2, v5, v6, v7, v8, v9);
      goto LABEL_4;
    }

    SecError(-26275, a2, @"unable to create trust plist");
  }

  else
  {
    SecError(-50, a2, @"null trust input");
  }

  DERData = 0;
LABEL_4:
  v12 = v16[3];
  if (v12)
  {
    v16[3] = 0;
    CFRelease(v12);
  }

  _Block_object_dispose(&v15, 8);
  return DERData;
}

uint64_t __sec_array_apply_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  xpc_array_get_pointer();
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void *__cdecl sec_retain(void *obj)
{
  if (obj)
  {
    return os_retain(obj);
  }

  return obj;
}

OSStatus SecTrustCopyPolicies(SecTrustRef trust, CFArrayRef *policies)
{
  v2 = -50;
  if (trust && policies)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v4 = *(trust + 17);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __SecTrustCopyPolicies_block_invoke;
    v7[3] = &unk_1E70E27B0;
    v7[4] = &v8;
    v7[5] = trust;
    dispatch_sync(v4, v7);
    v5 = v9[3];
    if (v5)
    {
      v2 = 0;
      *policies = v5;
    }

    else
    {
      v2 = -108;
    }

    _Block_object_dispose(&v8, 8);
  }

  return v2;
}

CFArrayRef __SecTrustCopyPolicies_block_invoke(uint64_t a1)
{
  result = CFArrayCreateCopy(*MEMORY[0x1E695E480], *(*(a1 + 40) + 32));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t SecPolicySetSSLHostname(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (!v2)
  {
    SecPolicySetOptionsValue_internal(a1, @"SSLHostname", a2);
  }

  return v3;
}

void SecPolicySetOptionsValue_internal(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a2 && a3)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v6);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!MutableCopy)
      {
        return;
      }
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      *(a1 + 32) = 0;
      CFRelease(v8);
    }

    if (CFEqual(a2, @"TemporalValidity") && CFEqual(a3, *MEMORY[0x1E695E4C0]))
    {
      CFDictionaryRemoveValue(MutableCopy, a2);
    }

    else
    {
      CFDictionarySetValue(MutableCopy, a2, a3);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      CFRelease(v9);
    }

    *(a1 + 32) = MutableCopy;
  }
}

uint64_t SecPolicySetATSPinning(uint64_t result, const __CFDictionary *a2)
{
  if (result)
  {
    v3 = result;
    Value = CFDictionaryGetValue(*(result + 32), @"SSLHostname");
    result = 0;
    if (a2)
    {
      if (Value)
      {
        v5 = CFGetTypeID(Value);
        if (v5 == CFStringGetTypeID())
        {
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(v3 + 32));
          v7 = *(v3 + 32);
          if (v7)
          {
            *(v3 + 32) = 0;
            CFRelease(v7);
          }

          add_ats_options_from_dict(MutableCopy, Value, a2);
          v8 = *(v3 + 32);
          if (v8)
          {
            CFRelease(v8);
          }

          *(v3 + 32) = MutableCopy;
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t __sec_protocol_metadata_get_negotiated_protocol_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = *(a2 + 384);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, &sec_protocol_helper_c_string_set_callbacks);
    *(a2 + 384) = Mutable;
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = CFSetGetValue(Mutable, *(a2 + 40));
  v6 = *(*(a1 + 32) + 8);
  if (!*(v6 + 24))
  {
    *(v6 + 24) = strdup(v5);
    CFSetAddValue(*(a2 + 384), *(*(*(a1 + 32) + 8) + 24));
  }

  return 1;
}

uint64_t SecTrustEvaluateFastAsync(dispatch_queue_t *a1, dispatch_queue_t queue, uint64_t a3)
{
  result = 4294967246;
  if (a1 && queue)
  {
    if (a3)
    {
      dispatch_assert_queue_V2(queue);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = __SecTrustEvaluateFastAsync_block_invoke;
      v7[3] = &unk_1E70E2E38;
      v7[4] = a3;
      v7[5] = a1;
      SecTrustEvaluateIfNecessaryFastAsync(a1, queue, v7);
      return 0;
    }
  }

  return result;
}

void SecTrustEvaluateIfNecessaryFastAsync(dispatch_queue_t *a1, NSObject *a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2000000000;
    v17[3] = SecTrustGetVerifyTime(a1);
    dispatch_retain(a2);
    CFRetain(a1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke;
    block[3] = &unk_1E70E3920;
    block[6] = a1;
    block[7] = a2;
    block[4] = a3;
    block[5] = v17;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v6 = secLogObjForScope("trust");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v19 = a1;
      _os_log_debug_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEBUG, "(Trust %p) waiting for queue", buf, 0xCu);
    }

    v7 = a1[17];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_565;
    v11[3] = &unk_1E70E3948;
    v11[4] = &v12;
    v11[5] = a1;
    dispatch_sync(v7, v11);
    if (*(v13 + 24) == 1)
    {
      v8 = secLogObjForScope("trust");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = a1;
        _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "(Trust %p) Waiting for pending eval", buf, 0xCu);
      }

      dispatch_group_notify(a1[21], a1[17], block);
    }

    else
    {
      dispatch_sync(a1[17], block);
      v9 = secLogObjForScope("trust");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = a1;
        _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "(Trust %p) Completed async eval kickoff", buf, 0xCu);
      }

      dispatch_group_leave(a1[21]);
    }

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(v17, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __SecTrustEvaluateIfNecessaryFastAsync_block_invoke(uint64_t a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v2 = secLogObjForScope("trust");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 48);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v33;
    _os_log_debug_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEBUG, "(Trust %p) Started eval block", &buf, 0xCu);
  }

  if (SecTrustIsTrustResultValid(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24)))
  {
    v3 = secLogObjForScope("trust");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "(Trust %p) Prior trust results valid", &buf, 0xCu);
    }

    v5 = *(a1 + 48);
    *(v5 + 160) = 0;
    v6 = *(a1 + 56);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_545;
    block[3] = &unk_1E70E37F0;
    block[4] = *(a1 + 32);
    block[5] = v5;
    dispatch_async(v6, block);
    dispatch_release(*(a1 + 56));
  }

  else
  {
    dispatch_group_enter(*(*(a1 + 48) + 168));
    v43 = 0;
    v44 = &v43;
    v45 = 0x2000000000;
    v7 = *(a1 + 48);
    dispatch_assert_queue_V2(*(v7 + 136));
    *(v7 + 112) = 7;
    v8 = *(v7 + 72);
    if (v8)
    {
      *(v7 + 72) = 0;
      CFRelease(v8);
    }

    v9 = *(v7 + 88);
    if (v9)
    {
      *(v7 + 88) = 0;
      CFRelease(v9);
    }

    v10 = *(v7 + 96);
    if (v10)
    {
      *(v7 + 96) = 0;
      CFRelease(v10);
    }

    v11 = *(v7 + 120);
    if (v11)
    {
      free(v11);
      *(v7 + 120) = 0;
    }

    v12 = *(v7 + 128);
    if (v12)
    {
      free(v12);
      *(v7 + 128) = 0;
    }

    v13 = _onQueue_SecTrustCopyPlist(v7);
    v14 = SecTrustCreateFromPropertyListRepresentation(v13, 0);
    if (v13)
    {
      CFRelease(v13);
    }

    v46 = v14;
    v15 = _os_activity_create(&dword_1887D2000, "SecTrustEvaluateIfNecessaryFastAsync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v41[0] = 0;
    v41[1] = v41;
    v41[2] = 0x2800000000;
    v42.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
    v42.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
    os_activity_scope_enter(v15, &v42);
    os_release(v15);
    SecTrustValidateInput(v44[3]);
    if (gTrustd && *(gTrustd + 40))
    {
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 0x40000000;
      v40[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_547;
      v40[3] = &unk_1E70E3888;
      v16 = *(a1 + 56);
      v40[8] = *(a1 + 48);
      v17 = *(a1 + 32);
      v40[6] = *(a1 + 40);
      v40[7] = v41;
      v40[4] = v17;
      v40[5] = &v43;
      dispatch_async(v16, v40);
    }

    else
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 0x40000000;
      v39[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_555;
      v39[3] = &unk_1E70E38F8;
      v19 = *(a1 + 48);
      v18 = *(a1 + 56);
      v39[6] = v41;
      v39[7] = v19;
      v20 = *(a1 + 40);
      v39[4] = *(a1 + 32);
      v39[5] = &v43;
      v21 = v44[3];
      v22 = *(v21 + 116);
      v23 = *(v21 + 117);
      v24 = *(v21 + 16);
      v25 = *(v21 + 32);
      v26 = *(v21 + 48);
      v27 = *(*(v20 + 8) + 24);
      if (SecTrustGetCurrentAccessGroups_onceToken != -1)
      {
        v38 = v18;
        v37 = *(*(v20 + 8) + 24);
        v35 = *(v21 + 32);
        v36 = *(v21 + 16);
        v34 = *(v21 + 48);
        dispatch_once(&SecTrustGetCurrentAccessGroups_onceToken, &__block_literal_global_493);
        v26 = v34;
        v25 = v35;
        v24 = v36;
        v27 = v37;
        v18 = v38;
      }

      v28 = v44[3];
      v29 = v28[13];
      v30 = v28[18];
      v31 = v28[19];
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 0x40000000;
      v50 = __handle_trust_evaluate_xpc_async_block_invoke;
      v51 = &__block_descriptor_tmp_567;
      v59 = v22;
      v60 = v23;
      v52 = v24;
      v53 = v25;
      v54 = v26;
      v55 = v27;
      v56 = v29;
      v57 = v30;
      v58 = v31;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 0x40000000;
      v48[2] = __handle_trust_evaluate_xpc_async_block_invoke_2;
      v48[3] = &unk_1E70E3990;
      v48[4] = v39;
      v48[5] = v28 + 11;
      v48[6] = v28 + 12;
      v48[7] = v28 + 9;
      securityd_send_async_and_do(8u, v18, &buf, v48);
    }

    dispatch_release(*(a1 + 56));
    _Block_object_dispose(v41, 8);
    _Block_object_dispose(&v43, 8);
  }

  v32 = *MEMORY[0x1E69E9840];
}

size_t __handle_trust_evaluate_xpc_async_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetCertificates(a2, "certificates", *(a1 + 32), a3);
  if (result)
  {
    v7 = *(a1 + 40);
    if (!v7 || (result = SecXPCDictionarySetCertificates(a2, "anchors", v7, a3), result))
    {
      if (*(a1 + 112) == 1)
      {
        xpc_dictionary_set_BOOL(a2, "anchorsOnly", 1);
      }

      xpc_dictionary_set_BOOL(a2, "keychainsAllowed", *(a1 + 113));
      result = SecXPCDictionarySetPolicies(a2, *(a1 + 48), a3);
      if (result)
      {
        v12 = *(a1 + 56);
        if (!v12 || (result = SecXPCDictionarySetDataArray(a2, "responses", v12, a3), result))
        {
          v13 = *(a1 + 64);
          if (!v13 || (result = SecXPCDictionarySetDataArray(a2, "scts", v13, a3), result))
          {
            v14 = *(a1 + 72);
            if (!v14 || (result = SecXPCDictionarySetPListWithRepair(a2, "trustedLogs", v14, a3, v8, v9, v10, v11), result))
            {
              xpc_dictionary_set_double(a2, "verifyDate", *(a1 + 80));
              v19 = *(a1 + 88);
              if (!v19 || (result = SecXPCDictionarySetPListWithRepair(a2, "exceptions", v19, a3, v15, v16, v17, v18), result))
              {
                v20 = *(a1 + 96);
                if (!v20 || (result = SecXPCDictionarySetData(a2, "auditToken", v20, a3), result))
                {
                  xpc_dictionary_set_uint64(a2, "attribution", *(a1 + 104));
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t SecXPCDictionarySetDataArray(void *a1, const char *a2, const __CFArray *a3, __CFString **a4)
{
  v8 = xpc_array_create(0, 0);
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(a3);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; v11 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        if (ValueAtIndex)
        {
          v14 = ValueAtIndex;
          Length = CFDataGetLength(ValueAtIndex);
          BytePtr = CFDataGetBytePtr(v14);
          if (Length >= 1 && BytePtr)
          {
            xpc_array_set_data(v9, 0xFFFFFFFFFFFFFFFFLL, BytePtr, Length);
          }

          else if (!SecError(-50, a4, @"invalid CFDataRef"))
          {
            xpc_release(v9);
            return 0;
          }
        }
      }
    }

    xpc_dictionary_set_value(a1, a2, v9);
    xpc_release(v9);
    return 1;
  }

  else
  {
    SecError(-108, a4, @"failed to create xpc_array");
    return 0;
  }
}

void securityd_send_async_and_do(unsigned int a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  cf = 0;
  v7 = securityd_create_message(a1, &cf);
  if (v7)
  {
    v8 = v7;
    if (!a3 || ((*(a3 + 16))(a3, v7, &cf) & 1) != 0)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __securityd_send_async_and_do_block_invoke;
      v10[3] = &unk_1E70D4860;
      v10[4] = a4;
      _securityd_message_with_reply_async_inner(v8, a2, v10, 4);
      xpc_release(v8);
      return;
    }

    (*(a4 + 16))(a4, 0, cf);
    xpc_release(v8);
  }

  else
  {
    (*(a4 + 16))(a4, 0, cf);
  }

  v9 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v9);
  }
}

void _securityd_message_with_reply_async_inner(void *a1, NSObject *a2, const void *a3, int a4)
{
  uint64 = xpc_dictionary_get_uint64(a1, "operation");
  v9 = securityd_message_is_for_system_keychain(a1, uint64);
  v10 = v9;
  v11 = securityd_connection_for_operation(uint64, v9, &v16);
  xpc_retain(a1);
  dispatch_retain(a2);
  v12 = _Block_copy(a3);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = ___securityd_message_with_reply_async_inner_block_invoke;
  handler[3] = &unk_1E70D4950;
  v14 = a4;
  handler[4] = v12;
  handler[5] = a1;
  handler[6] = a2;
  handler[7] = v11;
  handler[8] = uint64;
  v15 = v10;
  xpc_connection_send_message_with_reply(v11, a1, a2, handler);
}

void __sec_protocol_metadata_access_handle_block_invoke()
{
  v0 = dlopen("/usr/lib/libnetwork.dylib", 5);
  sec_protocol_metadata_access_handle_libnetworkImage = v0;
  if (v0)
  {
    sec_protocol_metadata_access_handle__nw_protocol_metadata_access_handle = dlsym(v0, "nw_protocol_metadata_access_handle");
    if (!sec_protocol_metadata_access_handle__nw_protocol_metadata_access_handle && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = 0;
      v1 = MEMORY[0x1E69E9C10];
      v2 = "dlsym libnetwork _nw_protocol_metadata_access_handle";
      v3 = &v5;
LABEL_8:
      _os_log_error_impl(&dword_1887D2000, v1, OS_LOG_TYPE_ERROR, v2, v3, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 0;
    v1 = MEMORY[0x1E69E9C10];
    v2 = "dlopen libnetwork";
    v3 = &v4;
    goto LABEL_8;
  }
}

void SecPolicySetName(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v4 = *(a1 + 24);
      CFRetain(cf);
      *(a1 + 24) = cf;
      if (v4)
      {

        CFRelease(v4);
      }
    }
  }
}

BOOL sec_protocol_options_get_quic_use_legacy_codepoint(sec_protocol_options_t options)
{
  if (options)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 1;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_options_get_quic_use_legacy_codepoint_block_invoke;
    v3[3] = &unk_1E70D5360;
    v3[4] = &v4;
    sec_protocol_options_access_handle(options, v3);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

BOOL __sec_protocol_options_get_quic_use_legacy_codepoint_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 && (*(a2 + 373) & 0x20) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = (*(a2 + 373) & 0x10) != 0;
  }

  return a2 != 0;
}

uint64_t SecTrustSetPinningPolicyName(uint64_t a1, uint64_t a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v5 = *(a1 + 136);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __SecTrustSetNeedsEvaluation_block_invoke;
      block[3] = &__block_descriptor_tmp_80_14598;
      block[4] = a1;
      dispatch_sync(v5, block);
      v6 = *(a1 + 136);
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = __SecTrustSetPinningPolicyName_block_invoke;
      v7[3] = &__block_descriptor_tmp_91_14622;
      v7[4] = a1;
      v7[5] = a2;
      dispatch_sync(v6, v7);
      return 0;
    }
  }

  return result;
}

void __SecTrustSetPinningPolicyName_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 32);
  context[0] = MEMORY[0x1E69E9820];
  context[1] = 0x40000000;
  context[2] = __SecTrustSetPinningPolicyName_block_invoke_2;
  context[3] = &__block_descriptor_tmp_90_14623;
  context[4] = *(a1 + 40);
  v3.length = CFArrayGetCount(v1);
  v3.location = 0;
  CFArrayApplyFunction(v1, v3, apply_block_1_14599, context);
}

void __SecTrustSetPinningPolicyName_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  SecPolicySetName(a2, *(a1 + 32));
  v3 = secLogObjForScope("SecPinningDb");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = 138412290;
    v7 = v5;
    _os_log_debug_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEBUG, "Set %@ as name on all policies", &v6, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t SecECPublicKeyCopyPublicOctets(void *a1, __CFData **a2)
{
  v3 = a1[3];
  v4 = CFGetAllocator(a1);
  v5 = SecECPublicKeyExport(v4, v3);
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

__CFData *SecECPublicKeyExport(const __CFAllocator *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = (cczp_bitlen() + 7) >> 2;
  Mutable = CFDataCreateMutable(a1, 0);
  CFDataSetLength(Mutable, v4 | 1);
  CFDataGetMutableBytePtr(Mutable);
  ccec_export_pub();
  return Mutable;
}

uint64_t SecECKeyGetNamedCurve(__SecKey *a1)
{
  if (SecKeyGetAlgorithmId(a1) != 3)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = SecKeyCopyAttributes(a1);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, @"bsiz");
  valuePtr = 0;
  if (!Value)
  {
    goto LABEL_10;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFNumberGetTypeID() || !CFNumberGetValue(v5, kCFNumberCFIndexType, &valuePtr))
  {
    goto LABEL_10;
  }

  switch(valuePtr)
  {
    case 521:
      v7 = 25;
      break;
    case 384:
      v7 = 24;
      break;
    case 256:
      v7 = 23;
      break;
    default:
LABEL_10:
      v7 = 0xFFFFFFFFLL;
      break;
  }

  CFRelease(v3);
  return v7;
}

__CFDictionary *SecECPublicKeyCopyAttributeDictionary(const void *a1)
{
  v1 = SecKeyCopyAttributeDictionaryWithLocalKey(a1, @"73", 0);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v1);
  CFDictionarySetValue(MutableCopy, @"drve", *MEMORY[0x1E695E4C0]);
  if (v1)
  {
    CFRelease(v1);
  }

  return MutableCopy;
}

void sec_protocol_options_set_tls_tickets_enabled(sec_protocol_options_t options, BOOL tickets_enabled)
{
  if (options)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 0x40000000;
    v2[2] = __sec_protocol_options_set_tls_tickets_enabled_block_invoke;
    v2[3] = &__block_descriptor_tmp_39;
    v3 = tickets_enabled;
    sec_protocol_options_access_handle(options, v2);
  }
}

BOOL __sec_protocol_options_set_tls_tickets_enabled_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 369) = *(a2 + 369) & 0xFFFFE7FF | (*(a1 + 32) << 11) | 0x1000;
  }

  return a2 != 0;
}

uint64_t SecCertificateGetSignatureHashAlgorithm(uint64_t a1)
{
  if (a1)
  {
    return SecSignatureHashAlgorithmForAlgorithmOid((a1 + 120));
  }

  else
  {
    return SecSignatureHashAlgorithmForAlgorithmOid(0);
  }
}

void add_ku(const __CFDictionary *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    add_element(a1, @"KeyUsage", v3);
    CFRelease(v4);
  }
}

uint64_t SecTrustSetURLRequestAttribution(uint64_t a1, uint64_t a2)
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
  v7[2] = __SecTrustSetURLRequestAttribution_block_invoke;
  v7[3] = &__block_descriptor_tmp_401;
  v7[4] = a1;
  v7[5] = a2;
  dispatch_sync(v5, v7);
  return 0;
}

CFTypeRef SecKeyCopySubjectPublicKeyInfo(__SecKey *a1)
{
  v18 = 0;
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  v16 = 0u;
  v17 = 0u;
  if (SecKeyCopyPublicBytes(a1, &v18))
  {
    goto LABEL_25;
  }

  if (!v18)
  {
    return 0;
  }

  if (!CFDataGetLength(v18))
  {
    goto LABEL_25;
  }

  Mutable = CFDataCreateMutable(0, 0);
  CFDataAppendBytes(Mutable, byte_188963650, 1);
  BytePtr = CFDataGetBytePtr(v18);
  v5 = CFDataGetLength(v18);
  CFDataAppendBytes(Mutable, BytePtr, v5);
  if (v18)
  {
    CFRelease(v18);
  }

  v18 = Mutable;
  *&v17 = CFDataGetBytePtr(Mutable);
  v6 = 0;
  *(&v17 + 1) = CFDataGetLength(v18);
  if (AlgorithmId > 3)
  {
    if (AlgorithmId == 4)
    {
      v9 = &encodedAlgIdEd25519;
    }

    else
    {
      if (AlgorithmId != 6)
      {
        goto LABEL_22;
      }

      v9 = &encodedAlgIdEd448;
    }

    *&v16 = v9;
    v8 = 5;
    goto LABEL_19;
  }

  if (AlgorithmId == 1)
  {
    *&v16 = &encodedAlgIdRSA;
    v8 = 13;
    goto LABEL_19;
  }

  if (AlgorithmId != 3)
  {
    goto LABEL_22;
  }

  NamedCurve = SecECKeyGetNamedCurve(a1);
  if (NamedCurve == 25)
  {
    v14 = &encodedAlgIdECsecp521;
    goto LABEL_28;
  }

  if (NamedCurve == 24)
  {
    v14 = &encodedAlgIdECsecp384;
LABEL_28:
    *&v16 = v14;
    v8 = 16;
    goto LABEL_19;
  }

  if (NamedCurve != 23)
  {
LABEL_25:
    v6 = 0;
    goto LABEL_22;
  }

  *&v16 = &encodedAlgIdECsecp256;
  v8 = 19;
LABEL_19:
  *(&v16 + 1) = v8;
  length = DERLengthOfEncodedSequence(0x2000000000000010, &v16, DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs);
  v10 = CFDataCreateMutable(*MEMORY[0x1E695E480], length);
  CFDataSetLength(v10, length);
  MutableBytePtr = CFDataGetMutableBytePtr(v10);
  if (!DEREncodeSequence(0x2000000000000010, &v16, DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, MutableBytePtr, &length))
  {
    CFDataSetLength(v10, length);
    v6 = CFRetain(v10);
    if (!v10)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v6 = 0;
  if (v10)
  {
LABEL_21:
    CFRelease(v10);
  }

LABEL_22:
  v12 = v18;
  if (v18)
  {
    v18 = 0;
    CFRelease(v12);
  }

  return v6;
}

OSStatus SecTrustSetOCSPResponse(SecTrustRef trust, CFTypeRef responseData)
{
  values = responseData;
  if (trust)
  {
    v4 = *(trust + 17);
    block = MEMORY[0x1E69E9820];
    p_block = 0x40000000;
    v25 = __SecTrustSetNeedsEvaluation_block_invoke;
    v26 = &__block_descriptor_tmp_80_14598;
    v27 = trust;
    dispatch_sync(v4, &block);
    block = 0;
    p_block = &block;
    v25 = 0x2000000000;
    v26 = 0;
    if (responseData)
    {
      v5 = CFGetTypeID(responseData);
      if (v5 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(responseData);
        Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
        *(p_block + 24) = Mutable;
        if (!Mutable)
        {
          v14 = -108;
          goto LABEL_25;
        }

        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(responseData, i);
            if (ValueAtIndex && (v10 = ValueAtIndex, v11 = CFGetTypeID(ValueAtIndex), v11 == CFDataGetTypeID()))
            {
              CFArrayAppendValue(*(p_block + 24), v10);
            }

            else
            {
              v12 = secLogObjForScope("SecError");
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "BUG IN SECURITY CLIENT: responseData array contains non-data value", buf, 2u);
              }
            }
          }

          Mutable = *(p_block + 24);
        }

        if (Count != CFArrayGetCount(Mutable))
        {
          v13 = *(p_block + 24);
          if (v13)
          {
            CFRelease(v13);
          }

LABEL_23:
          v14 = -50;
          goto LABEL_25;
        }
      }

      else
      {
        v15 = CFGetTypeID(responseData);
        if (v15 != CFDataGetTypeID())
        {
          v18 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1887D2000, v18, OS_LOG_TYPE_DEFAULT, "BUG IN SECURITY CLIENT: responseData contains unsupported value type", buf, 2u);
          }

          goto LABEL_23;
        }

        v16 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
        *(p_block + 24) = v16;
      }
    }

    v17 = *(trust + 17);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = __SecTrustSetOCSPResponse_block_invoke;
    v20[3] = &unk_1E70E26A0;
    v20[4] = &block;
    v20[5] = trust;
    dispatch_sync(v17, v20);
    v14 = 0;
LABEL_25:
    _Block_object_dispose(&block, 8);
    return v14;
  }

  return -50;
}

void __SecTrustSetOCSPResponse_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 40);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 40);
  }

  *(v2 + 40) = *(*(*(a1 + 32) + 8) + 24);
}

sec_trust_t sec_trust_create(SecTrustRef trust)
{
  v2 = [SecConcrete_sec_trust alloc];

  return [(SecConcrete_sec_trust *)v2 initWithTrust:trust];
}

BOOL sec_array_apply(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && v3[1] && MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E50])
  {
    v7 = v3[1];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __sec_array_apply_block_invoke;
    v8[3] = &unk_1E70D6B38;
    v9 = v3;
    v10 = v4;
    v5 = xpc_array_apply(v7, v8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFMutableArrayRef SecCertificateArraySerialize(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
  v6.location = 0;
  v6.length = Count;
  CFArrayApplyFunction(a1, v6, serializeCertificate, Mutable);
  return Mutable;
}

__CFData *CFPropertyListCreateDERData(uint64_t a1, const __CFString *a2, CFTypeRef *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = der_sizeof_plist(a2, a3, a3, a4, a5, a6, a7, a8);
  Mutable = CFDataCreateMutable(0, v10);
  CFDataSetLength(Mutable, v10);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (!der_encode_plist_repair(a2, a3, 0, MutableBytePtr, &MutableBytePtr[v10], v13, v14, v15) && Mutable)
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t der_sizeof_number(const __CFNumber *a1, CFTypeRef *a2)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    if (HIBYTE(valuePtr) - 255 <= 0xFFFFFF01)
    {
      v6 = 9;
      v7 = 48;
      do
      {
        if ((v6 - 2) < 2)
        {
          break;
        }

        v8 = valuePtr >> v7;
        --v6;
        v7 -= 8;
      }

      while (HIBYTE(valuePtr) == v8);
    }

    return ccder_sizeof();
  }

  else
  {
    SecCFCreateErrorWithFormat(-4, sSecDERErrorDomain, 0, a2, v3, @"Unable to get number from data", v4, v5, v10);
    return 0;
  }
}

uint64_t der_sizeof_date()
{
  MEMORY[0x18CFD8B20]();
  __dtoa();
  __freedtoa();

  return ccder_sizeof();
}

uint64_t der_encode_number(const __CFNumber *a1, CFTypeRef *a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  if (!CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr))
  {
    v16 = sSecDERErrorDomain;
    v17 = @"Unable to get number from data";
    v18 = -4;
LABEL_23:
    SecCFCreateErrorWithFormat(v18, v16, 0, a2, v7, v17, v8, v9, v22);
    return 0;
  }

  v10 = valuePtr;
  v11 = HIBYTE(valuePtr);
  if (HIBYTE(valuePtr) - 255 > 0xFFFFFF01)
  {
    v19 = 8;
    if (!a4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = 9;
    v13 = 48;
    v14 = 1;
    while ((v12 - 2) >= 2)
    {
      v15 = valuePtr >> v13;
      --v12;
      v13 -= 8;
      if (v11 != v15)
      {
        v14 = v12 - 1;
        goto LABEL_11;
      }
    }

    v12 = 2;
LABEL_11:
    if ((((valuePtr >> (8 * v14 - 8)) ^ v11) & 0x80) != 0)
    {
      v19 = v12;
    }

    else
    {
      v19 = v14;
    }

    if (!a4)
    {
      goto LABEL_22;
    }
  }

  if (a4 - a3 < v19)
  {
LABEL_22:
    v16 = sSecDERErrorDomain;
    v17 = @"Unknown size";
    v18 = -3;
    goto LABEL_23;
  }

  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  do
  {
    *--a4 = v10;
    v10 >>= 8;
    --v20;
  }

  while (v20);
  valuePtr = v10;
  result = ccder_encode_tl();
  if (!result)
  {
    v16 = sSecDERErrorDomain;
    v17 = @"ccder failed to encode";
    v18 = -7;
    goto LABEL_23;
  }

  return result;
}

uint64_t __SecAbsoluteTimeGetGregorianDate_block_invoke(uint64_t a1, CFCalendarRef calendar)
{
  result = CFCalendarDecomposeAbsoluteTime(calendar, *(a1 + 40), "yMdHms", *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

const char *__cdecl sec_protocol_metadata_get_negotiated_protocol(sec_protocol_metadata_t metadata)
{
  v1 = metadata;
  if (metadata)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    os_unfair_lock_lock(&returned_raw_string_pointers_lock);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_metadata_get_negotiated_protocol_block_invoke;
    v3[3] = &unk_1E70D5B98;
    v3[4] = &v4;
    sec_protocol_metadata_access_handle(v1, v3);
    os_unfair_lock_unlock(&returned_raw_string_pointers_lock);
    v1 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

BOOL __sec_protocol_metadata_get_negotiated_tls_protocol_version_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 32) + 8) + 24) = *(a2 + 32);
  }

  return a2 != 0;
}

tls_protocol_version_t sec_protocol_metadata_get_negotiated_tls_protocol_version(sec_protocol_metadata_t metadata)
{
  if (!metadata)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_negotiated_tls_protocol_version_block_invoke;
  v3[3] = &unk_1E70D5DC0;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(metadata, v3);
  v1 = *(v5 + 12);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t SecRSAPublicKeyCopyPublicSerialization(void *a1, __CFData **a2)
{
  v3 = a1[3];
  v4 = CFGetAllocator(a1);
  PKCS1 = SecRSAPublicKeyCreatePKCS1(v4, v3);
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

uint64_t SecCertificateGetCRLDistributionPoints(uint64_t result)
{
  if (result)
  {
    return *(result + 464);
  }

  return result;
}

uint64_t SecCertificateGetSHA1Digest(void *a1)
{
  if (!a1 || !a1[2] || (a1[3] & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = a1[80];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecCertificateGetSHA1Digest_block_invoke;
  v4[3] = &unk_1E70DE038;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

CFMutableStringRef SecCertificateCopyCompanyName(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (parseX501NameContent((a1 + 184), Mutable, appendToCompanyNameString, 1) || !CFStringGetLength(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t appendToCompanyNameString(__CFString *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  if (!CFStringGetLength(a1) && DEROidCompare(a2, &oidOrganizationName))
  {
    v9 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
    if (v9)
    {
      v10 = v9;
      CFStringAppend(a1, v9);
      CFRelease(v10);
    }
  }

  return 0;
}

uint64_t parseX501NameContent(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, __int128 *, __int128 *, uint64_t, uint64_t), uint64_t a4)
{
  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = 0xAAAAAAAAAAAAAAAALL;
  if (DERDecodeSeqContentInit(a1, v15))
  {
    return 4294941021;
  }

  v8 = 0;
  memset(v14, 170, sizeof(v14));
  while (1)
  {
    v9 = DERDecodeSeqNext(v15, v14);
    if (v9)
    {
      break;
    }

    if (v14[0] != 0x2000000000000011 || v14[2] == 0)
    {
      return 4294941021;
    }

    v11 = parseRDNContent(&v14[1], a2, a3, a4);
    v12 = 4 * (v8 > 0x3FE);
    if (v11)
    {
      v4 = v11;
    }

    else
    {
      ++v8;
      v4 = v4;
    }

    if (v11)
    {
      v12 = 1;
    }

    if (v12)
    {
      if (v12 != 4)
      {
        return v4;
      }

      return 4294941021;
    }
  }

  v4 = 0;
  if (v9 != 1)
  {
    return 4294941021;
  }

  return v4;
}

uint64_t parseRDNContent(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t, __int128 *, __int128 *, uint64_t, uint64_t), uint64_t a4)
{
  v15[0] = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = 0xAAAAAAAAAAAAAAAALL;
  if (DERDecodeSeqContentInit(a1, v15))
  {
    return 4294941021;
  }

  v7 = 0;
  memset(v14, 170, sizeof(v14));
  while (1)
  {
    v8 = DERDecodeSeqNext(v15, v14);
    if (v8)
    {
      break;
    }

    if (v14[0] != 0x2000000000000010)
    {
      return 4294941021;
    }

    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12 = v9;
    v13 = v9;
    if (DERParseSequenceContent(&v14[1], DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v12, 0x20uLL) || *(&v12 + 1) == 0)
    {
      return 4294941021;
    }

    result = a3(a2, &v12, &v13, v7, a4);
    if (result)
    {
      return result;
    }

    ++v7;
  }

  if (v8 == 1)
  {
    return 0;
  }

  else
  {
    return 4294941021;
  }
}

__CFString *copyDERThingContentDescription(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  if (a2 > 19)
  {
    if (a2 > 26)
    {
      if (a2 <= 0x200000000000000FLL)
      {
        if ((a2 - 27) >= 2)
        {
          if (a2 == 30)
          {
            v7 = a3;
            v8 = 256;
LABEL_22:

            return copyContentString(a1, v7, v8);
          }

LABEL_31:
          if (a4)
          {
            v11 = SecFrameworkCopyLocalizedString(@"not displayed (tag = %ld; length %ld)", @"Certificate");
            if (!v11)
            {
              return 0;
            }
          }

          else
          {
            v11 = @"not displayed (tag = %ld; length %ld)";
          }

          v13 = CFStringCreateWithFormat(a1, 0, v11, a2, *(a3 + 8));
          CFRelease(v11);
          return v13;
        }

LABEL_21:
        v7 = a3;
        v8 = 134217984;
        goto LABEL_22;
      }

      if (a2 == 0x2000000000000010)
      {
        v9 = @"Sequence";
      }

      else
      {
        if (a2 != 0x2000000000000011)
        {
          goto LABEL_31;
        }

        v9 = @"Set";
      }

      goto LABEL_35;
    }

    if ((a2 - 20) < 2)
    {
LABEL_16:
      v7 = a3;
      v8 = 513;
      goto LABEL_22;
    }

    if (a2 != 22)
    {
      if (a2 != 26)
      {
        goto LABEL_31;
      }

      goto LABEL_16;
    }

LABEL_20:
    v7 = a3;
    v8 = 1536;
    goto LABEL_22;
  }

  if (a2 > 5)
  {
    if (a2 != 6)
    {
      if (a2 == 12)
      {
        goto LABEL_21;
      }

      if (a2 != 19)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    return copyOidDescription(a1, a3, a4);
  }

  else
  {
    if ((a2 - 1) >= 2)
    {
      if (a2 == 3)
      {
        v9 = @"Bit string";
        v12 = @"bits";
        goto LABEL_37;
      }

      if (a2 != 4)
      {
        goto LABEL_31;
      }

      v9 = @"Byte string";
LABEL_35:
      v12 = @"bytes";
LABEL_37:

      return copyBlobString(a1, v9, v12, a3, a4);
    }

    return copyIntegerContentDescription(a1, a3);
  }
}

__CFString *copyDERThingDescription(const __CFAllocator *a1, unsigned __int8 **a2, char a3, int a4)
{
  memset(v9, 170, sizeof(v9));
  if (!DERDecodeItem(a2, v9))
  {
    return copyDERThingContentDescription(a1, *v9, &v9[2], a4);
  }

  if (a3)
  {
    return 0;
  }

  return copyHexDescription(a1, a2);
}

__CFString *copyContentString(CFAllocatorRef alloc, uint64_t a2, CFStringEncoding encoding)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  if (v7)
  {
    v10 = encoding != 256 && v6[v7 - 1] == 0;
    v11 = v7 - v10;
    if (v7 - v10 < 0)
    {
      return 0;
    }
  }

  else
  {
    v11 = 0;
  }

  result = CFStringCreateWithBytes(alloc, v6, v11, encoding, encoding == 256);
  if (!result)
  {

    return copyHexDescription(alloc, a2);
  }

  return result;
}

void check_for_marker(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  if (a1)
  {
    if ((*a3 & 1) == 0)
    {
      v6 = CFGetTypeID(a1);
      if (v6 == CFStringGetTypeID())
      {
        OidDataFromString = SecCertificateCreateOidDataFromString(0, a1);
        if (OidDataFromString)
        {
          v8 = OidDataFromString;
          v9 = CFGetTypeID(OidDataFromString);
          if (v9 == CFDataGetTypeID() && cert_contains_marker_extension_value(*(a3 + 8), v8, a2))
          {
            *a3 = 1;
          }

          CFRelease(v8);
        }
      }
    }
  }
}

const void *SecAccessControlGetConstraint(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 16), @"acl");
  if (!Value)
  {
    return *MEMORY[0x1E695E4D0];
  }

  v4 = Value;
  if (!CFDictionaryGetCount(Value))
  {
    return *MEMORY[0x1E695E4D0];
  }

  result = CFDictionaryGetValue(v4, a2);
  if (!result)
  {

    return CFDictionaryGetValue(v4, @"dacl");
  }

  return result;
}

OSStatus SecItemAdd(CFDictionaryRef attributes, CFTypeRef *result)
{
  v4 = objc_autoreleasePoolPush();
  v19 = 0;
  v20 = &v19;
  v21 = 0x3010000000;
  v22 = &unk_1889A0E76;
  v23 = attributes;
  v24 = 0;
  v18 = -1431655766;
  v5 = _os_activity_create(&dword_1887D2000, "SecItemAdd_ios", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  if ((explode_identity(v20[4], item_add, &v18, result) & 1) == 0)
  {
    v6 = (v20 + 4);
    if (!CFDictionaryContainsKey(v20[4], @"labl"))
    {
      Value = CFDictionaryGetValue(*v6, @"v_Ref");
      v11 = Value;
      if (Value)
      {
        v12 = CFGetTypeID(Value);
        if (v12 == SecCertificateGetTypeID())
        {
          v13 = SecCertificateCopySubjectSummary(v11);
          if (v13)
          {
            v14 = v13;
            v15 = SecCFDictionaryCOWGetMutable(v6);
            CFDictionarySetValue(v15, @"labl", v14);
            CFRelease(v14);
          }
        }
      }
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __SecItemAdd_block_invoke;
    v16[3] = &unk_1E70DEA98;
    v16[4] = &v19;
    v16[5] = result;
    v18 = SecOSStatusWith(v16);
  }

  v7 = v20[5];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = v18;
  os_activity_scope_leave(&state);

  _Block_object_dispose(&v19, 8);
  objc_autoreleasePoolPop(v4);
  return v8;
}

void sub_1887EDB10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, os_activity_scope_state_s state, uint64_t a17, char a18)
{
  os_activity_scope_leave(&state);
  _Block_object_dispose(&a18, 8);
  _Unwind_Resume(a1);
}

BOOL SecPolicyCheckCertSubjectOrganization(uint64_t a1, _BOOL8 a2)
{
  v3 = SecCertificateCopyOrganizationFromX501NameContent((a1 + 184));
  if (v3)
  {
    v4 = v3;
    if (CFArrayGetCount(v3) == 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      if (!a2)
      {
LABEL_11:
        CFRelease(v4);
        return a2;
      }

      v6 = ValueAtIndex;
      v7 = CFGetTypeID(a2);
      if (v7 == CFStringGetTypeID() && CFEqual(a2, v6))
      {
        a2 = 1;
        goto LABEL_11;
      }

      v8 = CFGetTypeID(a2);
      if (v8 == CFArrayGetTypeID())
      {
        v10.length = CFArrayGetCount(a2);
        v10.location = 0;
        a2 = CFArrayContainsValue(a2, v10, v6) != 0;
        goto LABEL_11;
      }
    }

    a2 = 0;
    goto LABEL_11;
  }

  return 0;
}

CFMutableArrayRef SecCertificateCopyOrganizationFromX501NameContent(unint64_t *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (parseX501NameContent(a1, Mutable, appendOrganizationFromX501Name, 1) || !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t appendOrganizationFromX501Name(__CFArray *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  result = DEROidCompare(a2, &oidOrganizationName);
  if (result)
  {
    v9 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(a1, v9);
      CFRelease(v10);
      return 0;
    }

    else
    {
      return 4294941021;
    }
  }

  return result;
}

size_t __handle_trust_evaluate_xpc_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetCertificates(a2, "certificates", *(a1 + 32), a3);
  if (result)
  {
    v7 = *(a1 + 40);
    if (!v7 || (result = SecXPCDictionarySetCertificates(a2, "anchors", v7, a3), result))
    {
      if (*(a1 + 112) == 1)
      {
        xpc_dictionary_set_BOOL(a2, "anchorsOnly", 1);
      }

      xpc_dictionary_set_BOOL(a2, "keychainsAllowed", *(a1 + 113));
      result = SecXPCDictionarySetPolicies(a2, *(a1 + 48), a3);
      if (result)
      {
        v12 = *(a1 + 56);
        if (!v12 || (result = SecXPCDictionarySetDataArray(a2, "responses", v12, a3), result))
        {
          v13 = *(a1 + 64);
          if (!v13 || (result = SecXPCDictionarySetDataArray(a2, "scts", v13, a3), result))
          {
            v14 = *(a1 + 72);
            if (!v14 || (result = SecXPCDictionarySetPListWithRepair(a2, "trustedLogs", v14, a3, v8, v9, v10, v11), result))
            {
              xpc_dictionary_set_double(a2, "verifyDate", *(a1 + 80));
              v19 = *(a1 + 88);
              if (!v19 || (result = SecXPCDictionarySetPListWithRepair(a2, "exceptions", v19, a3, v15, v16, v17, v18), result))
              {
                v20 = *(a1 + 96);
                if (!v20 || (result = SecXPCDictionarySetData(a2, "auditToken", v20, a3), result))
                {
                  xpc_dictionary_set_uint64(a2, "attribution", *(a1 + 104));
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t SecTrustEvaluateInternal(__SecTrust *a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (!a1)
  {
    return 4294967246;
  }

  result = SecTrustEvaluateIfNecessary(a1);
  if (!result)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v5 = *(a1 + 17);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustEvaluateInternal_block_invoke;
    v6[3] = &unk_1E70E3368;
    v6[4] = &v7;
    v6[5] = a1;
    dispatch_sync(v5, v6);
    SecTrustLogFailureDescription(a1, *(v8 + 6));
    if (a2)
    {
      *a2 = *(v8 + 6);
    }

    _Block_object_dispose(&v7, 8);
    return 0;
  }

  return result;
}

BOOL SecTrustEvaluateWithError(SecTrustRef trust, CFErrorRef *error)
{
  v9 = 0;
  v4 = SecTrustEvaluateInternal(trust, &v9);
  if (v4)
  {
    if (error)
    {
      v5 = SecCopyLastError(v4);
LABEL_4:
      v6 = v5;
      result = 0;
LABEL_12:
      *error = v6;
      return result;
    }
  }

  else
  {
    if (v9 == 4 || v9 == 1)
    {
      result = 1;
      if (!error)
      {
        return result;
      }

      v6 = 0;
      goto LABEL_12;
    }

    if (error)
    {
      v5 = SecTrustCopyError(trust);
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t SecTrustEvaluateIfNecessary(__SecTrust *a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = -1431655766;
  if (pthread_main_np() == 1)
  {
    if (SecTrustEvaluateThreadRuntimeCheck_queueToken != -1)
    {
      dispatch_once(&SecTrustEvaluateThreadRuntimeCheck_queueToken, &__block_literal_global_475);
    }

    dispatch_async(SecTrustEvaluateThreadRuntimeCheck_runtimeLogQueue, &__block_literal_global_479);
  }

  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = SecTrustGetVerifyTime(a1);
  v2 = *(a1 + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecTrustEvaluateIfNecessary_block_invoke;
  block[3] = &unk_1E70E3700;
  block[5] = &v7;
  block[6] = a1;
  block[4] = v6;
  dispatch_sync(v2, block);
  v3 = *(v8 + 6);
  _Block_object_dispose(v6, 8);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __SecTrustEvaluateIfNecessary_block_invoke(int8x16_t *a1)
{
  if (SecTrustIsTrustResultValid(a1[3].i64[0], *(*(a1[2].i64[0] + 8) + 24)))
  {
    *(*(a1[2].i64[1] + 8) + 24) = 0;
  }

  else
  {
    v2 = a1[3].i64[0];
    *(v2 + 112) = 7;
    v3 = *(v2 + 72);
    if (v3)
    {
      *(v2 + 72) = 0;
      CFRelease(v3);
      v2 = a1[3].i64[0];
    }

    v4 = *(v2 + 88);
    if (v4)
    {
      *(v2 + 88) = 0;
      CFRelease(v4);
      v2 = a1[3].i64[0];
    }

    v5 = *(v2 + 96);
    if (v5)
    {
      *(v2 + 96) = 0;
      CFRelease(v5);
      v2 = a1[3].i64[0];
    }

    v6 = *(v2 + 120);
    if (v6)
    {
      free(v6);
      *(a1[3].i64[0] + 120) = 0;
      v2 = a1[3].i64[0];
    }

    v7 = *(v2 + 128);
    if (v7)
    {
      free(v7);
      *(a1[3].i64[0] + 128) = 0;
      v2 = a1[3].i64[0];
    }

    activity_block[0] = MEMORY[0x1E69E9820];
    activity_block[1] = 0x40000000;
    activity_block[2] = __SecTrustEvaluateIfNecessary_block_invoke_2;
    activity_block[3] = &unk_1E70E36D8;
    v10 = v2;
    v9 = vextq_s8(a1[2], a1[2], 8uLL);
    _os_activity_initiate(&dword_1887D2000, "SecTrustEvaluateIfNecessary", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  }
}

uint64_t __SecTrustEvaluateIfNecessary_block_invoke_2(uint64_t a1)
{
  SecTrustValidateInput(*(a1 + 48));
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecTrustEvaluateIfNecessary_block_invoke_3;
  v3[3] = &unk_1E70E36B0;
  v4 = *(a1 + 40);
  result = SecOSStatusWith(v3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __SecTrustEvaluateIfNecessary_block_invoke_3(uint64_t a1, CFTypeRef *a2)
{
  v2 = a2;
  if (gTrustd && (v4 = *(gTrustd + 40)) != 0)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);
    v8 = *(v5 + 116);
    v9 = *(v5 + 117);
    v10 = *(v5 + 32);
    v11 = *(v5 + 40);
    v12 = *(v5 + 48);
    v13 = *(v5 + 56);
    v14 = *(*(*(a1 + 32) + 8) + 24);
    if (SecTrustGetCurrentAccessGroups_onceToken != -1)
    {
      dispatch_once(&SecTrustGetCurrentAccessGroups_onceToken, &__block_literal_global_493);
    }

    v15 = *(a1 + 40);
    v16 = v9;
    v2 = a2;
    v17 = v4(v6, v7, v8, v16, v10, v11, v12, v13, v14, SecTrustGetCurrentAccessGroups_accessGroups, v15[13], v15[18], v15[19], v15 + 11, v15 + 12, v15 + 9, a2);
  }

  else
  {
    v18 = *(a1 + 40);
    v19 = *(v18 + 116);
    v20 = *(v18 + 117);
    v21 = *(v18 + 16);
    v22 = *(v18 + 32);
    v23 = *(v18 + 48);
    v24 = *(*(*(a1 + 32) + 8) + 24);
    if (SecTrustGetCurrentAccessGroups_onceToken != -1)
    {
      v38 = *(v18 + 32);
      v40 = *(v18 + 16);
      v37 = *(v18 + 48);
      dispatch_once(&SecTrustGetCurrentAccessGroups_onceToken, &__block_literal_global_493);
      v23 = v37;
      v22 = v38;
      v21 = v40;
    }

    v25 = *(a1 + 40);
    v26 = v25[13];
    v27 = v25[18];
    v28 = v25[19];
    v52 = 0;
    v53 = &v52;
    v54 = 0x2000000000;
    v55 = 0;
    values[0] = MEMORY[0x1E69E9820];
    values[1] = 0x40000000;
    values[2] = __handle_trust_evaluate_xpc_block_invoke;
    values[3] = &__block_descriptor_tmp_512;
    v50 = v19;
    v51 = v20;
    v43 = v21;
    v44 = v22;
    v45 = v23;
    v46 = v24;
    v47 = v26;
    v48 = v27;
    v49 = v28;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 0x40000000;
    v41[2] = __handle_trust_evaluate_xpc_block_invoke_2;
    v41[3] = &unk_1E70E37C8;
    v41[6] = v25 + 12;
    v41[7] = v25 + 9;
    v41[4] = &v52;
    v41[5] = v25 + 11;
    securityd_send_sync_and_do(8u, v2, values, v41);
    v17 = *(v53 + 6);
    _Block_object_dispose(&v52, 8);
  }

  v29 = *(a1 + 40);
  *(v29 + 112) = v17;
  if (v17)
  {
    return *(v29 + 112) != 0;
  }

  OSStatus = SecErrorGetOSStatus(*v2);
  v29 = *(a1 + 40);
  if (OSStatus != -25291)
  {
    return *(v29 + 112) != 0;
  }

  Count = CFArrayGetCount(*(v29 + 16));
  v29 = *(a1 + 40);
  if (!Count)
  {
    return *(v29 + 112) != 0;
  }

  values[0] = CFArrayGetValueAtIndex(*(v29 + 16), 0);
  v32 = CFArrayCreate(0, values, 1, MEMORY[0x1E695E9C0]);
  v33 = *(a1 + 40);
  v34 = *(v33 + 72);
  if (v34)
  {
    *(v33 + 72) = 0;
    CFRelease(v34);
    v33 = *(a1 + 40);
  }

  *(v33 + 72) = v32;
  v35 = *v2;
  if (*v2)
  {
    *v2 = 0;
    CFRelease(v35);
  }

  return 1;
}

dispatch_queue_t __SecTrustEvaluateThreadRuntimeCheck_block_invoke()
{
  result = dispatch_queue_create("Runtime Issue Logging", 0);
  SecTrustEvaluateThreadRuntimeCheck_runtimeLogQueue = result;
  return result;
}

void __SecTrustEvaluateThreadRuntimeCheck_block_invoke_2()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    v1 = MainBundle;
    v2 = CFBundleCopyBundleURL(MainBundle);
    if (v2)
    {
      v3 = v2;
      v4 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
      if (v4)
      {
        v5 = v4;
        if (CFStringHasSuffix(v4, @".app"))
        {
          Identifier = CFBundleGetIdentifier(v1);
          if (Identifier)
          {
            if (!CFStringHasPrefix(Identifier, @"com.apple."))
            {
              propertyValueTypeRefPtr = 0;
              if (CFURLCopyResourcePropertyForKey(v3, *MEMORY[0x1E695EB20], &propertyValueTypeRefPtr, 0))
              {
                if (propertyValueTypeRefPtr == *MEMORY[0x1E695E4D0])
                {
                  if (checkmap_block_invoke_2_onceToken != -1)
                  {
                    dispatch_once(&checkmap_block_invoke_2_onceToken, &__block_literal_global_488);
                  }

                  Current = CFAbsoluteTimeGetCurrent();
                  if (Current >= *&checkmap_block_invoke_2_startTime)
                  {
                    v8 = checkmap_block_invoke_2_runtimeLog;
                    if (os_log_type_enabled(checkmap_block_invoke_2_runtimeLog, OS_LOG_TYPE_FAULT))
                    {
                      *v9 = 0;
                      _os_log_fault_impl(&dword_1887D2000, v8, OS_LOG_TYPE_FAULT, "__delegate_identifier__:Performance Diagnostics__:::____message__:This method should not be called on the main thread as it may lead to UI unresponsiveness.", v9, 2u);
                    }

                    ++checkmap_block_invoke_2_faultsSinceStartTime;
                    if (SecFrameworkIsRunningInXcode_envCheckOnce != -1)
                    {
                      dispatch_once(&SecFrameworkIsRunningInXcode_envCheckOnce, &__block_literal_global_842);
                    }

                    if ((SecFrameworkIsRunningInXcode_runningInXcode & 1) != 0 || checkmap_block_invoke_2_faultsSinceStartTime < 0xB)
                    {
                      if (Current - *&checkmap_block_invoke_2_startTime > 60.0)
                      {
                        checkmap_block_invoke_2_startTime = *&Current;
                        checkmap_block_invoke_2_faultsSinceStartTime = 0;
                      }
                    }

                    else
                    {
                      *&checkmap_block_invoke_2_startTime = Current + 300.0;
                    }
                  }

                  else
                  {
                    checkmap_block_invoke_2_faultsSinceStartTime = 0;
                  }
                }
              }
            }
          }
        }

        CFRelease(v5);
      }

      CFRelease(v3);
    }
  }
}

BOOL SecXPCDictionaryCopyDictionaryOptional(void *a1, char *a2, void *a3, __CFString **a4)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    value = SecXPCDictionaryCopyDictionaryAndPossiblyMutateMessage(1, a1, a2, a4);
    v9 = value != 0;
  }

  else
  {
    v9 = 1;
  }

  *a3 = value;
  return v9;
}

const void *SecXPCDictionaryCopyDictionaryAndPossiblyMutateMessage(int a1, void *a2, char *a3, __CFString **a4)
{
  v6 = SecXPCDictionaryCopyPListAndPossiblyMutateMessage(a1, a2, a3, a4);
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 != CFDictionaryGetTypeID())
    {
      v9 = CFCopyTypeIDDescription(v8);
      SecError(-50, a4, @"object for key %s not dictionary but %@", a3, v9);
      if (v9)
      {
        CFRelease(v9);
      }

      CFRelease(v7);
      return 0;
    }
  }

  return v7;
}

uint64_t SecXPCDictionaryCopyChainOptional(void *a1, CFMutableArrayRef *a2, __CFString **a3)
{
  value = xpc_dictionary_get_value(a1, "chain");
  if (!value)
  {
    *a2 = 0;
    return 1;
  }

  v6 = value;
  if (MEMORY[0x18CFDC200]() == MEMORY[0x1E69E9E50])
  {
    count = xpc_array_get_count(v6);
    if (count)
    {
      v8 = count;
      if (count < 0x7FFFFFFFFFFFFFFFLL)
      {
        Mutable = CFArrayCreateMutable(0, count, MEMORY[0x1E695E9C0]);
        for (i = 0; i != v8; ++i)
        {
          v11 = SecCertificateCreateWithXPCArrayAtIndex(v6, i, a3);
          if (!v11)
          {
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            return 0;
          }

          v12 = v11;
          CFArrayAppendValue(Mutable, v11);
          CFRelease(v12);
        }

        if (!Mutable)
        {
          return 0;
        }

        v13 = *a2;
        if (*a2)
        {
          *a2 = 0;
          CFRelease(v13);
        }

        *a2 = Mutable;
        return 1;
      }

      SecError(-26275, a3, @"xpc_path array count > LONG_MAX");
    }

    else
    {
      SecError(-26275, a3, @"xpc_path array count == 0");
    }
  }

  else
  {
    SecError(-26275, a3, @"xpc_path value is not an array");
  }

  return 0;
}

int64_t SecXPCDictionaryGetNonZeroInteger(void *a1, __CFString **a2)
{
  int64 = xpc_dictionary_get_int64(a1, "result");
  v4 = int64;
  if (int64)
  {
    if (int64 < 0)
    {
      SecError(-26276, a2, @"object for key %s is negative", "result");
    }
  }

  else
  {
    SecError(-26276, a2, @"object for key %s is 0", "result");
  }

  return v4;
}

void SecTrustLogFailureDescription(__SecTrust *a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2 != 1 && a2 != 4)
  {
    v2 = SecTrustCopyFailureDescription(a1);
    v3 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Trust evaluate failure:%{public}@", &v5, 0xCu);
    }

    CFRelease(v2);
  }

  v4 = *MEMORY[0x1E69E9840];
}

BOOL SecXPCDictionaryCopyArrayOptional(void *a1, char *a2, void *a3, __CFString **a4)
{
  value = xpc_dictionary_get_value(a1, a2);
  if (value)
  {
    value = SecXPCDictionaryCopyArray(a1, a2, a4);
    v9 = value != 0;
  }

  else
  {
    v9 = 1;
  }

  *a3 = value;
  return v9;
}

const void *SecXPCDictionaryCopyArray(xpc_object_t xdict, char *key, __CFString **a3)
{
  v5 = SecXPCDictionaryCopyPListAndPossiblyMutateMessage(1, xdict, key, a3);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 != CFArrayGetTypeID())
    {
      v8 = CFCopyTypeIDDescription(v7);
      SecError(-50, a3, @"object for key %s not array but %@", key, v8);
      if (v8)
      {
        CFRelease(v8);
      }

      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

uint64_t __handle_trust_evaluate_xpc_block_invoke_2(uint64_t a1, void *a2, __CFString **a3)
{
  v6 = *(a1 + 40);
  v7 = *v6;
  if (*v6)
  {
    *v6 = 0;
    CFRelease(v7);
  }

  v8 = *(a1 + 48);
  v9 = *v8;
  if (*v8)
  {
    *v8 = 0;
    CFRelease(v9);
  }

  v10 = *(a1 + 56);
  v11 = *v10;
  if (*v10)
  {
    *v10 = 0;
    CFRelease(v11);
  }

  result = SecXPCDictionaryCopyArrayOptional(a2, "details", *(a1 + 40), a3);
  if (result)
  {
    result = SecXPCDictionaryCopyDictionaryOptional(a2, "info", *(a1 + 48), a3);
    if (result)
    {
      result = SecXPCDictionaryCopyChainOptional(a2, *(a1 + 56), a3);
      if (result)
      {
        NonZeroInteger = SecXPCDictionaryGetNonZeroInteger(a2, a3);
        *(*(*(a1 + 32) + 8) + 24) = NonZeroInteger;
        return NonZeroInteger != 0;
      }
    }
  }

  return result;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageX962SHA384(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-X962:SHA384");
  v8 = ccsha384_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureDigestX962SHA384(uint64_t a1, const __CFData *a2, const __CFData *a3, __CFString **a4)
{
  v8 = ccsha384_di();

  return SecKeyCopyECDSASignatureForDigest(a1, a2, a3, @"algid:sign:ECDSA:digest-X962:SHA384", v8, a4);
}

CFTypeRef SecPolicyCheckCertSubjectCountry(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID() && (v5 = SecCertificateCopyCountry(a1)) != 0)
    {
      v6 = v5;
      v2 = (CFArrayGetCount(v5) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v6, 0), CFEqual(v2, ValueAtIndex)));
      CFRelease(v6);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

CFMutableArrayRef SecCertificateCopyCountry(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (parseX501NameContent((a1 + 184), Mutable, appendCountryFromX501Name, 1) || !CFArrayGetCount(Mutable))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t appendCountryFromX501Name(__CFArray *a1, uint64_t a2, unsigned __int8 **a3, uint64_t a4, int a5)
{
  result = DEROidCompare(a2, &oidCountryName);
  if (result)
  {
    v9 = copyDERThingDescription(*MEMORY[0x1E695E480], a3, 1, a5);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(a1, v9);
      CFRelease(v10);
      return 0;
    }

    else
    {
      return 4294941021;
    }
  }

  return result;
}

__CFDictionary *SecPolicyCreateOCSPSigner()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicX509Options(result);
    add_eku(v1, &oidExtendedKeyUsageOCSPSigning);
    add_ku(v1, 1);
    CFDictionarySetValue(v1, @"NotCA", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.66", @"OCSPSigner", v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

uint64_t SecCertificateIsCA(uint64_t a1)
{
  if (!SecCertificateIsCertificate(a1))
  {
    goto LABEL_8;
  }

  if (*(a1 + 96) >= 2u)
  {
    if (*(a1 + 300) == 1)
    {
      v2 = *(a1 + 302);
      return v2 & 1;
    }

LABEL_8:
    v2 = 0;
    return v2 & 1;
  }

  return _SecCertificateIsSelfSigned(a1);
}

BOOL keyusage_allows(int a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFNumberGetTypeID())
  {
    return 0;
  }

  valuePtr = -1431655766;
  CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr)
  {
    return (valuePtr & ~a1) == 0;
  }

  else
  {
    return a1 == 0;
  }
}

__CFData *SecDigestCreate(const __CFAllocator *a1, SecAsn1Oid *oid1, uint64_t a3, uint64_t a4, unint64_t a5)
{
  Mutable = 0;
  if (a4 && !(a5 >> 31))
  {
    if (SecAsn1OidCompare(oid1, &CSSMOID_SHA1))
    {
      v10 = MEMORY[0x1E69E9470];
      v11 = 20;
    }

    else if (SecAsn1OidCompare(oid1, &CSSMOID_SHA224))
    {
      v10 = MEMORY[0x1E69E9490];
      v11 = 28;
    }

    else if (SecAsn1OidCompare(oid1, &CSSMOID_SHA256))
    {
      v10 = MEMORY[0x1E69E9498];
      v11 = 32;
    }

    else if (SecAsn1OidCompare(oid1, &CSSMOID_SHA384))
    {
      v10 = MEMORY[0x1E69E94B8];
      v11 = 48;
    }

    else
    {
      if (!SecAsn1OidCompare(oid1, &CSSMOID_SHA512))
      {
        return 0;
      }

      v10 = MEMORY[0x1E69E94C0];
      v11 = 64;
    }

    Mutable = CFDataCreateMutable(a1, v11);
    CFDataSetLength(Mutable, v11);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v10(a4, a5, MutableBytePtr);
  }

  return Mutable;
}

void ___securityd_message_with_reply_async_inner_block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (a2 == MEMORY[0x1E69E9E18] && (v4 = *(a1 + 72)) != 0)
  {
    _securityd_message_with_reply_async_inner(*(a1 + 40), *(a1 + 48), *(a1 + 32), (v4 - 1));
  }

  else
  {
    cf = 0;
    _securityd_process_message_reply(&v6, &cf, *(a1 + 56), *(a1 + 64));
    (*(*(a1 + 32) + 16))();
    v3 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v3);
    }
  }

  xpc_release(*(a1 + 40));
  dispatch_release(*(a1 + 48));
  _Block_release(*(a1 + 32));
  return_securityd_connection_to_pool(*(a1 + 64), *(a1 + 76), *(a1 + 56));
}

void __securityd_send_async_and_do_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    cf = 0;
    v7 = securityd_message_no_error(a2, &cf);
    v8 = *(a1 + 32);
    if (v7)
    {
      (*(v8 + 16))(v8, a2, 0);
    }

    else
    {
      (*(v8 + 16))(v8, 0, cf);
      v9 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v9);
      }
    }
  }
}

void __handle_trust_evaluate_xpc_async_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a2 || a3)
  {
    v11 = *(a1 + 32);
    v12 = *(*(a1 + 32) + 16);

    v12();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *v5;
    if (*v5)
    {
      *v5 = 0;
      CFRelease(v6);
    }

    v7 = *(a1 + 48);
    v8 = *v7;
    if (*v7)
    {
      *v7 = 0;
      CFRelease(v8);
    }

    v9 = *(a1 + 56);
    v10 = *v9;
    if (*v9)
    {
      *v9 = 0;
      CFRelease(v10);
    }

    cf = 0;
    if (SecXPCDictionaryCopyArrayOptional(a2, "details", *(a1 + 40), &cf) && SecXPCDictionaryCopyDictionaryOptional(a2, "info", *(a1 + 48), &cf) && SecXPCDictionaryCopyChainOptional(a2, *(a1 + 56), &cf))
    {
      SecXPCDictionaryGetNonZeroInteger(a2, &cf);
    }

    (*(*(a1 + 32) + 16))();
    v13 = cf;
    if (cf)
    {
      cf = 0;
      CFRelease(v13);
    }
  }
}

void __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_555(void *a1, int a2, uint64_t a3)
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
  block[2] = __SecTrustEvaluateIfNecessaryFastAsync_block_invoke_557;
  block[3] = &unk_1E70E38D0;
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

void __SecTrustEvaluateFastAsync_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v6 = *(a1 + 40);
    v7 = *(v6 + 136);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __SecTrustEvaluateFastAsync_block_invoke_2;
    v10[3] = &unk_1E70E2E10;
    v10[4] = &v11;
    v10[5] = v6;
    dispatch_sync(v7, v10);
    SecTrustLogFailureDescription(*(a1 + 40), *(v12 + 6));
    v8 = *(a1 + 40);
    v9 = *(v12 + 6);
    (*(*(a1 + 32) + 16))();
    _Block_object_dispose(&v11, 8);
  }
}

SSLProtocol sec_protocol_metadata_get_negotiated_protocol_version(sec_protocol_metadata_t metadata)
{
  if (!metadata)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __sec_protocol_metadata_get_negotiated_protocol_version_block_invoke;
  v3[3] = &unk_1E70D5E08;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(metadata, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t sec_protocol_metadata_copy_sec_trust(uint64_t a1)
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
  v3[2] = __sec_protocol_metadata_copy_sec_trust_block_invoke;
  v3[3] = &unk_1E70D6348;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

BOOL __sec_protocol_metadata_copy_sec_trust_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 168);
    if (v3)
    {
      *(*(*(a1 + 32) + 8) + 24) = v3;
      v4 = *(*(*(a1 + 32) + 8) + 24);
      if (v4)
      {
        os_retain(v4);
      }
    }
  }

  return a2 != 0;
}

BOOL sec_protocol_metadata_access_distinguished_names(sec_protocol_metadata_t metadata, void *handler)
{
  v2 = 0;
  if (metadata && handler)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_access_distinguished_names_block_invoke;
    v4[3] = &unk_1E70D5F60;
    v4[4] = handler;
    return sec_protocol_metadata_access_handle(metadata, v4);
  }

  return v2;
}

uint64_t sec_protocol_metadata_copy_sec_identity(uint64_t a1)
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
  v3[2] = __sec_protocol_metadata_copy_sec_identity_block_invoke;
  v3[3] = &unk_1E70D6370;
  v3[4] = &v4;
  sec_protocol_metadata_access_handle(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t __sec_protocol_metadata_get_tls_negotiated_group_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  Mutable = *(a2 + 384);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, &sec_protocol_helper_c_string_set_callbacks);
    *(a2 + 384) = Mutable;
  }

  v5 = *(a2 + 176);
  if (!v5)
  {
    return 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = CFSetGetValue(Mutable, *(a2 + 176));
  v6 = *(*(a1 + 32) + 8);
  if (!*(v6 + 24))
  {
    *(v6 + 24) = strdup(v5);
    CFSetAddValue(*(a2 + 384), *(*(*(a1 + 32) + 8) + 24));
  }

  return 1;
}

BOOL __sec_protocol_metadata_get_negotiated_protocol_version_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = &ssl_protocol_version_map;
    v3 = 8;
    while (*(v2 + 2) != *(a2 + 32))
    {
      v2 += 2;
      if (!--v3)
      {
        v4 = 0;
        goto LABEL_7;
      }
    }

    v4 = *v2;
LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = v4;
  }

  return a2 != 0;
}

uint64_t __sec_protocol_metadata_access_distinguished_names_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 144);
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 0x40000000;
    v4[2] = __sec_protocol_metadata_access_distinguished_names_block_invoke_2;
    v4[3] = &unk_1E70D5F38;
    v4[4] = *(a1 + 32);
    sec_array_apply(result, v4);
    return 1;
  }

  return result;
}

BOOL __sec_protocol_metadata_copy_sec_identity_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 160);
    if (v3)
    {
      *(*(*(a1 + 32) + 8) + 24) = v3;
      v4 = *(*(*(a1 + 32) + 8) + 24);
      if (v4)
      {
        os_retain(v4);
      }
    }
  }

  return a2 != 0;
}

uint64_t SecCertificateGetOCSPResponders(uint64_t result)
{
  if (result)
  {
    return *(result + 472);
  }

  return result;
}

uint64_t sec_protocol_metadata_get_tls_negotiated_group(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2000000000;
    v7 = 0;
    os_unfair_lock_lock(&returned_raw_string_pointers_lock);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __sec_protocol_metadata_get_tls_negotiated_group_block_invoke;
    v3[3] = &unk_1E70D6410;
    v3[4] = &v4;
    sec_protocol_metadata_access_handle(v1, v3);
    os_unfair_lock_unlock(&returned_raw_string_pointers_lock);
    v1 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  return v1;
}

uint64_t SecCertificateIsSignedBy(void *a1, __SecKey *a2)
{
  userInfoKeys[1] = *MEMORY[0x1E69E9840];
  if (!DEROidCompare((a1 + 6), (a1 + 15)))
  {
    v12 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "Signature algorithm mismatch in certificate (see RFC5280 4.1.1.2)", buf, 2u);
    }

    goto LABEL_14;
  }

  error = 0;
  v4 = a1[5];
  v5 = a1[11];
  if (v4 > 0x7FFFFFFFFFFFFFFELL || v5 > 0x7FFFFFFFFFFFFFFELL)
  {
    goto LABEL_67;
  }

  v7 = a1[4];
  v8 = a1[10];
  AlgorithmId = SecKeyGetAlgorithmId(a2);
  v10 = 0;
  v11 = 1;
  if (AlgorithmId > 3)
  {
    if (AlgorithmId == 4)
    {
      v11 = 0;
      v10 = @"algid:sign:EdDSA:message-Curve25519:SHA512";
    }

    else if (AlgorithmId == 6)
    {
      v11 = 0;
      v10 = @"algid:sign:EdDSA:message-Curve448:SHAKE256";
    }

    goto LABEL_22;
  }

  if (AlgorithmId == 1)
  {
    if (DEROidCompare((a1 + 15), &oidMd5Rsa) || DEROidCompare((a1 + 15), &oidMd5))
    {
      v11 = 0;
      v10 = @"algid:sign:RSA:message-PKCS1v15:MD5";
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha1Rsa) || DEROidCompare((a1 + 15), &oidSha1))
    {
      v11 = 0;
      v10 = @"algid:sign:RSA:message-PKCS1v15:SHA1";
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha224Rsa) || DEROidCompare((a1 + 15), &oidSha224))
    {
      v11 = 0;
      v10 = @"algid:sign:RSA:message-PKCS1v15:SHA224";
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha256Rsa) || DEROidCompare((a1 + 15), &oidSha256))
    {
      v11 = 0;
      v10 = @"algid:sign:RSA:message-PKCS1v15:SHA256";
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha384Rsa) || DEROidCompare((a1 + 15), &oidSha384))
    {
      v11 = 0;
      v10 = @"algid:sign:RSA:message-PKCS1v15:SHA384";
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha512Rsa) || DEROidCompare((a1 + 15), &oidSha512))
    {
      v11 = 0;
      v10 = @"algid:sign:RSA:message-PKCS1v15:SHA512";
      goto LABEL_22;
    }
  }

  else
  {
    if (AlgorithmId != 3)
    {
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha1Ecdsa) || DEROidCompare((a1 + 15), &oidSha1))
    {
      v11 = 0;
      v10 = @"algid:sign:ECDSA:message-X962:SHA1";
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha224Ecdsa) || DEROidCompare((a1 + 15), &oidSha224))
    {
      v11 = 0;
      v10 = @"algid:sign:ECDSA:message-X962:SHA224";
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha256Ecdsa) || DEROidCompare((a1 + 15), &oidSha256))
    {
      v11 = 0;
      v10 = @"algid:sign:ECDSA:message-X962:SHA256";
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha384Ecdsa) || DEROidCompare((a1 + 15), &oidSha384))
    {
      v11 = 0;
      v10 = @"algid:sign:ECDSA:message-X962:SHA384";
      goto LABEL_22;
    }

    if (DEROidCompare((a1 + 15), &oidSha512Ecdsa) || DEROidCompare((a1 + 15), &oidSha512))
    {
      v11 = 0;
      v10 = @"algid:sign:ECDSA:message-X962:SHA512";
      goto LABEL_22;
    }
  }

  v10 = 0;
LABEL_22:
  v14 = CFDataCreate(0, v7, v4);
  v15 = CFDataCreate(0, v8, v5);
  v16 = v15;
  if ((v11 & 1) == 0 && v14 && v15)
  {
    if (SecKeyVerifySignature(a2, v10, v14, v15, &error))
    {
      CFRelease(v14);
      CFRelease(v16);
LABEL_31:
      result = 0;
      goto LABEL_32;
    }

    CFRelease(v16);
    v17 = SecRecreateSignatureWithDERAlgorithmId(a2, (a1 + 15), v8, v5);
    if (v17)
    {
      v18 = v17;
      v19 = error;
      if (error)
      {
        error = 0;
        CFRelease(v19);
      }

      v20 = SecKeyVerifySignature(a2, v10, v14, v18, &error);
      CFRelease(v14);
      CFRelease(v18);
      if (v20)
      {
        goto LABEL_31;
      }

      goto LABEL_67;
    }

    v22 = v14;
  }

  else
  {
    if (v14)
    {
      CFRelease(v14);
    }

    if (!v16)
    {
      goto LABEL_67;
    }

    v22 = v16;
  }

  CFRelease(v22);
LABEL_67:
  v23 = error;
  if (error || (v24 = *MEMORY[0x1E695E620], v27 = 0, userInfoKeys[0] = v24, *buf = @"Unable to verify signature", v23 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], -50, userInfoKeys, buf, 1), (error = v23) != 0))
  {
    CFRelease(v23);
  }

LABEL_14:
  result = 4294941029;
LABEL_32:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

__CFData *SecKeyCopyDigestForMessage(uint64_t *a1, uint64_t a2, uint64_t a3, size_t *a4, __CFString **a5)
{
  if (a1[3] == 1)
  {

    return SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a5);
  }

  else
  {
    v15 = v5;
    v16 = v6;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v8 = *a4;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __SecKeyCopyDigestForMessage_block_invoke;
    v10[3] = &unk_1E70E0890;
    v10[4] = &v11;
    v10[5] = a4;
    v10[6] = a2;
    v10[7] = a1;
    v10[8] = a3;
    v10[9] = a5;
    PerformWithCFDataBuffer(v8, v10);
    v9 = v12[3];
    _Block_object_dispose(&v11, 8);
    return v9;
  }
}

const __CFArray *SecCertificateCreateOidDataFromString(const __CFAllocator *a1, CFStringRef theString)
{
  if (!theString)
  {
    return 0;
  }

  if (!SecCertificateIsOidString(theString))
  {
    return 0;
  }

  result = CFStringCreateArrayBySeparatingStrings(a1, theString, @".");
  if (!result)
  {
    return result;
  }

  v5 = result;
  Count = CFArrayGetCount(result);
  v7 = Count;
  if (!Count)
  {
    goto LABEL_25;
  }

  Mutable = CFDataCreateMutable(a1, 5 * Count - 9);
  v22 = -1431655766;
  bytes = -86;
  ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
  if (GetDecimalValueOfString(ValueAtIndex, &v22) && v22 <= 6)
  {
    v10 = 40 * v22;
    bytes = 40 * v22;
    if (v7 <= 1)
    {
      CFDataAppendBytes(Mutable, &bytes, 1);
LABEL_24:
      v7 = Mutable;
      goto LABEL_25;
    }

    v11 = CFArrayGetValueAtIndex(v5, 1);
    if (GetDecimalValueOfString(v11, &v22) && v22 <= 39)
    {
      bytes = v10 + v22;
      CFDataAppendBytes(Mutable, &bytes, 1);
      if (v7 != 2)
      {
        v12 = 2;
        while (1)
        {
          v13 = CFArrayGetValueAtIndex(v5, v12);
          if (!GetDecimalValueOfString(v13, &v22))
          {
            break;
          }

          v15 = 0;
          v20 = v22 & 0x7F;
          v14.i32[0] = v22;
          v16 = vshlq_u32(vdupq_n_s32(v22), xmmword_18895E190);
          v16.i32[0] = vshlq_s32(v14, xmmword_18895E190).u32[0];
          v16.i64[0] = *&vmovn_s32(v16) | 0x80008000800080;
          v19 = vuzp1_s8(*v16.i8, *v16.i8).u32[0];
          do
          {
            v17 = v15;
            v18 = *(&v19 + v15++);
          }

          while (v18 == 128);
          if (v17 > 5 || 5 - v17 > 0x7FFFFFFFFFFFFFFELL)
          {
            goto LABEL_21;
          }

          CFDataAppendBytes(Mutable, &v19 + v17, 5 - v17);
          if (++v12 == v7)
          {
            goto LABEL_24;
          }
        }
      }

      goto LABEL_24;
    }
  }

LABEL_21:
  CFRelease(v5);
  v7 = 0;
  result = 0;
  v5 = Mutable;
  if (Mutable)
  {
LABEL_25:
    CFRelease(v5);
    return v7;
  }

  return result;
}