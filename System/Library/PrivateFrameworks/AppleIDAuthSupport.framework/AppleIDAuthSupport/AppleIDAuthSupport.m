void vsetError(const void **a1, CFIndex a2, const __CFDictionary *a3, __CFError *a4, void *a5, CFStringRef format, va_list arguments)
{
  v38 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_25;
  }

  v14 = *a1;
  if (v14)
  {
    CFRelease(v14);
    *a1 = 0;
  }

  v15 = &userInfoValues[1];
  v16 = &userInfoKeys[1];
  v17 = CFStringCreateWithFormatAndArguments(0, 0, format, arguments);
  v18 = v17;
  if (a4)
  {
    if (v17)
    {
      Domain = CFErrorGetDomain(a4);
      if (CFEqual(Domain, @"com.apple.AppleIDAuthSupport"))
      {
        if (CFErrorGetCode(a4) == 8)
        {
          v20 = CFStringCreateWithFormat(0, 0, @"%@: server is not matching pinning data", v18);
          CFRelease(v18);
          v18 = v20;
        }
      }
    }
  }

  *userInfoKeys = 0u;
  v36 = 0u;
  *userInfoValues = 0u;
  v33 = 0u;
  if (!v18)
  {
    v18 = @"out of memory";
  }

  v21 = *MEMORY[0x277CBEE30];
  v37 = 0;
  userInfoKeys[0] = v21;
  v34 = 0;
  userInfoValues[0] = v18;
  if (isCFDictionary(a3))
  {
    Value = CFDictionaryGetValue(a3, @"Status");
    v23 = isCFDictionary(Value);
    v24 = 1;
    if (Value && v23)
    {
      userInfoKeys[1] = @"Status";
      userInfoValues[1] = Value;
      v25 = CFDictionaryGetValue(Value, @"ad");
      if (v25)
      {
        v15 = &v33 + 1;
        v16 = &v36 + 1;
        *&v36 = @"ActionData";
        *&v33 = v25;
        v24 = 3;
        if (!a4)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = &v33;
        v16 = &v36;
        v24 = 2;
        if (!a4)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    v24 = 1;
  }

  if (a4)
  {
LABEL_19:
    *v16 = *MEMORY[0x277CBEE78];
    *v15 = a4;
    ++v24;
  }

LABEL_20:
  if (a5)
  {
    userInfoKeys[v24] = @"NetworkTask";
    userInfoValues[v24++] = a5;
  }

  *a1 = CFErrorCreateWithUserInfoKeysAndValues(0, @"com.apple.AppleIDAuthSupport", a2, userInfoKeys, userInfoValues, v24);
  v26 = _AIDASOSLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    v29 = a2;
    v30 = 2114;
    v31 = v18;
    _os_log_impl(&dword_24056C000, v26, OS_LOG_TYPE_DEFAULT, "AppleIDAuthSupport: setError: %d:%{public}@", buf, 0x12u);
  }

  CFRelease(v18);
LABEL_25:
  v27 = *MEMORY[0x277D85DE8];
}

void setError(const void **a1, CFIndex a2, const __CFDictionary *a3, __CFError *a4, CFStringRef format, ...)
{
  va_start(va, format);
  if (a1)
  {
    vsetError(a1, a2, a3, a4, 0, format, va);
  }
}

void setErrorNetwork(const void **a1, CFIndex a2, const __CFDictionary *a3, __CFError *a4, void *a5, const __CFString *a6, uint64_t a7, uint64_t a8, char a9)
{
  if (a1)
  {
    vsetError(a1, a2, a3, a4, a5, a6, &a9);
  }
}

uint64_t checkChannelBindings(__SecTrust *a1, CFDictionaryRef *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (SecTrustGetCertificateCount(a1) >= 1 && (CertificateAtIndex = SecTrustGetCertificateAtIndex(a1, 0)) != 0 && (v5 = SecCertificateCopyData(CertificateAtIndex)) != 0)
  {
    v6 = v5;
    v7 = *ccsha256_di();
    MEMORY[0x28223BE20]();
    CFDataGetLength(v6);
    CFDataGetBytePtr(v6);
    ccdigest();
    CFRelease(v6);
    v8 = CFDataCreate(0, v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    if (v8)
    {
      v9 = v8;
      Option = AppleIDAuthSupportGetOption(a2, @"sc");
      if (Option && !CFEqual(Option, v9))
      {
        v11 = 0;
      }

      else
      {
        AppleIDAuthSupportSetOption(a2, @"sc", v9);
        v11 = 1;
      }

      CFRelease(v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

BOOL AppleIDAuthSupportAuthenticate(CFDictionaryRef *a1, void *a2, const void **a3)
{
  *v9 = 0;
  cf = 0;
  if (!AppleIDAuthSupportIsDone(a1))
  {
    Response = 0;
    while (AppleIDAuthSupportStep(a1, Response, &cf, a3))
    {
      if (Response)
      {
        CFRelease(Response);
      }

      if (!cf)
      {
        return AppleIDAuthSupportSuccess(a1);
      }

      Response = SendRequestAndCreateResponse(a1, 0, a2, cf, v9);
      CFRelease(cf);
      cf = 0;
      if (!Response)
      {
        setError(a3, 6, 0, *v9, @"Failed to get response from server");
        Response = *v9;
        break;
      }

      Value = CFDictionaryGetValue(Response, @"Status");
      if (isCFDictionary(Value))
      {
        _AppleIDAuthSupportSetStatus(a1, Value);
      }

      if (AppleIDAuthSupportIsDone(a1))
      {
        goto LABEL_14;
      }
    }

    if (!Response)
    {
      return AppleIDAuthSupportSuccess(a1);
    }

LABEL_14:
    CFRelease(Response);
  }

  return AppleIDAuthSupportSuccess(a1);
}

id SendRequestAndCreateResponse(CFDictionaryRef *a1, const __CFDictionary *a2, void *a3, void *a4, const void **a5)
{
  v74 = *MEMORY[0x277D85DE8];
  v10 = _AIDASOSLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 136446722;
    v65 = "SendRequestAndCreateResponse";
    v66 = 2112;
    v67 = a4;
    v68 = 2112;
    v69 = a3;
    _os_log_impl(&dword_24056C000, v10, OS_LOG_TYPE_INFO, "%{public}s: sending request %@ to server %@", buf, 0x20u);
  }

  v62 = a5;
  if (a1 && !a2)
  {
    Option = AppleIDAuthSupportGetOption(a1, @"kAppleIDAuthSupportClientInfo");
    Value = AppleIDAuthSupportGetOption(a1, @"kAppleIDAuthSupportProxiedClientInfo");
    v13 = AppleIDAuthSupportGetOption(a1, @"kAppleIDAuthSupportCompanionClientInfo");
    v59 = AppleIDAuthSupportGetOption(a1, @"kAppleIDAuthSupportAppleITeamID");
    v58 = AppleIDAuthSupportGetOption(a1, @"kAppleIDAuthSupportAppleIClientID");
    v14 = AppleIDAuthSupportGetOption(a1, @"kAppleIDAuthSupportAdditionalHeaders");
LABEL_8:
    a2 = v14;
    goto LABEL_9;
  }

  if (a2)
  {
    Option = CFDictionaryGetValue(a2, @"kAppleIDAuthSupportClientInfo");
    Value = CFDictionaryGetValue(a2, @"kAppleIDAuthSupportProxiedClientInfo");
    v13 = CFDictionaryGetValue(a2, @"kAppleIDAuthSupportCompanionClientInfo");
    v59 = CFDictionaryGetValue(a2, @"kAppleIDAuthSupportAppleITeamID");
    v58 = CFDictionaryGetValue(a2, @"kAppleIDAuthSupportAppleIClientID");
    v14 = CFDictionaryGetValue(a2, @"kAppleIDAuthSupportAdditionalHeaders");
    goto LABEL_8;
  }

  v58 = 0;
  v59 = 0;
  v13 = 0;
  Value = 0;
  Option = 0;
LABEL_9:
  v60 = a3;
  v61 = a4;
  v15 = _AIDASOSLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136447234;
    v65 = "SendRequestAndCreateResponse";
    v66 = 2112;
    v67 = Option;
    v68 = 2112;
    v69 = Value;
    v70 = 2112;
    v71 = v13;
    v72 = 2112;
    v73 = a2;
    _os_log_impl(&dword_24056C000, v15, OS_LOG_TYPE_INFO, "%{public}s: CI: %@ PCI: %@ CCI: %@ AH: %@", buf, 0x34u);
  }

  v16 = v13;
  v17 = Value;

  v18 = objc_alloc_init(AIASSession);
  v19 = [MEMORY[0x277CBABC8] ephemeralSessionConfiguration];
  v20 = [v19 copy];

  [v20 setWaitsForConnectivity:1];
  v21 = AppleIDAuthSupportGetOption(a1, @"kAppleIDAuthSupportOptionTimeoutIntervalForRequest");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 intValue] >= 1)
  {
    [v20 setTimeoutIntervalForRequest:{objc_msgSend(v21, "intValue")}];
  }

  v22 = AppleIDAuthSupportGetOption(a1, @"kAppleIDAuthSupportOptionTimeoutIntervalForResource");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 intValue] >= 1)
  {
    v23 = [v22 intValue];
  }

  else
  {
    v23 = 60.0;
  }

  [v20 setTimeoutIntervalForResource:v23];
  v24 = AppleIDAuthSupportGetOption(a1, @"kAppleIDAuthSupportSourceApplicationAuditTokenData");
  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v20 set_sourceApplicationAuditTokenData:v24];
    }
  }

  v25 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v20 delegate:v18 delegateQueue:0];
  [(AIASSession *)v18 setURLSession:v25];

  v26 = [AIASSession requestWithURL:v18 data:"requestWithURL:data:clientInfo:proxiedClientInfo:companionClientInfo:appleITeamId:appleIClientId:additionalHeaders:" clientInfo:v60 proxiedClientInfo:v61 companionClientInfo:Option appleITeamId:v17 appleIClientId:v16 additionalHeaders:v59];
  v27 = _AIDASOSLog();
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (!v26)
  {
    if (v28)
    {
      *buf = 136446210;
      v65 = "SendRequestAndCreateResponse";
      _os_log_impl(&dword_24056C000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: failed getting session", buf, 0xCu);
    }

    errorNetworkProtocol(0, v62, 6, @"Failed getting sessionWithConfiguration");
    goto LABEL_56;
  }

  if (v28)
  {
    *buf = 136446466;
    v65 = "SendRequestAndCreateResponse";
    v66 = 2112;
    v67 = v26;
    _os_log_impl(&dword_24056C000, v27, OS_LOG_TYPE_DEFAULT, "%{public}s: submissing a request to: %@", buf, 0x16u);
  }

  [v26 resume];
  v29 = [v26 sema];
  v30 = dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);

  if (v30)
  {
    v31 = _AIDASOSLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v65 = "SendRequestAndCreateResponse";
      v66 = 2112;
      v67 = v26;
      _os_log_impl(&dword_24056C000, v31, OS_LOG_TYPE_DEFAULT, "%{public}s: request %@ timed out", buf, 0x16u);
    }

    v32 = [v26 task];
    [v32 cancel];

    [(AIASSession *)v18 invalidateAndCancel];
    v33 = [v26 networkTaskDescription];
    setErrorNetwork(v62, 6, 0, 0, v33, @"Time out, see underlying network error", v34, v35, v58);
    goto LABEL_28;
  }

  v36 = [v26 success];
  v37 = _AIDASOSLog();
  v38 = v37;
  if (!v36)
  {
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [v26 error];
      *buf = 136446722;
      v65 = "SendRequestAndCreateResponse";
      v66 = 2112;
      v67 = v26;
      v68 = 2112;
      v69 = v47;
      _os_log_impl(&dword_24056C000, v38, OS_LOG_TYPE_DEFAULT, "%{public}s: failed to fetch request %@: %@", buf, 0x20u);
    }

    v48 = [v26 error];

    if (v48)
    {
      v49 = [v26 error];
      v50 = [v26 networkTaskDescription];
      setErrorNetwork(v62, 6, 0, v49, v50, @"Request failed, see underlying network error", v51, v52, v58);
    }

    else
    {
      setError(v62, 10, 0, 0, @"%s: failed, but no error from NSURLSession", "SendRequestAndCreateResponse");
    }

    [(AIASSession *)v18 invalidateAndCancel];
    goto LABEL_56;
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    SendRequestAndCreateResponse_cold_1(v38);
  }

  if (v62 && *v62)
  {
    CFRelease(*v62);
    *v62 = 0;
  }

  [(AIASSession *)v18 invalidateAndCancel];
  v39 = [v26 data];
  v40 = [v39 length];

  if (!v40)
  {
    v53 = _AIDASOSLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v65 = "SendRequestAndCreateResponse";
      v66 = 2112;
      v67 = v26;
      _os_log_impl(&dword_24056C000, v53, OS_LOG_TYPE_DEFAULT, "%{public}s: no data returned in request %@", buf, 0x16u);
    }

    v33 = [v26 networkTaskDescription];
    setErrorNetwork(v62, 10, 0, 0, v33, @"%s: success with no data, no error from NSURLSession", v54, v55, "SendRequestAndCreateResponse");
    goto LABEL_28;
  }

  v41 = MEMORY[0x277CCAC58];
  v42 = [v26 data];
  v63 = 0;
  v33 = [v41 propertyListWithData:v42 options:0 format:0 error:&v63];
  v43 = v63;

  if (!v33)
  {
    setError(v62, 6, 0, v43, @"%s: Failed to parse the response", "SendRequestAndCreateResponse");

    goto LABEL_56;
  }

  v44 = _AIDASOSLog();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v65 = "SendRequestAndCreateResponse";
    v66 = 2112;
    v67 = v33;
    _os_log_impl(&dword_24056C000, v44, OS_LOG_TYPE_DEFAULT, "%{public}s: completed request %@", buf, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    errorNetworkProtocol(0, v62, 2, @"Not a dictionary");

LABEL_28:
LABEL_56:
    v46 = 0;
    goto LABEL_57;
  }

  v45 = [v33 objectForKey:@"Response"];
  if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    errorNetworkProtocol(v33, v62, 2, @"could not find Response key");

    goto LABEL_28;
  }

  v46 = v45;

LABEL_57:
  v56 = *MEMORY[0x277D85DE8];
  return v46;
}

CFDataRef _AppleIDAuthSupportCreateEncryptedData(const __CFData *a1, const char *a2, const void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  ccaes_gcm_encrypt_mode();
  v6 = ccgcm_context_size();
  MEMORY[0x28223BE20](v6);
  if (!allowSkipSettingOnInternalHardware(@"AppleIDAuthSupportNoEncryption", 0))
  {
    if (a2)
    {
      DerivedKey = CreateDerivedKey(a1, a2);
      v10 = DerivedKey;
      if (!DerivedKey)
      {
LABEL_15:
        v19 = *MEMORY[0x277D85DE8];
        return v10;
      }

      CFDataGetLength(DerivedKey);
      CFDataGetBytePtr(v10);
      ccgcm_init();
      MutableBytePtr = CFDataGetMutableBytePtr(v10);
      Length = CFDataGetLength(v10);
      v13 = CFDataGetLength(v10);
      memset_s(MutableBytePtr, Length, 0, v13);
      CFRelease(v10);
    }

    else
    {
      CFDataGetLength(a1);
      CFDataGetBytePtr(a1);
      ccgcm_init();
    }

    Data = CFPropertyListCreateData(0, a3, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (Data)
    {
      v15 = Data;
      v16 = CFDataGetLength(Data);
      Mutable = CFDataCreateMutable(0, v16 + 35);
      v10 = Mutable;
      if (Mutable)
      {
        CFDataSetLength(Mutable, v16 + 35);
        v18 = CFDataGetMutableBytePtr(v10);
        *v18 = 22872;
        v18[2] = 90;
        if (SecRandomCopyBytes(*MEMORY[0x277CDC540], 0x10uLL, v18 + 3))
        {
          abort();
        }

        ccgcm_set_iv();
        ccgcm_aad();
        CFDataGetLength(v15);
        CFDataGetBytePtr(v15);
        ccgcm_update();
        CFDataGetLength(v15);
        ccgcm_finalize();
      }

      CFRelease(v15);
    }

    else
    {
      v10 = 0;
    }

    goto LABEL_15;
  }

  v7 = *MEMORY[0x277D85DE8];

  return CFPropertyListCreateData(0, a3, kCFPropertyListXMLFormat_v1_0, 0, 0);
}

__CFData *CreateDerivedKey(const __CFData *a1, const char *a2)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = ccsha256_di();
  if (CFDataGetLength(a1) <= *v4)
  {
    Length = CFDataGetLength(a1);
    Mutable = CFDataCreateMutable(0, Length);
    if (Mutable)
    {
      v7 = CFDataGetLength(a1);
      CFDataSetLength(Mutable, v7);
      v8 = *v4;
      MEMORY[0x28223BE20]();
      v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      CFDataGetLength(a1);
      CFDataGetBytePtr(a1);
      strlen(a2);
      cchmac();
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      v12 = CFDataGetLength(a1);
      memcpy(MutableBytePtr, v10, v12);
      memset_s(v10, *v4, 0, *v4);
    }
  }

  else
  {
    Mutable = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return Mutable;
}

CFPropertyListRef _AppleIDAuthSupportCreateDecryptedData(const __CFData *a1, const char *a2, const __CFData *a3, const void **a4)
{
  error[3] = *MEMORY[0x277D85DE8];
  ccaes_gcm_decrypt_mode();
  error[0] = 0;
  ccgcm_context_size();
  MEMORY[0x28223BE20]();
  if (!allowSkipSettingOnInternalHardware(@"AppleIDAuthSupportNoEncryption", 0))
  {
    if (a2)
    {
      DerivedKey = CreateDerivedKey(a1, a2);
      if (!DerivedKey)
      {
        goto LABEL_11;
      }

      v10 = DerivedKey;
      CFDataGetLength(DerivedKey);
      CFDataGetBytePtr(v10);
      ccgcm_init();
      MutableBytePtr = CFDataGetMutableBytePtr(v10);
      Length = CFDataGetLength(v10);
      bzero(MutableBytePtr, Length);
      CFRelease(v10);
    }

    else
    {
      CFDataGetLength(a1);
      CFDataGetBytePtr(a1);
      ccgcm_init();
    }

    v13 = CFDataGetLength(a3);
    CFDataGetBytePtr(a3);
    if (v13 > 34)
    {
      if (cc_cmp_safe())
      {
        setError(a4, 5, 0, 0, @"encrypted token wrong version", error[0]);
      }

      else
      {
        v16 = v13 - 35;
        ccgcm_set_iv();
        ccgcm_aad();
        Mutable = CFDataCreateMutable(0, v16);
        CFDataSetLength(Mutable, v16);
        CFDataGetMutableBytePtr(Mutable);
        ccgcm_update();
        ccgcm_finalize();
        if (cc_cmp_safe())
        {
          setError(a4, 5, 0, 0, @"tag version");
          v18 = Mutable;
        }

        else
        {
          v8 = CFPropertyListCreateWithData(0, Mutable, 0, 0, error);
          CFRelease(Mutable);
          if (v8)
          {
            goto LABEL_12;
          }

          setError(a4, 5, 0, error[0], @"failed to decode decrypted data");
          v18 = error[0];
          if (!error[0])
          {
            goto LABEL_11;
          }
        }

        CFRelease(v18);
      }
    }

    else
    {
      setError(a4, 5, 0, 0, @"encrypted token too short", error[0]);
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  v8 = CFPropertyListCreateWithData(0, a3, 0, 0, a4);
LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v8;
}

__CFDictionary *AppleIDAuthSupportCopyAppTokensOptions(uint64_t a1, void *a2, const __CFString *a3, const __CFDictionary *a4, const void **a5)
{
  *v27 = 0;
  if (!a1)
  {
    setError(a5, 7, 0, 0, @"Caller passed a NULL token to CopyAppTokens");
    return 0;
  }

  if (!isCFArray(a3))
  {
    setError(a5, 7, 0, 0, @"Caller passed a non array as apps to CopyAppTokens: %@", a3);
    return 0;
  }

  if (a4)
  {
    Value = CFDictionaryGetValue(a4, @"cpd");
    v11 = Value;
    if (Value)
    {
      v12 = CFGetTypeID(Value);
      if (v12 != CFDictionaryGetTypeID())
      {
        return 0;
      }
    }

    v13 = CFDictionaryGetValue(a4, @"aa");
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  AppTokensChecksum = CreateAppTokensChecksum(a1, a3, a5);
  if (!AppTokensChecksum)
  {
    return 0;
  }

  v17 = AppTokensChecksum;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    v25 = v17;
LABEL_38:
    CFRelease(v25);
    return 0;
  }

  v19 = Mutable;
  CFDictionarySetValue(Mutable, @"o", @"apptokens");
  CFDictionarySetValue(v19, @"u", *(a1 + 40));
  CFDictionarySetValue(v19, @"app", a3);
  CFDictionarySetValue(v19, @"t", *(a1 + 16));
  CFDictionarySetValue(v19, @"c", *(a1 + 32));
  CFDictionarySetValue(v19, @"checksum", v17);
  CFRelease(v17);
  if (v11)
  {
    CFDictionarySetValue(v19, @"cpd", v11);
  }

  if (v13)
  {
    CFDictionarySetValue(v19, @"aa", v13);
  }

  Response = SendRequestAndCreateResponse(0, a4, a2, v19, v27);
  CFRelease(v19);
  if (!Response)
  {
    setError(a5, 6, 0, *v27, @"Failed to get response from server");
    v25 = *v27;
    if (!*v27)
    {
      return 0;
    }

    goto LABEL_38;
  }

  v21 = CFDictionaryGetValue(Response, @"et");
  if (!v21)
  {
    errorNetworkProtocol(Response, a5, 2, @"Could not find encrypted token key");
    v25 = Response;
    goto LABEL_38;
  }

  DecryptedData = _AppleIDAuthSupportCreateDecryptedData(*(a1 + 24), 0, v21, a5);
  if (!isCFDictionary(DecryptedData))
  {
    errorNetworkProtocol(Response, a5, 5, @"Failed to decrypt EncryptedToken (et)");
    CFRelease(Response);
    if (!DecryptedData)
    {
      return 0;
    }

    goto LABEL_37;
  }

  v23 = CFDictionaryGetValue(DecryptedData, @"t");
  if (v23)
  {
    v24 = v23;
    if (isCFDictionary(v23))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v24);
      goto LABEL_31;
    }

    errorNetworkProtocol(Response, a5, 2, @"Could not find token data");
    CFRelease(Response);
LABEL_37:
    v25 = DecryptedData;
    goto LABEL_38;
  }

  MutableCopy = 0;
LABEL_31:
  v26 = CFDictionaryGetValue(Response, @"Status");
  if (isCFDictionary(v26) && (MutableCopy || (MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150])) != 0))
  {
    CFDictionarySetValue(MutableCopy, @"Status", v26);
  }

  CFRelease(Response);
  CFRelease(DecryptedData);
  return MutableCopy;
}

__CFData *CreateAppTokensChecksum(uint64_t a1, const __CFString *a2, const void **a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = ccsha256_di();
  v7 = (((v6[1] + ((v6[1] + v6[2] + 19) & 0xFFFFFFFFFFFFFFF8) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v14 - v8;
  CFDataGetLength(*(a1 + 24));
  CFDataGetBytePtr(*(a1 + 24));
  cchmac_init();
  cchmac_update();
  v10 = AppleIDAuthSupportCopyString(*(a1 + 40), 1);
  strlen(v10);
  cchmac_update();
  free(v10);
  if (cfHMAC(v6, v9, a2, a3))
  {
    Mutable = CFDataCreateMutable(0, *v6);
    CFDataSetLength(Mutable, *v6);
    CFDataGetMutableBytePtr(Mutable);
    cchmac_final();
  }

  else
  {
    Mutable = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return Mutable;
}

void *AppleIDAuthSupportCopyAppNewAppTokensWithAuthAttribute(void *a1, void *a2, const __CFString *a3, CFDictionaryRef theDict, const void **a5)
{
  DecryptedData = a1;
  *v21 = 0;
  if (a1)
  {
    if (a3)
    {
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"cpd");
        v11 = Value;
        if (Value)
        {
          v12 = CFGetTypeID(Value);
          if (v12 != CFDictionaryGetTypeID())
          {
            return 0;
          }
        }
      }

      else
      {
        v11 = 0;
      }

      AppTokensChecksum = CreateAppTokensChecksum(DecryptedData, a3, a5);
      if (AppTokensChecksum)
      {
        v14 = AppTokensChecksum;
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        if (Mutable)
        {
          v16 = Mutable;
          CFDictionarySetValue(Mutable, @"o", @"apptokens");
          CFDictionarySetValue(v16, @"u", *(DecryptedData + 5));
          CFDictionarySetValue(v16, @"aa", a3);
          CFDictionarySetValue(v16, @"t", *(DecryptedData + 2));
          CFDictionarySetValue(v16, @"c", *(DecryptedData + 4));
          CFDictionarySetValue(v16, @"checksum", v14);
          CFRelease(v14);
          if (v11)
          {
            CFDictionarySetValue(v16, @"cpd", v11);
          }

          Response = SendRequestAndCreateResponse(0, theDict, a2, v16, v21);
          CFRelease(v16);
          if (Response)
          {
            v18 = CFDictionaryGetValue(Response, @"et");
            if (v18)
            {
              DecryptedData = _AppleIDAuthSupportCreateDecryptedData(*(DecryptedData + 3), 0, v18, a5);
              if (isCFDictionary(DecryptedData))
              {
                CFRelease(Response);
                return DecryptedData;
              }

              errorNetworkProtocol(Response, a5, 5, @"Failed to decrypt EncryptedToken (et)");
              CFRelease(Response);
              if (!DecryptedData)
              {
                return DecryptedData;
              }

              v19 = DecryptedData;
            }

            else
            {
              errorNetworkProtocol(Response, a5, 2, @"Could not find encrypted token key");
              v19 = Response;
            }
          }

          else
          {
            setError(a5, 6, 0, *v21, @"Failed to get response from server");
            v19 = *v21;
            if (!*v21)
            {
              return 0;
            }
          }
        }

        else
        {
          v19 = v14;
        }

        CFRelease(v19);
      }
    }

    else
    {
      setError(a5, 7, 0, 0, @"Caller passed a NULL authAttribtue to CopyAppTokensWithAA");
    }

    return 0;
  }

  setError(a5, 7, 0, 0, @"Caller passed a NULL token to CopyAppTokensWithAA");
  return DecryptedData;
}

uint64_t AppleIDAuthSupportGSGetID()
{
  if (AppleIDAuthSupportGSGetID_inited != -1)
  {
    AppleIDAuthSupportGSGetID_cold_1();
  }

  return GSid;
}

uint64_t __AppleIDAuthSupportGSGetID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  GSid = result;
  return result;
}

void GSRelease(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[8];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t AppleIDAuthSupportGSCreateContext(const void *a1, const void *a2, const void *a3, const void **a4)
{
  if (AppleIDAuthSupportGSGetID_inited != -1)
  {
    AppleIDAuthSupportGSGetID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    if (a1)
    {
      *(Instance + 24) = CFRetain(a1);
    }

    *(Instance + 56) = CFRetain(a2);
    if (isCFDictionary(a3))
    {
      *(Instance + 48) = CFRetain(a3);
    }

    *(Instance + 72) = SendRequestAndCreateResponse;
    *(Instance + 16) = 0;
    if (a3 && CFDictionaryGetValue(a3, @"maybeSkipEncrypt"))
    {
      *(Instance + 16) = 1;
    }
  }

  else
  {
    setErrorOOM(a4);
  }

  return Instance;
}

CFTypeRef AppleIDAuthSupportGSCopyNewIdentityToken(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

CFTypeRef AppleIDAuthSupportGSCopyAppTokens(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t allowSkipSettingOnInternalHardware(const __CFString *a1, char a2)
{
  if ((a2 & 1) == 0 && !CFPreferencesGetAppBooleanValue(a1, @".GlobalPreferences", 0))
  {
    return 0;
  }

  v2 = os_variant_allows_internal_security_policies();
  v3 = _AIDASOSLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    allowSkipSettingOnInternalHardware_cold_1(v2, v3);
  }

  return v2;
}

uint64_t cfHMAC(uint64_t a1, uint64_t a2, const __CFString *a3, const void **a4)
{
  v8 = CFGetTypeID(a3);
  if (v8 != CFArrayGetTypeID())
  {
    if (v8 == CFStringGetTypeID())
    {
      v15 = AppleIDAuthSupportCopyString(a3, 0);
      strlen(v15);
      cchmac_update();
      free(v15);
    }

    else
    {
      if (v8 != CFDataGetTypeID())
      {
        setError(a4, 7, 0, 0, @"Caller passed a app name as a non string: %@", a3);
        return 0;
      }

      CFDataGetLength(a3);
      CFDataGetBytePtr(a3);
      cchmac_update();
    }

    return 1;
  }

  Count = CFArrayGetCount(a3);
  v10 = Count - 1;
  if (Count < 1)
  {
    return 1;
  }

  v11 = 0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a3, v11);
    result = cfHMAC(a1, a2, ValueAtIndex, a4);
    if (!result)
    {
      break;
    }
  }

  while (v10 != v11++);
  return result;
}

uint64_t AppleIDAuthSupportGetClientInfo()
{
  if (AppleIDAuthSupportGetClientInfo_onceToken != -1)
  {
    AppleIDAuthSupportGetClientInfo_cold_1();
  }

  return AppleIDAuthSupportGetClientInfo_clientInfo;
}

BOOL isCFArray(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFArrayGetTypeID();
    return TypeID == CFGetTypeID(v1);
  }

  return result;
}

BOOL isCFString(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    return TypeID == CFGetTypeID(v1);
  }

  return result;
}

BOOL isCFData(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFDataGetTypeID();
    return TypeID == CFGetTypeID(v1);
  }

  return result;
}

BOOL isCFDictionary(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFDictionaryGetTypeID();
    return TypeID == CFGetTypeID(v1);
  }

  return result;
}

uint64_t _AIDASOSLog()
{
  if (_AIDASOSLog_onceToken != -1)
  {
    _AIDASOSLog_cold_1();
  }

  return _AIDASOSLog_log;
}

char *AppleIDAuthSupportCopyString(const __CFString *a1, int a2)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v6 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x30B23DC8uLL);
  if (!v6)
  {
    return v6;
  }

  if (!CFStringGetCString(a1, v6, MaximumSizeForEncoding + 1, 0x8000100u))
  {
LABEL_23:
    v19 = v6;
LABEL_24:
    free(v19);
    return 0;
  }

  if (a2 == 1)
  {
    v15 = *v6;
    if (*v6)
    {
      v16 = (v6 + 1);
      do
      {
        *(v16 - 1) = __tolower(v15);
        v17 = *v16++;
        v15 = v17;
      }

      while (v17);
    }

    return v6;
  }

  if (a2 != 2)
  {
    return v6;
  }

  v7 = strlen(v6);
  pDestLength = 0;
  if (AppleIDAuthSupportCopyString_onceToken != -1)
  {
    AppleIDAuthSupportCopyString_cold_1();
  }

  if (!AppleIDAuthSupportCopyString_profile)
  {
    goto LABEL_23;
  }

  v8 = v7 + 1;
  v9 = malloc_type_malloc(2 * (v7 + 1), 0x1000040BDFB0063uLL);
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = v9;
  pErrorCode = U_ZERO_ERROR;
  u_strFromUTF8(v9, v8, &pDestLength, v6, -1, &pErrorCode);
  free(v6);
  if (pErrorCode)
  {
LABEL_27:
    v19 = v10;
    goto LABEL_24;
  }

  v11 = 2 * pDestLength;
  while (1)
  {
    v12 = malloc_type_malloc(2 * v11, 0x1000040BDFB0063uLL);
    pErrorCode = U_ZERO_ERROR;
    v13 = usprep_prepare();
    if (pErrorCode != U_STRING_NOT_TERMINATED_WARNING && pErrorCode != U_BUFFER_OVERFLOW_ERROR)
    {
      break;
    }

    v11 += pDestLength;
    free(v12);
  }

  if (pErrorCode)
  {
    free(v12);
    goto LABEL_27;
  }

  v18 = v13;
  free(v10);
  u_strToUTF8(0, 0, &pDestLength, v12, v18, &pErrorCode);
  v6 = malloc_type_malloc(pDestLength + 1, 0xD70EF804uLL);
  pErrorCode = U_ZERO_ERROR;
  u_strToUTF8(v6, pDestLength + 1, 0, v12, v18, &pErrorCode);
  free(v12);
  v6[pDestLength] = 0;
  if (pErrorCode)
  {
    goto LABEL_23;
  }

  return v6;
}

uint64_t __AppleIDAuthSupportCopyString_block_invoke()
{
  result = usprep_openByType();
  AppleIDAuthSupportCopyString_profile = result;
  return result;
}

uint64_t AppleIDAuthSupportDeterministicRandomCreate(const __CFString *a1)
{
  if (AppleIDAuthSupportRandomGetTypeID_inited != -1)
  {
    AppleIDAuthSupportDeterministicRandomCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = malloc_type_calloc(1uLL, 0x1010uLL, 0x10800408508BC16uLL);
  v3 = AppleIDAuthSupportCopyString(a1, 0);
  *(Instance + 24) = v3;
  v4 = *(Instance + 16);
  strlen(v3);
  ccrng_pbkdf2_prng_init();
  return Instance;
}

uint64_t AppleIDAuthSupportGetTypeID()
{
  if (AppleIDAuthSupportGetTypeID_inited != -1)
  {
    AppleIDAuthSupportGetTypeID_cold_1();
  }

  return haid;
}

uint64_t __AppleIDAuthSupportGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  haid = result;
  return result;
}

void GSRelease_0(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[2];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[9];
  if (v9)
  {

    CFRelease(v9);
  }
}

__CFDictionary *_PIICreateClearedOptions(CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  v2 = MutableCopy;
  if (MutableCopy)
  {
    _HideKeyValue(MutableCopy, @"Password");
    _HideKeyValue(v2, @"adsid");
    _HideKeyValue(v2, @"kAppleIDAuthSupportSRPRandomSource");
  }

  return v2;
}

void _HideKeyValue(__CFDictionary *a1, const void *a2)
{
  if (CFDictionaryGetValue(a1, a2))
  {

    CFDictionarySetValue(a1, a2, @"<<VALUE>>");
  }
}

uint64_t AppleIDAuthSupportCreate(char a1, const __CFDictionary *a2, const void **a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (_AIDASOSLog_onceToken != -1)
  {
    _AIDASOSLog_cold_1();
  }

  if (os_log_type_enabled(_AIDASOSLog_log, OS_LOG_TYPE_INFO))
  {
    v6 = _PIICreateClearedOptions(a2);
    if (_AIDASOSLog_onceToken != -1)
    {
      _AIDASOSLog_cold_1();
    }

    v7 = _AIDASOSLog_log;
    if (os_log_type_enabled(_AIDASOSLog_log, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v38 = "AppleIDAuthSupportCreate";
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_24056C000, v7, OS_LOG_TYPE_INFO, "%{public}s: %@", buf, 0x16u);
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }

  if (AppleIDAuthSupportGetTypeID_inited != -1)
  {
    AppleIDAuthSupportCreate_cold_3();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    setErrorOOM(a3);
    goto LABEL_58;
  }

  if (a2)
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(a2))
    {
      CFRelease(Instance);
      setError(a3, 7, 0, 0, @"Options argument is not a dictionary");
LABEL_57:
      Instance = 0;
      goto LABEL_58;
    }

    *(Instance + 16) = CFDictionaryCreateMutableCopy(0, 0, a2);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(Instance + 16) = Mutable;
    if (!Mutable)
    {
LABEL_47:
      CFRelease(Instance);
      setErrorOOM(a3);
      goto LABEL_57;
    }
  }

  if (a1)
  {
    *(Instance + 96) = stateServerNeg1;
    if (stateServerNeg1 != stateClientNeg1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    *(Instance + 96) = stateClientNeg1;
  }

  Value = CFDictionaryGetValue(a2, @"u");
  if (Value)
  {
    v12 = Value;
    v13 = CFStringGetTypeID();
    if (v13 != CFGetTypeID(v12))
    {
      CFRelease(Instance);
      setError(a3, 2, 0, 0, @"Create function for client passed invalid username key");
      goto LABEL_57;
    }

    *(Instance + 24) = CFRetain(v12);
  }

  v14 = CFDictionaryGetValue(a2, @"adsid");
  if (v14)
  {
    v15 = v14;
    v16 = CFStringGetTypeID();
    if (v16 != CFGetTypeID(v15))
    {
      CFRelease(Instance);
      setError(a3, 2, 0, 0, @"Create function for client passed invalid altDSID key");
      goto LABEL_57;
    }

    *(Instance + 32) = CFRetain(v15);
  }

  if (!*(Instance + 24))
  {
    v17 = *(Instance + 32);
    if (!v17)
    {
      CFRelease(Instance);
      setError(a3, 2, 0, 0, @"Create function for client have no username nor dsid");
      goto LABEL_57;
    }

    *(Instance + 24) = CFRetain(v17);
  }

  v18 = CFDictionaryGetValue(a2, @"Protocol");
  if (v18)
  {
    v19 = v18;
    v20 = CFStringGetTypeID();
    if (v20 != CFGetTypeID(v19))
    {
      CFRelease(Instance);
      v22 = @"Protocol selected for client was not a string: %@";
      goto LABEL_52;
    }

    v21 = @"s2k";
    if (CFStringCompare(v19, @"s2k", 0))
    {
      v21 = @"s2k_fo";
      if (CFStringCompare(v19, @"s2k_fo", 0))
      {
        CFRelease(Instance);
        v22 = @"Protocol selected %@ is not supported";
LABEL_52:
        setError(a3, 2, 0, 0, v22, v19);
        goto LABEL_57;
      }
    }

    v23 = 0;
    goto LABEL_38;
  }

LABEL_37:
  v21 = 0;
  v23 = 1;
LABEL_38:
  *(Instance + 112) = ccsha256_di();
  *(Instance + 120) = ccsrp_gp_rfc5054_2048();
  v24 = ccsha256_di();
  *(Instance + 128) = v24;
  v25 = malloc_type_calloc(1uLL, *(v24 + 8) + *(v24 + 16) + 12, 0x100004052888210uLL);
  *(Instance + 136) = v25;
  if (!v25)
  {
    goto LABEL_47;
  }

  v26 = CFDictionaryGetValue(*(Instance + 16), @"dch");
  if (v26)
  {
    *(Instance + 80) = getIntValue(v26);
  }

  v27 = CFDictionaryGetValue(*(Instance + 16), @"cpd");
  *(Instance + 56) = v27;
  if (v27)
  {
    v28 = v27;
    v29 = CFDictionaryGetTypeID();
    if (v29 != CFGetTypeID(v28))
    {
      CFRelease(Instance);
      setError(a3, 2, 0, 0, @"client provided data is no a dictionary");
      goto LABEL_57;
    }

    CFRetain(*(Instance + 56));
  }

  v30 = *(Instance + 128);
  v31 = *(Instance + 136);
  ccdigest_init();
  v32 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (!v32)
  {
    goto LABEL_47;
  }

  v33 = v32;
  *(Instance + 88) = v32;
  if (v23)
  {
    CFArrayAppendValue(v32, @"s2k");
    v34 = @"s2k_fo";
    v32 = v33;
  }

  else
  {
    v34 = v21;
  }

  CFArrayAppendValue(v32, v34);
LABEL_58:
  v35 = *MEMORY[0x277D85DE8];
  return Instance;
}

uint64_t stateServerNeg1(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3, const void **a4)
{
  v66 = *MEMORY[0x277D85DE8];
  if (_AIDASOSLog_onceToken != -1)
  {
    _AIDASOSLog_cold_1();
  }

  v8 = _AIDASOSLog_log;
  if (os_log_type_enabled(_AIDASOSLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v63 = "stateServerNeg1";
    v64 = 2112;
    v65 = a2;
    _os_log_impl(&dword_24056C000, v8, OS_LOG_TYPE_INFO, "%{public}s: %@", buf, 0x16u);
  }

  if (!a2)
  {
    v30 = @"server neg1: input dict missing";
    goto LABEL_29;
  }

  Value = CFDictionaryGetValue(a2, @"ps");
  if (!Value || (v10 = Value, TypeID = CFArrayGetTypeID(), TypeID != CFGetTypeID(v10)))
  {
    v30 = @"key Protocols missing";
    goto LABEL_29;
  }

  Count = CFArrayGetCount(v10);
  if (Count >= 1)
  {
    v13 = Count;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
      if (!ValueAtIndex)
      {
        break;
      }

      v16 = ValueAtIndex;
      v17 = CFStringGetTypeID();
      if (v17 != CFGetTypeID(v16))
      {
        break;
      }

      result = validateProtocolName(a1, v16, a4);
      if (!result)
      {
        goto LABEL_32;
      }

      addStringToNegProt(a1, v16);
      if (v13 != 1)
      {
        addStringToNegProt(a1, @",");
      }

      ++v14;
      if (!--v13)
      {
        goto LABEL_16;
      }
    }

    v30 = @"protocol not a string";
    goto LABEL_35;
  }

LABEL_16:
  addStringToNegProt(a1, @"|");
  v19 = CFDictionaryGetValue(a2, @"dch");
  if (v19)
  {
    v20 = v19;
    v21 = CFNumberGetTypeID();
    if (v21 == CFGetTypeID(v20))
    {
      addStringToNegProt(a1, @"DisregardChannelBindings");
      *(a1 + 80) = 1;
    }
  }

  v22 = CFDictionaryGetValue(a2, @"u");
  if (!v22 || (v23 = v22, v24 = CFStringGetTypeID(), v24 != CFGetTypeID(v23)))
  {
    v30 = @"username missing";
    goto LABEL_29;
  }

  if (!*(a1 + 144))
  {
    v30 = @"no callback set by server";
    goto LABEL_37;
  }

  v25 = CFArrayGetCount(v10);
  if (v25 < 1)
  {
LABEL_26:
    v30 = @"server callback failed";
LABEL_37:
    v31 = a4;
    v32 = 4;
    goto LABEL_30;
  }

  v26 = v25;
  v27 = 0;
  while (1)
  {
    v28 = CFArrayGetValueAtIndex(v10, v27);
    v29 = (*(a1 + 144))(v28, v23, *(a1 + 152));
    if (v29)
    {
      break;
    }

    if (v26 == ++v27)
    {
      goto LABEL_26;
    }
  }

  v34 = v29;
  addStringToNegProt(a1, @"|");
  addStringToNegProt(a1, v28);
  v35 = CFDictionaryGetValue(a2, @"cpd");
  *(a1 + 56) = v35;
  if (v35)
  {
    CFRetain(v35);
    if (!isCFDictionary(*(a1 + 56)))
    {
      v30 = @"Client provided data not a dictionary";
LABEL_35:
      v31 = a4;
      v32 = 3;
      goto LABEL_30;
    }
  }

  v36 = *(a1 + 120);
  v37 = ccdh_ccn_size();
  *(a1 + 104) = malloc_type_calloc(1uLL, 4 * (**(a1 + 112) + v37) + 48, 0x106004070A5FD05uLL);
  v38 = *(a1 + 112);
  v39 = *(a1 + 120);
  ccsrp_ctx_init();
  if (*(a1 + 24))
  {
    abort();
  }

  *(a1 + 24) = v23;
  CFRetain(v23);
  v40 = CFDictionaryGetValue(v34, @"s");
  v61 = CFDictionaryGetValue(v34, @"i");
  v41 = CFDictionaryGetValue(v34, @"SRP2KVerifier");
  CFRelease(v34);
  v67.length = CFArrayGetCount(v10);
  v67.location = 0;
  if (CFArrayContainsValue(v10, v67, v28))
  {
    if (isCFData(v40) && isCFNumber(v61) && isCFData(v41))
    {
      if (isCFData(v41) && (v42 = CFDataGetLength(v41), v42 == 8 * MEMORY[0x245CC4B60](*(*(a1 + 104) + 8))))
      {
        v43 = CFDictionaryGetValue(a2, @"A2k");
        if (isCFData(v43))
        {
          Length = CFDataGetLength(v43);
          if (Length == 8 * MEMORY[0x245CC4B60](*(*(a1 + 104) + 8)))
          {
            v45 = CFDictionaryGetValue(*(a1 + 16), @"kAppleIDAuthSupportSRPRandomSource");
            if (!v45)
            {
              goto LABEL_59;
            }

            v46 = v45;
            v47 = CFGetTypeID(v45);
            if (AppleIDAuthSupportRandomGetTypeID_inited != -1)
            {
              stateServerNeg1_cold_2();
            }

            if (v47 == AppleIDAuthSupportRandomGetTypeID_type)
            {
              v60 = v46[2];
            }

            else
            {
LABEL_59:
              v60 = ccDRBGGetRngState();
            }

            v48 = AppleIDAuthSupportCopyString(v23, 1);
            if (!v48)
            {
              setErrorOOM(a4);
              goto LABEL_31;
            }

            v49 = v48;
            v50 = MEMORY[0x245CC4B60](*(*(a1 + 104) + 8));
            v59[3] = v59;
            MEMORY[0x28223BE20](v50);
            v59[0] = v51;
            v52 = v59 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
            v59[2] = *(a1 + 104);
            v59[1] = CFDataGetLength(v40);
            CFDataGetBytePtr(v40);
            CFDataGetBytePtr(v41);
            CFDataGetBytePtr(v43);
            started = ccsrp_server_start_authentication();
            free(v49);
            if (started || (v55 = v59[0], v56 = CFDataCreate(0, v52, v59[0]), bzero(v52, v55), !v56))
            {
              setErrorOOM(a4);
            }

            else
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (Mutable)
              {
                v58 = Mutable;
                CFDictionarySetValue(Mutable, @"sp", v28);
                CFDictionarySetValue(v58, @"B", v56);
                CFDictionarySetValue(v58, @"s", v40);
                CFDictionarySetValue(v58, @"i", v61);
                CFRelease(v56);
                *a3 = v58;
                result = 1;
                v54 = stateServerNeg2;
                goto LABEL_64;
              }

              setErrorOOM(a4);
              CFRelease(v56);
            }

            result = 0;
            v54 = stateInvalid;
LABEL_64:
            *(a1 + 96) = v54;
            goto LABEL_32;
          }
        }

        v30 = @"A wrong size";
      }

      else
      {
        v30 = @"verifier wrong size";
      }
    }

    else
    {
      v30 = @"PBKDF or verifier missing";
    }
  }

  else
  {
    v30 = @"proto not supported";
  }

LABEL_29:
  v31 = a4;
  v32 = 2;
LABEL_30:
  setError(v31, v32, 0, 0, v30);
LABEL_31:
  result = 0;
  *(a1 + 96) = stateInvalid;
LABEL_32:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t stateClientNeg1(uint64_t a1, const void *a2, __CFDictionary **a3, const void **a4)
{
  v43 = *MEMORY[0x277D85DE8];
  if (_AIDASOSLog_onceToken != -1)
  {
    _AIDASOSLog_cold_1();
  }

  v8 = _AIDASOSLog_log;
  if (os_log_type_enabled(_AIDASOSLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v40 = "stateClientNeg1";
    v41 = 2112;
    v42 = a2;
    _os_log_impl(&dword_24056C000, v8, OS_LOG_TYPE_INFO, "%{public}s: %@", buf, 0x16u);
  }

  if (!a2 || (v9 = CFDictionaryGetTypeID(), v9 == CFGetTypeID(a2)) || !CFDictionaryGetCount(a2))
  {
    Count = CFArrayGetCount(*(a1 + 88));
    if (Count >= 1)
    {
      v12 = Count;
      v13 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 88), v13);
        if (!ValueAtIndex || (v15 = ValueAtIndex, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v15)))
        {
          abort();
        }

        addStringToNegProt(a1, v15);
        if (v12 != 1)
        {
          addStringToNegProt(a1, @",");
        }

        ++v13;
        --v12;
      }

      while (v12);
    }

    Value = CFDictionaryGetValue(*(a1 + 16), @"kAppleIDAuthSupportSRPRandomSource");
    if (!Value)
    {
      goto LABEL_21;
    }

    v18 = Value;
    v19 = CFGetTypeID(Value);
    if (AppleIDAuthSupportRandomGetTypeID_inited != -1)
    {
      stateServerNeg1_cold_2();
    }

    if (v19 == AppleIDAuthSupportRandomGetTypeID_type)
    {
      v20 = v18[2];
    }

    else
    {
LABEL_21:
      ccDRBGGetRngState();
    }

    v21 = *(a1 + 120);
    v22 = ccdh_ccn_size();
    *(a1 + 104) = malloc_type_calloc(1uLL, 4 * (**(a1 + 112) + v22) + 48, 0x106004070A5FD05uLL);
    v23 = *(a1 + 112);
    v24 = *(a1 + 120);
    ccsrp_ctx_init();
    v25 = *(a1 + 104);
    ccsrp_client_set_noUsernameInX();
    v26 = MEMORY[0x245CC4B60](*(*(a1 + 104) + 8));
    v27 = 8 * v26;
    MEMORY[0x28223BE20](v26);
    v28 = *(a1 + 104);
    ccsrp_client_start_authentication();
    v29 = CFDataCreate(0, &buf[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)], v27);
    if (v29)
    {
      v30 = v29;
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (Mutable)
      {
        v32 = Mutable;
        addStringToNegProt(a1, @"|");
        if (*(a1 + 80))
        {
          *buf = 1;
          v33 = CFNumberCreate(0, kCFNumberIntType, buf);
          CFDictionarySetValue(v32, @"dch", v33);
          addStringToNegProt(a1, @"DisregardChannelBindings");
          CFRelease(v33);
        }

        v34 = *(a1 + 56);
        if (v34)
        {
          CFDictionarySetValue(v32, @"cpd", v34);
        }

        CFDictionarySetValue(v32, @"A2k", v30);
        CFDictionarySetValue(v32, @"ps", *(a1 + 88));
        CFRelease(v30);
        v35 = *(a1 + 24);
        if (v35)
        {
          CFDictionarySetValue(v32, @"u", v35);
        }

        v36 = *(a1 + 32);
        if (v36)
        {
          CFDictionarySetValue(v32, @"u", v36);
        }

        CFDictionarySetValue(v32, @"o", @"init");
        *a3 = v32;
        result = 1;
        v37 = stateClientNeg2;
        goto LABEL_36;
      }

      setErrorOOM(a4);
      CFRelease(v30);
    }

    else
    {
      setErrorOOM(a4);
    }

    result = 0;
    v37 = stateInvalid;
LABEL_36:
    *(a1 + 96) = v37;
    goto LABEL_37;
  }

  setError(a4, 2, 0, 0, @"client neg1: input dict with content");
  result = 0;
  *(a1 + 96) = stateInvalid;
LABEL_37:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

const __CFNumber *getIntValue(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      if (CFNumberGetValue(v1, kCFNumberIntType, &valuePtr))
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
      return 0;
    }
  }

  return result;
}

void AppleIDAuthSupportSetOption(uint64_t a1, const void *a2, const void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (_AIDASOSLog_onceToken != -1)
  {
    _AIDASOSLog_cold_1();
  }

  v6 = _AIDASOSLog_log;
  if (os_log_type_enabled(_AIDASOSLog_log, OS_LOG_TYPE_INFO))
  {
    v8 = 136446722;
    v9 = "AppleIDAuthSupportSetOption";
    v10 = 2112;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&dword_24056C000, v6, OS_LOG_TYPE_INFO, "%{public}s: %@ : %@", &v8, 0x20u);
  }

  CFDictionarySetValue(*(a1 + 16), a2, a3);
  v7 = *MEMORY[0x277D85DE8];
}

CFDictionaryRef *AppleIDAuthSupportGetOption(CFDictionaryRef *result, const void *a2)
{
  if (result)
  {
    return CFDictionaryGetValue(result[2], a2);
  }

  return result;
}

uint64_t AppleIDAuthSupportServerSetCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 144) = a2;
  *(result + 152) = a3;
  return result;
}

uint64_t AppleIDAuthSupportServerSetServerDataCallback(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 160) = a2;
  *(result + 168) = a3;
  return result;
}

__CFData *_AppleIDAuthSupportPBKDF2SRP(CFIndex *a1, int a2, const __CFString *a3, const __CFData *a4, const __CFNumber *a5, int a6, const void **a7)
{
  v32 = *MEMORY[0x277D85DE8];
  ccsha256_di();
  valuePtr[0] = 0;
  if (!CFNumberGetValue(a5, kCFNumberLongType, valuePtr))
  {
    setError(a7, 2, 0, 0, @"Could not get iteration: %@", a5);
    goto LABEL_20;
  }

  if (!a2)
  {
    if (valuePtr[0] <= 998)
    {
      setError(a7, 2, 0, 0, @"iteration too few, server sent %ld", valuePtr[0]);
      goto LABEL_20;
    }

    if (CFDataGetLength(a4) <= 7)
    {
      Length = CFDataGetLength(a4);
      setError(a7, 2, 0, 0, @"salt too short: %ld", Length);
      goto LABEL_20;
    }

    v26 = AppleIDAuthSupportCopyString(a3, a6);
    if (v26)
    {
      v15 = v26;
      strlen(v26);
      ccdigest();
      v27 = strlen(v15);
      bzero(v15, v27);
      goto LABEL_7;
    }

LABEL_19:
    setErrorOOM(a7);
    goto LABEL_20;
  }

  v14 = AppleIDAuthSupportCopyString(a3, a6);
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = v14;
  strlen(v14);
  ccdigest();
  v16 = strlen(v15);
  bzero(v15, v16);
  v17 = 0;
  v18 = v31;
  do
  {
    v19 = *(&valuePtr[1] + v17 + 7);
    *(v18 - 1) = hexchar[v19 >> 4];
    *v18 = hexchar[v19 & 0xF];
    v18 += 2;
    ++v17;
  }

  while (v17 != 32);
  v31[63] = 0;
LABEL_7:
  Mutable = CFDataCreateMutable(0, *a1);
  v21 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, *a1);
    CFDataGetLength(a4);
    CFDataGetBytePtr(a4);
    v22 = *a1;
    CFDataGetMutableBytePtr(v21);
    v23 = ccpbkdf2_hmac();
    __memset_chk();
    free(v15);
    if (v23)
    {
      setErrorOOM(a7);
      CFRelease(v21);
LABEL_20:
      v21 = 0;
    }
  }

  else
  {
    setErrorOOM(a7);
    v25 = strlen(v15);
    bzero(v15, v25);
    free(v15);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

CFDataRef AppleIDAuthSupportCreateVerifier(const __CFString *a1, uint64_t a2, const __CFData *a3, const __CFNumber *a4, const __CFString *a5, const void **a6)
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (CFStringCompare(a1, @"s2k", 0))
  {
    if (CFStringCompare(a1, @"s2k_fo", 0) == kCFCompareEqualTo)
    {
      v11 = ccsha256_di();
      v12 = 1;
      ccsrp_gp_rfc5054_2048();
      goto LABEL_9;
    }

    if (CFStringCompare(a1, @"s4k", 0))
    {
      setError(a6, 3, 0, 0, @"Unsupported protocol: %@", a1);
      goto LABEL_14;
    }

    v11 = ccsha256_di();
    ccsrp_gp_rfc5054_4096();
  }

  else
  {
    v11 = ccsha256_di();
    ccsrp_gp_rfc5054_2048();
  }

  v12 = 0;
LABEL_9:
  if (!getIntValue(a4))
  {
    setError(a6, 2, 0, 0, @"iteration count invalid %@", a4);
    goto LABEL_14;
  }

  v13 = _AppleIDAuthSupportPBKDF2SRP(v11, v12, a5, a3, a4, 2, a6);
  if (!v13)
  {
LABEL_14:
    v24 = 0;
    goto LABEL_16;
  }

  v14 = v13;
  v15 = ccdh_ccn_size();
  v27[0] = v27;
  v16 = 48 * ((4 * (*v11 + v15) + 95) / 0x30uLL);
  MEMORY[0x28223BE20](v15);
  v18 = &v27[-2 * v17];
  ccsrp_ctx_init();
  v19 = MEMORY[0x245CC4B60](v18[1]);
  v20 = 8 * v19;
  MEMORY[0x28223BE20](v19);
  v22 = v27 - v21;
  CFDataGetLength(v14);
  CFDataGetBytePtr(v14);
  CFDataGetLength(a3);
  CFDataGetBytePtr(a3);
  verifier = ccsrp_generate_verifier();
  CFRelease(v14);
  bzero(v18, v16);
  if (verifier || (v24 = CFDataCreate(0, v22, v20), bzero(v22, v20), !v24))
  {
    setErrorOOM(a6);
    v24 = 0;
  }

LABEL_16:
  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

CFDataRef SRPCreateSessionKey(uint64_t a1, const char *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 104);
  if (ccsrp_is_authenticated() && (*(a1 + 48) || (v13[0] = 0, v5 = *(a1 + 104), session_key = ccsrp_get_session_key(), v7 = CFDataCreate(0, session_key, 0), (*(a1 + 48) = v7) != 0)))
  {
    v8 = ccsha256_di();
    v9 = *v8;
    MEMORY[0x28223BE20]();
    CFDataGetLength(*(a1 + 48));
    CFDataGetBytePtr(*(a1 + 48));
    strlen(a2);
    cchmac();
    v10 = CFDataCreate(0, v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    bzero(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

__CFData *CreateEncryptedData(uint64_t a1, CFDataRef theData, const void **a3)
{
  v22 = *MEMORY[0x277D85DE8];
  Length = CFDataGetLength(theData);
  v7 = ccaes_cbc_encrypt_mode();
  v8 = v7[1];
  v9 = SRPCreateSessionKey(a1, "extra data key:");
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  if (CFDataGetLength(v9) <= 0x1F || (v11 = SRPCreateSessionKey(a1, "extra data iv:")) == 0)
  {
    v19 = v10;
LABEL_7:
    CFRelease(v19);
LABEL_8:
    setErrorOOM(a3);
    v15 = 0;
    *(a1 + 96) = stateInvalid;
    goto LABEL_9;
  }

  v12 = v11;
  v13 = (v8 + Length - 1) / v8 * v8;
  Mutable = CFDataCreateMutable(0, v13);
  if (!theData)
  {
    CFRelease(v10);
    v19 = v12;
    goto LABEL_7;
  }

  v15 = Mutable;
  CFDataSetLength(Mutable, v13);
  v16 = (v7[1] + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  CFDataGetBytePtr(v12);
  v17 = cccbc_set_iv();
  v18 = (*v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  CFDataGetBytePtr(v10);
  cccbc_init();
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  CFDataGetMutableBytePtr(v15);
  ccpad_pkcs7_encrypt();
  CFRelease(v10);
  CFRelease(v12);
LABEL_9:
  v20 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t AppleIDAuthSupportStep(uint64_t a1, int a2, uint64_t a3, const void **a4)
{
  if (a3)
  {
    v6 = *(a1 + 96);

    return v6();
  }

  else
  {
    setError(a4, 2, a3, 0, @"Missing output data ptr", v4, v5);
    return 0;
  }
}

uint64_t stateDone(uint64_t a1, int a2, int a3, const void **a4)
{
  *(a1 + 96) = stateInvalid;
  setError(a4, 5, 0, 0, @"Called Step function one too many times (at done)");
  return 0;
}

uint64_t AppleIDAuthSupportCopyProvidedData(uint64_t a1, int a2)
{
  v2 = 56;
  if (a2)
  {
    v2 = 64;
  }

  v3 = *(a1 + v2);
  if (v3)
  {
    CFRetain(*(a1 + v2));
  }

  return v3;
}

CFTypeRef AppleIDAuthSupportCopyContextAppTokens(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v1, @"t");
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(v3))
  {
    return 0;
  }

  return CFRetain(v3);
}

CFTypeRef _AppleIDAuthSupportSetStatus(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 72);
  if (v4)
  {
    CFRelease(v4);
  }

  result = CFRetain(cf);
  *(a1 + 72) = result;
  return result;
}

uint64_t AppleIDAuthSupportTokenGetTypeID()
{
  if (_MergedGlobals != -1)
  {
    AppleIDAuthSupportTokenGetTypeID_cold_1();
  }

  return qword_280FB20F8;
}

uint64_t __AppleIDAuthSupportTokenGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_280FB20F8 = result;
  return result;
}

void GSTokenRelease(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[6];
  if (v6)
  {

    CFRelease(v6);
  }
}

void *_AppleIDAuthSupportCreateToken(const __CFDictionary *a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(a1, @"GsIdmsToken");
  if (!Value)
  {
    return 0;
  }

  v7 = Value;
  v8 = CFDictionaryGetValue(a1, @"sk");
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = CFDictionaryGetValue(a1, @"c");
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = CFDictionaryGetValue(a1, @"adsid");
  if (v12)
  {
    a3 = v12;
  }

  if (_MergedGlobals != -1)
  {
    AppleIDAuthSupportTokenGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    Instance[2] = CFRetain(v7);
    Instance[4] = CFRetain(v11);
    Instance[3] = CFRetain(v9);
    Instance[5] = CFRetain(a3);
    Instance[6] = CFRetain(a2);
  }

  return Instance;
}

const __CFDictionary *AppleIDAuthSupportCopyToken(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    return _AppleIDAuthSupportCreateToken(result, *(a1 + 24), *(a1 + 24));
  }

  return result;
}

uint64_t AppleIDAuthSupportTokenUpdate(CFTypeRef *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"GsIdmsToken");
  if (Value)
  {
    v5 = Value;
    CFRelease(a1[2]);
    a1[2] = CFRetain(v5);
  }

  v6 = CFDictionaryGetValue(theDict, @"sk");
  if (v6)
  {
    v7 = v6;
    TypeID = CFDataGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      CFRelease(a1[3]);
      a1[3] = CFRetain(v7);
    }
  }

  v9 = CFDictionaryGetValue(theDict, @"c");
  if (v9)
  {
    v10 = v9;
    v11 = CFDataGetTypeID();
    if (v11 == CFGetTypeID(v10))
    {
      CFRelease(a1[4]);
      a1[4] = CFRetain(v10);
    }
  }

  return 1;
}

CFDataRef AppleIDAuthSupportTokenCopyExternalizedVersion(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = @"adsid";
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  values[0] = *(a1 + 16);
  values[1] = v1;
  *keys = xmmword_278CABA90;
  v12 = *off_278CABAA0;
  v9 = *(a1 + 24);
  v10 = v2;
  v3 = CFDictionaryCreate(0, keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v3)
  {
    v4 = v3;
    Data = CFPropertyListCreateData(0, v3, kCFPropertyListXMLFormat_v1_0, 0, 0);
    CFRelease(v4);
  }

  else
  {
    Data = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return Data;
}

uint64_t __AppleIDAuthSupportRandomGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  AppleIDAuthSupportRandomGetTypeID_type = result;
  return result;
}

void RandomRelease(uint64_t a1)
{
  free(*(a1 + 16));
  v2 = *(a1 + 24);

  free(v2);
}

void addStringToNegProt(uint64_t a1, const __CFString *a2)
{
  v3 = AppleIDAuthSupportCopyString(a2, 0);
  if (v3)
  {
    v4 = v3;
    v6 = *(a1 + 128);
    v5 = *(a1 + 136);
    strlen(v3);
    ccdigest_update();

    free(v4);
  }
}

uint64_t stateClientNeg2(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3, const void **a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 104);
  session_key_length = ccsrp_get_session_key_length();
  v10 = &BytePtr - ((MEMORY[0x28223BE20](session_key_length) + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_AIDASOSLog_onceToken != -1)
  {
    _AIDASOSLog_cold_1();
  }

  v11 = _AIDASOSLog_log;
  if (os_log_type_enabled(_AIDASOSLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v59 = "stateClientNeg2";
    v60 = 2112;
    v61 = a2;
    _os_log_impl(&dword_24056C000, v11, OS_LOG_TYPE_INFO, "%{public}s: %@", buf, 0x16u);
  }

  if (!a2)
  {
    v15 = @"client neg2: input dict missing";
LABEL_14:
    v16 = a4;
    v17 = 0;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(a2, @"sp");
  if (!Value || (v13 = Value, TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(v13)))
  {
    v15 = @"selected protocol key missing";
LABEL_12:
    v16 = a4;
    v17 = a2;
LABEL_15:
    setError(v16, 2, v17, 0, v15);
    goto LABEL_16;
  }

  if (CFStringCompare(v13, @"s2k", 0))
  {
    if (CFStringCompare(v13, @"s2k_fo", 0))
    {
      setError(a4, 3, a2, 0, @"unknown protocol: %@", v13);
      goto LABEL_16;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  result = validateProtocolName(a1, v13, a4);
  if (!result)
  {
    goto LABEL_18;
  }

  addStringToNegProt(a1, @"|");
  addStringToNegProt(a1, v13);
  v22 = CFDictionaryGetValue(a2, @"c");
  if (v22)
  {
    v23 = CFStringGetTypeID();
    if (v23 != CFGetTypeID(v22))
    {
      v24 = CFDataGetTypeID();
      if (v24 != CFGetTypeID(v22))
      {
        v15 = @"cookie not a data object";
        goto LABEL_12;
      }
    }
  }

  v25 = CFDictionaryGetValue(*(a1 + 16), @"Password");
  if (!v25 || (v26 = v25, v27 = CFStringGetTypeID(), v27 != CFGetTypeID(v26)))
  {
    v15 = @"password missing in options";
    goto LABEL_14;
  }

  LODWORD(v57) = v21;
  v28 = CFDictionaryGetValue(a2, @"s");
  if (!v28 || (v29 = v28, v30 = CFDataGetTypeID(), v30 != CFGetTypeID(v29)))
  {
    v15 = @"salt missing from server";
    goto LABEL_12;
  }

  v56 = v29;
  v31 = CFDictionaryGetValue(a2, @"i");
  if (!v31 || (v32 = v31, v33 = CFNumberGetTypeID(), v33 != CFGetTypeID(v32)))
  {
    v15 = @"iteration missing from server";
    goto LABEL_12;
  }

  v55 = v32;
  v34 = CFDictionaryGetValue(a2, @"B");
  if (!isCFData(v34))
  {
    v15 = @"B missing from server";
    goto LABEL_12;
  }

  v35 = CFDictionaryGetValue(a2, @"p");
  v36 = v35 != 0;
  if (v35)
  {
    v37 = 2;
  }

  else
  {
    v37 = 1;
  }

  v54 = v34;
  Length = CFDataGetLength(v34);
  v39 = *(a1 + 104);
  if (Length < ccsrp_get_session_key_length())
  {
    v15 = @"B wrong size";
    goto LABEL_14;
  }

  v40 = *(a1 + 32);
  if (!v40)
  {
    v40 = *(a1 + 24);
  }

  v53 = v40;
  v41 = AppleIDAuthSupportCopyString(v40, v37);
  v42 = v56;
  if (!v41)
  {
    goto LABEL_47;
  }

  v43 = v41;
  v44 = _AppleIDAuthSupportPBKDF2SRP(*(a1 + 112), v57, v26, v56, v55, 2 * v36, a4);
  if (!v44)
  {
    free(v43);
    goto LABEL_16;
  }

  v45 = v44;
  v57 = *(a1 + 104);
  v55 = CFDataGetLength(v44);
  BytePtr = CFDataGetBytePtr(v45);
  CFDataGetLength(v42);
  CFDataGetBytePtr(v42);
  CFDataGetBytePtr(v54);
  v46 = ccsrp_client_process_challenge();
  CFRelease(v45);
  free(v43);
  if (v46)
  {
    goto LABEL_47;
  }

  v47 = CFDataCreate(0, v10, session_key_length);
  bzero(v10, session_key_length);
  if (v47)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Mutable)
    {
      v49 = Mutable;
      CFDictionarySetValue(Mutable, @"u", v53);
      CFDictionarySetValue(v49, @"M1", v47);
      CFDictionarySetValue(v49, @"o", @"complete");
      if (v22)
      {
        CFDictionarySetValue(v49, @"c", v22);
      }

      v50 = *(a1 + 56);
      if (v50)
      {
        CFDictionarySetValue(v49, @"cpd", v50);
      }

      v51 = CFDictionaryGetValue(*(a1 + 16), @"sc");
      if (isCFData(v51))
      {
        CFDictionarySetValue(v49, @"sc", v51);
      }

      CFRelease(v47);
      *a3 = v49;
      result = 1;
      v19 = stateClientNeg3;
      goto LABEL_17;
    }

    setErrorOOM(a4);
    CFRelease(v47);
  }

  else
  {
LABEL_47:
    setErrorOOM(a4);
  }

LABEL_16:
  result = 0;
  v19 = stateInvalid;
LABEL_17:
  *(a1 + 96) = v19;
LABEL_18:
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t validateProtocolName(uint64_t a1, CFStringRef theString, const void **a3)
{
  if (CFStringFind(theString, @",", 0).location != -1)
  {
    setError(a3, 3, 0, 0, @"protocol with , not supporteted");
LABEL_5:
    result = 0;
    *(a1 + 96) = stateInvalid;
    return result;
  }

  if (CFStringFind(theString, @"|", 0).location != -1)
  {
    setError(a3, 3, 0, 0, @"protocol with | not supporteted");
    goto LABEL_5;
  }

  return 1;
}

BOOL isCFNumber(_BOOL8 result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    return TypeID == CFGetTypeID(v1);
  }

  return result;
}

const __CFData *stateClientNeg3(uint64_t a1, const __CFDictionary *a2, uint64_t a3, const void **a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = **(a1 + 128);
  v8 = MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v8);
  if (_AIDASOSLog_onceToken != -1)
  {
    _AIDASOSLog_cold_1();
  }

  v9 = _AIDASOSLog_log;
  if (os_log_type_enabled(_AIDASOSLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v40 = "stateClientNeg3";
    v41 = 2112;
    v42 = a2;
    _os_log_impl(&dword_24056C000, v9, OS_LOG_TYPE_INFO, "%{public}s: %@", buf, 0x16u);
  }

  if (!a2)
  {
    v30 = @"client neg3: input dict missing";
LABEL_26:
    v31 = a4;
    v32 = 2;
LABEL_27:
    v33 = 0;
    goto LABEL_28;
  }

  Value = CFDictionaryGetValue(a2, @"M2");
  if (!Value || (v11 = Value, TypeID = CFDataGetTypeID(), TypeID != CFGetTypeID(v11)))
  {
    v30 = @"M2 missing (bad password)";
    goto LABEL_23;
  }

  Length = CFDataGetLength(v11);
  v14 = *(a1 + 104);
  if (Length != ccsrp_get_session_key_length())
  {
    v30 = @"M2 wrong size";
    goto LABEL_26;
  }

  v15 = *(a1 + 104);
  CFDataGetBytePtr(v11);
  if ((ccsrp_client_verify_session() & 1) == 0)
  {
    v30 = @"server passed bad M2";
    goto LABEL_32;
  }

  addStringToNegProt(a1, @"|");
  v16 = CFDictionaryGetValue(a2, @"spd");
  if (v16)
  {
    v17 = CFDataGetTypeID();
    if (v17 == CFGetTypeID(v16))
    {
      addDataToNegProt(a1, v16);
    }
  }

  addStringToNegProt(a1, @"|");
  v18 = CFDictionaryGetValue(*(a1 + 16), @"sc");
  if (v18)
  {
    v19 = v18;
    v20 = CFDataGetTypeID();
    if (v20 == CFGetTypeID(v19))
    {
      addDataToNegProt(a1, v19);
    }
  }

  addStringToNegProt(a1, @"|");
  v21 = CFDictionaryGetValue(a2, @"np");
  if (v21)
  {
    v22 = v21;
    v23 = CFDataGetTypeID();
    if (v23 == CFGetTypeID(v22))
    {
      v24 = CFDataGetLength(v22);
      v25 = *(a1 + 128);
      if (v24 != *v25)
      {
        v38 = CFDataGetLength(v22);
        setError(a4, 2, 0, 0, @"NegProto hash too short: %d", v38);
        goto LABEL_29;
      }

      (*(v25 + 56))(v25, *(a1 + 136), &buf[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
      v26 = SRPCreateSessionKey(a1, "HMAC key:");
      if (!v26)
      {
        setErrorOOM(a4);
        goto LABEL_29;
      }

      v27 = v26;
      v28 = *(a1 + 128);
      CFDataGetLength(v26);
      CFDataGetBytePtr(v27);
      cchmac();
      CFRelease(v27);
      v29 = **(a1 + 128);
      CFDataGetBytePtr(v22);
      if (cc_cmp_safe())
      {
        v30 = @"NegotationProtection HMAC invalid";
LABEL_32:
        v31 = a4;
        v32 = 5;
        goto LABEL_27;
      }

      goto LABEL_33;
    }

    v30 = @"neg proto field missing";
LABEL_23:
    v31 = a4;
    v32 = 2;
    v33 = a2;
LABEL_28:
    setError(v31, v32, v33, 0, v30);
LABEL_29:
    result = 0;
    v35 = stateInvalid;
    goto LABEL_30;
  }

LABEL_33:
  if (!v16 || (result = CreateDecryptedData(a1, v16, a4), v35 = stateInvalid, result) && (v37 = result, *(a1 + 64) = CFPropertyListCreateWithData(0, result, 0, 0, a4), CFRelease(v37), result = isCFDictionary(*(a1 + 64)), v35 = stateInvalid, result))
  {
    result = 1;
    v35 = stateDone;
  }

LABEL_30:
  *(a1 + 96) = v35;
  v36 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t addDataToNegProt(uint64_t a1, CFDataRef theData)
{
  CFDataGetLength(theData);
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  ccdigest_update();
  v7 = *(a1 + 128);
  v6 = *(a1 + 136);
  CFDataGetLength(theData);
  CFDataGetBytePtr(theData);
  return ccdigest_update();
}

__CFData *CreateDecryptedData(uint64_t a1, const __CFData *a2, const void **a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = ccaes_cbc_decrypt_mode();
  if (CFDataGetLength(a2) % v6[1])
  {
    setError(a3, 5, 0, 0, @"Encrypted PKCS7 padded data not on block aligned");
LABEL_11:
    Mutable = 0;
LABEL_12:
    *(a1 + 96) = stateInvalid;
    goto LABEL_13;
  }

  v7 = SRPCreateSessionKey(a1, "extra data key:");
  if (!v7)
  {
LABEL_10:
    setErrorOOM(a3);
    goto LABEL_11;
  }

  v8 = v7;
  if (CFDataGetLength(v7) <= 0x1F || (v9 = SRPCreateSessionKey(a1, "extra data iv:")) == 0)
  {
    CFRelease(v8);
    goto LABEL_10;
  }

  v10 = v9;
  Length = CFDataGetLength(a2);
  Mutable = CFDataCreateMutable(0, Length);
  if (!Mutable)
  {
    CFRelease(v8);
    CFRelease(v10);
    setErrorOOM(a3);
    goto LABEL_12;
  }

  v13 = CFDataGetLength(a2);
  CFDataSetLength(Mutable, v13);
  v14 = (v6[1] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v15);
  CFDataGetBytePtr(v10);
  v16 = cccbc_set_iv();
  v17 = (*v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v16);
  CFDataGetBytePtr(v8);
  cccbc_init();
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  CFDataGetMutableBytePtr(Mutable);
  v18 = ccpad_pkcs7_decrypt();
  if (v18 >= CFDataGetLength(a2))
  {
    CreateDecryptedData_cold_1();
  }

  CFDataSetLength(Mutable, v18);
  CFRelease(v10);
  CFRelease(v8);
LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
  return Mutable;
}

uint64_t stateServerNeg2(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3, const void **a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 104);
  session_key_length = ccsrp_get_session_key_length();
  v10 = MEMORY[0x28223BE20](session_key_length);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = **(a1 + 128);
  v13 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  if (_AIDASOSLog_onceToken != -1)
  {
    _AIDASOSLog_cold_1();
  }

  v16 = _AIDASOSLog_log;
  if (os_log_type_enabled(_AIDASOSLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 136446466;
    v48 = "stateServerNeg2";
    v49 = 2112;
    v50 = a2;
    _os_log_impl(&dword_24056C000, v16, OS_LOG_TYPE_INFO, "%{public}s: %@", buf, 0x16u);
  }

  if (!a2)
  {
    setError(a4, 2, 0, 0, @"server neg2: input dict missing");
    goto LABEL_21;
  }

  v46 = a3;
  Value = CFDictionaryGetValue(a2, @"M1");
  if (!Value || (v18 = Value, TypeID = CFDataGetTypeID(), TypeID != CFGetTypeID(v18)))
  {
    setError(a4, 2, 0, 0, @"M1 missing");
    goto LABEL_21;
  }

  Length = CFDataGetLength(v18);
  v21 = *(a1 + 104);
  if (Length != ccsrp_get_session_key_length())
  {
    setError(a4, 2, 0, 0, @"M1 wrong size");
    goto LABEL_21;
  }

  v22 = *(a1 + 104);
  CFDataGetBytePtr(v18);
  if ((ccsrp_server_verify_session() & 1) == 0)
  {
    setError(a4, 2, 0, 0, @"session bad");
    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
LABEL_24:
    setErrorOOM(a4);
    goto LABEL_21;
  }

  v24 = Mutable;
  v25 = CFDataCreate(0, v11, session_key_length);
  bzero(v11, session_key_length);
  if (!v25)
  {
    goto LABEL_23;
  }

  CFDictionarySetValue(v24, @"M2", v25);
  CFRelease(v25);
  addStringToNegProt(a1, @"|");
  v26 = *(a1 + 160);
  if (!v26)
  {
    goto LABEL_27;
  }

  EncryptedData = v26(*(a1 + 24), *(a1 + 168));
  if (!isCFDictionary(EncryptedData))
  {
    if (!EncryptedData)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  Data = CFPropertyListCreateData(0, EncryptedData, kCFPropertyListXMLFormat_v1_0, 0, 0);
  *(a1 + 64) = EncryptedData;
  if (!Data)
  {
LABEL_23:
    CFRelease(v24);
    goto LABEL_24;
  }

  v29 = Data;
  EncryptedData = CreateEncryptedData(a1, Data, a4);
  CFRelease(v29);
  if (!EncryptedData)
  {
    CFRelease(v24);
    result = 0;
    goto LABEL_22;
  }

  CFDictionarySetValue(v24, @"spd", EncryptedData);
  addDataToNegProt(a1, EncryptedData);
LABEL_26:
  CFRelease(EncryptedData);
LABEL_27:
  v32 = v24;
  addStringToNegProt(a1, @"|");
  v33 = CFDictionaryGetValue(a2, @"sc");
  v34 = CFDictionaryGetValue(*(a1 + 16), @"sc");
  v35 = v34;
  if (!v33)
  {
    if (!v34)
    {
      goto LABEL_35;
    }

    CFRelease(v24);
    setError(a4, 2, 0, 0, @"server certificate field is missing from client");
LABEL_21:
    result = 0;
    *(a1 + 96) = stateInvalid;
    goto LABEL_22;
  }

  v36 = CFDataGetTypeID();
  if (v36 != CFGetTypeID(v33))
  {
    CFRelease(v32);
    setError(a4, 2, 0, 0, @"server certificate field is not a data element");
    goto LABEL_21;
  }

  v24 = v32;
  if (isCFData(v35) && !CFEqual(v35, v33) && !*(a1 + 80))
  {
    CFRelease(v32);
    setError(a4, 2, 0, 0, @"server certificate field is not a same");
    goto LABEL_21;
  }

  addDataToNegProt(a1, v33);
LABEL_35:
  addStringToNegProt(a1, @"|");
  v37 = *(a1 + 136);
  (*(*(a1 + 128) + 56))();
  v38 = SRPCreateSessionKey(a1, "HMAC key:");
  if (!v38)
  {
    setErrorOOM(a4);
    v44 = v24;
LABEL_45:
    CFRelease(v44);
    goto LABEL_21;
  }

  v39 = v38;
  v40 = *(a1 + 128);
  CFDataGetLength(v38);
  CFDataGetBytePtr(v39);
  cchmac();
  CFRelease(v39);
  v41 = CFDataCreate(0, v15, v12);
  if (!v41)
  {
    setErrorOOM(a4);
    v44 = v32;
    goto LABEL_45;
  }

  v42 = v41;
  CFDictionarySetValue(v32, @"np", v41);
  CFRelease(v42);
  *v46 = v32;
  if (_AIDASOSLog_onceToken != -1)
  {
    stateServerNeg2_cold_2();
  }

  v43 = _AIDASOSLog_log;
  if (os_log_type_enabled(_AIDASOSLog_log, OS_LOG_TYPE_INFO))
  {
    *buf = 136446210;
    v48 = "stateServerNeg2";
    _os_log_impl(&dword_24056C000, v43, OS_LOG_TYPE_INFO, "%{public}s: auth done", buf, 0xCu);
  }

  *(a1 + 96) = stateDone;
  result = 1;
LABEL_22:
  v31 = *MEMORY[0x277D85DE8];
  return result;
}

const void *AppleIDAuthSupportGSRequestCopyResponse(void *a1, const __CFDictionary *cf, const void **a3)
{
  if (!a1[4])
  {
    v7 = GSRequestCopyResponse(a1, "2SV-c2s", "2SV-s2c", @"2sv-auth", cf, a3);
    if (!v7)
    {
      return 0;
    }

    v8 = v7;
    Value = CFDictionaryGetValue(v7, @"new-t");
    if (!isCFDictionary(Value))
    {
      goto LABEL_10;
    }

    v10 = a1[4];
    if (v10)
    {
      CFRelease(v10);
    }

    Token = _AppleIDAuthSupportCreateToken(Value, *(a1[3] + 48), *(a1[3] + 40));
    a1[4] = Token;
    if (!Token)
    {
      setErrorOOM(a3);
    }

    else
    {
LABEL_10:
      v12 = CFDictionaryGetValue(v8, @"new-app-tokens");
      if (isCFDictionary(v12))
      {
        v13 = a1[5];
        if (v13)
        {
          CFRelease(v13);
        }

        a1[5] = CFRetain(v12);
      }

      v14 = a1[8];
      if (v14)
      {
        CFRelease(v14);
      }

      v4 = CFDictionaryGetValue(v8, @"BML");
      if (isCFDictionary(v4))
      {
        CFRetain(v4);
LABEL_20:
        CFRelease(v8);
        return v4;
      }
    }

    v4 = 0;
    goto LABEL_20;
  }

  setError(a3, 5, 0, 0, @"Already have a new token");
  return 0;
}

const __CFDictionary *GSRequestCopyResponse(uint64_t a1, const char *a2, const char *a3, const void *a4, const __CFDictionary *cf, const void **a6)
{
  v7 = cf;
  error = 0;
  if (*(a1 + 64))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, cf);
    if (!MutableCopy)
    {
LABEL_32:
      setErrorOOM(a6);
      Data = 0;
      goto LABEL_20;
    }

    v13 = MutableCopy;
    CFDictionarySetValue(MutableCopy, @"ServerState", *(a1 + 64));
    v7 = v13;
  }

  else
  {
    CFRetain(cf);
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    goto LABEL_32;
  }

  v15 = Mutable;
  CFDictionarySetValue(Mutable, @"o", a4);
  if ((allowSkipSettingOnInternalHardware(@"AppleIDAuthSupportNoEncryption", *(a1 + 16)) & 1) != 0 || (v16 = *(a1 + 24)) == 0)
  {
    Data = CFPropertyListCreateData(0, v7, kCFPropertyListXMLFormat_v1_0, 0, 0);
    if (!Data)
    {
      setErrorOOM(a6);
      goto LABEL_20;
    }

    v18 = 1;
    v19 = kAppleIDAuthSupportClearData;
  }

  else
  {
    Data = _AppleIDAuthSupportCreateEncryptedData(*(v16 + 24), a2, v7);
    if (!Data)
    {
LABEL_20:
      DecryptedData = 0;
      goto LABEL_25;
    }

    v18 = 0;
    v19 = kAppleIDAuthSupportData;
  }

  CFDictionarySetValue(v15, *v19, Data);
  v20 = *(a1 + 24);
  if (v20)
  {
    CFDictionarySetValue(v15, @"t", *(v20 + 16));
    CFDictionarySetValue(v15, @"c", *(*(a1 + 24) + 32));
  }

  CFRelease(Data);
  Data = (*(a1 + 72))(0, 0, *(a1 + 56), v15, &error);
  CFRelease(v15);
  if (!Data)
  {
    setError(a6, 6, 0, error, @"Failed to get response from server");
    goto LABEL_20;
  }

  if (!v18)
  {
    Value = CFDictionaryGetValue(Data, @"data");
    if (isCFData(Value))
    {
      DecryptedData = _AppleIDAuthSupportCreateDecryptedData(*(*(a1 + 24) + 24), a3, Value, a6);
      if (!DecryptedData)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    goto LABEL_34;
  }

  v21 = CFDictionaryGetValue(Data, @"clearData");
  if (!isCFData(v21))
  {
LABEL_34:
    setError(a6, 2, 0, 0, @"data missing for server request");
    goto LABEL_20;
  }

  DecryptedData = CFPropertyListCreateWithData(0, v21, 0, 0, &error);
  if (!DecryptedData)
  {
    setError(a6, 5, 0, error, @"failed to decode data");
    goto LABEL_25;
  }

LABEL_23:
  v24 = CFDictionaryGetValue(DecryptedData, @"ServerState");
  *(a1 + 64) = v24;
  if (v24)
  {
    CFRetain(v24);
  }

LABEL_25:
  if (v7)
  {
    CFRelease(v7);
  }

  if (Data)
  {
    CFRelease(Data);
  }

  if (error)
  {
    CFRelease(error);
  }

  return DecryptedData;
}

uint64_t AppleIDAuthSupportGSOperation(const void *a1, const void *a2, const __CFDictionary *a3, const void *a4, const void *a5, const void **a6)
{
  result = AppleIDAuthSupportGSCreateContext(a1, a4, a5, a6);
  if (result)
  {
    v10 = result;
    v11 = GSRequestCopyResponse(result, "gs-operation-c2s", "gs-operation-s2c", a2, a3, a6);
    CFRelease(v10);
    return v11;
  }

  return result;
}

void allowSkipSettingOnInternalHardware_cold_1(char a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136446466;
  v4 = "allowSkipSettingOnInternalHardware";
  v5 = 1024;
  v6 = a1 & 1;
  _os_log_debug_impl(&dword_24056C000, a2, OS_LOG_TYPE_DEBUG, "%{public}s: isInternal: %d", &v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

void __AppleIDAuthSupportGetClientInfo_block_invoke()
{
  v0 = _CFCopySystemVersionDictionary();
  if (v0)
  {
    v1 = v0;
    Value = CFDictionaryGetValue(v0, *MEMORY[0x277CBEC70]);
    v3 = CFDictionaryGetValue(v1, *MEMORY[0x277CBEC88]);
    v4 = CFDictionaryGetValue(v1, *MEMORY[0x277CBEC78]);
    v5 = 0;
    if (Value && v3 && v4)
    {
      v5 = CFStringCreateWithFormat(0, 0, @"%@;%@;%@", v4, v3, Value);
    }

    CFRelease(v1);
  }

  else
  {
    v5 = 0;
  }

  AppleIDAuthSupportGetClientInfo_clientInfo = CFStringCreateWithFormat(0, 0, @"<%@> <%@> <%@>", @"iOS", v5, @"AppleIDAuthSupport");
  CFRelease(@"iOS");
  CFRelease(v5);

  CFRelease(@"AppleIDAuthSupport");
}

void *AppleIDAuthSupportTokenCreateWithExternalizedVersion(CFDataRef data, CFErrorRef *error)
{
  v3 = CFPropertyListCreateWithData(0, data, 0, 0, error);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CFGetTypeID(v3);
  if (v5 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(v4, @"GsIdmsToken");
    if (Value)
    {
      v7 = Value;
      v8 = CFDictionaryGetValue(v4, @"sk");
      if (v8)
      {
        v9 = v8;
        v10 = CFDictionaryGetValue(v4, @"c");
        if (v10)
        {
          v11 = v10;
          v12 = CFDictionaryGetValue(v4, @"adsid");
          if (v12)
          {
            v13 = v12;
            v14 = CFDictionaryGetValue(v4, @"u");
            if (v14)
            {
              v15 = v14;
              if (_MergedGlobals != -1)
              {
                dispatch_once(&_MergedGlobals, &__block_literal_global_228);
              }

              Instance = _CFRuntimeCreateInstance();
              if (Instance)
              {
                Instance[2] = CFRetain(v7);
                Instance[4] = CFRetain(v11);
                Instance[3] = CFRetain(v9);
                Instance[5] = CFRetain(v13);
                Instance[6] = CFRetain(v15);
              }

              else
              {
                setErrorOOM(error);
              }

              goto LABEL_12;
            }

            setError(error, 2, 0, 0, @"Missing username key");
          }

          else
          {
            setError(error, 2, 0, 0, @"Missing aDSID key");
          }
        }

        else
        {
          setError(error, 2, 0, 0, @"Missing cookie key");
        }
      }

      else
      {
        setError(error, 2, 0, 0, @"Missing session key");
      }
    }

    else
    {
      setError(error, 2, 0, 0, @"Missing GS iDMS key");
    }
  }

  else
  {
    setError(error, 2, 0, 0, @"token is not a property list");
  }

  Instance = 0;
LABEL_12:
  CFRelease(v4);
  return Instance;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x28210FD68](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}