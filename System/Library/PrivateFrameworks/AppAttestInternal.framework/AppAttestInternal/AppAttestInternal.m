uint64_t AppAttest_AppAttestation_IsSupported()
{
  v0 = objc_alloc_init(AppAttestEligibilityManager);
  v1 = [(AppAttestEligibilityManager *)v0 isSupportedHardware];

  return v1;
}

uint64_t AppAttest_AppAttestation_IsEligibleApplication(_OWORD *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(AppAttestEligibilityManager);
  v3 = a1[1];
  *v16 = *a1;
  *&v16[16] = v3;
  if ([(AppAttestEligibilityManager *)v2 isEligibleApplicationFor:v16]|| (v4 = a1[1], *v16 = *a1, *&v16[16] = v4, [(AppAttestEligibilityManager *)v2 isEligibleDaemonFor:v16]) || (v5 = a1[1], *v16 = *a1, *&v16[16] = v5, [(AppAttestEligibilityManager *)v2 isEligibleApplicationExtensionFor:v16]))
  {
    v6 = 1;
  }

  else
  {
    if (AAInternalLogSystem_onceToken_7 != -1)
    {
      AppAttest_AppAttestation_IsEligibleApplication_cold_1();
    }

    v9 = AAInternalLogSystem_log_7;
    if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
    {
      v10 = 0;
      v11 = 0;
      v12 = 47;
      do
      {
        v13 = &aLibraryCachesC_7[v10];
        if (v12 == 47)
        {
          v11 = &aLibraryCachesC_7[v10];
        }

        v12 = v13[1];
        if (!v13[1])
        {
          break;
        }
      }

      while (v10++ < 0xFFF);
      if (v11)
      {
        v15 = v11 + 1;
      }

      else
      {
        v15 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
      }

      *v16 = 136315394;
      *&v16[4] = v15;
      *&v16[12] = 1024;
      *&v16[14] = 77;
      _os_log_impl(&dword_226177000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client is of ineligible type.", v16, 0x12u);
    }

    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

__n128 sub_226178ECC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_226178ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD80, &qword_2261E5778);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226178F94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD80, &qword_2261E5778);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226179048()
{
  v1 = *(v0 + 32);

  sub_22619C840(*(v0 + 48), *(v0 + 56));
  sub_22619C840(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226179098(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_22619C830();
  }

  return result;
}

id sub_2261790A8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_22619C838();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_2261790B8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2261790FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2261E3C3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2261791BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2261E3C3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226179278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2261E3C3C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_22617933C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2261E3C3C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2261793FC()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_22617944C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  return MEMORY[0x2821FE8E8](v0, 129, 7);
}

uint64_t sub_2261794B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2261794F4()
{
  v1 = *(v0 + 32);

  sub_22619C840(*(v0 + 48), *(v0 + 56));
  sub_22619C840(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_226179544()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22617958C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_2261795CC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_22619C830();
  }

  else
  {
  }
}

uint64_t sub_2261795DC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t __AAInternalLogSystem_block_invoke()
{
  AAInternalLogSystem_log = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

uint64_t __AAInternalLogSystem_block_invoke_0()
{
  AAInternalLogSystem_log_0 = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

id sendServerRequestWithError(void *a1, void *a2)
{
  v6 = a1;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v65[3] = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy_;
  v63 = __Block_byref_object_dispose_;
  v64 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy_;
  v57 = __Block_byref_object_dispose_;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  if (!v6)
  {
    v28 = createAppAttestError("sendServerRequestWithError", 120, -2, 0, @"Invalid input.", v3, v4, v5, v37);
LABEL_10:
    v29 = v48[5];
    v48[5] = v28;

    v26 = 0;
    v27 = 0;
    v22 = 0;
    v15 = 0;
    goto LABEL_11;
  }

  v7 = dispatch_semaphore_create(0);
  v8 = v54[5];
  v54[5] = v7;

  if (!v54[5])
  {
    v28 = createAppAttestError("sendServerRequestWithError", 126, -1, 0, @"Failed to create semaphore.", v9, v10, v11, v37);
    goto LABEL_10;
  }

  v12 = [PinnedUrlDelegate alloc];
  v13 = [v6 URL];
  v14 = [v13 host];
  v15 = [(PinnedUrlDelegate *)v12 initWithHost:v14];

  if (!v15)
  {
    v28 = createAppAttestError("sendServerRequestWithError", 132, -1, 0, @"Failed to create delegate.", v16, v17, v18, v37);
    goto LABEL_10;
  }

  v22 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  if (v22)
  {
    v26 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v22 delegate:v15 delegateQueue:0];
    if (v26)
    {
      v37 = MEMORY[0x277D85DD0];
      v38 = 3221225472;
      v39 = __sendServerRequestWithError_block_invoke;
      v40 = &unk_2785850F0;
      v43 = v65;
      v44 = &v47;
      v41 = v6;
      v22 = v22;
      v42 = v22;
      v45 = &v59;
      v46 = &v53;
      v27 = [v26 dataTaskWithRequest:v41 completionHandler:&v37];

      [v27 resume];
      dispatch_semaphore_wait(v54[5], 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v35 = createAppAttestError("sendServerRequestWithError", 144, -1, 0, @"Failed to create session.", v23, v24, v25, v37);
      v36 = v48[5];
      v48[5] = v35;

      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    v33 = createAppAttestError("sendServerRequestWithError", 138, -1, 0, @"Failed to query session configuration.", v19, v20, v21, v37);
    v34 = v48[5];
    v48[5] = v33;

    v26 = 0;
    v27 = 0;
    v22 = 0;
  }

LABEL_11:
  [v26 invalidateAndCancel];
  v30 = v60[5];
  if (a2 && !v30)
  {
    *a2 = v48[5];
    v30 = v60[5];
  }

  v31 = v30;

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(v65, 8);

  return v31;
}

void sub_22617AB34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 144), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __sendServerRequestWithError_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  *(*(*(a1 + 48) + 8) + 24) = [v10 statusCode];
  v11 = [v10 valueForHTTPHeaderField:@"Date"];
  v12 = [v10 valueForHTTPHeaderField:@"X-B3-TraceId"];
  v16 = v12;
  v17 = *(*(*(a1 + 48) + 8) + 24);
  if (!v7 || v9)
  {
    if (!v17)
    {
      v18 = createAppAttestError("sendServerRequestWithError_block_invoke", 158, -7, v9, @"Network communication error", v13, v14, v15, v46);
      v19 = *(a1 + 56);
      goto LABEL_28;
    }

    v20 = [*(a1 + 32) URL];
    v21 = [*(a1 + 40) connectionProxyDictionary];
    v48 = [MEMORY[0x277CCAD50] description];
    v49 = *(*(*(a1 + 48) + 8) + 24);
    v25 = createAppAttestError("sendServerRequestWithError_block_invoke", 160, -1, v9, @"Failed to send HTTP request to %@ (proxy settings: %@ // session: %@): %ld", v22, v23, v24, v20);
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  else
  {
    if (v17 == 200)
    {
      v18 = [MEMORY[0x277CBEA90] dataWithData:v7];
      v19 = *(a1 + 64);
LABEL_28:
      v43 = *(v19 + 8);
      v44 = *(v43 + 40);
      *(v43 + 40) = v18;

      goto LABEL_29;
    }

    if (v11 && v12)
    {
      if (AAInternalLogSystem_onceToken_1 != -1)
      {
        [PinnedUrlDelegate URLSession:didReceiveChallenge:completionHandler:];
      }

      v28 = AAInternalLogSystem_log_1;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 0;
        v30 = 0;
        v31 = 47;
        do
        {
          v32 = &aLibraryCachesC_1[v29];
          if (v31 == 47)
          {
            v30 = &aLibraryCachesC_1[v29];
          }

          v31 = v32[1];
          if (!v32[1])
          {
            break;
          }
        }

        while (v29++ < 0xFFF);
        if (v30)
        {
          v34 = v30 + 1;
        }

        else
        {
          v34 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Core/support/AnonymousAttestation.m";
        }

        v35 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 136316162;
        v51 = v34;
        v52 = 1024;
        v53 = 166;
        v54 = 2048;
        v55 = v35;
        v56 = 2080;
        v57 = [v11 UTF8String];
        v58 = 2080;
        v59 = [v16 UTF8String];
        _os_log_impl(&dword_226177000, v28, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received invalid server response. { statusCode=%ld, serverTimestamp=%s, traceId=%s }", buf, 0x30u);
      }

      v17 = *(*(*(a1 + 48) + 8) + 24);
    }

    if ((v17 - 500) < 0x64)
    {
      v36 = -7;
    }

    else
    {
      v36 = -6;
    }

    v47 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:v17];
    v40 = createAppAttestError("sendServerRequestWithError_block_invoke", 176, v36, 0, @"Server error: %ld (%@)", v37, v38, v39, v17);
    v41 = *(*(a1 + 56) + 8);
    v42 = *(v41 + 40);
    *(v41 + 40) = v40;
  }

LABEL_29:
  dispatch_semaphore_signal(*(*(*(a1 + 72) + 8) + 40));

  v45 = *MEMORY[0x277D85DE8];
}

BOOL AppAttest_Common_ValidateBikParameters(__SecKey *a1)
{
  if (!a1)
  {
    v7 = 0;
    v6 = 0;
    v4 = 0;
    v5 = 0;
    goto LABEL_9;
  }

  v1 = SecKeyCopyAttributes(a1);
  Value = CFDictionaryGetValue(v1, *MEMORY[0x277CDC158]);
  v3 = isNSString(Value);
  v4 = v3;
  if (v3 && ![v3 compare:*MEMORY[0x277CDC170]])
  {
    v9 = CFDictionaryGetValue(v1, *MEMORY[0x277CDC018]);
    v10 = isNSNumber(v9);
    v6 = v10;
    if (v10 && ([v10 unsignedLongValue] == 256 || objc_msgSend(v6, "unsignedLongValue") == 384))
    {
      v11 = CFDictionaryGetValue(v1, *MEMORY[0x277CDC028]);
      v12 = isNSString(v11);
      v7 = v12;
      v5 = v12 && (![v12 compare:*MEMORY[0x277CDC040]] || !objc_msgSend(v7, "compare:", *MEMORY[0x277CDC048]));
      goto LABEL_6;
    }

    v5 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 0;
LABEL_6:
  if (v1)
  {
    CFRelease(v1);
  }

LABEL_9:

  return v5;
}

id getSHA256(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = isNSData(v1);

  if (v2)
  {
    if (CC_SHA256([v1 bytes], objc_msgSend(v1, "length"), md))
    {
      v2 = [MEMORY[0x277CBEA90] dataWithBytes:md length:32];
    }

    else
    {
      v2 = 0;
    }
  }

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void AppAttest_Common_AttestKey(unsigned int a1, int a2, void *a3, __SecKey *a4, void *a5, void *a6, void *a7)
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v19 = a7;
  if (a1 == 1)
  {
    v20 = createAppAttestError("AppAttest_Common_AttestKey", 315, -1, 0, @"Invalid request type.", v16, v17, v18, v26);
    if (!v19)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v27 = 0;
  v21 = createAnonymousAttestationRequest(a1, a2, v13, a4, v14, v15, &v27);
  v20 = v27;
  if (v21)
  {
    AppAttest_Common_AttestKeyRequest(a1, a2, v21, a4, v19, 60.0);
  }

  else
  {
    v25 = createAppAttestError("AppAttest_Common_AttestKey", 312, -1, v20, @"Failed to copy certificate info.", v22, v23, v24, v26);

    v20 = v25;
    if (v19)
    {
LABEL_7:
      (*(v19 + 2))(v19, 0, v20);
    }
  }

LABEL_8:
}

id createAnonymousAttestationRequest(int a1, int a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v97[4] = *MEMORY[0x277D85DE8];
  v89 = a3;
  v12 = a5;
  v13 = a6;
  v14 = isNSData(v12);

  if (!v14)
  {
    v40 = @"AuthenticatorData cannot be empty.";
    v41 = 483;
LABEL_12:
    v42 = -2;
LABEL_13:
    v43 = createAppAttestError("createAnonymousAttestationRequest", v41, v42, 0, v40, v15, v16, v17, cf);
    v87 = 0;
    v88 = 0;
    v20 = 0;
LABEL_14:
    v39 = 0;
    goto LABEL_15;
  }

  v14 = isNSData(v13);

  if (!v14)
  {
    v40 = @"Nonce cannot be empty.";
    v41 = 488;
    goto LABEL_12;
  }

  v14 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v12];
  [v14 appendData:v13];
  v18 = getSHA256(v14);
  if (!v18)
  {
    v40 = @"Failed to generate nonce.";
    v41 = 497;
    v42 = -1;
    goto LABEL_13;
  }

  v19 = v18;
  v91 = 0;
  v20 = getChipIDECID(&v91);
  v24 = v91;
  v87 = v19;
  if (!v20)
  {
    v43 = createAppAttestError("createAnonymousAttestationRequest", 503, -1, v24, @"Failed to generate chip/ecid", v21, v22, v23, cf);

    v88 = 0;
    goto LABEL_14;
  }

  v88 = v20;
  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v20 = v25;
  if (!v25)
  {
    v43 = createAppAttestError("createAnonymousAttestationRequest", 510, -1, 0, @"Failed to allocate dictionary.", v26, v27, v28, cf);

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    v48 = *MEMORY[0x277D04950];
    v94[0] = &unk_283960E60;
    v49 = *MEMORY[0x277D04928];
    v93[0] = v48;
    v93[1] = v49;
    v92 = *MEMORY[0x277D04920];
    [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
    v50 = v85 = v24;
    v93[2] = *MEMORY[0x277D048F0];
    v94[1] = v50;
    v94[2] = v19;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:v93 count:3];
    v39 = [v51 mutableCopy];

    v24 = v85;
    v25 = [v20 setObject:@"webauthn" forKeyedSubscript:@"requestOrigin"];
    goto LABEL_22;
  }

  if (a1)
  {
    v39 = 0;
    goto LABEL_22;
  }

  v84 = v24;
  v29 = isNSString(v89);

  if (!v29)
  {
    v43 = createAppAttestError("createAnonymousAttestationRequest", 516, -1, v84, @"Incorrect parameters for App Attestation", v30, v31, v32, cf);

    goto LABEL_14;
  }

  v97[0] = &unk_283960E60;
  v33 = *MEMORY[0x277D04928];
  v96[0] = *MEMORY[0x277D04950];
  v96[1] = v33;
  v34 = *MEMORY[0x277D04908];
  v95[0] = *MEMORY[0x277D04918];
  v95[1] = v34;
  v95[2] = *MEMORY[0x277D04920];
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:3];
  v36 = *MEMORY[0x277D048F0];
  v97[1] = v35;
  v97[2] = v19;
  v37 = *MEMORY[0x277D048A8];
  v96[2] = v36;
  v96[3] = v37;
  v97[3] = v89;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:4];
  v39 = [v38 mutableCopy];

  [v20 setObject:@"appattestation" forKeyedSubscript:@"requestOrigin"];
  v25 = [v20 setObject:v89 forKeyedSubscript:@"appID"];
  v24 = v84;
LABEL_22:
  if ((MEMORY[0x22AA788B0](v25) & 1) == 0)
  {
    [v39 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D04948]];
  }

  if (a2 == 1)
  {
    v52 = @"production";
  }

  else
  {
    v52 = @"development";
  }

  [v20 setObject:v52 forKeyedSubscript:@"environment"];
  v90[1] = v24;
  v44 = DeviceIdentityCopyAttestationDictionary();
  v53 = v24;
  v54 = v24;
  v55 = v53;

  if (v44)
  {
    v90[0] = 0;
    v45 = [MEMORY[0x277CCAC58] dataWithPropertyList:v44 format:100 options:0 error:v90];
    v43 = v90[0];

    if (v45)
    {
      v59 = [v45 base64EncodedStringWithOptions:0];
      [v20 setObject:v59 forKeyedSubscript:@"attUIKtoBIK"];

      v60 = [v88 base64EncodedStringWithOptions:0];
      [v20 setObject:v60 forKeyedSubscript:@"chipIDECID"];

      v61 = [v12 base64EncodedStringWithOptions:0];
      [v20 setObject:v61 forKeyedSubscript:@"authenticatorData"];

      v62 = [v13 base64EncodedStringWithOptions:0];
      [v20 setObject:v62 forKeyedSubscript:@"clientDataHash"];

      if (!os_variant_allows_internal_security_policies())
      {
LABEL_48:
        v47 = v20;
        v20 = v47;
        goto LABEL_42;
      }

      v63 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
      if (v63)
      {
        cfa = v63;
        v64 = SecTaskCopyValueForEntitlement(v63, @"com.apple.appattest.daemoncheck", 0);
        v65 = isNSNumber(v64);
        v86 = v64;
        if (v65)
        {
          v66 = v65;
          v67 = [v64 BOOLValue];

          v68 = v67 ^ 1;
        }

        else
        {
          v68 = 0;
        }

        v81 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
        if (([v81 BOOLForKey:@"AAADisableTracking"] & 1) != 0 || v68)
        {
          [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{@"DEBUG_notracking", cfa}];
        }

        CFRelease(cfa);

        goto LABEL_48;
      }

      v74 = @"Failed to create self task.";
      v75 = 587;
      v76 = 0;
    }

    else
    {
      v74 = @"Could not convert dictionary to xml data.";
      v75 = 572;
      v76 = v43;
    }

    v77 = createAppAttestError("createAnonymousAttestationRequest", v75, -1, v76, v74, v56, v57, v58, cf);

    v43 = v77;
    if (!a7)
    {
      goto LABEL_41;
    }

    goto LABEL_16;
  }

  if ([v55 code] == -3)
  {
    v72 = 561;
    v73 = -4;
  }

  else
  {
    v72 = 563;
    v73 = -1;
  }

  v43 = createAppAttestError("createAnonymousAttestationRequest", v72, v73, v55, @"Failed to copy attestation dictionary.", v69, v70, v71, cf);

LABEL_15:
  v44 = 0;
  v45 = 0;
  if (!a7)
  {
LABEL_41:
    v47 = 0;
    goto LABEL_42;
  }

LABEL_16:
  v46 = v43;
  v47 = 0;
  *a7 = v43;
LABEL_42:
  v78 = v47;

  v79 = *MEMORY[0x277D85DE8];
  return v47;
}

void AppAttest_Common_AttestKeyRequest(unsigned int a1, int a2, void *a3, __SecKey *a4, void *a5, double a6)
{
  v11 = a3;
  v15 = a5;
  error = 0;
  if (!v11)
  {
    v21 = createAppAttestError("AppAttest_Common_AttestKeyRequest", 360, -1, 0, @"Failed to copy certificate info.", v12, v13, v14, v50);
    a4 = 0;
LABEL_8:
    v22 = 0;
    v16 = 0;
LABEL_32:
    v35 = 0;
    v46 = 0;
    v31 = 0;
    v26 = 0;
    goto LABEL_33;
  }

  if (!a4)
  {
    v21 = createAppAttestError("AppAttest_Common_AttestKeyRequest", 365, -1, 0, @"Invalid key.", v12, v13, v14, v50);
    goto LABEL_8;
  }

  v58 = 0;
  v16 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v11 options:1 error:&v58];
  v20 = v58;
  if (!v16)
  {
    v21 = createAppAttestError("AppAttest_Common_AttestKeyRequest", 376, -1, v20, @"Failed to convert dictionary to data", v17, v18, v19, v50);

    a4 = 0;
LABEL_31:
    v22 = 0;
    goto LABEL_32;
  }

  if (a1 != 1)
  {
    a4 = SecKeyCreateSignature(a4, *MEMORY[0x277CDC300], v16, &error);
    if (a4)
    {
      goto LABEL_11;
    }

    v21 = createAppAttestError("AppAttest_Common_AttestKeyRequest", 389, -3, 0, @"Failed to generate signature", v23, v24, v25, v50);

    goto LABEL_31;
  }

  a4 = 0;
LABEL_11:
  v54 = v20;
  v26 = objc_alloc_init(MEMORY[0x277CCAB70]);
  [v26 setCachePolicy:0];
  [v26 setTimeoutInterval:a6];
  [v26 setHTTPMethod:@"POST"];
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"application/json"];
  [v26 setValue:v27 forHTTPHeaderField:@"Content-Type"];

  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[__CFData length](v16, "length")];
  [v26 setValue:v28 forHTTPHeaderField:@"Content-Length"];

  [v26 setHTTPBody:v16];
  v29 = objc_alloc(MEMORY[0x277CCACA8]);
  if (a1 > 2)
  {
    v30 = @"???";
  }

  else
  {
    v30 = off_278585110[a1];
  }

  copy_current_process_name();
  v52 = v51 = v30;
  v31 = [v29 initWithFormat:@"AppAttest (%@-132.1) - %@"];

  if (v31)
  {
    if (a4)
    {
      v22 = [(__SecKey *)a4 base64EncodedStringWithOptions:0];
      [v26 setValue:v22 forHTTPHeaderField:@"signature"];
    }

    else
    {
      v22 = 0;
    }

    [v26 setValue:v31 forHTTPHeaderField:@"User-Agent"];
    if (a2 == 1)
    {
      v36 = @"https://register.appattest.apple.com/v1/attest";
    }

    else
    {
      v36 = @"https://register-development.appattest.apple.com/v1/attest";
    }

    v37 = [MEMORY[0x277CBEBC0] URLWithString:v36];
    [v26 setURL:v37];

    if (os_variant_allows_internal_security_policies())
    {
      v38 = objc_alloc(MEMORY[0x277CBEBD0]);
      v39 = [v38 persistentDomainForName:@"com.apple.DeviceCheck"];

      v53 = v39;
      v40 = [v39 objectForKeyedSubscript:@"AAAOverrideURL"];
      v41 = isNSString(v40);

      if (v41)
      {
        v42 = MEMORY[0x277CBEBC0];
        v43 = [v53 objectForKeyedSubscript:@"AAAOverrideURL"];
        v44 = [v42 URLWithString:v43];
        [v26 setURL:v44];
      }
    }

    v45 = objc_autoreleasePoolPush();
    v57 = v54;
    v35 = sendServerRequestWithError(v26, &v57);
    v21 = v57;

    objc_autoreleasePoolPop(v45);
    if (!v35)
    {
      v46 = 0;
      goto LABEL_33;
    }

    v56 = v21;
    v46 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v35 options:1 error:&v56];
    v55 = v56;

    if (v46)
    {
      v21 = v55;
      goto LABEL_33;
    }

    v21 = createAppAttestError("AppAttest_Common_AttestKeyRequest", 446, -6, v55, @"Unable to parse response", v47, v48, v49, v51);
  }

  else
  {
    v21 = createAppAttestError("AppAttest_Common_AttestKeyRequest", 406, -1, 0, @"Failed to create user agent string.", v32, v33, v34, v51);

    v22 = 0;
    v35 = 0;
  }

  v46 = 0;
LABEL_33:
  if (error)
  {
    CFRelease(error);
  }

  if (v15)
  {
    v15[2](v15, v46, v21);
  }
}

void *getChipIDECID(void *a1)
{
  v2 = MGCopyAnswer();
  v3 = isNSNumber(v2);

  if (v3)
  {
    v7 = MGCopyAnswer();
    v8 = isNSNumber(v7);

    if (v8)
    {
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%08llX-%016llX", objc_msgSend(v7, "longLongValue"), objc_msgSend(v2, "longLongValue")];
      v8 = [v3 dataUsingEncoding:4];
      v12 = 0;
      if (!a1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v12 = createAppAttestError("getChipIDECID", 282, -1, 0, @"Failed to retrieve %@.", v9, v10, v11, @"ChipID");
      v3 = 0;
      if (!a1)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = createAppAttestError("getChipIDECID", 272, -1, 0, @"Failed to retrieve %@.", v4, v5, v6, @"UniqueChipID");
    v8 = 0;
    v7 = 0;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  if (!v8)
  {
    v13 = v12;
    *a1 = v12;
  }

LABEL_10:
  v14 = v8;

  return v8;
}

void *createDeviceAttestationRequest(int a1, int a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = isNSDictionary(v8);

  if (!v9)
  {
    v30 = createAppAttestError("createDeviceAttestationRequest", 634, -2, 0, @"Invalid options.", v10, v11, v12, v45);
LABEL_12:
    v21 = 0;
    goto LABEL_16;
  }

  v47 = 0;
  v9 = getChipIDECID(&v47);
  v16 = v47;
  if (!v9)
  {
    v30 = createAppAttestError("createDeviceAttestationRequest", 640, -1, v16, @"Failed to generate chip/ecid", v13, v14, v15, v45);

    goto LABEL_12;
  }

  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = v17;
  if (!v17)
  {
    v31 = @"Failed to allocate dictionary.";
    v32 = 647;
    v33 = 0;
LABEL_15:
    v30 = createAppAttestError("createDeviceAttestationRequest", v32, -1, v33, v31, v18, v19, v20, v45);

LABEL_16:
    v23 = 0;
    if (!a5)
    {
LABEL_23:
      v35 = 0;
      v36 = 0;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if (a1 != 1)
  {
    v31 = @"Invalid request type.";
    v32 = 654;
    v33 = v16;
    goto LABEL_15;
  }

  [v17 setObject:@"enterprise" forKeyedSubscript:@"requestOrigin"];
  if (a2 == 1)
  {
    v22 = @"production";
  }

  else
  {
    v22 = @"development";
  }

  [v21 setObject:v22 forKeyedSubscript:@"environment"];
  v46[1] = v16;
  v23 = DeviceIdentityCopyAttestationDictionary();
  v24 = v16;

  if ([v24 code] == -3)
  {
    v28 = 668;
    v29 = -4;
    goto LABEL_22;
  }

  if (!v23)
  {
    v28 = 673;
    v29 = -1;
LABEL_22:
    v30 = createAppAttestError("createDeviceAttestationRequest", v28, v29, v24, @"Failed to copy attestation dictionary.", v25, v26, v27, v45);

    if (!a5)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  v46[0] = 0;
  v35 = [MEMORY[0x277CCAC58] dataWithPropertyList:v23 format:100 options:0 error:v46];
  v30 = v46[0];

  if (v35)
  {
    v40 = [v35 base64EncodedStringWithOptions:0];
    [v21 setObject:v40 forKeyedSubscript:@"attUIKtoBIK"];

    v41 = [v9 base64EncodedStringWithOptions:0];
    [v21 setObject:v41 forKeyedSubscript:@"chipIDECID"];

    v21 = v21;
    v36 = v21;
    goto LABEL_24;
  }

  v44 = createAppAttestError("createDeviceAttestationRequest", 680, -1, v30, @"Could not convert dictionary to xml data.", v37, v38, v39, v45);

  v30 = v44;
  if (!a5)
  {
    goto LABEL_23;
  }

LABEL_17:
  v34 = v30;
  v35 = 0;
  v36 = 0;
  *a5 = v30;
LABEL_24:
  v42 = v36;

  return v36;
}

uint64_t AppAttest_Common_ValidateEntitlements(void *a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  error = 0;
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  v6 = v2;
  if (!v2)
  {
    v15 = createAppAttestError("AppAttest_Common_ValidateEntitlements", 709, -1, 0, @"Failed to create task.", v3, v4, v5, v31);
    v7 = 0;
    if (!a1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = SecTaskCopyValueForEntitlement(v2, @"com.apple.appattest.spi", &error);
  v8 = isNSNumber(v7);
  if (!v8 || (v9 = v8, v10 = [v7 BOOLValue], v9, (v10 & 1) == 0))
  {
    v17 = error;
    v35 = @"com.apple.appattest.spi";
    v36[0] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v15 = createAppAttestError("AppAttest_Common_ValidateEntitlements", 715, -5, v17, @"Missing required entitlement: %@", v19, v20, v21, v18);

    if (!a1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = SecTaskCopyValueForEntitlement(v6, @"com.apple.security.attestation.access", &error);

  v12 = isNSNumber(v11);
  if (!v12 || (v13 = v12, v14 = [v11 BOOLValue], v13, (v14 & 1) == 0))
  {
    v26 = error;
    v33 = @"com.apple.security.attestation.access";
    v34 = MEMORY[0x277CBEC38];
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v15 = createAppAttestError("AppAttest_Common_ValidateEntitlements", 721, -5, v26, @"Missing required entitlement: %@", v28, v29, v30, v27);

    v7 = v11;
    if (!a1)
    {
LABEL_11:
      v16 = 0;
      v23 = 0;
      if (!v6)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_10:
    v22 = v15;
    *a1 = v15;
    goto LABEL_11;
  }

  v15 = 0;
  v16 = 1;
  v7 = v11;
LABEL_12:
  CFRelease(v6);
  v23 = v16;
LABEL_13:
  if (error)
  {
    CFRelease(error);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

id generateCredentialId(__SecKey *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  error = 0;
  if (!a1)
  {
    v20 = createAppAttestError("generateCredentialId", 749, -1, 0, @"Invalid key.", a6, a7, a8, v23);
    v13 = 0;
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v9 = SecKeyCopyPublicKey(a1);
  v13 = v9;
  if (!v9)
  {
    v20 = createAppAttestError("generateCredentialId", 755, -1, 0, @"Failed to copy RK public key.", v10, v11, v12, v23);
    goto LABEL_8;
  }

  v14 = SecKeyCopyExternalRepresentation(v9, &error);
  v18 = v14;
  if (v14)
  {
    v19 = getSHA256(v14);
    v20 = 0;
    if (!a2)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v20 = createAppAttestError("generateCredentialId", 760, -1, error, @"Failed to encode RK public key as data.", v15, v16, v17, v23);
LABEL_9:
  v19 = 0;
  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!v19)
  {
    v21 = v20;
    *a2 = v20;
  }

LABEL_12:
  if (v13)
  {
    CFRelease(v13);
  }

  if (error)
  {
    CFRelease(error);
  }

  return v19;
}

id generateCredentialIdString(__SecKey *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = 0;
  v9 = generateCredentialId(a1, &v19, a3, a4, a5, a6, a7, a8);
  v13 = v19;
  if (v9)
  {
    v14 = [v9 base64EncodedStringWithOptions:0];
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = createAppAttestError("generateCredentialIdString", 784, -1, 0, @"Failed to copy RK public key.", v10, v11, v12, v18);

    v14 = 0;
    v13 = v15;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (!v14)
  {
    v16 = v13;
    *a2 = v13;
  }

LABEL_7:

  return v14;
}

uint64_t __AAInternalLogSystem_block_invoke_1()
{
  AAInternalLogSystem_log_1 = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

CFTypeRef createReferenceKeyBlob(const void *a1, char a2, void *a3)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CDC040];
  error = 0;
  v7 = MGCopyAnswer();
  v8 = isNSNumber(v7);

  if (!v8)
  {
    v22 = createAppAttestError("createReferenceKeyBlob", 44, -1, 0, @"Failed to retrieve PKA state.", v9, v10, v11, v39);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v14 = 0;
    if (!a3)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if ([v7 BOOLValue] && (a2 & 1) == 0)
  {
    v12 = *MEMORY[0x277CDC048];

    v6 = v12;
  }

  if (a1)
  {
    v13 = CFRetain(a1);
    if (v13)
    {
      v14 = v13;
      goto LABEL_20;
    }
  }

  if ((isRunningInRecovery() & 1) == 0 && (isRunningInRecovery() & 1) == 0 && !isRunningInDiagnosticsMode())
  {
    v14 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x40000000uLL, &error);
    if (v14)
    {
      goto LABEL_20;
    }

    createAppAttestError("createReferenceKeyBlob", 73, -1, error, @"Failed to create access control (%@).", v26, v27, v28, *MEMORY[0x277CDBF00]);
    v22 = LABEL_17:;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    if (!a3)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v14 = SecAccessControlCreate();
  if (!v14)
  {
    createAppAttestError("createReferenceKeyBlob", 63, -1, error, @"Failed to create access control.", v15, v16, v17, v39);
    goto LABEL_17;
  }

  v18 = *MEMORY[0x277CDBF08];
  if ((SecAccessControlSetProtection() & 1) == 0)
  {
    createAppAttestError("createReferenceKeyBlob", 67, -1, error, @"Failed to set ACL protection to %@.", v19, v20, v21, v18);
    goto LABEL_17;
  }

LABEL_20:
  v29 = *MEMORY[0x277CDC158];
  v41[0] = *MEMORY[0x277CDBFD0];
  v41[1] = v29;
  v30 = *MEMORY[0x277CDC170];
  v42[0] = MEMORY[0x277CBEC28];
  v42[1] = v30;
  v31 = *MEMORY[0x277CDBEC0];
  v41[2] = *MEMORY[0x277CDC028];
  v41[3] = v31;
  v42[2] = v6;
  v42[3] = v14;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
  v32 = SecKeyCreateRandomKey(v23, &error);
  v25 = v32;
  if (v32)
  {
    v24 = CFRetain(v32);
    v22 = 0;
    if (!a3)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v22 = createAppAttestError("createReferenceKeyBlob", 87, -1, error, @"Failed to create ref key.", v33, v34, v35, v39);
    v24 = 0;
    if (!a3)
    {
      goto LABEL_26;
    }
  }

LABEL_24:
  if (!v24)
  {
    v36 = v22;
    *a3 = v22;
  }

LABEL_26:
  if (v25)
  {
    CFRelease(v25);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (error)
  {
    CFRelease(error);
  }

  v37 = *MEMORY[0x277D85DE8];
  return v24;
}

id lockcrypto_decode_pems(void *a1, const char *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  *__str = 0u;
  v42 = 0u;
  v43 = 0u;
  *__little = 0u;
  v41 = 0u;
  if (!v8 || !a2)
  {
    v15 = createAppAttestError("lockcrypto_decode_pems", 42, -1, 0, @"Invalid input(s).", v5, v6, v7, v35);
    v17 = 0;
    goto LABEL_15;
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v12)
  {
    v15 = createAppAttestError("lockcrypto_decode_pems", 48, -1, 0, @"Failed to allocate array.", v9, v10, v11, v35);
    v17 = 0;
    goto LABEL_23;
  }

  v13 = [v8 bytes];
  v14 = [v8 length];
  v15 = 0;
  if (!v13)
  {
    v17 = 0;
    goto LABEL_20;
  }

  v16 = v14;
  v17 = 0;
  if (v14 < 1)
  {
    goto LABEL_20;
  }

  v38 = v8;
  v39 = v12;
  v37 = a3;
  v17 = 0;
  v18 = 0x277CBE000uLL;
  while (1)
  {
    v19 = snprintf(__str, 0x50uLL, "-----BEGIN %s-----\n", a2);
    v20 = snprintf(__little, 0x50uLL, "\n-----END %s-----", a2);
    v21 = strnstr(v13, __str, v16);
    v22 = strnstr(v13, __little, v16);
    if (!v21 || (v23 = v22) == 0)
    {
LABEL_13:
      v15 = 0;
      goto LABEL_19;
    }

    v24 = &v21[v19];
    v25 = objc_autoreleasePoolPush();
    v26 = [*(v18 + 2704) dataWithBytesNoCopy:v24 length:v23 - v24 freeWhenDone:0];
    if (v26)
    {
      break;
    }

LABEL_12:

    objc_autoreleasePoolPop(v25);
    v31 = &v13[v16];
    v13 = &v23[v20];
    v16 = v31 - v13;
    v18 = 0x277CBE000;
    if (v31 - v13 <= 0)
    {
      goto LABEL_13;
    }
  }

  v27 = [objc_alloc(*(v18 + 2704)) initWithBase64EncodedData:v26 options:1];

  if (v27)
  {
    [v39 addObject:v27];
    v17 = v27;
    goto LABEL_12;
  }

  v15 = createAppAttestError("lockcrypto_decode_pems", 78, -1, 0, @"Failed to decode data.", v28, v29, v30, v36);

  objc_autoreleasePoolPop(v25);
  v17 = 0;
LABEL_19:
  a3 = v37;
  v8 = v38;
  v12 = v39;
LABEL_20:
  if (![v12 count])
  {

    if (a3)
    {
      v32 = v15;
      v12 = 0;
      *a3 = v15;
      goto LABEL_23;
    }

LABEL_15:
    v12 = 0;
  }

LABEL_23:

  v33 = *MEMORY[0x277D85DE8];

  return v12;
}

id createAppAttestError(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a4;
  v14 = MEMORY[0x277CCAB68];
  v15 = a5;
  v16 = [[v14 alloc] initWithFormat:v15 arguments:&a9];

  v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = v17;
  if (v16)
  {
    [v17 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCA450]];
  }

  if (v13)
  {
    [v18 setObject:v13 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  }

  if (os_variant_allows_internal_security_policies())
  {
    if (a1)
    {
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      [v18 setObject:v19 forKeyedSubscript:@"FunctionName"];
    }

    if (a2)
    {
      v20 = [MEMORY[0x277CCABB0] numberWithInt:a2];
      [v18 setObject:v20 forKeyedSubscript:@"SourceLine"];
    }
  }

  v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.appattest.error" code:a3 userInfo:v18];

  return v21;
}

CFTypeRef copy_keychain_item_for_system_keychain(void *a1, void *a2, uint64_t a3, OSStatus *a4, void *a5)
{
  v31[5] = *MEMORY[0x277D85DE8];
  v8 = a1;
  v9 = a2;
  v13 = v9;
  result = 0;
  if (v9)
  {
    v14 = *MEMORY[0x277CDC228];
    v30[0] = *MEMORY[0x277CDC080];
    v30[1] = v14;
    v15 = *MEMORY[0x277CDC250];
    v31[0] = v9;
    v31[1] = v15;
    v16 = *MEMORY[0x277CDC5C8];
    v30[2] = *MEMORY[0x277CDC568];
    v30[3] = v16;
    v31[2] = MEMORY[0x277CBEC38];
    v31[3] = MEMORY[0x277CBEC38];
    v30[4] = *MEMORY[0x277CDC5D0];
    v31[4] = MEMORY[0x277CBEC38];
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:5];
    v18 = [v17 mutableCopy];

    if (v8)
    {
      [v18 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
    }

    v22 = SecItemCopyMatching(v18, &result);
    if (v22)
    {
      v23 = createAppAttestError("copy_keychain_item_for_system_keychain", 59, -1, 0, @"Failed to copy keychain item %@: %d", v19, v20, v21, v13);

      v24 = 0;
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v24 = result;
      result = 0;

      v23 = 0;
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v23 = createAppAttestError("copy_keychain_item_for_system_keychain", 34, -2, 0, @"Invalid input.", v10, v11, v12, v28);
  v24 = 0;
  v22 = -1;
  if (a4)
  {
LABEL_8:
    *a4 = v22;
  }

LABEL_9:
  if (a5 && !v24)
  {
    v25 = v23;
    *a5 = v23;
  }

  if (result)
  {
    CFRelease(result);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v24;
}

CFTypeRef copy_all_items(void *a1, _DWORD *a2, void *a3)
{
  v23[5] = *MEMORY[0x277D85DE8];
  v5 = a1;
  result = 0;
  v6 = *MEMORY[0x277CDC250];
  v7 = *MEMORY[0x277CDC550];
  v22[0] = *MEMORY[0x277CDC228];
  v22[1] = v7;
  v8 = *MEMORY[0x277CDC428];
  v22[2] = *MEMORY[0x277CDC5C8];
  v22[3] = v8;
  v9 = *MEMORY[0x277CDC430];
  v23[2] = MEMORY[0x277CBEC38];
  v23[3] = v9;
  v23[0] = v6;
  v23[1] = MEMORY[0x277CBEC38];
  v22[4] = *MEMORY[0x277CDC5D0];
  v23[4] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v11 = [v10 mutableCopy];

  if (v5)
  {
    [v11 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v15 = SecItemCopyMatching(v11, &result);
  if (!v15)
  {
    v16 = 0;
    v17 = result;
    result = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = createAppAttestError("copy_all_items", 109, -1, 0, @"Failed to copy keychain items with status: %d", v12, v13, v14, v15);
  v17 = 0;
  if (a2)
  {
LABEL_5:
    *a2 = v15;
  }

LABEL_6:
  if (a3 && !v17)
  {
    v18 = v16;
    *a3 = v16;
  }

  if (result)
  {
    CFRelease(result);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

BOOL delete_keychain_item_for_system_keychain(void *a1, void *a2, uint64_t a3, void *a4)
{
  v23[3] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = *MEMORY[0x277CDC250];
  v9 = *MEMORY[0x277CDC5C8];
  v22[0] = *MEMORY[0x277CDC228];
  v22[1] = v9;
  v23[0] = v8;
  v23[1] = MEMORY[0x277CBEC38];
  v22[2] = *MEMORY[0x277CDC5D0];
  v23[2] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v11 = [v10 mutableCopy];

  if (v7)
  {
    [v11 setObject:v7 forKeyedSubscript:*MEMORY[0x277CDC080]];
  }

  if (v6)
  {
    [v11 setObject:v6 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v12 = SecItemDelete(v11);
  v16 = v12 == -25300 || v12 == 0;
  if (v12 == -25300 || v12 == 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = createAppAttestError("delete_keychain_item_for_system_keychain", 161, -1, 0, @"Failed to remove existing keychain item %@: %d", v13, v14, v15, v7);
  }

  if (a4)
  {
    v19 = v16;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    v18 = v18;
    *a4 = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t store_keychain_item(__SecKey *a1, void *a2, void *a3, void *a4)
{
  v37[6] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v12 = v8;
  if (a1 && v8)
  {
    v35 = 0;
    v13 = delete_keychain_item_for_system_keychain(v7, v8, 0, &v35);
    v17 = v35;
    if (v13)
    {
      v18 = *MEMORY[0x277CDC228];
      v36[0] = *MEMORY[0x277CDC080];
      v36[1] = v18;
      v19 = *MEMORY[0x277CDC250];
      v37[0] = v12;
      v37[1] = v19;
      v20 = *MEMORY[0x277CDC5C8];
      v36[2] = *MEMORY[0x277CDC5F8];
      v36[3] = v20;
      v21 = *MEMORY[0x277CDBED8];
      v36[4] = *MEMORY[0x277CDC5D0];
      v36[5] = v21;
      v37[2] = a1;
      v37[3] = MEMORY[0x277CBEC38];
      v22 = *MEMORY[0x277CDBF00];
      v37[4] = MEMORY[0x277CBEC38];
      v37[5] = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:6];
      v24 = [v23 mutableCopy];

      v25 = SecKeyCopyAttributes(a1);
      if (v7)
      {
        [v24 setObject:v7 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
      }

      if (!SecItemAdd(v24, 0))
      {
        v31 = 1;
        goto LABEL_14;
      }

      v29 = createAppAttestError("store_keychain_item", 224, -1, 0, @"Failed to add %@ to keychain: %d", v26, v27, v28, v12);
    }

    else
    {
      v29 = createAppAttestError("store_keychain_item", 196, -1, v17, @"Failed to delete existing keychain item.", v14, v15, v16, v34);

      v24 = 0;
      v25 = 0;
    }

    v17 = v29;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v17 = createAppAttestError("store_keychain_item", 191, -2, 0, @"Invalid input(s).", v9, v10, v11, v34);
    v24 = 0;
    v25 = 0;
    if (!a4)
    {
LABEL_12:
      v31 = 0;
      goto LABEL_14;
    }
  }

  v30 = v17;
  v31 = 0;
  *a4 = v17;
LABEL_14:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

id copy_keychain_data(void *a1, void *a2, OSStatus *a3, void *a4)
{
  v33[8] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v12 = v8;
  result = 0;
  if (v8)
  {
    v13 = *MEMORY[0x277CDBFB8];
    v32[0] = *MEMORY[0x277CDC080];
    v32[1] = v13;
    v33[0] = v8;
    v33[1] = v8;
    v14 = *MEMORY[0x277CDC120];
    v32[2] = *MEMORY[0x277CDBF20];
    v32[3] = v14;
    v33[2] = v8;
    v33[3] = v8;
    v15 = *MEMORY[0x277CDC238];
    v16 = *MEMORY[0x277CDC558];
    v32[4] = *MEMORY[0x277CDC228];
    v32[5] = v16;
    v33[4] = v15;
    v33[5] = MEMORY[0x277CBEC38];
    v17 = *MEMORY[0x277CDC5D0];
    v32[6] = *MEMORY[0x277CDC5C8];
    v32[7] = v17;
    v33[6] = MEMORY[0x277CBEC38];
    v33[7] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:8];
    v19 = [v18 mutableCopy];

    if (v7)
    {
      [v19 setObject:v7 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
    }

    v23 = SecItemCopyMatching(v19, &result);
    if (v23)
    {
      v24 = createAppAttestError("copy_keychain_data", 272, -1, 0, @"Failed to copy keychain item %@: %d", v20, v21, v22, v12);
      v25 = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v24 = 0;
      v25 = result;
      result = 0;
      if (!a3)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_8;
  }

  v24 = createAppAttestError("copy_keychain_data", 248, -2, 0, @"Invalid input.", v9, v10, v11, v30);
  v25 = 0;
  v19 = 0;
  v23 = -1;
  if (a3)
  {
LABEL_8:
    *a3 = v23;
  }

LABEL_9:
  if (a4 && !v25)
  {
    v26 = v24;
    *a4 = v24;
  }

  if (result)
  {
    CFRelease(result);
  }

  v27 = v25;

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

CFTypeRef copy_all_datas(void *a1, _DWORD *a2, void *a3)
{
  v23[6] = *MEMORY[0x277D85DE8];
  v5 = a1;
  result = 0;
  v6 = *MEMORY[0x277CDC238];
  v7 = *MEMORY[0x277CDC550];
  v22[0] = *MEMORY[0x277CDC228];
  v22[1] = v7;
  v23[0] = v6;
  v23[1] = MEMORY[0x277CBEC38];
  v8 = *MEMORY[0x277CDC5C8];
  v22[2] = *MEMORY[0x277CDC558];
  v22[3] = v8;
  v9 = *MEMORY[0x277CDC5D0];
  v22[4] = *MEMORY[0x277CDC428];
  v22[5] = v9;
  v23[2] = MEMORY[0x277CBEC38];
  v23[3] = MEMORY[0x277CBEC38];
  v23[4] = *MEMORY[0x277CDC430];
  v23[5] = MEMORY[0x277CBEC38];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:6];
  v11 = [v10 mutableCopy];

  if (v5)
  {
    [v11 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v15 = SecItemCopyMatching(v11, &result);
  if (!v15)
  {
    v16 = 0;
    v17 = result;
    result = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = createAppAttestError("copy_all_datas", 318, -1, 0, @"Failed to copy keychain items with status: %d", v12, v13, v14, v15);
  v17 = 0;
  if (a2)
  {
LABEL_5:
    *a2 = v15;
  }

LABEL_6:
  if (a3 && !v17)
  {
    v18 = v16;
    *a3 = v16;
  }

  if (result)
  {
    CFRelease(result);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t delete_keychain_data(void *a1, void *a2, void *a3)
{
  v27[7] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v10 = v6;
  if (!v6)
  {
    v21 = createAppAttestError("delete_keychain_data", 348, -2, 0, @"Invalid input(s).", v7, v8, v9, v25);
    v16 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v11 = *MEMORY[0x277CDBFB8];
  v26[0] = *MEMORY[0x277CDC080];
  v26[1] = v11;
  v27[0] = v6;
  v27[1] = v6;
  v12 = *MEMORY[0x277CDC120];
  v26[2] = *MEMORY[0x277CDBF20];
  v26[3] = v12;
  v27[2] = v6;
  v27[3] = v6;
  v13 = *MEMORY[0x277CDC238];
  v14 = *MEMORY[0x277CDC5C8];
  v26[4] = *MEMORY[0x277CDC228];
  v26[5] = v14;
  v27[4] = v13;
  v27[5] = MEMORY[0x277CBEC38];
  v26[6] = *MEMORY[0x277CDC5D0];
  v27[6] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:7];
  v16 = [v15 mutableCopy];

  if (v5)
  {
    [v16 setObject:v5 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
  }

  v20 = SecItemDelete(v16);
  v21 = 0;
  v22 = 1;
  if (v20 != -25300 && v20)
  {
    v21 = createAppAttestError("delete_keychain_data", 371, -1, 0, @"Failed to remove existing keychain item %@: %d", v17, v18, v19, v10);
    if (!a3)
    {
LABEL_7:
      v22 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v21 = v21;
    v22 = 0;
    *a3 = v21;
  }

LABEL_10:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t store_keychain_data(void *a1, void *a2, void *a3, void *a4)
{
  v37[9] = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v13 = v9;
  if (v7 && v9)
  {
    v35 = 0;
    v14 = delete_keychain_data(v8, v9, &v35);
    v18 = v35;
    if (v14)
    {
      v19 = *MEMORY[0x277CDBFB8];
      v36[0] = *MEMORY[0x277CDC080];
      v36[1] = v19;
      v37[0] = v13;
      v37[1] = v13;
      v20 = *MEMORY[0x277CDC120];
      v36[2] = *MEMORY[0x277CDBF20];
      v36[3] = v20;
      v37[2] = v13;
      v37[3] = v13;
      v21 = *MEMORY[0x277CDC238];
      v22 = *MEMORY[0x277CDC5E8];
      v36[4] = *MEMORY[0x277CDC228];
      v36[5] = v22;
      v37[4] = v21;
      v37[5] = v7;
      v23 = *MEMORY[0x277CDC5D0];
      v36[6] = *MEMORY[0x277CDC5C8];
      v36[7] = v23;
      v37[6] = MEMORY[0x277CBEC38];
      v37[7] = MEMORY[0x277CBEC38];
      v36[8] = *MEMORY[0x277CDBED8];
      v37[8] = *MEMORY[0x277CDBF00];
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:9];
      v25 = [v24 mutableCopy];

      if (v8)
      {
        [v25 setObject:v8 forKeyedSubscript:*MEMORY[0x277CDBEC8]];
      }

      if (!SecItemAdd(v25, 0))
      {
        v31 = 1;
        goto LABEL_14;
      }

      v29 = createAppAttestError("store_keychain_data", 425, -1, 0, @"Failed to add %@ to keychain: %d", v26, v27, v28, v13);
    }

    else
    {
      v29 = createAppAttestError("store_keychain_data", 400, -1, v18, @"Failed to delete existing keychain item.", v15, v16, v17, v34);

      v25 = 0;
    }

    v18 = v29;
    if (!a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = createAppAttestError("store_keychain_data", 395, -2, 0, @"Invalid input(s).", v10, v11, v12, v34);
    v25 = 0;
    if (!a4)
    {
LABEL_12:
      v31 = 0;
      goto LABEL_14;
    }
  }

  v30 = v18;
  v31 = 0;
  *a4 = v18;
LABEL_14:

  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

void AppAttest_WebAuthentication_AttestKey(__SecKey *a1, void *a2, void *a3, void *a4)
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__0;
  v54 = __Block_byref_object_dispose__0;
  v55 = 0;
  if (v9)
  {
    if (DeviceIdentityIsSupported())
    {
      v13 = (v51 + 5);
      v14 = v51[5];
      if (isSupportedSPIClient_onceToken != -1)
      {
        AppAttest_WebAuthentication_AttestKey_cold_1();
      }

      v18 = copy_current_process_name();
      if (v18)
      {
        if ([isSupportedSPIClient_supportedList containsObject:v18])
        {

          objc_storeStrong(v13, v14);
          v22 = (v51 + 5);
          obj = v51[5];
          v23 = AppAttest_Common_ValidateEntitlements(&obj);
          objc_storeStrong(v22, obj);
          if (!v23)
          {
            goto LABEL_32;
          }

          v24 = isNSData(v7);
          v25 = v24 == 0;

          if (v25)
          {
            v28 = 0;
            v29 = -2;
            v30 = 118;
            v31 = @"Invalid authenticatorData";
          }

          else if (AppAttest_Common_ValidateBikParameters(a1))
          {
            v26 = isNSData(v8);
            if (v26)
            {
              v27 = [v8 length] > 0x20;

              if (!v27)
              {
                goto LABEL_32;
              }
            }

            v28 = 0;
            v29 = -2;
            v30 = 128;
            v31 = @"Invalid clientDataHash";
          }

          else
          {
            v28 = 0;
            v29 = -3;
            v30 = 123;
            v31 = @"Invalid referenceKey";
          }

LABEL_31:
          v42 = createAppAttestError("AppAttest_WebAuthentication_AttestKey", v30, v29, v28, v31, v10, v11, v12, v45);
          v43 = v51[5];
          v51[5] = v42;

LABEL_32:
          if (v51[5])
          {
            v9[2](v9, 0);
          }

          else
          {
            v46[0] = MEMORY[0x277D85DD0];
            v46[1] = 3221225472;
            v46[2] = __AppAttest_WebAuthentication_AttestKey_block_invoke;
            v46[3] = &unk_278585168;
            v48 = &v50;
            v47 = v9;
            AppAttest_Common_AttestKey(2u, 1, 0, a1, v7, v8, v46);
          }

          goto LABEL_35;
        }

        v39 = createAppAttestError("isSupportedSPIClient", 73, -1, 0, @"%@ is not allowed to use this API.  Please refer to the header file for onboarding information.", v19, v20, v21, v18);
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          v40 = [v39 localizedDescription];
          AppAttest_WebAuthentication_AttestKey_cold_2(v40, buf);
        }
      }

      else
      {
        v39 = createAppAttestError("isSupportedSPIClient", 68, -1, 0, @"Failed to query process name.", v15, v16, v17, v45);
      }

      v41 = v39;

      objc_storeStrong(v13, v39);
      v28 = v51[5];
      v31 = @"Client is not supported.";
      v29 = -1;
      v30 = 108;
      goto LABEL_31;
    }

    v28 = 0;
    v29 = -4;
    v30 = 103;
    v31 = @"Not supported";
    goto LABEL_31;
  }

  if (AAInternalLogSystem_onceToken_2 != -1)
  {
    AppAttest_WebAuthentication_AttestKey_cold_3();
  }

  v32 = AAInternalLogSystem_log_2;
  if (os_log_type_enabled(AAInternalLogSystem_log_2, OS_LOG_TYPE_DEBUG))
  {
    v33 = 0;
    v34 = 0;
    v35 = 47;
    do
    {
      v36 = &aLibraryCachesC_2[v33];
      if (v35 == 47)
      {
        v34 = &aLibraryCachesC_2[v33];
      }

      v35 = v36[1];
      if (!v36[1])
      {
        break;
      }
    }

    while (v33++ < 0xFFF);
    if (v34)
    {
      v38 = v34 + 1;
    }

    else
    {
      v38 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestWebAuthentication.m";
    }

    *buf = 136315394;
    v57 = v38;
    v58 = 1024;
    v59 = 97;
    _os_log_impl(&dword_226177000, v32, OS_LOG_TYPE_DEBUG, "%25s:%-5d Cannot attest key, completion handler is nil.", buf, 0x12u);
  }

LABEL_35:
  _Block_object_dispose(&v50, 8);

  v44 = *MEMORY[0x277D85DE8];
}

void sub_22617F2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __AAInternalLogSystem_block_invoke_2()
{
  AAInternalLogSystem_log_2 = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

void __isSupportedSPIClient_block_invoke()
{
  v0 = isSupportedSPIClient_supportedList;
  isSupportedSPIClient_supportedList = &unk_283960E78;
}

id buildApplicationIdentifierKeychainLabel(void *a1)
{
  v1 = [a1 dataUsingEncoding:4];
  v2 = getSHA256(v1);

  v3 = MEMORY[0x277CCACA8];
  v4 = [v2 base64EncodedStringWithOptions:0];
  v5 = [v3 stringWithFormat:@"%@%@", @"au:", v4];

  return v5;
}

NSObject *resolveAppUUIDKeychain(void *a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v69 = -1;
  v8 = buildApplicationIdentifierKeychainLabel(v7);
  v68 = 0;
  v9 = copy_keychain_data(@"com.apple.appattest.identities", v8, &v69, &v68);
  v64 = v9;
  v65 = v68;
  v10 = &unk_28136F000;
  v63 = v69;
  if (!v69)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v9 encoding:4];
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v15 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v71 = "AppAttestation.m";
      v72 = 1024;
      v73 = 118;
      v74 = 2112;
      v75 = v14;
      v76 = 2112;
      v77 = v5;
      v78 = 2112;
      v79 = v8;
      _os_log_impl(&dword_226177000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loaded last App UUID entry set. { lastAppUUIDValues=%@, requestAppUUID=%@, keychainLabel=%@ }", buf, 0x30u);
    }

    if (!v14)
    {
      v12 = 0;
      v66 = 0;
      v13 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v16 = [v14 componentsSeparatedByString:@":"];
    if ([v16 count] == 1)
    {
      v66 = v7;
      v12 = [v16 objectAtIndexedSubscript:0];
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v17 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v71 = "AppAttestation.m";
        v72 = 1024;
        v73 = 126;
        v74 = 2112;
        v75 = v12;
        v76 = 2112;
        v77 = v5;
        v78 = 2112;
        v79 = v8;
        _os_log_impl(&dword_226177000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loaded first generation key. { lastAppUUID=%@, requestAppUUID=%@, keychainLabel=%@ }", buf, 0x30u);
      }

      v13 = 1;
      v10 = &unk_28136F000;
      goto LABEL_46;
    }

    if ([v16 count] != 3)
    {
      v12 = 0;
      v66 = 0;
      v13 = 0;
LABEL_46:

      goto LABEL_47;
    }

    v18 = [v16 objectAtIndexedSubscript:0];
    v62 = v18;
    if ([v18 isEqualToString:@"m"])
    {
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v19 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v71 = "AppAttestation.m";
        v72 = 1024;
        v73 = 131;
        v74 = 2112;
        v75 = v14;
        v76 = 2112;
        v77 = v5;
        v78 = 2112;
        v79 = v8;
        _os_log_impl(&dword_226177000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d Detected last App type as Main. { lastAppUUIDValues=%@, requestAppUUID=%@, keychainLabel=%@ }", buf, 0x30u);
      }

      v13 = 1;
    }

    else
    {
      v20 = [v18 isEqualToString:@"c"];
      v21 = AAInternalLogSystem();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
      if (!v20)
      {
        v61 = v21;
        if (v22)
        {
          *buf = 136316162;
          v71 = "AppAttestation.m";
          v72 = 1024;
          v73 = 137;
          v74 = 2112;
          v75 = v14;
          v76 = 2112;
          v77 = v5;
          v78 = 2112;
          v79 = v8;
          _os_log_impl(&dword_226177000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to load App class from last App UUID keychain values, tampering possible. { lastAppUUIDValues=%@, requestAppUUID=%@, keychainLabel=%@ }", buf, 0x30u);
        }

        v12 = 0;
        v66 = 0;
        v13 = 0;
        v10 = &unk_28136F000;
        goto LABEL_45;
      }

      if (v22)
      {
        *buf = 136316162;
        v71 = "AppAttestation.m";
        v72 = 1024;
        v73 = 134;
        v74 = 2112;
        v75 = v14;
        v76 = 2112;
        v77 = v5;
        v78 = 2112;
        v79 = v8;
        _os_log_impl(&dword_226177000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Detected last App type as Clip. { lastAppUUIDValues=%@, requestAppUUID=%@, keychainLabel=%@ }", buf, 0x30u);
      }

      v13 = 2;
    }

    v23 = objc_alloc(MEMORY[0x277CCAD78]);
    v24 = [v16 objectAtIndexedSubscript:2];
    v25 = [v23 initWithUUIDString:v24];

    v61 = v25;
    if (v25)
    {
      v26 = [v16 objectAtIndexedSubscript:1];
      v27 = [v16 objectAtIndexedSubscript:2];
      v60 = v26;
      if ([v26 hasPrefix:v7])
      {
        v66 = v26;
        v12 = v27;
        v10 = &unk_28136F000;
        v28 = v27;
      }

      else
      {
        v59 = v27;
        v30 = AAInternalLogSystem();
        v10 = &unk_28136F000;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316418;
          v71 = "AppAttestation.m";
          v72 = 1024;
          v73 = 154;
          v74 = 2112;
          v75 = v60;
          v76 = 2112;
          v77 = v59;
          v78 = 2112;
          v79 = v5;
          v80 = 2112;
          v81 = v8;
          _os_log_impl(&dword_226177000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d Loaded App ID from last App UUID keychain values is invalid, possible tampering. { appID=%@, lastAppUUID=%@, requestAppUUID=%@, keychainLabel=%@ }", buf, 0x3Au);
        }

        v12 = 0;
        v66 = 0;
        v13 = 0;
        v28 = v59;
      }
    }

    else
    {
      v29 = AAInternalLogSystem();
      v60 = v29;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136316162;
        v71 = "AppAttestation.m";
        v72 = 1024;
        v73 = 144;
        v74 = 2112;
        v75 = v14;
        v76 = 2112;
        v77 = v5;
        v78 = 2112;
        v79 = v8;
        _os_log_impl(&dword_226177000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to load UUID from last App UUID keychain values. { lastAppUUIDValues=%@, requestAppUUID=%@, keychainLabel=%@ }", buf, 0x30u);
      }

      v12 = 0;
      v66 = 0;
      v10 = &unk_28136F000;
    }

LABEL_45:
    goto LABEL_46;
  }

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v11 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v71 = "AppAttestation.m";
    v72 = 1024;
    v73 = 112;
    v74 = 2112;
    v75 = v5;
    v76 = 2112;
    v77 = v8;
    _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch any last App UUID. { requestAppUUID=%@, keychainLabel=%@ }", buf, 0x26u);
  }

  v12 = 0;
  v66 = 0;
  v13 = 0;
LABEL_48:
  if (([v6 hasPrefix:v7, v59]& 1) == 0)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v31 = v10[425];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v71 = "AppAttestation.m";
      v72 = 1024;
      v73 = 166;
      v74 = 2112;
      v75 = v6;
      v76 = 2112;
      v77 = v7;
      _os_log_impl(&dword_226177000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d App ID does not have resolved App ID as prefix. { appID=%@, resolvedAppID=%@ }", buf, 0x26u);
    }
  }

  v32 = [v7 isEqualToString:v6];
  v33 = 0;
  if (!v13 || !v66 || !v12)
  {
    v37 = &unk_28136F000;
    goto LABEL_77;
  }

  v34 = v32;
  if (v5)
  {
    if ([v12 isEqualToString:v5])
    {
      v33 = v12;
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v35 = v10;
      v36 = v10[425];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v71 = "AppAttestation.m";
        v72 = 1024;
        v73 = 188;
        v74 = 2112;
        v75 = v33;
        v76 = 2112;
        v77 = v33;
        _os_log_impl(&dword_226177000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Provided App UUID matches last App UUID. { requestAppUUID=%@, resolvedAppUUID=%@ }", buf, 0x26u);
      }

      v10 = v35;
LABEL_99:
      v37 = &unk_28136F000;
      goto LABEL_100;
    }

    if (([v6 isEqualToString:v66]& 1) != 0)
    {
      v37 = &unk_28136F000;
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v38 = v10[425];
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_76;
      }

      *buf = 136316162;
      v71 = "AppAttestation.m";
      v72 = 1024;
      v73 = 195;
      v74 = 2112;
      v75 = 0;
      v76 = 2112;
      v77 = v12;
      v78 = 2112;
      v79 = v5;
      v39 = "%25s:%-5d Main App or App Clip re-installed. Request App UUID and fetched last App UUID mismatch. { resolvedAppUUID=%@, lastAppUUID=%@, requestAppUUID=%@ }";
      goto LABEL_74;
    }
  }

  else if ([v6 isEqualToString:v66])
  {
    v37 = &unk_28136F000;
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v38 = v10[425];
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_76;
    }

    *buf = 136316162;
    v71 = "AppAttestation.m";
    v72 = 1024;
    v73 = 194;
    v74 = 2112;
    v75 = 0;
    v76 = 2112;
    v77 = v12;
    v78 = 2112;
    v79 = 0;
    v39 = "%25s:%-5d Main App or App Clip re-installed. { resolvedAppUUID=%@, lastAppUUID=%@, requestAppUUID=%@ }";
LABEL_74:
    v40 = v38;
    v41 = 48;
LABEL_75:
    _os_log_impl(&dword_226177000, v40, OS_LOG_TYPE_DEBUG, v39, buf, v41);
LABEL_76:
    v33 = 0;
LABEL_77:
    if (!v63)
    {
      v42 = v10;
      v67[0] = v65;
      v43 = delete_keychain_data(@"com.apple.appattest.identities", v8, v67);
      v44 = v67[0];

      if (v37[416] != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v45 = v42[425];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        v71 = "AppAttestation.m";
        v72 = 1024;
        v73 = 244;
        v74 = 2112;
        v75 = v12;
        v76 = 1024;
        LODWORD(v77) = v43;
        _os_log_impl(&dword_226177000, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Deleting last App UUID keychain entry. { lastAppUUID=%@, didDelete=%d }", buf, 0x22u);
      }

      v33 = 0;
      v65 = v44;
      v10 = v42;
      v37 = &unk_28136F000;
    }

    goto LABEL_100;
  }

  if (v13 != 2)
  {
    if ((v34 & 1) == 0)
    {
      v67[2] = 0;
      v37 = &unk_28136F000;
      CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
      v33 = 0;
      if (v5)
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v57 = v10[425];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          v71 = "AppAttestation.m";
          v72 = 1024;
          v73 = 230;
          v74 = 2112;
          v75 = 0;
          v76 = 2112;
          v77 = v12;
          v78 = 2112;
          v79 = v5;
          v80 = 2112;
          v81 = v66;
          v82 = 2112;
          v83 = v6;
          _os_log_impl(&dword_226177000, v57, OS_LOG_TYPE_DEBUG, "%25s:%-5d Downgraded from Main App to App Clip. Request App UUID and fetched last App UUID mismatch. { resolvedAppUUID=%@, lastAppUUID=%@, requestAppUUID=%@, lastAppID=%@, appID=%@ }", buf, 0x44u);
        }
      }

      else
      {
        v58 = AAInternalLogSystem();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136316674;
          v71 = "AppAttestation.m";
          v72 = 1024;
          v73 = 229;
          v74 = 2112;
          v75 = 0;
          v76 = 2112;
          v77 = v12;
          v78 = 2112;
          v79 = 0;
          v80 = 2112;
          v81 = v66;
          v82 = 2112;
          v83 = v6;
          _os_log_impl(&dword_226177000, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d Downgraded from Main App to App Clip. { resolvedAppUUID=%@, lastAppUUID=%@, requestAppUUID=%@, lastAppID=%@, appID=%@ }", buf, 0x44u);
        }
      }

      goto LABEL_77;
    }

    v37 = &unk_28136F000;
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v54 = v10[425];
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_76;
    }

    *buf = 136316674;
    v71 = "AppAttestation.m";
    v72 = 1024;
    v73 = 235;
    v74 = 2112;
    v75 = 0;
    v76 = 2112;
    v77 = v12;
    v78 = 2112;
    v79 = v5;
    v80 = 2112;
    v81 = v66;
    v82 = 2112;
    v83 = v6;
    v39 = "%25s:%-5d Invalid scenario, App IDs cannot change across installations. { resolvedAppUUID=%@, lastAppUUID=%@, requestAppUUID=%@, lastRealAppID=%@, appID=%@ }";
    v40 = v54;
    v41 = 68;
    goto LABEL_75;
  }

  v33 = v12;
  v46 = v34 ^ 1;
  if (v5)
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v47 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v71 = "AppAttestation.m";
      v72 = 1024;
      v73 = 206;
      v74 = 2112;
      v75 = v33;
      v76 = 2112;
      v77 = v33;
      v78 = 2112;
      v79 = 0;
      _os_log_impl(&dword_226177000, v47, OS_LOG_TYPE_DEBUG, "%25s:%-5d Upgrading from App Clip to Main App. { resolvedAppUUID=%@, lastAppUUID=%@, requestAppUUID=%@ }", buf, 0x30u);
    }
  }

  v48 = v34;
  if (v5)
  {
    v48 = 1;
  }

  if ((v48 & 1) == 0)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v49 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v71 = "AppAttestation.m";
      v72 = 1024;
      v73 = 207;
      v74 = 2112;
      v75 = v33;
      v76 = 2112;
      v77 = v33;
      v78 = 2112;
      v79 = 0;
      _os_log_impl(&dword_226177000, v49, OS_LOG_TYPE_DEBUG, "%25s:%-5d Moving from App Clip to App Clip. { resolvedAppUUID=%@, lastAppUUID=%@, requestAppUUID=%@ }", buf, 0x30u);
    }

    v10 = &unk_28136F000;
    goto LABEL_99;
  }

  v55 = v34 ^ 1;
  if (!v5)
  {
    v55 = 1;
  }

  v10 = &unk_28136F000;
  v37 = &unk_28136F000;
  if ((v55 & 1) == 0)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v56 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v71 = "AppAttestation.m";
      v72 = 1024;
      v73 = 208;
      v74 = 2112;
      v75 = v33;
      v76 = 2112;
      v77 = v33;
      v78 = 2112;
      v79 = v5;
      _os_log_impl(&dword_226177000, v56, OS_LOG_TYPE_DEBUG, "%25s:%-5d Upgrading from App Clip to Main App. Request App UUID and fetched last App UUID mismatch. { resolvedAppUUID=%@, lastAppUUID=%@, requestAppUUID=%@ }", buf, 0x30u);
    }

    v10 = &unk_28136F000;
  }

LABEL_100:
  if (v37[416] != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v50 = v10[425];
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v71 = "AppAttestation.m";
    v72 = 1024;
    v73 = 247;
    v74 = 2112;
    v75 = v5;
    v76 = 2112;
    v77 = v12;
    v78 = 2112;
    v79 = v33;
    _os_log_impl(&dword_226177000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Finished resolving App UUID. { requestAppUUID=%@, lastAppUUID=%@, resolvedAppUUID=%@ }", buf, 0x30u);
  }

  v51 = v33;

  v52 = *MEMORY[0x277D85DE8];

  return v51;
}

id AAInternalLogSystem()
{
  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    AAInternalLogSystem_cold_1();
  }

  v1 = AAInternalLogSystem_log_3;

  return v1;
}

uint64_t saveAppUUIDKeychain(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = isNSString(v5);
  if (v8)
  {
    v9 = v8;
    v10 = isNSString(v6);
    if (v10)
    {
      v11 = v10;
      v12 = isNSString(v7);
      if (v12)
      {
        v13 = v12;
        v14 = [v6 hasPrefix:v7];

        if (v14)
        {
          goto LABEL_12;
        }

        goto LABEL_8;
      }
    }
  }

LABEL_8:
  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    AAInternalLogSystem_cold_1();
  }

  v15 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v29 = "AppAttestation.m";
    v30 = 1024;
    v31 = 260;
    v32 = 2112;
    v33 = v5;
    v34 = 2112;
    v35 = v6;
    v36 = 2112;
    v37 = v7;
    _os_log_impl(&dword_226177000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to save App UUID to keychain, invalid inputs. { appUUID=%@, realAppID=%@, resolvedAppID=%@ }", buf, 0x30u);
  }

LABEL_12:
  v16 = buildApplicationIdentifierKeychainLabel(v7);
  v17 = @"m";
  v18 = [v6 length];
  if (v18 > [v7 length])
  {
    v19 = @"c";

    v17 = v19;
  }

  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%@", v17, v6, v5];
  v21 = [v20 dataUsingEncoding:4];
  v27 = 0;
  v22 = store_keychain_data(v21, @"com.apple.appattest.identities", v16, &v27);
  v23 = v27;
  if ((v22 & 1) == 0)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v24 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      v29 = "AppAttestation.m";
      v30 = 1024;
      v31 = 273;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_226177000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to save App UUID to keychain. { label=%@, appUUIDGrouped=%@ }", buf, 0x26u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

id encodeKeyToCOSE(__SecKey *a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = fetchPublicKey(a1);
  if (v4)
  {
    v5 = SecKeyCopyAttributes(a1);
    v6 = [(__CFDictionary *)v5 objectForKey:*MEMORY[0x277CDC018]];
    v7 = v6;
    if (v6)
    {
      if ([v6 intValue] == 256 || objc_msgSend(v7, "intValue") == 384)
      {
        v8 = [v7 integerValue] / 8;
        v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __encodeKeyToCOSE_block_invoke;
        aBlock[3] = &__block_descriptor_40_e5_v8__0l;
        aBlock[4] = v9;
        v10 = _Block_copy(aBlock);
        [v4 getBytes:v9 range:{1, v8}];
        v11 = malloc_type_malloc(v8, 0x100004077774924uLL);
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __encodeKeyToCOSE_block_invoke_2;
        v32[3] = &__block_descriptor_40_e5_v8__0l;
        v32[4] = v11;
        v12 = _Block_copy(v32);
        [v4 getBytes:v11 range:{v8 + 1, v8}];
        v13 = [MEMORY[0x277CBEA90] dataWithBytes:v9 length:v8];
        v14 = [MEMORY[0x277CBEA90] dataWithBytes:v11 length:v8];
        v15 = generateCOSEForKeySize(v8, v13, v14);

        v12[2](v12);
        v10[2](v10);

LABEL_22:
        goto LABEL_23;
      }

      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        AAInternalLogSystem_cold_1();
      }

      v25 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        v29 = v25;
        *buf = 136315650;
        v35 = "AppAttestation.m";
        v36 = 1024;
        v37 = 296;
        v38 = 2048;
        v39 = [v7 intValue];
        _os_log_impl(&dword_226177000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Unsupported key coordinate size. { size=%ld }", buf, 0x1Cu);
      }

      v24 = createAppAttestError("encodeKeyToCOSE", 297, -3, 0, @"Failed to fetch size of public key.", v26, v27, v28, v32[0]);
    }

    else
    {
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        AAInternalLogSystem_cold_1();
      }

      v20 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v35 = "AppAttestation.m";
        v36 = 1024;
        v37 = 290;
        _os_log_impl(&dword_226177000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch size of public key.", buf, 0x12u);
      }

      v24 = createAppAttestError("encodeKeyToCOSE", 291, -3, 0, @"Failed to fetch size of public key.", v21, v22, v23, v32[0]);
    }

    v15 = 0;
    *a2 = v24;
    goto LABEL_22;
  }

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    AAInternalLogSystem_cold_1();
  }

  v16 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v35 = "AppAttestation.m";
    v36 = 1024;
    v37 = 282;
    _os_log_impl(&dword_226177000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch data representation of public key.", buf, 0x12u);
  }

  createAppAttestError("encodeKeyToCOSE", 283, -3, 0, @"Failed to fetch data representation of public key.", v17, v18, v19, v32[0]);
  *a2 = v15 = 0;
LABEL_23:

  v30 = *MEMORY[0x277D85DE8];

  return v15;
}

const __CFData *fetchPublicKey(__SecKey *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (AppAttest_Common_ValidateBikParameters(a1))
  {
    v2 = SecKeyCopyPublicKey(a1);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __fetchPublicKey_block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v2;
    v3 = _Block_copy(aBlock);
    if (!v2)
    {
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v12 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v20 = "AppAttestation.m";
        v21 = 1024;
        v22 = 1473;
        _os_log_impl(&dword_226177000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch public key from BIK.", buf, 0x12u);
      }

      v10 = 0;
      goto LABEL_23;
    }

    v16[4] = 0;
    error = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __fetchPublicKey_block_invoke_149;
    v16[3] = &__block_descriptor_40_e5_v8__0l;
    v4 = _Block_copy(v16);
    v5 = SecKeyCopyExternalRepresentation(v2, &error);
    v6 = v5;
    if (error)
    {
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v7 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = CFErrorCopyDescription(error);
        *buf = 136315650;
        v20 = "AppAttestation.m";
        v21 = 1024;
        v22 = 1482;
        v23 = 2112;
        v24 = v8;
        v9 = v8;
        _os_log_impl(&dword_226177000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch data representation of public key. { error=%@ }", buf, 0x1Cu);
      }
    }

    else
    {
      if (v5)
      {
        v10 = v5;
        goto LABEL_22;
      }

      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v15 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v20 = "AppAttestation.m";
        v21 = 1024;
        v22 = 1487;
        _os_log_impl(&dword_226177000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to fetch data representation of public key.", buf, 0x12u);
      }
    }

    v10 = 0;
LABEL_22:

    v4[2](v4);
LABEL_23:
    v3[2](v3);

    goto LABEL_24;
  }

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    AAInternalLogSystem_cold_1();
  }

  v11 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v20 = "AppAttestation.m";
    v21 = 1024;
    v22 = 1465;
    _os_log_impl(&dword_226177000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d Key has invalid properties.", buf, 0x12u);
  }

  v10 = 0;
LABEL_24:
  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

void sub_2261815F4(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void __encodeKeyToCOSE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    free(v1);
  }
}

void __encodeKeyToCOSE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    free(v1);
  }
}

id generateCOSEForKeySize(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ((a1 & 0xFFFFFFFFFFFFFFEFLL) == 0x20)
  {
    v7 = objc_alloc_init(CBORMap);
    v8 = 1;
    v9 = [[CBORUnsigned alloc] initWith:1];
    v10 = [[CBORUnsigned alloc] initWith:2];
    [(CBORMap *)v7 setKey:v9 value:v10];

    if (a1 == 32)
    {
      v11 = -7;
      v12 = 77;
    }

    else
    {
      if (a1 != 48)
      {
        v12 = 110;
        goto LABEL_13;
      }

      v11 = -35;
      v12 = 110;
      v8 = 2;
    }

    v15 = [[CBORUnsigned alloc] initWith:3];
    v16 = [[CBORNegative alloc] initWith:v11];
    [(CBORMap *)v7 setKey:v15 value:v16];

    v17 = [[CBORNegative alloc] initWith:-1];
    v18 = [[CBORUnsigned alloc] initWith:v8];
    [(CBORMap *)v7 setKey:v17 value:v18];

LABEL_13:
    v19 = [[CBORNegative alloc] initWith:-2];
    v20 = [[CBORData alloc] initWith:v5];
    [(CBORMap *)v7 setKey:v19 value:v20];

    v21 = [[CBORNegative alloc] initWith:-3];
    v22 = [[CBORData alloc] initWith:v6];
    [(CBORMap *)v7 setKey:v21 value:v22];

    v23 = objc_alloc_init(MEMORY[0x277CBEB28]);
    [(CBORMap *)v7 write:v23];
    if ([v23 length] <= v12)
    {
      v14 = v23;
    }

    else
    {
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        AAInternalLogSystem_cold_1();
      }

      v24 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        v25 = v24;
        v28 = 136315906;
        v29 = "AppAttestation.m";
        v30 = 1024;
        v31 = 1530;
        v32 = 2048;
        v33 = [v23 length];
        v34 = 2048;
        v35 = v12;
        _os_log_impl(&dword_226177000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d COSE key representation of public key is of unexpected length. { length=%zu, expected=%ld }", &v28, 0x26u);
      }

      v14 = 0;
    }

    goto LABEL_21;
  }

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    AAInternalLogSystem_cold_1();
  }

  v13 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    v28 = 136315650;
    v29 = "AppAttestation.m";
    v30 = 1024;
    v31 = 1497;
    v32 = 2048;
    v33 = a1;
    _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Cannot generate COSE encoding for key, unsupported coordinate size. { coordinateSize=%ld }", &v28, 0x1Cu);
  }

  v14 = 0;
LABEL_21:

  v26 = *MEMORY[0x277D85DE8];

  return v14;
}

id createAppAttestationAuthenticatorDataShort(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = isNSString(v5);

  if (v7)
  {
    v11 = [v5 dataUsingEncoding:4];
    v7 = getSHA256(v11);

    v17 = 0;
    v12 = createGenericAuthenticatorDataShort(v7, 64, v6, &v17);
    v13 = v17;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = createAppAttestError("createAppAttestationAuthenticatorDataShort", 333, -2, 0, @"Invalid counter", v8, v9, v10, v16);
    v12 = 0;
    if (!a3)
    {
      goto LABEL_7;
    }
  }

  if (!v12)
  {
    v14 = v13;
    *a3 = v13;
  }

LABEL_7:

  return v12;
}

void *createAppAttestationAuthenticatorDataFull(int a1, void *a2, void *a3, __SecKey *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = isNSString(v9);

  if (v11)
  {
    v15 = [v9 dataUsingEncoding:4];
    v11 = getSHA256(v15);

    if (a1 == 1)
    {
      v16 = "appattest";
    }

    else
    {
      v16 = "appattestdevelop";
    }

    v17 = [MEMORY[0x277CBEA90] dataWithBytes:v16 length:16];
    if ([v17 length] == 16)
    {
      v27 = 0;
      v21 = createGenericAuthenticatorDataFull(v17, v11, 64, v10, a4, &v27);
      v22 = v27;
      if (!a5)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v22 = createAppAttestError("createAppAttestationAuthenticatorDataFull", 375, -1, 0, @"Invalid aaguid length!", v18, v19, v20, v26);
      v21 = 0;
      if (!a5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v22 = createAppAttestError("createAppAttestationAuthenticatorDataFull", 363, -2, 0, @"Invalid counter", v12, v13, v14, v26);
    v21 = 0;
    v17 = 0;
    if (!a5)
    {
      goto LABEL_13;
    }
  }

  if (!v21)
  {
    v23 = v22;
    *a5 = v22;
  }

LABEL_13:
  v24 = v21;

  return v21;
}

uint64_t generateEnvironmentByAppSigning(_OWORD *a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v30 = 0;
  v2 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v2;
  v3 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:&token error:&v30];
  v4 = v30;
  if (!v3)
  {
    v8 = objc_alloc_init(AppAttestEligibilityManager);
    v9 = a1[1];
    *token.val = *a1;
    *&token.val[4] = v9;
    v7 = [(AppAttestEligibilityManager *)v8 isEligibleDaemonFor:&token];

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(AppAttestEligibilityManager);
    v6 = a1[1];
    *token.val = *a1;
    *&token.val[4] = v6;
    v7 = [(AppAttestEligibilityManager *)v5 isEligibleApplicationExtensionFor:&token];
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = v3;
  if ([v10 isProfileValidated])
  {
    if ([v10 isUPPValidated])
    {
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v11 = AAInternalLogSystem_log_3;
      if (!os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      v12 = v11;
      v13 = [v10 applicationIdentifier];
      token.val[0] = 136315650;
      *&token.val[1] = "AppAttestation.m";
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 434;
      HIWORD(token.val[4]) = 2112;
      *&token.val[5] = v13;
      v14 = "%25s:%-5d Enterprise environment detected. { appID=%@ }";
    }

    else
    {
      if (![v10 isBeta])
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v28 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
        {
          token.val[0] = 136315394;
          *&token.val[1] = "AppAttestation.m";
          LOWORD(token.val[3]) = 1024;
          *(&token.val[3] + 2) = 446;
          _os_log_impl(&dword_226177000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d FreeDev or Dev environment detected.", &token, 0x12u);
        }

        v7 = 0;
        goto LABEL_14;
      }

      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v25 = AAInternalLogSystem_log_3;
      if (!os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_42;
      }

      v12 = v25;
      v13 = [v10 applicationIdentifier];
      token.val[0] = 136315650;
      *&token.val[1] = "AppAttestation.m";
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 443;
      HIWORD(token.val[4]) = 2112;
      *&token.val[5] = v13;
      v14 = "%25s:%-5d TestFlight environment detected. { appID=%@ }";
    }

    _os_log_impl(&dword_226177000, v12, OS_LOG_TYPE_DEBUG, v14, &token, 0x1Cu);

LABEL_42:
    v7 = 1;
LABEL_14:
    v29 = 0;
    v15 = *MEMORY[0x277CBECE8];
    v16 = a1[1];
    *token.val = *a1;
    *&token.val[4] = v16;
    v17 = SecTaskCreateWithAuditToken(v15, &token);
    if (v17)
    {
      v18 = v17;
      v19 = SecTaskCopyValueForEntitlement(v17, @"com.apple.developer.devicecheck.appattest-environment", &v29);
      v20 = isNSString(v19);
      if (v20)
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v21 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
        {
          token.val[0] = 136315650;
          *&token.val[1] = "AppAttestation.m";
          LOWORD(token.val[3]) = 1024;
          *(&token.val[3] + 2) = 470;
          HIWORD(token.val[4]) = 2112;
          *&token.val[5] = v20;
          _os_log_impl(&dword_226177000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Environment override default set. { overrideDefault=%@ }", &token, 0x1Cu);
        }

        if ([v20 caseInsensitiveCompare:{@"production", v29}])
        {
          if ([v20 caseInsensitiveCompare:@"development"])
          {
            if (AAInternalLogSystem_onceToken_3 != -1)
            {
              resolveAppUUIDKeychain_cold_1();
            }

            v22 = AAInternalLogSystem_log_3;
            if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
            {
              token.val[0] = 136315394;
              *&token.val[1] = "AppAttestation.m";
              LOWORD(token.val[3]) = 1024;
              *(&token.val[3] + 2) = 476;
              _os_log_impl(&dword_226177000, v22, OS_LOG_TYPE_DEBUG, "%25s:%-5d Environment override default value is invalid, not updating.", &token, 0x12u);
            }
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 1;
        }
      }

      CFRelease(v18);
    }

    else
    {
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v23 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        token.val[0] = 136315394;
        *&token.val[1] = "AppAttestation.m";
        LOWORD(token.val[3]) = 1024;
        *(&token.val[3] + 2) = 464;
        _os_log_impl(&dword_226177000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Environment override default disabled.", &token, 0x12u);
      }
    }

    goto LABEL_45;
  }

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v24 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    token.val[0] = 136315394;
    *&token.val[1] = "AppAttestation.m";
    LOWORD(token.val[3]) = 1024;
    *(&token.val[3] + 2) = 451;
    _os_log_impl(&dword_226177000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Store, AdHoc, or Internal environment detected.", &token, 0x12u);
  }

  v7 = 1;
LABEL_45:

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

id buildAppAttestApplicationIdentifier(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && [v3 length] && (objc_msgSend(v3, "isEqualToString:", @"0000000000") & 1) == 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v3, v4];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

void resolveAppAttestApplicationIdentifiersForApplicationRecord(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 teamIdentifier];
  }

  v14 = v13;
  if (v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = [v9 bundleIdentifier];
  }

  v16 = v15;
  *a4 = buildAppAttestApplicationIdentifier(v14, v15);
  v17 = [v9 appClipMetadata];
  v18 = v17;
  if (v17)
  {
    [v17 parentApplicationIdentifiers];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v34 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v27 = v16;
      v28 = v14;
      v29 = a5;
      v30 = v9;
      v22 = *v32;
      do
      {
        v23 = 0;
        do
        {
          if (*v32 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v31 + 1) + 8 * v23);
          if (AAInternalLogSystem_onceToken_3 != -1)
          {
            resolveAppUUIDKeychain_cold_1();
          }

          v25 = AAInternalLogSystem_log_3;
          if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v36 = "AppAttestation.m";
            v37 = 1024;
            v38 = 524;
            v39 = 2112;
            v40 = v24;
            _os_log_impl(&dword_226177000, v25, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found parent application for App Clip. { parentAppID=%@ }", buf, 0x1Cu);
          }

          CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v21);
      v16 = v27;
      v9 = v30;
      a5 = v29;
      v14 = v28;
    }
  }

  *a5 = buildAppAttestApplicationIdentifier(v14, v16);

  v26 = *MEMORY[0x277D85DE8];
}

void resolveAppAttestApplicationIdentifiersForApplicationExtensionRecord(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v16 = v9;
  if (v16)
  {
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = [v16 teamIdentifier];
    }

    v13 = v12;
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = [v16 bundleIdentifier];
    }

    v15 = v14;
    *a4 = buildAppAttestApplicationIdentifier(v13, v14);
    *a5 = buildAppAttestApplicationIdentifier(v13, v15);
  }

  else
  {
    *a4 = 0;
    *a5 = 0;
  }
}

uint64_t extractApplicationIdentifiers(_OWORD *a1, void *a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v71 = *MEMORY[0x277D85DE8];
  v61 = a2;
  v9 = *MEMORY[0x277CBECE8];
  v10 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __extractApplicationIdentifiers_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v10;
  v14 = _Block_copy(aBlock);
  if (v10)
  {
    error = 0;
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __extractApplicationIdentifiers_block_invoke_2;
    v67[3] = &__block_descriptor_40_e5_v8__0l;
    v67[4] = 0;
    v15 = _Block_copy(v67);
    v19 = SecTaskCopyValueForEntitlement(v10, @"application-identifier", &error);
    if (error)
    {
      *a5 = createAppAttestError("extractApplicationIdentifiers", 591, -1, error, @"Failed to fetch connecting client application identifier.", v16, v17, v18, v55);
    }

    if (!v19)
    {
      createAppAttestError("extractApplicationIdentifiers", 595, -1, 0, @"Failed to fetch connecting client application identifier.", v16, v17, v18, v55);
      *a5 = v22 = 0;
LABEL_43:

      v15[2](v15);
      goto LABEL_44;
    }

    v20 = SecTaskCopyValueForEntitlement(v10, @"com.apple.appattest.daemoncheck", 0);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __extractApplicationIdentifiers_block_invoke_3;
    v66[3] = &__block_descriptor_40_e5_v8__0l;
    v66[4] = v20;
    v60 = _Block_copy(v66);
    if (v20 && v20 == *MEMORY[0x277CBED10])
    {
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v21 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "AppAttestation.m";
        *&buf[12] = 1024;
        *&buf[14] = 604;
        _os_log_impl(&dword_226177000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Connecting application identifier check is disabled, not comparing self identifier to connection identifier.", buf, 0x12u);
      }
    }

    else if ([@"com.apple.devicecheckd" compare:v19])
    {
      createAppAttestError("extractApplicationIdentifiers", 607, -1, error, @"Failed to query code signing identifier..", v23, v24, v25, v55);
      *a5 = v22 = 0;
LABEL_42:
      v60[2](v60);

      goto LABEL_43;
    }

    v26 = a1[1];
    *buf = *a1;
    *&buf[16] = v26;
    v27 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:buf error:0];
    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v58 = v27;
        resolveAppAttestApplicationIdentifiersForApplicationRecord(v58, 0, v61, a3, a4);
        v22 = 1;

LABEL_41:
        goto LABEL_42;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = 0;
        goto LABEL_41;
      }

      v59 = v27;
      resolveAppAttestApplicationIdentifiersForApplicationExtensionRecord(v59, 0, v61, a3, a4);
      if (a3)
      {
        v47 = a4 == 0;
      }

      else
      {
        v47 = 1;
      }

      v22 = !v47;
      if (!v47)
      {
LABEL_40:

        goto LABEL_41;
      }

      v48 = createAppAttestError("extractApplicationIdentifiers", 687, -1, 0, @"Failed to fetch identifiers, unsupported application extension.", v44, v45, v46, v55);
    }

    else
    {
      v28 = objc_alloc_init(AppAttestEligibilityManager);
      v29 = a1[1];
      *buf = *a1;
      *&buf[16] = v29;
      v59 = v28;
      if ([(AppAttestEligibilityManager *)v28 isEligibleDaemonFor:buf])
      {
        v33 = a1[1];
        *buf = *a1;
        *&buf[16] = v33;
        v34 = SecTaskCreateWithAuditToken(v9, buf);
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __extractApplicationIdentifiers_block_invoke_45;
        v65[3] = &__block_descriptor_40_e5_v8__0l;
        v65[4] = v34;
        v56 = _Block_copy(v65);
        v63[4] = 0;
        v64 = 0;
        v63[0] = MEMORY[0x277D85DD0];
        v63[1] = 3221225472;
        v63[2] = __extractApplicationIdentifiers_block_invoke_2_46;
        v63[3] = &__block_descriptor_40_e5_v8__0l;
        v57 = _Block_copy(v63);
        v35 = SecTaskCopyValueForEntitlement(v34, @"application-identifier", &v64);
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __extractApplicationIdentifiers_block_invoke_3_50;
        v62[3] = &__block_descriptor_40_e5_v8__0l;
        v62[4] = v35;
        v39 = _Block_copy(v62);
        if (v35)
        {
          if (v64)
          {
            v40 = [(__CFError *)v64 localizedDescription];
            *a5 = createAppAttestError("extractApplicationIdentifiers", 658, -1, 0, @"Failed to fetch application identifier entitlement for daemon. { error=%@ }", v41, v42, v43, v40);

            v22 = 0;
          }

          else
          {
            v49 = v35;
            resolveAppAttestApplicationIdentifiersForApplicationRecord(0, v49, v61, a3, a4);
            v50 = AAInternalLogSystem();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
            {
              v51 = *a3;
              v52 = *a4;
              *buf = 136315906;
              *&buf[4] = "AppAttestation.m";
              *&buf[12] = 1024;
              *&buf[14] = 665;
              *&buf[18] = 2112;
              *&buf[20] = v51;
              *&buf[28] = 2112;
              *&buf[30] = v52;
              _os_log_impl(&dword_226177000, v50, OS_LOG_TYPE_DEBUG, "%25s:%-5d Extracted application identifiers for daemon client connection. { realApplicationIdentifier=%@, resolvedApplicationIdentifier=%@ }", buf, 0x26u);
            }

            v22 = 1;
          }
        }

        else
        {
          createAppAttestError("extractApplicationIdentifiers", 653, -2, 0, @"Daemon client connection is missing application identifier entitlement.", v36, v37, v38, v55);
          *a5 = v22 = 0;
        }

        v39[2](v39);

        v57[2](v57);
        v56[2](v56);

        goto LABEL_40;
      }

      v48 = createAppAttestError("extractApplicationIdentifiers", 639, -2, 0, @"Invalid daemon client connection.", v30, v31, v32, v55);
      v22 = 0;
    }

    *a5 = v48;
    goto LABEL_40;
  }

  createAppAttestError("extractApplicationIdentifiers", 582, -1, 0, @"Failed to create security task.", v11, v12, v13, v55);
  *a5 = v22 = 0;
LABEL_44:
  v14[2](v14);

  v53 = *MEMORY[0x277D85DE8];
  return v22;
}

void sub_226182EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  (*(v15 + 16))(v15);
  (*(a11 + 16))();
  (*(a10 + 16))();
  (*(a13 + 16))();
  (*(v14 + 16))(v14);
  (*(v13 + 16))(v13);
  _Unwind_Resume(a1);
}

void __extractApplicationIdentifiers_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __extractApplicationIdentifiers_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __extractApplicationIdentifiers_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __extractApplicationIdentifiers_block_invoke_45(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __extractApplicationIdentifiers_block_invoke_2_46(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __extractApplicationIdentifiers_block_invoke_3_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

id generateAttestationObject(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v55 = *MEMORY[0x277D85DE8];
  v46 = a1;
  v8 = a2;
  v47 = a3;
  v48 = a4;
  context = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(CBORArray);
  if (v8 && [v8 count] == 2 && objc_msgSend(v8, "count"))
  {
    v10 = 0;
    do
    {
      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v11 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
      {
        v12 = v11;
        v13 = [v8 objectAtIndexedSubscript:v10];
        *buf = 136315650;
        v50 = "AppAttestation.m";
        v51 = 1024;
        v52 = 709;
        v53 = 2112;
        v54 = v13;
        _os_log_impl(&dword_226177000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding certificate to attestastion object CBOR. { certificate=%@ }", buf, 0x1Cu);
      }

      v14 = [CBORData alloc];
      v15 = [v8 objectAtIndexedSubscript:v10];
      v16 = [(CBORData *)v14 initWith:v15];
      [(CBORArray *)v9 addObject:v16];

      ++v10;
    }

    while (v10 < [v8 count]);
  }

  v17 = objc_alloc_init(CBORMap);
  v18 = [[CBORString alloc] initWith:@"x5c"];
  [(CBORMap *)v17 setKey:v18 value:v9];

  v19 = [[CBORString alloc] initWith:@"receipt"];
  v20 = [[CBORData alloc] initWith:v47];
  [(CBORMap *)v17 setKey:v19 value:v20];

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v21 = AAInternalLogSystem_log_3;
  v22 = v46;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v50 = "AppAttestation.m";
    v51 = 1024;
    v52 = 718;
    v53 = 2112;
    v54 = v46;
    _os_log_impl(&dword_226177000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding authenticator data to attestation object CBOR. { authData=%@ }", buf, 0x1Cu);
  }

  v23 = objc_alloc_init(CBORMap);
  v24 = [[CBORString alloc] initWith:@"authData"];
  v25 = [[CBORData alloc] initWith:v46];
  [(CBORMap *)v23 setKey:v24 value:v25];

  v26 = [[CBORString alloc] initWith:@"fmt"];
  v27 = [[CBORString alloc] initWith:@"apple-appattest"];
  [(CBORMap *)v23 setKey:v26 value:v27];

  v28 = [[CBORString alloc] initWith:@"attStmt"];
  [(CBORMap *)v23 setKey:v28 value:v17];

  if (v48)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v29 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v50 = "AppAttestation.m";
      v51 = 1024;
      v52 = 726;
      _os_log_impl(&dword_226177000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Adding CD Hash data to attestation object CBOR.", buf, 0x12u);
    }

    v30 = objc_alloc_init(CBORMap);
    v31 = [[CBORString alloc] initWith:@"hash"];
    v32 = [CBORData alloc];
    v33 = [v48 cdHash];
    v34 = [(CBORData *)v32 initWith:v33];
    [(CBORMap *)v30 setKey:v31 value:v34];

    buf[0] = [v48 type];
    v35 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:1];
    v36 = [[CBORString alloc] initWith:@"type"];
    v37 = [[CBORData alloc] initWith:v35];
    [(CBORMap *)v30 setKey:v36 value:v37];

    v38 = [[CBORString alloc] initWith:@"cdHash"];
    [(CBORMap *)v23 setKey:v38 value:v30];

    v22 = v46;
  }

  v39 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(CBORMap *)v23 write:v39];
  v40 = [v39 copy];
  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v41 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v50 = "AppAttestation.m";
    v51 = 1024;
    v52 = 743;
    v53 = 2112;
    v54 = v39;
    _os_log_impl(&dword_226177000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created attestastion object CBOR. { attObj=%@ }", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(context);
  if (a5 && !v40)
  {
    *a5 = 0;
  }

  v42 = *MEMORY[0x277D85DE8];

  return v40;
}

id generateAssertionObject(__SecKey *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v53 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v12];
  [v15 appendData:v13];
  getSHA256(v15);
  v45 = error = 0;
  v19 = SecKeyCreateSignature(a1, *MEMORY[0x277CDC300], v45, &error);
  if (!v19)
  {
    v37 = createAppAttestError("generateAssertionObject", 771, -1, error, @"Failed to sign data with ref key.", v16, v17, v18, context);
    v35 = 0;
    if (!a6)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v43 = a6;
  v44 = v13;
  contexta = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(CBORMap);
  v21 = [[CBORString alloc] initWith:@"authenticatorData"];
  v22 = [[CBORData alloc] initWith:v12];
  [(CBORMap *)v20 setKey:v21 value:v22];

  v23 = [[CBORString alloc] initWith:@"signature"];
  v24 = [[CBORData alloc] initWith:v19];
  [(CBORMap *)v20 setKey:v23 value:v24];

  if (v14)
  {
    v25 = objc_alloc_init(CBORMap);
    v26 = [[CBORString alloc] initWith:@"hash", contexta];
    v27 = [CBORData alloc];
    v28 = [v14 cdHash];
    v29 = [(CBORData *)v27 initWith:v28];
    [(CBORMap *)v25 setKey:v26 value:v29];

    buf[0] = [v14 type];
    v30 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:1];
    v31 = [[CBORString alloc] initWith:@"type"];
    v32 = [[CBORData alloc] initWith:v30];
    [(CBORMap *)v25 setKey:v31 value:v32];

    v33 = [[CBORString alloc] initWith:@"cdHash"];
    [(CBORMap *)v20 setKey:v33 value:v25];
  }

  v34 = objc_alloc_init(MEMORY[0x277CBEB28]);
  [(CBORMap *)v20 write:v34];
  v35 = [v34 copy];
  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v13 = v44;
  v36 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v48 = "AppAttestation.m";
    v49 = 1024;
    v50 = 796;
    v51 = 2112;
    v52 = v34;
    _os_log_impl(&dword_226177000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created assertion object CBOR. { assertionObj=%@ }", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(contexta);
  v37 = 0;
  a6 = v43;
  if (v43)
  {
LABEL_11:
    if (!v35)
    {
      v38 = v37;
      *a6 = v37;
    }
  }

LABEL_13:
  if (error)
  {
    CFRelease(error);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v35;
}

uint64_t saveCredentialKeychain(__SecKey *a1, int a2, void *a3, void *a4, void *a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  v11 = buildKeychainLabel(a2, a3, v9, v10, @"rk");
  v20 = 0;
  v12 = store_keychain_item(a1, @"com.apple.appattest.identities", v11, &v20);
  v13 = v20;
  if (v12)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v14 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v22 = "AppAttestation.m";
      v23 = 1024;
      v24 = 822;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_226177000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d [BIKCredentialKeychain] Saved credential to keychain. { 'label':%@, 'appID':%@, 'credentialID':%@ }", buf, 0x30u);
    }
  }

  else
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v15 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      v16 = v15;
      v17 = [v13 localizedDescription];
      *buf = 136316418;
      v22 = "AppAttestation.m";
      v23 = 1024;
      v24 = 823;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v9;
      v29 = 2112;
      v30 = v10;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_226177000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d [BIKCredentialKeychain] Failed to save credential to keychain. { 'label':%@, 'appID':%@, 'credentialID':%@, 'error':%@ }", buf, 0x3Au);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

id buildKeychainLabel(int a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = @"d";
  if (a1 == 1)
  {
    v9 = @"p";
  }

  v10 = v9;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a2 dataUsingEncoding:4];
  v15 = getSHA256(v14);

  v16 = [v13 dataUsingEncoding:4];

  v17 = getSHA256(v16);

  v18 = [v12 dataUsingEncoding:4];

  v19 = getSHA256(v18);

  v20 = MEMORY[0x277CCACA8];
  v21 = [v15 base64EncodedStringWithOptions:0];
  v22 = [v17 base64EncodedStringWithOptions:0];
  v23 = [v19 base64EncodedStringWithOptions:0];
  v24 = [v20 stringWithFormat:@"%@%@%@:%@:%@:%@", @"aa:", v21, v10, v22, v23, v11];

  return v24;
}

CFTypeRef loadCredentialKeychain(int a1, void *a2, void *a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v21 = -1;
  v9 = buildKeychainLabel(a1, a2, v7, v8, @"rk");
  v20 = 0;
  v10 = copy_keychain_item(@"com.apple.appattest.identities", v9, &v21, &v20);
  v11 = v20;
  if (v21 || (v18 = CFRetain(v10)) == 0)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v12 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v11 localizedDescription];
      *buf = 136316418;
      v23 = "AppAttestation.m";
      v24 = 1024;
      v25 = 849;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v14;
      _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d [BIKCredentialKeychain] Failed to fetch credential from keychain. { 'label':%@, 'appID':%@, 'credentialID':%@, 'error':%@ }", buf, 0x3Au);
    }

    v15 = 0;
  }

  else
  {
    v15 = v18;
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v19 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316162;
      v23 = "AppAttestation.m";
      v24 = 1024;
      v25 = 848;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_226177000, v19, OS_LOG_TYPE_DEBUG, "%25s:%-5d [BIKCredentialKeychain] Fetched credential from keychain. { 'label':%@, 'appID':%@, 'credentialID':%@ }", buf, 0x30u);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

BOOL deleteCredentialKeychainWithLabel(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v10 = 0;
  v2 = delete_keychain_item(@"com.apple.appattest.identities", v1, &v10);
  v3 = v10;
  if (v2)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v4 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v12 = "AppAttestation.m";
      v13 = 1024;
      v14 = 860;
      v15 = 2112;
      v16 = v1;
      _os_log_impl(&dword_226177000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [BIKCredentialKeychain] Delete credential from keychain. { 'label':%@ }", buf, 0x1Cu);
    }
  }

  else
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v5 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v7 = [v3 localizedDescription];
      *buf = 136315906;
      v12 = "AppAttestation.m";
      v13 = 1024;
      v14 = 861;
      v15 = 2112;
      v16 = v1;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_226177000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [BIKCredentialKeychain] Failed to delete credential from keychain. { 'label':%@, 'error':%@ }", buf, 0x26u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

id getAllCredentialKeychainLabels()
{
  v2 = 0;
  v0 = getAllCredentialKeychainLabelsWithShouldExit(&v2);

  return v0;
}

id getAllCredentialKeychainLabelsWithShouldExit(_BYTE *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = -1;
  v2 = objc_opt_new();
  v16 = 0;
  v3 = copy_all_items(@"com.apple.appattest.identities", &v17, &v16);
  v4 = v16;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
LABEL_8:
      CFRelease(v3);
      v11 = [MEMORY[0x277CBEA60] arrayWithArray:v2];
    }

    else
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x277CDC080];
      while (*a1 != 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        v10 = CFDictionaryGetValue(ValueAtIndex, v8);
        if ([v10 hasPrefix:@"aa:"])
        {
          [v2 addObject:v10];
        }

        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v12 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "AppAttestation.m";
        v20 = 1024;
        v21 = 889;
        _os_log_impl(&dword_226177000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot fetch all credential keychain labels, must exit.", buf, 0x12u);
      }

      v11 = v2;
    }
  }

  else
  {
    v11 = objc_opt_new();
  }

  v13 = v11;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t saveAssertionCounterKeychain(void *a1, int a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = buildKeychainLabel(a2, a3, a4, a5, @"ct");
  v24 = 0;
  v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v24];
  v12 = v24;
  v23 = v12;
  v13 = store_keychain_data(v11, @"com.apple.appattest.identities", v10, &v23);
  v14 = v23;

  if (v13)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v15 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      v16 = v15;
      v17 = [v9 intValue];
      *buf = 136315906;
      v26 = "AppAttestation.m";
      v27 = 1024;
      v28 = 963;
      v29 = 2112;
      v30 = v10;
      v31 = 1024;
      v32 = v17;
      _os_log_impl(&dword_226177000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d [AssertionCredentialKeychain] Saved assertion counter to keychain. { 'label':%@, 'counterValue':%d }", buf, 0x22u);
LABEL_10:
    }
  }

  else
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v18 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      v16 = v18;
      v19 = [v9 intValue];
      v20 = [v14 localizedDescription];
      *buf = 136316162;
      v26 = "AppAttestation.m";
      v27 = 1024;
      v28 = 964;
      v29 = 2112;
      v30 = v10;
      v31 = 1024;
      v32 = v19;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_226177000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d [AssertionCredentialKeychain] Failed to save assertion counter to keychain. { 'label':%@, 'counterValue':%d, 'error':%@ }", buf, 0x2Cu);

      goto LABEL_10;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v13;
}

id loadAssertionCounterKeychain(int a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = -1;
  v4 = buildKeychainLabel(a1, a2, a3, a4, @"ct");
  v20 = 0;
  v5 = copy_keychain_data(@"com.apple.appattest.identities", v4, &v21, &v20);
  v6 = v20;
  v7 = v6;
  if (v21)
  {
    v8 = v6;
LABEL_3:
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v9 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      v10 = v9;
      v11 = [0 intValue];
      v12 = [v8 localizedDescription];
      *buf = 136316162;
      v23 = "AppAttestation.m";
      v24 = 1024;
      v25 = 992;
      v26 = 2112;
      v27 = v4;
      v28 = 1024;
      v29 = v11;
      v30 = 2112;
      v31 = v12;
      _os_log_impl(&dword_226177000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [AssertionCredentialKeychain] Failed to load assertion counter from keychain. { 'label':%@, 'counterValue':%d, 'error':%@ }", buf, 0x2Cu);
    }

    v13 = 0;
    goto LABEL_8;
  }

  v19 = v6;
  v13 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v19];
  v8 = v19;

  if (!v13)
  {
    goto LABEL_3;
  }

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v16 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    v17 = v16;
    v18 = [v13 intValue];
    *buf = 136315906;
    v23 = "AppAttestation.m";
    v24 = 1024;
    v25 = 991;
    v26 = 2112;
    v27 = v4;
    v28 = 1024;
    v29 = v18;
    _os_log_impl(&dword_226177000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d [AssertionCredentialKeychain] Loaded assertion counter from keychain. { 'label':%@, 'counterValue':%d }", buf, 0x22u);
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

uint64_t deleteAssertionCounterKeychainWithLabel(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v10 = 0;
  v2 = delete_keychain_data(@"com.apple.appattest.identities", v1, &v10);
  v3 = v10;
  if (v2)
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v4 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v12 = "AppAttestation.m";
      v13 = 1024;
      v14 = 1003;
      v15 = 2112;
      v16 = v1;
      _os_log_impl(&dword_226177000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [AssertionCredentialKeychain] Deleted assertion counter from keychain. { 'label':%@ }", buf, 0x1Cu);
    }
  }

  else
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v5 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
    {
      v6 = v5;
      v7 = [v3 localizedDescription];
      *buf = 136315906;
      v12 = "AppAttestation.m";
      v13 = 1024;
      v14 = 1004;
      v15 = 2112;
      v16 = v1;
      v17 = 2112;
      v18 = v7;
      _os_log_impl(&dword_226177000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [AssertionCredentialKeychain] Failed to delete assertion counter from keychain. { 'label':%@, 'error':%@ }", buf, 0x26u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

id getAllAssertionCounterKeychainLabelsWithShouldExit(_BYTE *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = -1;
  v2 = objc_opt_new();
  v16 = 0;
  v3 = copy_all_datas(@"com.apple.appattest.identities", &v17, &v16);
  v4 = v16;
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count < 1)
    {
LABEL_8:
      CFRelease(v3);
      v11 = [MEMORY[0x277CBEA60] arrayWithArray:v2];
    }

    else
    {
      v6 = Count;
      v7 = 0;
      v8 = *MEMORY[0x277CDC080];
      while (*a1 != 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
        v10 = CFDictionaryGetValue(ValueAtIndex, v8);
        if ([v10 hasPrefix:@"aa:"])
        {
          [v2 addObject:v10];
        }

        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }

      if (AAInternalLogSystem_onceToken_3 != -1)
      {
        resolveAppUUIDKeychain_cold_1();
      }

      v12 = AAInternalLogSystem_log_3;
      if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "AppAttestation.m";
        v20 = 1024;
        v21 = 1031;
        _os_log_impl(&dword_226177000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot fetch all assertion counter keychain labels, must exit.", buf, 0x12u);
      }

      v11 = v2;
    }
  }

  else
  {
    v11 = objc_opt_new();
  }

  v13 = v11;

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id getApplicationIdentifierHashFromKeychainLabel(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@":"];
  if ([v2 count] > 4)
  {
    v5 = [v2 objectAtIndexedSubscript:2];
  }

  else
  {
    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      AAInternalLogSystem_cold_1();
    }

    v3 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v8 = 136315906;
      v9 = "AppAttestation.m";
      v10 = 1024;
      v11 = 1079;
      v12 = 2112;
      v13 = v1;
      v14 = 2048;
      v15 = [v2 count];
      _os_log_impl(&dword_226177000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d [BIKCredentialKeychain] Failed to fetch application identifier from keychain label. { 'label':%@, 'numComponents':%lu }", &v8, 0x26u);
    }

    v5 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id getAllAppUUIDKeychainLabelsWithShouldExit(_BYTE *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v42 = -1;
  v39 = objc_opt_new();
  v41 = 0;
  theArray = copy_all_datas(@"com.apple.appattest.identities", &v42, &v41);
  v30 = v41;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __getAllAppUUIDKeychainLabelsWithShouldExit_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = theArray;
  v31 = _Block_copy(aBlock);
  if (!theArray)
  {
    v24 = objc_opt_new();
    goto LABEL_42;
  }

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v1 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v44 = "AppAttestation.m";
    v45 = 1024;
    v46 = 1105;
    _os_log_impl(&dword_226177000, v1, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fetching all App UUIDs values from keychain.", buf, 0x12u);
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_35:
    v24 = [MEMORY[0x277CBEA60] arrayWithArray:v39];
    goto LABEL_42;
  }

  v2 = 0;
  key = *MEMORY[0x277CDC080];
  v29 = *MEMORY[0x277CDC5E8];
  while (*a1 != 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    v4 = CFDictionaryGetValue(ValueAtIndex, key);
    if ([v4 hasPrefix:@"au:"])
    {
      v37 = [v4 componentsSeparatedByString:@":"];
      if ([v37 count] == 2)
      {
        v5 = [v37 objectAtIndexedSubscript:1];
        v33 = CFDictionaryGetValue(ValueAtIndex, v29);
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v33 encoding:4];
        v32 = v6;
        if (v6)
        {
          v7 = [v6 componentsSeparatedByString:@":"];
          if ([v7 count] == 1)
          {
            v8 = 0;
            goto LABEL_17;
          }

          if ([v7 count] == 3)
          {
            v8 = 2;
LABEL_17:
            v9 = [v7 objectAtIndexedSubscript:v8];
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }

        v10 = isNSString(v9);
        v11 = v10 == 0;

        if (v11)
        {
          if (AAInternalLogSystem_onceToken_3 != -1)
          {
            resolveAppUUIDKeychain_cold_1();
          }

          v12 = AAInternalLogSystem_log_3;
          if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v44 = "AppAttestation.m";
            v45 = 1024;
            v46 = 1135;
            v47 = 2112;
            v48 = v9;
            _os_log_impl(&dword_226177000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d Invalid App UUID found. { appUUID=%@ }", buf, 0x1Cu);
          }
        }

        v13 = isNSString(v9);

        if (v13)
        {
          v14 = 1;
          v15 = @"d";
          do
          {
            v16 = v14;
            v17 = v15;
            v18 = [v9 dataUsingEncoding:4];
            v19 = getSHA256(v18);

            v20 = MEMORY[0x277CCACA8];
            v21 = [v19 base64EncodedStringWithOptions:0];
            v22 = [v20 stringWithFormat:@"%@%@%@:%@", @"aa:", v21, v17, v5];

            if (AAInternalLogSystem_onceToken_3 != -1)
            {
              resolveAppUUIDKeychain_cold_1();
            }

            v23 = AAInternalLogSystem_log_3;
            if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315906;
              v44 = "AppAttestation.m";
              v45 = 1024;
              v46 = 1145;
              v47 = 2112;
              v48 = v9;
              v49 = 2112;
              v50 = v22;
              _os_log_impl(&dword_226177000, v23, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fetched App UUID. { appUUID=%@, appUUIDKeychainLabel=%@ }", buf, 0x26u);
            }

            [v39 addObject:v22];

            v14 = 0;
            v15 = @"p";
          }

          while ((v16 & 1) != 0);
        }
      }
    }

    if (++v2 == Count)
    {
      goto LABEL_35;
    }
  }

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v25 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v44 = "AppAttestation.m";
    v45 = 1024;
    v46 = 1110;
    _os_log_impl(&dword_226177000, v25, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App UUIDs fetch operation must exit.", buf, 0x12u);
  }

  v24 = v39;
LABEL_42:
  v26 = v24;
  v31[2]();

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

void __getAllAppUUIDKeychainLabelsWithShouldExit_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

id listKeychainItems()
{
  v56 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = [v0 nextObject];
  if (v2)
  {
    v3 = v2;
    do
    {
      v52 = 0;
      v53 = 0;
      resolveAppAttestApplicationIdentifiersForApplicationRecord(v3, 0, 0, &v53, &v52);
      v4 = v53;
      v5 = v52;
      v6 = [v5 dataUsingEncoding:4];
      v7 = getSHA256(v6);

      v8 = [v7 base64EncodedStringWithOptions:0];
      [v1 setObject:v5 forKeyedSubscript:v8];

      v9 = [v0 nextObject];

      v3 = v9;
    }

    while (v9);
  }

  v41 = objc_alloc_init(AppAttestEligibilityManager);
  v10 = [(AppAttestEligibilityManager *)v41 allowlistedDaemons];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v48 + 1) + 8 * i);
        v16 = [v15 dataUsingEncoding:4];
        v17 = getSHA256(v16);

        v18 = [v17 base64EncodedStringWithOptions:0];
        [v1 setObject:v15 forKeyedSubscript:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v12);
  }

  v19 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];

  v20 = [v19 nextObject];
  if (v20)
  {
    v21 = v20;
    do
    {
      v46 = 0;
      v47 = 0;
      resolveAppAttestApplicationIdentifiersForApplicationExtensionRecord(v21, 0, 0, &v47, &v46);
      v22 = v47;
      v23 = v46;
      v24 = v23;
      if (v22)
      {
        v25 = v23 == 0;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v26 = [v23 dataUsingEncoding:4];
        v27 = getSHA256(v26);

        v28 = [v27 base64EncodedStringWithOptions:0];
        [v1 setObject:v24 forKeyedSubscript:v28];
      }

      v29 = [v19 nextObject];

      v21 = v29;
    }

    while (v29);
  }

  v30 = getAllCredentialKeychainLabels();
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v32 = v30;
  v33 = [v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v43;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v43 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = getApplicationIdentifierHashFromKeychainLabel(*(*(&v42 + 1) + 8 * j));
        v38 = [v1 objectForKey:v37];
        if (v38)
        {
          [v31 addObject:v38];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v34);
  }

  v39 = *MEMORY[0x277D85DE8];

  return v31;
}

void removeAllKeychainItemsForMissingAppsWithShouldExit(_BYTE *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    AAInternalLogSystem_cold_1();
  }

  v2 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "AppAttestation.m";
    v23 = 1024;
    v24 = 1222;
    _os_log_impl(&dword_226177000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing all keychain items for missing apps.", buf, 0x12u);
  }

  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = listOfInstalledAppHashesWithShouldExit(a1);
  v5 = [v3 initWithArray:v4];

  v6 = listOfAllowlistedDaemonHashesWithShouldExit(a1);
  v7 = [v5 arrayByAddingObjectsFromArray:v6];

  v8 = listOfInstalledExtensionHashesWithShouldExit(a1);
  v9 = [v7 arrayByAddingObjectsFromArray:v8];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __removeAllKeychainItemsForMissingAppsWithShouldExit_block_invoke;
  aBlock[3] = &__block_descriptor_40_e48_v32__0__NSArray_8__NSArray_16___v____NSArray__24l;
  aBlock[4] = a1;
  v10 = _Block_copy(aBlock);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __removeAllKeychainItemsForMissingAppsWithShouldExit_block_invoke_139;
  v19[3] = &__block_descriptor_40_e17_v16__0__NSArray_8l;
  v19[4] = a1;
  v11 = _Block_copy(v19);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __removeAllKeychainItemsForMissingAppsWithShouldExit_block_invoke_142;
  v18[3] = &__block_descriptor_40_e17_v16__0__NSArray_8l;
  v18[4] = a1;
  v12 = _Block_copy(v18);
  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v13 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "AppAttestation.m";
    v23 = 1024;
    v24 = 1313;
    _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing all stale credential keychain labels.", buf, 0x12u);
  }

  v14 = getAllCredentialKeychainLabelsWithShouldExit(a1);
  v10[2](v10, v14, v9, v11);

  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    resolveAppUUIDKeychain_cold_1();
  }

  v15 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "AppAttestation.m";
    v23 = 1024;
    v24 = 1316;
    _os_log_impl(&dword_226177000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Removing all stale assertion counter keychain labels.", buf, 0x12u);
  }

  v16 = getAllAssertionCounterKeychainLabelsWithShouldExit(a1);
  v10[2](v10, v16, v9, v12);

  v17 = *MEMORY[0x277D85DE8];
}

id listOfInstalledAppHashesWithShouldExit(_BYTE *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v3 = objc_opt_new();
  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    AAInternalLogSystem_cold_1();
  }

  v4 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v22 = "AppAttestation.m";
    v23 = 1024;
    v24 = 1332;
    _os_log_impl(&dword_226177000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fetching hashes for all installed Apps.", buf, 0x12u);
  }

  v5 = [v2 nextObject];
  if (v5)
  {
    v7 = v5;
    *&v6 = 136315906;
    v18 = v6;
    while (*a1 != 1)
    {
      v19 = 0;
      v20 = 0;
      resolveAppAttestApplicationIdentifiersForApplicationRecord(v7, 0, 0, &v20, &v19);
      v8 = v20;
      v9 = v19;
      v10 = [v9 dataUsingEncoding:4];
      v11 = getSHA256(v10);

      v12 = [v11 base64EncodedStringWithOptions:0];
      if (([v9 hasPrefix:@"com.apple."] & 1) == 0)
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v13 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
        {
          *buf = v18;
          v22 = "AppAttestation.m";
          v23 = 1024;
          v24 = 1345;
          v25 = 2112;
          v26 = v9;
          v27 = 2112;
          v28 = v12;
          _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fetched App. { appID=%@, appIDHash=%@ }", buf, 0x26u);
        }
      }

      [v3 addObject:{v12, v18}];

      v14 = [v2 nextObject];

      v7 = v14;
      if (!v14)
      {
        goto LABEL_20;
      }
    }

    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v15 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "AppAttestation.m";
      v23 = 1024;
      v24 = 1335;
      _os_log_impl(&dword_226177000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Installed app hashes operation must exit.", buf, 0x12u);
    }
  }

LABEL_20:

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

id listOfAllowlistedDaemonHashesWithShouldExit(_BYTE *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(AppAttestEligibilityManager);
  v3 = [(AppAttestEligibilityManager *)v2 allowlistedDaemons];
  v4 = [v3 mutableCopy];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v4 addObject:@"rcsStressTest.com.apple.coretelephony"];
  v19 = v2;
  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    AAInternalLogSystem_cold_1();
  }

  v6 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v26 = "AppAttestation.m";
    v27 = 1024;
    v28 = 1403;
    _os_log_impl(&dword_226177000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fetching hashes for all allowlisted daemons.", buf, 0x12u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        if (*a1 == 1)
        {
          if (AAInternalLogSystem_onceToken_3 != -1)
          {
            resolveAppUUIDKeychain_cold_1();
          }

          v16 = AAInternalLogSystem_log_3;
          if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v26 = "AppAttestation.m";
            v27 = 1024;
            v28 = 1406;
            _os_log_impl(&dword_226177000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Installed daemons operation must exit.", buf, 0x12u);
          }

          goto LABEL_22;
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = [v11 dataUsingEncoding:4];
        v13 = getSHA256(v12);

        v14 = [v13 base64EncodedStringWithOptions:0];
        [v5 addObject:v14];
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v15 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v26 = "AppAttestation.m";
          v27 = 1024;
          v28 = 1413;
          v29 = 2112;
          v30 = v11;
          v31 = 2112;
          v32 = v14;
          _os_log_impl(&dword_226177000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Fetched daemon. { daemon=%@, daemonHash=%@ }", buf, 0x26u);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v21 objects:v33 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

id listOfInstalledExtensionHashesWithShouldExit(_BYTE *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
  v3 = objc_opt_new();
  if (AAInternalLogSystem_onceToken_3 != -1)
  {
    AAInternalLogSystem_cold_1();
  }

  v4 = AAInternalLogSystem_log_3;
  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "AppAttestation.m";
    v24 = 1024;
    v25 = 1365;
    _os_log_impl(&dword_226177000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d   Installed extensions\n", buf, 0x12u);
  }

  v5 = [v2 nextObject];
  if (v5)
  {
    v7 = v5;
    *&v6 = 136315906;
    v19 = v6;
    while (*a1 != 1)
    {
      v20 = 0;
      v21 = 0;
      resolveAppAttestApplicationIdentifiersForApplicationExtensionRecord(v7, 0, 0, &v21, &v20);
      v8 = v21;
      v9 = v20;
      v10 = v9;
      if (v9)
      {
        v11 = [v9 dataUsingEncoding:4];
        v12 = getSHA256(v11);

        v13 = [v12 base64EncodedStringWithOptions:0];
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v14 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
        {
          *buf = v19;
          v23 = "AppAttestation.m";
          v24 = 1024;
          v25 = 1379;
          v26 = 2112;
          v27 = v10;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&dword_226177000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d     %@ -> %@\n", buf, 0x26u);
        }

        [v3 addObject:{v13, v19}];
      }

      v15 = [v2 nextObject];

      v7 = v15;
      if (!v15)
      {
        goto LABEL_21;
      }
    }

    if (AAInternalLogSystem_onceToken_3 != -1)
    {
      resolveAppUUIDKeychain_cold_1();
    }

    v16 = AAInternalLogSystem_log_3;
    if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "AppAttestation.m";
      v24 = 1024;
      v25 = 1368;
      _os_log_impl(&dword_226177000, v16, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Installed extensions operation must exit.", buf, 0x12u);
    }
  }

LABEL_21:

  v17 = *MEMORY[0x277D85DE8];

  return v3;
}

void __removeAllKeychainItemsForMissingAppsWithShouldExit_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = getAllAppUUIDKeychainLabelsWithShouldExit(*(a1 + 32));
  v11 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v54;
    *&v14 = 136315650;
    v39 = v14;
    v40 = v9;
    v41 = *v54;
    v42 = v10;
    v43 = v11;
    v44 = v12;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v12);
        }

        if (**(a1 + 32) == 1)
        {
          if (AAInternalLogSystem_onceToken_3 != -1)
          {
            resolveAppUUIDKeychain_cold_1();
          }

          v9 = v40;
          v10 = v42;
          v11 = v43;
          v38 = AAInternalLogSystem_log_3;
          if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v59 = "AppAttestation.m";
            v60 = 1024;
            v61 = 1235;
            _os_log_impl(&dword_226177000, v38, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Keychain removal operation must exit.", buf, 0x12u);
          }

LABEL_56:

          goto LABEL_57;
        }

        v18 = *(*(&v53 + 1) + 8 * v17);
        v19 = getApplicationIdentifierHashFromKeychainLabel(v18);
        if (v19)
        {
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v20 = v8;
          v21 = v8;
          v22 = [v21 countByEnumeratingWithState:&v49 objects:v64 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v50;
LABEL_10:
            v25 = 0;
            while (1)
            {
              if (*v50 != v24)
              {
                objc_enumerationMutation(v21);
              }

              if (**(a1 + 32) == 1)
              {
                if (AAInternalLogSystem_onceToken_3 != -1)
                {
                  resolveAppUUIDKeychain_cold_1();
                }

                v8 = v20;
                v9 = v40;
                v10 = v42;
                v11 = v43;
                v36 = AAInternalLogSystem_log_3;
                if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v59 = "AppAttestation.m";
                  v60 = 1024;
                  v61 = 1247;
LABEL_54:
                  _os_log_impl(&dword_226177000, v36, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Keychain removal operation must exit.", buf, 0x12u);
                }

LABEL_55:

                v12 = v44;
                goto LABEL_56;
              }

              if ([v19 isEqualToString:*(*(&v49 + 1) + 8 * v25)])
              {
                break;
              }

              if (v23 == ++v25)
              {
                v23 = [v21 countByEnumeratingWithState:&v49 objects:v64 count:16];
                if (v23)
                {
                  goto LABEL_10;
                }

                goto LABEL_17;
              }
            }

            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v21 = v42;
            v29 = [v21 countByEnumeratingWithState:&v45 objects:v57 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v46;
LABEL_23:
              v32 = 0;
              while (1)
              {
                if (*v46 != v31)
                {
                  objc_enumerationMutation(v21);
                }

                if (**(a1 + 32) == 1)
                {
                  break;
                }

                if ([v18 hasPrefix:*(*(&v45 + 1) + 8 * v32)])
                {
                  if (AAInternalLogSystem_onceToken_3 != -1)
                  {
                    resolveAppUUIDKeychain_cold_1();
                  }

                  v8 = v20;
                  v34 = AAInternalLogSystem_log_3;
                  if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = v39;
                    v59 = "AppAttestation.m";
                    v60 = 1024;
                    v61 = 1271;
                    v62 = 2112;
                    v63 = v18;
                    _os_log_impl(&dword_226177000, v34, OS_LOG_TYPE_DEBUG, "%25s:%-5d Detected App is installed, not removing keychain entries. { label=%@ }", buf, 0x1Cu);
                  }

                  v12 = v44;
                  goto LABEL_36;
                }

                if (v30 == ++v32)
                {
                  v30 = [v21 countByEnumeratingWithState:&v45 objects:v57 count:16];
                  if (v30)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_30;
                }
              }

              v8 = v20;
              if (AAInternalLogSystem_onceToken_3 != -1)
              {
                resolveAppUUIDKeychain_cold_1();
              }

              v9 = v40;
              v10 = v42;
              v11 = v43;
              v36 = AAInternalLogSystem_log_3;
              if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v59 = "AppAttestation.m";
                v60 = 1024;
                v61 = 1266;
                goto LABEL_54;
              }

              goto LABEL_55;
            }

LABEL_30:

            if (AAInternalLogSystem_onceToken_3 != -1)
            {
              resolveAppUUIDKeychain_cold_1();
            }

            v8 = v20;
            v12 = v44;
            v33 = AAInternalLogSystem_log_3;
            if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
            {
              *buf = v39;
              v59 = "AppAttestation.m";
              v60 = 1024;
              v61 = 1278;
              v62 = 2112;
              v63 = v18;
              v27 = v33;
              v28 = "%25s:%-5d Detected App is installed, but App UUID entry in keychain is stale, preparing keychain entry for removal. { label=%@ }";
              goto LABEL_34;
            }
          }

          else
          {
LABEL_17:

            if (AAInternalLogSystem_onceToken_3 != -1)
            {
              resolveAppUUIDKeychain_cold_1();
            }

            v12 = v44;
            v26 = AAInternalLogSystem_log_3;
            v8 = v20;
            if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
            {
              *buf = v39;
              v59 = "AppAttestation.m";
              v60 = 1024;
              v61 = 1259;
              v62 = 2112;
              v63 = v18;
              v27 = v26;
              v28 = "%25s:%-5d Detected App is no longer installed, preparing keychain entry for removal. { label=%@ }";
LABEL_34:
              _os_log_impl(&dword_226177000, v27, OS_LOG_TYPE_DEBUG, v28, buf, 0x1Cu);
            }
          }

          [v43 addObject:{v18, v39}];
LABEL_36:
          v16 = v41;
        }

        ++v17;
      }

      while (v17 != v15);
      v35 = [v12 countByEnumeratingWithState:&v53 objects:v65 count:16];
      v15 = v35;
      v9 = v40;
      v10 = v42;
      v11 = v43;
      if (v35)
      {
        continue;
      }

      break;
    }
  }

  v9[2](v9, v11);
LABEL_57:

  v37 = *MEMORY[0x277D85DE8];
}

void __removeAllKeychainItemsForMissingAppsWithShouldExit_block_invoke_139(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v6 = *v16;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (**(a1 + 32) == 1)
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v13 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v20 = "AppAttestation.m";
          v21 = 1024;
          v22 = 1290;
          _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Keychain removal operation must exit.", buf, 0x12u);
        }

        goto LABEL_24;
      }

      v8 = *(*(&v15 + 1) + 8 * i);
      if (deleteCredentialKeychainWithLabel(v8))
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v9 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v20 = "AppAttestation.m";
          v21 = 1024;
          v22 = 1295;
          v23 = 2112;
          v24 = v8;
          v10 = v9;
          v11 = "%25s:%-5d [BIKCredentialKeychain] Removed credential from keychain. { 'label':%@ }";
LABEL_16:
          _os_log_impl(&dword_226177000, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0x1Cu);
          continue;
        }
      }

      else
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v12 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v20 = "AppAttestation.m";
          v21 = 1024;
          v22 = 1296;
          v23 = 2112;
          v24 = v8;
          v10 = v12;
          v11 = "%25s:%-5d [BIKCredentialKeychain] Failed to remove credential from keychain. { 'label':%@ }";
          goto LABEL_16;
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v14 = *MEMORY[0x277D85DE8];
}

void __removeAllKeychainItemsForMissingAppsWithShouldExit_block_invoke_142(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v4;
  v6 = *v16;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if (**(a1 + 32) == 1)
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v13 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v20 = "AppAttestation.m";
          v21 = 1024;
          v22 = 1303;
          _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Keychain removal operation must exit.", buf, 0x12u);
        }

        goto LABEL_24;
      }

      v8 = *(*(&v15 + 1) + 8 * i);
      if (deleteAssertionCounterKeychainWithLabel(v8))
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v9 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v20 = "AppAttestation.m";
          v21 = 1024;
          v22 = 1308;
          v23 = 2112;
          v24 = v8;
          v10 = v9;
          v11 = "%25s:%-5d [AssertionCredentialKeychain] Removed assertion counter from keychain. { 'label':%@ }";
LABEL_16:
          _os_log_impl(&dword_226177000, v10, OS_LOG_TYPE_DEBUG, v11, buf, 0x1Cu);
          continue;
        }
      }

      else
      {
        if (AAInternalLogSystem_onceToken_3 != -1)
        {
          resolveAppUUIDKeychain_cold_1();
        }

        v12 = AAInternalLogSystem_log_3;
        if (os_log_type_enabled(AAInternalLogSystem_log_3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v20 = "AppAttestation.m";
          v21 = 1024;
          v22 = 1309;
          v23 = 2112;
          v24 = v8;
          v10 = v12;
          v11 = "%25s:%-5d [AssertionCredentialKeychain] Failed to remove assertion counter from keychain. { 'label':%@ }";
          goto LABEL_16;
        }
      }
    }

    v5 = [v3 countByEnumeratingWithState:&v15 objects:v25 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_24:

  v14 = *MEMORY[0x277D85DE8];
}

void __fetchPublicKey_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __fetchPublicKey_block_invoke_149(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __AAInternalLogSystem_block_invoke_3()
{
  AAInternalLogSystem_log_3 = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

void sub_226188588(_Unwind_Exception *a1)
{
  (*(v3 + 16))(v3);
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void sub_2261893FC(_Unwind_Exception *a1)
{
  (*(v3 + 16))(v3);
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void sub_226189878(_Unwind_Exception *a1)
{
  (*(v3 + 16))(v3);
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

uint64_t __AAInternalLogSystem_block_invoke_4()
{
  AAInternalLogSystem_log_4 = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

uint64_t isRunningInDiagnosticsMode()
{
  if (isRunningInDiagnosticsMode_onceToken != -1)
  {
    isRunningInDiagnosticsMode_cold_1();
  }

  return isRunningInDiagnosticsMode_retval;
}

void __isRunningInDiagnosticsMode_block_invoke()
{
  v1 = MGCopyAnswer();
  v0 = isNSNumber(v1);

  if (v0)
  {
    isRunningInDiagnosticsMode_retval = [v1 BOOLValue];
  }
}

id isNSNumber(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSDictionary(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSString(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id isNSData(void *a1)
{
  v1 = a1;
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id copy_process_name()
{
  v0 = MEMORY[0x28223BE20]();
  v11 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x1000uLL);
  memset(v9, 0, sizeof(v9));
  if (v0 && ([MEMORY[0x277CCAE80] currentConnection], (v1 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v2 = v1;
    v3 = [v1 processIdentifier];
  }

  else
  {
    v3 = getpid();
  }

  proc_pidpath(v3, buffer, 0x1000u);
  v4 = strlen(buffer);
  if ((v4 & 0x80000000) == 0)
  {
    do
    {
      if (buffer[v4] == 47)
      {
        break;
      }
    }

    while (v4-- > 0);
  }

  __strlcpy_chk();
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s", v9];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t AppAttest_DeviceAttestation_IsSupportedWithAuditToken(_OWORD *a1)
{
  if (+[FeatureFlagsManager isModernizationEnabled])
  {
    v2 = [_TtC17AppAttestInternal19DeviceAttestHandler alloc];
    v3 = a1[1];
    v7[0] = *a1;
    v7[1] = v3;
    v4 = [(DeviceAttestHandler *)v2 initWith:v7];
    v5 = [(DeviceAttestHandler *)v4 isSupported];

    return v5;
  }

  else
  {

    return DeviceIdentityIsSupported();
  }
}

void AppAttest_DeviceAttestation_AttestKeyWithAuditToken(_OWORD *a1, __SecKey *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = +[FeatureFlagsManager isModernizationEnabled];
  if (v7 && a2 && v9)
  {
    v10 = [_TtC17AppAttestInternal19DeviceAttestHandler alloc];
    v11 = a1[1];
    v13[0] = *a1;
    v13[1] = v11;
    v12 = [(DeviceAttestHandler *)v10 initWith:v13];
    [(DeviceAttestHandler *)v12 attestKeyWith:a2 options:v7 completion:v8];
  }

  else
  {
    AppAttest_DeviceAttestation_AttestKey(a2, v7, v8);
  }
}

void AppAttest_DeviceAttestation_AttestKey(__SecKey *a1, void *a2, void *a3)
{
  v166[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v154 = 0;
  v155 = &v154;
  v156 = 0x3032000000;
  v157 = __Block_byref_object_copy__1;
  v158 = __Block_byref_object_dispose__1;
  v159 = 0;
  if (v6)
  {
    v7 = 60.0;
    if ((DeviceIdentityIsSupported() & 1) == 0)
    {
      if (AAInternalLogSystem_onceToken_5 != -1)
      {
        AppAttest_DeviceAttestation_AttestKey_cold_1();
      }

      v42 = AAInternalLogSystem_log_5;
      if (os_log_type_enabled(AAInternalLogSystem_log_5, OS_LOG_TYPE_ERROR))
      {
        v46 = 0;
        v47 = 0;
        v48 = 47;
        do
        {
          v49 = &aLibraryCachesC_5[v46];
          if (v48 == 47)
          {
            v47 = &aLibraryCachesC_5[v46];
          }

          v48 = v49[1];
          if (!v49[1])
          {
            break;
          }

          v39 = v46++ >= 0xFFF;
        }

        while (!v39);
        if (v47)
        {
          v50 = v47 + 1;
        }

        else
        {
          v50 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
        }

        *error = 136315394;
        *&error[4] = v50;
        v161 = 1024;
        v162 = 254;
        _os_log_impl(&dword_226177000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d Device attestation is not supported.", error, 0x12u);
      }

      v51 = createAppAttestError("AppAttest_DeviceAttestation_AttestKey", 255, -4, 0, @"Not supported", v43, v44, v45, v148);
      goto LABEL_60;
    }

    v8 = (v155 + 5);
    v9 = v155[5];
    if (isSupportedSPIClient_onceToken_0[0] != -1)
    {
      AppAttest_DeviceAttestation_AttestKey_cold_2();
    }

    v13 = copy_current_process_name();
    if (v13)
    {
      if ([isSupportedSPIClient_supportedList_0 containsObject:v13])
      {

        objc_storeStrong(v8, v9);
        v17 = (v155 + 5);
        v18 = v155[5];
        *error = 0;
        v19 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
        v23 = v19;
        if (!v19)
        {
          v18 = createAppAttestError("validateDeviceAttestationEntitlements", 77, -1, 0, @"Failed to create task.", v20, v21, v22, v148);
          v74 = v18;
          v24 = 0;
          v33 = 0;
          v32 = v18;
          goto LABEL_72;
        }

        v24 = SecTaskCopyValueForEntitlement(v19, @"com.apple.appattest.spi", error);
        v25 = isNSNumber(v24);
        if (v25 && (v26 = [v24 BOOLValue], v25, (v26 & 1) != 0))
        {
          v27 = SecTaskCopyValueForEntitlement(v23, @"com.apple.mobileactivationd.eda", error);

          v28 = isNSNumber(v27);
          if (!v28 || (v29 = [v27 BOOLValue], v28, (v29 & 1) == 0))
          {
            v75 = *error;
            v166[0] = @"com.apple.mobileactivationd.eda";
            *buf = MEMORY[0x277CBEC38];
            v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v166 count:1];
            v18 = createAppAttestError("validateDeviceAttestationEntitlements", 89, -5, v75, @"Missing required entitlement: %@", v76, v77, v78, v69);
            v24 = v27;
            goto LABEL_70;
          }

          v24 = SecTaskCopyValueForEntitlement(v23, @"com.apple.security.attestation.access", error);

          v30 = isNSNumber(v24);
          if (v30)
          {
            v31 = [v24 BOOLValue];

            if (v31)
            {
              v32 = 0;
              v33 = 1;
LABEL_71:
              CFRelease(v23);
LABEL_72:
              if (*error)
              {
                CFRelease(*error);
              }

              objc_storeStrong(v17, v18);
              if ((v33 & 1) == 0)
              {
                if (AAInternalLogSystem_onceToken_5 != -1)
                {
                  AppAttest_DeviceAttestation_AttestKey_cold_1();
                }

                v66 = AAInternalLogSystem_log_5;
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  v92 = 0;
                  v93 = 0;
                  v94 = 47;
                  do
                  {
                    v95 = &aLibraryCachesC_5[v92];
                    if (v94 == 47)
                    {
                      v93 = &aLibraryCachesC_5[v92];
                    }

                    v94 = v95[1];
                    if (!v95[1])
                    {
                      break;
                    }

                    v39 = v92++ >= 0xFFF;
                  }

                  while (!v39);
                  v96 = [v155[5] localizedDescription];
                  v97 = v96;
                  if (v93)
                  {
                    v98 = v93 + 1;
                  }

                  else
                  {
                    v98 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
                  }

                  *error = 136315650;
                  *&error[4] = v98;
                  v161 = 1024;
                  v162 = 266;
                  v163 = 2112;
                  v164 = v96;
                  _os_log_impl(&dword_226177000, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to validate device attestation entitlements. { error=%@ }", error, 0x1Cu);
                }

                goto LABEL_61;
              }

              if (AAInternalLogSystem_onceToken_5 != -1)
              {
                AppAttest_DeviceAttestation_AttestKey_cold_1();
              }

              v80 = AAInternalLogSystem_log_5;
              if (os_log_type_enabled(AAInternalLogSystem_log_5, OS_LOG_TYPE_DEFAULT))
              {
                v81 = 0;
                v82 = 0;
                v83 = 47;
                do
                {
                  v84 = &aLibraryCachesC_5[v81];
                  if (v83 == 47)
                  {
                    v82 = &aLibraryCachesC_5[v81];
                  }

                  v83 = v84[1];
                  if (!v84[1])
                  {
                    break;
                  }

                  v39 = v81++ >= 0xFFF;
                }

                while (!v39);
                if (v82)
                {
                  v85 = v82 + 1;
                }

                else
                {
                  v85 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
                }

                *error = 136315650;
                *&error[4] = v85;
                v161 = 1024;
                v162 = 272;
                v163 = 2112;
                v164 = a1;
                _os_log_impl(&dword_226177000, v80, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attempting to validate key. { referenceKey=%@ }", error, 0x1Cu);
              }

              if (!a1)
              {
                goto LABEL_136;
              }

              v86 = SecKeyCopyAttributes(a1);
              Value = CFDictionaryGetValue(v86, *MEMORY[0x277CDC158]);
              v88 = isNSString(Value);
              v89 = v88;
              if (!v88 || [v88 compare:*MEMORY[0x277CDC170]] && objc_msgSend(v89, "compare:", *MEMORY[0x277CDC160]))
              {
                v90 = 0;
                v91 = 0;
                goto LABEL_117;
              }

              v99 = CFDictionaryGetValue(v86, *MEMORY[0x277CDC018]);
              v100 = isNSNumber(v99);
              v91 = v100;
              if (!v100 || [v100 unsignedLongValue] != 256 && objc_msgSend(v91, "unsignedLongValue") != 384)
              {
                v90 = 0;
LABEL_117:
                v103 = 0;
                if (!v86)
                {
                  goto LABEL_119;
                }

                goto LABEL_118;
              }

              v101 = CFDictionaryGetValue(v86, *MEMORY[0x277CDC028]);
              v102 = isNSString(v101);
              v103 = v102;
              if (!v102 || [v102 compare:*MEMORY[0x277CDC070]] && objc_msgSend(v103, "compare:", *MEMORY[0x277CDC068]) && objc_msgSend(v103, "compare:", *MEMORY[0x277CDC040]) && objc_msgSend(v103, "compare:", *MEMORY[0x277CDC048]))
              {
                v90 = 0;
                if (!v86)
                {
                  goto LABEL_119;
                }
              }

              else
              {
                v90 = 1;
                if (!v86)
                {
LABEL_119:

                  if (v90)
                  {
                    v104 = v5;
                    v105 = *MEMORY[0x277D04938];
                    v106 = [v104 objectForKeyedSubscript:*MEMORY[0x277D04938]];
                    v107 = isNSNumber(v106);
                    if (v107)
                    {
                      v108 = [v104 objectForKeyedSubscript:v105];
                      v109 = [v108 BOOLValue];

                      if (v109)
                      {
                        v110 = *MEMORY[0x277D048E8];
                        v111 = [v104 objectForKeyedSubscript:*MEMORY[0x277D048E8]];
                        v112 = isNSNumber(v111);

                        if (!v112 || ([v104 objectForKeyedSubscript:v110], v113 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v113, "doubleValue"), v7 = v114, v113, v7 > 0.0))
                        {
                          v118 = (v155 + 5);
                          obj = v155[5];
                          v41 = createDeviceAttestationRequest(1, 1, a1, v104, &obj);
                          objc_storeStrong(v118, obj);
                          if (v41)
                          {
LABEL_62:
                            if (v155[5])
                            {
                              v6[2](v6, 0);
                            }

                            else
                            {
                              v150[0] = MEMORY[0x277D85DD0];
                              v150[1] = 3221225472;
                              v150[2] = __AppAttest_DeviceAttestation_AttestKey_block_invoke;
                              v150[3] = &unk_278585168;
                              v152 = &v154;
                              v151 = v6;
                              AppAttest_Common_AttestKeyRequest(1u, 1, v41, a1, v150, v7);
                            }

                            goto LABEL_65;
                          }

                          v66 = AAInternalLogSystem_0();
                          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                          {
                            v119 = 0;
                            v120 = 0;
                            v121 = 47;
                            do
                            {
                              v122 = &aLibraryCachesC_5[v119];
                              if (v121 == 47)
                              {
                                v120 = &aLibraryCachesC_5[v119];
                              }

                              v121 = v122[1];
                              if (!v122[1])
                              {
                                break;
                              }

                              v39 = v119++ >= 0xFFF;
                            }

                            while (!v39);
                            v123 = [v155[5] localizedDescription];
                            v124 = v123;
                            if (v120)
                            {
                              v125 = v120 + 1;
                            }

                            else
                            {
                              v125 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
                            }

                            *error = 136315650;
                            *&error[4] = v125;
                            v161 = 1024;
                            v162 = 297;
                            v163 = 2112;
                            v164 = v123;
                            _os_log_impl(&dword_226177000, v66, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create device attestation request. { error=%@ }", error, 0x1Cu);
                          }

LABEL_61:

                          v41 = 0;
                          goto LABEL_62;
                        }

                        v51 = createAppAttestError("AppAttest_DeviceAttestation_AttestKey", 289, -2, 0, @"Invalid network timeout requested", v115, v116, v117, v148);
LABEL_60:
                        v66 = v155[5];
                        v155[5] = v51;
                        goto LABEL_61;
                      }
                    }

                    else
                    {
                    }

                    v135 = AAInternalLogSystem_0();
                    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
                    {
                      v136 = 0;
                      v137 = 0;
                      v138 = 47;
                      do
                      {
                        v139 = &aLibraryCachesC_5[v136];
                        if (v138 == 47)
                        {
                          v137 = &aLibraryCachesC_5[v136];
                        }

                        v138 = v139[1];
                        if (!v139[1])
                        {
                          break;
                        }

                        v39 = v136++ >= 0xFFF;
                      }

                      while (!v39);
                      if (v137)
                      {
                        v140 = v137 + 1;
                      }

                      else
                      {
                        v140 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
                      }

                      *error = 136315650;
                      *&error[4] = v140;
                      v161 = 1024;
                      v162 = 280;
                      v163 = 2112;
                      v164 = v104;
                      _os_log_impl(&dword_226177000, v135, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid device attestation options. { options=%@ }", error, 0x1Cu);
                    }

                    v51 = createAppAttestError("AppAttest_DeviceAttestation_AttestKey", 281, -3, 0, @"Invalid options", v141, v142, v143, v148);
                    goto LABEL_60;
                  }

LABEL_136:
                  if (AAInternalLogSystem_onceToken_5 != -1)
                  {
                    AppAttest_DeviceAttestation_AttestKey_cold_1();
                  }

                  v126 = AAInternalLogSystem_log_5;
                  if (os_log_type_enabled(AAInternalLogSystem_log_5, OS_LOG_TYPE_ERROR))
                  {
                    v130 = 0;
                    v131 = 0;
                    v132 = 47;
                    do
                    {
                      v133 = &aLibraryCachesC_5[v130];
                      if (v132 == 47)
                      {
                        v131 = &aLibraryCachesC_5[v130];
                      }

                      v132 = v133[1];
                      if (!v133[1])
                      {
                        break;
                      }

                      v39 = v130++ >= 0xFFF;
                    }

                    while (!v39);
                    if (v131)
                    {
                      v134 = v131 + 1;
                    }

                    else
                    {
                      v134 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
                    }

                    *error = 136315650;
                    *&error[4] = v134;
                    v161 = 1024;
                    v162 = 274;
                    v163 = 2112;
                    v164 = a1;
                    _os_log_impl(&dword_226177000, v126, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid referenceKey. { referenceKey=%@ }", error, 0x1Cu);
                  }

                  v51 = createAppAttestError("AppAttest_DeviceAttestation_AttestKey", 275, -3, 0, @"Invalid referenceKey", v127, v128, v129, v148);
                  goto LABEL_60;
                }
              }

LABEL_118:
              CFRelease(v86);
              goto LABEL_119;
            }
          }

          v144 = *error;
          v166[0] = @"com.apple.security.attestation.access";
          *buf = MEMORY[0x277CBEC38];
          v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v166 count:1];
          v73 = createAppAttestError("validateDeviceAttestationEntitlements", 95, -5, v144, @"Missing required entitlement: %@", v145, v146, v147, v69);
        }

        else
        {
          v68 = *error;
          v166[0] = @"com.apple.appattest.spi";
          *buf = MEMORY[0x277CBEC38];
          v69 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v166 count:1];
          v73 = createAppAttestError("validateDeviceAttestationEntitlements", 83, -5, v68, @"Missing required entitlement: %@", v70, v71, v72, v69);
        }

        v18 = v73;
LABEL_70:

        v79 = v18;
        v33 = 0;
        v32 = v18;
        goto LABEL_71;
      }

      v52 = createAppAttestError("isSupportedSPIClient", 202, -1, 0, @"%@ is not allowed to use this API.  Please refer to the header file for onboarding information.", v14, v15, v16, v13);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        v53 = [v52 localizedDescription];
        AppAttest_WebAuthentication_AttestKey_cold_2(v53, buf);
      }
    }

    else
    {
      v52 = createAppAttestError("isSupportedSPIClient", 197, -1, 0, @"Failed to query process name.", v10, v11, v12, v148);
    }

    v54 = v52;

    objc_storeStrong(v8, v52);
    if (AAInternalLogSystem_onceToken_5 != -1)
    {
      AppAttest_DeviceAttestation_AttestKey_cold_1();
    }

    v55 = AAInternalLogSystem_log_5;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      v56 = 0;
      v57 = 0;
      v58 = 47;
      do
      {
        v59 = &aLibraryCachesC_5[v56];
        if (v58 == 47)
        {
          v57 = &aLibraryCachesC_5[v56];
        }

        v58 = v59[1];
        if (!v59[1])
        {
          break;
        }

        v39 = v56++ >= 0xFFF;
      }

      while (!v39);
      v60 = [v155[5] localizedDescription];
      v61 = v60;
      if (v57)
      {
        v62 = v57 + 1;
      }

      else
      {
        v62 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
      }

      *error = 136315650;
      *&error[4] = v62;
      v161 = 1024;
      v162 = 260;
      v163 = 2112;
      v164 = v60;
      _os_log_impl(&dword_226177000, v55, OS_LOG_TYPE_ERROR, "%25s:%-5d Client is not supported. { error=%@ }", error, 0x1Cu);
    }

    v51 = createAppAttestError("AppAttest_DeviceAttestation_AttestKey", 261, -1, v155[5], @"Client is not supported.", v63, v64, v65, v149);
    goto LABEL_60;
  }

  if (AAInternalLogSystem_onceToken_5 != -1)
  {
    AppAttest_DeviceAttestation_AttestKey_cold_1();
  }

  v34 = AAInternalLogSystem_log_5;
  if (os_log_type_enabled(AAInternalLogSystem_log_5, OS_LOG_TYPE_ERROR))
  {
    v35 = 0;
    v36 = 0;
    v37 = 47;
    do
    {
      v38 = &aLibraryCachesC_5[v35];
      if (v37 == 47)
      {
        v36 = &aLibraryCachesC_5[v35];
      }

      v37 = v38[1];
      if (!v38[1])
      {
        break;
      }

      v39 = v35++ >= 0xFFF;
    }

    while (!v39);
    if (v36)
    {
      v40 = v36 + 1;
    }

    else
    {
      v40 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
    }

    *error = 136315394;
    *&error[4] = v40;
    v161 = 1024;
    v162 = 248;
    _os_log_impl(&dword_226177000, v34, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to attest key, completion handler is nil.", error, 0x12u);
  }

  v41 = 0;
LABEL_65:

  _Block_object_dispose(&v154, 8);
  v67 = *MEMORY[0x277D85DE8];
}

void sub_22618B748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id AAInternalLogSystem_0()
{
  if (AAInternalLogSystem_onceToken_5 != -1)
  {
    AAInternalLogSystem_cold_1_0();
  }

  v1 = AAInternalLogSystem_log_5;

  return v1;
}

uint64_t __AAInternalLogSystem_block_invoke_5()
{
  AAInternalLogSystem_log_5 = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

void __isSupportedSPIClient_block_invoke_0()
{
  v0 = isSupportedSPIClient_supportedList_0;
  isSupportedSPIClient_supportedList_0 = &unk_283960EF0;
}

BOOL fetchAlwaysAccessibleKeysEntitlement(_OWORD *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBECE8];
  v2 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &token);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __fetchAlwaysAccessibleKeysEntitlement_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v3;
  v4 = _Block_copy(aBlock);
  v13[4] = 0;
  error = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __fetchAlwaysAccessibleKeysEntitlement_block_invoke_2;
  v13[3] = &__block_descriptor_40_e5_v8__0l;
  v5 = _Block_copy(v13);
  v6 = SecTaskCopyValueForEntitlement(v3, @"com.apple.devicecheck.private.always-accessible-keys", &error);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __fetchAlwaysAccessibleKeysEntitlement_block_invoke_3;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = v6;
  v7 = _Block_copy(v12);
  if (AAInternalLogSystem_onceToken_6 != -1)
  {
    fetchAlwaysAccessibleKeysEntitlement_cold_1();
  }

  v8 = *MEMORY[0x277CBED28];
  v9 = AAInternalLogSystem_log_6;
  if (os_log_type_enabled(AAInternalLogSystem_log_6, OS_LOG_TYPE_DEFAULT))
  {
    token.val[0] = 136315650;
    *&token.val[1] = "AppAttestUtils.m";
    LOWORD(token.val[3]) = 1024;
    *(&token.val[3] + 2) = 41;
    HIWORD(token.val[4]) = 1024;
    token.val[5] = v6 == v8;
    _os_log_impl(&dword_226177000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Fetched should use always accessible keys entitlement. { shouldUseAlwaysAccessibleKeysEntitlement=%d }", &token, 0x18u);
  }

  v7[2](v7);

  v5[2](v5);
  v4[2](v4);

  v10 = *MEMORY[0x277D85DE8];
  return v6 == v8;
}

void __fetchAlwaysAccessibleKeysEntitlement_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __fetchAlwaysAccessibleKeysEntitlement_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __fetchAlwaysAccessibleKeysEntitlement_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

id fetchOptInEntitlements(_OWORD *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *MEMORY[0x277CBECE8];
  v2 = a1[1];
  *token.val = *a1;
  *&token.val[4] = v2;
  v3 = SecTaskCreateWithAuditToken(v1, &token);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __fetchOptInEntitlements_block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = v3;
  v4 = _Block_copy(aBlock);
  v14[4] = 0;
  error = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __fetchOptInEntitlements_block_invoke_2;
  v14[3] = &__block_descriptor_40_e5_v8__0l;
  v5 = _Block_copy(v14);
  v6 = SecTaskCopyValueForEntitlement(v3, @"com.apple.developer.devicecheck.app-attest-opt-in", &error);
  if (error)
  {
    if (AAInternalLogSystem_onceToken_6 != -1)
    {
      fetchAlwaysAccessibleKeysEntitlement_cold_1();
    }

    v7 = AAInternalLogSystem_log_6;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(__CFError *)error localizedDescription];
      token.val[0] = 136315650;
      *&token.val[1] = "AppAttestUtils.m";
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 57;
      HIWORD(token.val[4]) = 2112;
      *&token.val[5] = v8;
      _os_log_impl(&dword_226177000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch entitlement. { error=%@ }", &token, 0x1Cu);
    }

LABEL_7:
    v9 = 0;
    goto LABEL_8;
  }

  v9 = v6;
  if (!v6)
  {
    if (AAInternalLogSystem_onceToken_6 != -1)
    {
      fetchAlwaysAccessibleKeysEntitlement_cold_1();
    }

    v13 = AAInternalLogSystem_log_6;
    if (os_log_type_enabled(AAInternalLogSystem_log_6, OS_LOG_TYPE_DEFAULT))
    {
      token.val[0] = 136315394;
      *&token.val[1] = "AppAttestUtils.m";
      LOWORD(token.val[3]) = 1024;
      *(&token.val[3] + 2) = 62;
      _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d No values for opt-in entitlement found.", &token, 0x12u);
    }

    goto LABEL_7;
  }

  if (AAInternalLogSystem_onceToken_6 != -1)
  {
    fetchAlwaysAccessibleKeysEntitlement_cold_1();
  }

  v12 = AAInternalLogSystem_log_6;
  if (os_log_type_enabled(AAInternalLogSystem_log_6, OS_LOG_TYPE_DEFAULT))
  {
    token.val[0] = 136315650;
    *&token.val[1] = "AppAttestUtils.m";
    LOWORD(token.val[3]) = 1024;
    *(&token.val[3] + 2) = 67;
    HIWORD(token.val[4]) = 2112;
    *&token.val[5] = v9;
    _os_log_impl(&dword_226177000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Fetched opt-in entitlement values. { values=%@ }", &token, 0x1Cu);
  }

LABEL_8:
  v5[2](v5);

  v4[2](v4);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_22618C750(_Unwind_Exception *a1)
{
  (*(v2 + 16))(v2);
  (*(v1 + 16))(v1);
  _Unwind_Resume(a1);
}

void __fetchOptInEntitlements_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __fetchOptInEntitlements_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

AppAttestCDHash *fetchCdHash(_OWORD *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v1;
  audit_token_to_pid(&atoken);
  memset(v12, 0, 21);
  v2 = csops();
  if (v2)
  {
    v3 = v2;
    if (AAInternalLogSystem_onceToken_6 != -1)
    {
      fetchAlwaysAccessibleKeysEntitlement_cold_1();
    }

    v4 = AAInternalLogSystem_log_6;
    if (os_log_type_enabled(AAInternalLogSystem_log_6, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = strerror(v3);
      atoken.val[0] = 136315650;
      *&atoken.val[1] = "AppAttestUtils.m";
      LOWORD(atoken.val[3]) = 1024;
      *(&atoken.val[3] + 2) = 79;
      HIWORD(atoken.val[4]) = 2080;
      *&atoken.val[5] = v6;
      _os_log_impl(&dword_226177000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch CD hash. { error=%s }", &atoken, 0x1Cu);
    }

    v7 = 0;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v12 length:20];
    v9 = [AppAttestCDHash alloc];
    v7 = [(AppAttestCDHash *)v9 initWithHash:v8 andType:BYTE4(v12[2])];
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

id createGenericAuthenticatorDataShort(void *a1, char a2, void *a3, void *a4)
{
  v7 = a1;
  v24 = a2;
  v8 = a3;
  v23 = 0;
  v9 = isNSData(v7);
  if (v9 && (v13 = v9, v14 = [v7 length], v13, v14 == 32))
  {
    v15 = isNSNumber(v8);

    if (v15)
    {
      v19 = [objc_alloc(MEMORY[0x277CBEB28]) initWithData:v7];
      [v19 appendBytes:&v24 length:1];
      v23 = bswap32([v8 unsignedIntValue]);
      [v19 appendBytes:&v23 length:4];
      v15 = v19;
      v20 = 0;
      if (!a4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = createAppAttestError("createGenericAuthenticatorDataShort", 108, -2, 0, @"Invalid counter", v16, v17, v18, v22);
      if (!a4)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v20 = createAppAttestError("createGenericAuthenticatorDataShort", 103, -2, 0, @"Invalid rpID", v10, v11, v12, v22);
    v15 = 0;
    if (!a4)
    {
      goto LABEL_9;
    }
  }

  if (!v15)
  {
    v20 = v20;
    *a4 = v20;
  }

LABEL_9:

  return v15;
}

id createGenericAuthenticatorDataFull(void *a1, void *a2, char a3, void *a4, __SecKey *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a4;
  v43 = 0;
  v14 = encodeKeyToCOSE(a5, &v43);
  v15 = v43;
  if (v15)
  {
    v19 = v15;
    v20 = createAppAttestError("createGenericAuthenticatorDataFull", 146, -3, v15, @"Unable to generate credentialId.", v16, v17, v18, v40);
    v21 = 0;
    v22 = 0;
    goto LABEL_12;
  }

  v42 = 0;
  v21 = createGenericAuthenticatorDataShort(v12, a3, v13, &v42);
  v26 = v42;
  if (!v21)
  {
    v34 = @"Unable to generate authenticator data";
    v35 = 152;
    v36 = v26;
LABEL_10:
    v20 = createAppAttestError("createGenericAuthenticatorDataFull", v35, -1, v36, v34, v23, v24, v25, v40);
    v22 = 0;
    v19 = v26;
    goto LABEL_12;
  }

  [v21 appendData:v11];
  if ([v11 length] != 16)
  {
    v34 = @"Invalid aaguid length!";
    v35 = 158;
    v36 = 0;
    goto LABEL_10;
  }

  v41 = 0;
  v40 = v26;
  v22 = generateCredentialId(a5, &v40, v27, v28, v29, v23, v24, v25);
  v19 = v40;

  if (v22 && [v22 length] == 32)
  {
    v41 = 0x2000;
    [v21 appendBytes:&v41 length:2];
    [v21 appendData:v22];
    [v21 appendData:v14];
    v33 = v21;
    v21 = v33;
    goto LABEL_16;
  }

  v20 = createAppAttestError("createGenericAuthenticatorDataFull", 165, -1, v19, @"Invalid credentialId length!", v30, v31, v32, v40);
LABEL_12:

  if (a6)
  {
    v37 = v20;
    v33 = 0;
    *a6 = v20;
  }

  else
  {
    v33 = 0;
  }

  v19 = v20;
LABEL_16:
  v38 = v33;

  return v33;
}

uint64_t __AAInternalLogSystem_block_invoke_6()
{
  AAInternalLogSystem_log_6 = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

id AAInternalLogSystem_1()
{
  if (AAInternalLogSystem_onceToken_7 != -1)
  {
    AAInternalLogSystem_cold_1_1();
  }

  v1 = AAInternalLogSystem_log_7;

  return v1;
}

uint64_t AppAttest_AppAttestation_IsEligibleApplicationPriv(__int128 *a1)
{
  v2 = objc_alloc_init(AppAttestEligibilityManager);
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  if ([(AppAttestEligibilityManager *)v2 isEligibleForPrivService:&v7])
  {
    v4 = a1[1];
    v7 = *a1;
    v8 = v4;
    IsEligibleApplication = AppAttest_AppAttestation_IsEligibleApplication(&v7);
  }

  else
  {
    IsEligibleApplication = 0;
  }

  return IsEligibleApplication;
}

uint64_t AppAttest_AppAttestation_IsSupportedAndEligibleApplication(_OWORD *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(AppAttestEligibilityManager);
  v3 = [(AppAttestEligibilityManager *)v2 isSupportedHardware];

  if (!v3)
  {
    if (AAInternalLogSystem_onceToken_7 != -1)
    {
      AAInternalLogSystem_cold_1_1();
    }

    v4 = AAInternalLogSystem_log_7;
    if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
    {
      v5 = 0;
      v6 = 0;
      v7 = 47;
      do
      {
        v8 = &aLibraryCachesC_7[v5];
        if (v7 == 47)
        {
          v6 = &aLibraryCachesC_7[v5];
        }

        v7 = v8[1];
        if (!v8[1])
        {
          break;
        }

        v9 = v5++ >= 0xFFF;
      }

      while (!v9);
      if (v6)
      {
        v10 = v6 + 1;
      }

      else
      {
        v10 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
      }

      *v21 = 136315394;
      *&v21[4] = v10;
      *&v21[12] = 1024;
      *&v21[14] = 106;
      _os_log_impl(&dword_226177000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d App Attest is not supported.", v21, 0x12u);
    }
  }

  v11 = a1[1];
  *v21 = *a1;
  *&v21[16] = v11;
  IsEligibleApplication = AppAttest_AppAttestation_IsEligibleApplication(v21);
  if ((IsEligibleApplication & 1) == 0)
  {
    if (AAInternalLogSystem_onceToken_7 != -1)
    {
      AppAttest_AppAttestation_IsEligibleApplication_cold_1();
    }

    v13 = AAInternalLogSystem_log_7;
    if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
    {
      v14 = 0;
      v15 = 0;
      v16 = 47;
      do
      {
        v17 = &aLibraryCachesC_7[v14];
        if (v16 == 47)
        {
          v15 = &aLibraryCachesC_7[v14];
        }

        v16 = v17[1];
        if (!v17[1])
        {
          break;
        }

        v9 = v14++ >= 0xFFF;
      }

      while (!v9);
      if (v15)
      {
        v18 = v15 + 1;
      }

      else
      {
        v18 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
      }

      *v21 = 136315394;
      *&v21[4] = v18;
      *&v21[12] = 1024;
      *&v21[14] = 109;
      _os_log_impl(&dword_226177000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d Client application is not eligible to use App Attest.", v21, 0x12u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v3 & IsEligibleApplication;
}

void AppAttest_AppAttestation_CreateKey(__int128 *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (+[FeatureFlagsManager isModernizationEnabled])
  {
    v7 = [_TtC17AppAttestInternal16AppAttestHandler alloc];
    v8 = a1[1];
    v11 = *a1;
    v12 = v8;
    v9 = [(AppAttestHandler *)v7 initWith:&v11];
    [(AppAttestHandler *)v9 createKeyWith:v5 completion:v6];
  }

  else
  {
    v10 = a1[1];
    v11 = *a1;
    v12 = v10;
    CreateKey(&v11, 0, v5, v6);
  }
}

void CreateKey(_OWORD *a1, void *a2, void *a3, void *a4)
{
  v106 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    error = 0;
    v10 = objc_alloc_init(AppAttestEligibilityManager);
    v11 = a1[1];
    *buf = *a1;
    *&buf[16] = v11;
    v15 = &unk_28136F000;
    if ([(AppAttestEligibilityManager *)v10 isEligibleClientFor:buf])
    {
      if (!v7)
      {
        goto LABEL_7;
      }

      v16 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
      if (([v16 BOOLForKey:@"allowPrivAPI"] & 1) != 0 || (v17 = a1[1], *buf = *a1, *&buf[16] = v17, -[AppAttestEligibilityManager isEligibleForPrivService:](v10, "isEligibleForPrivService:", buf)))
      {

LABEL_7:
        v18 = a1[1];
        *buf = *a1;
        *&buf[16] = v18;
        EnvironmentByAppSigning = generateEnvironmentByAppSigning(buf);
        v102 = 0;
        v103 = 0;
        v101 = 0;
        v19 = a1[1];
        *buf = *a1;
        *&buf[16] = v19;
        v20 = extractApplicationIdentifiers(buf, v7, &v103, &v102, &v101);
        v21 = v103;
        v22 = v102;
        v26 = v101;
        if (v20)
        {
          resolveAppUUIDKeychain(v8, v21, v22);
          v98 = v96 = v22;
          if (!v98)
          {
            v27 = [MEMORY[0x277CCAD78] UUID];
            v98 = [v27 UUIDString];
          }

          v28 = a1[1];
          *buf = *a1;
          *&buf[16] = v28;
          if (fetchAlwaysAccessibleKeysEntitlement(buf))
          {
            v29 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBED08], *MEMORY[0x277CDBF00], 0x40000000uLL, &error);
            if (error)
            {
              if (AAInternalLogSystem_onceToken_7 != -1)
              {
                AppAttest_AppAttestation_IsEligibleApplication_cold_1();
              }

              v30 = AAInternalLogSystem_log_7;
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                v31 = 0;
                v32 = 0;
                v33 = 47;
                do
                {
                  v34 = &aLibraryCachesC_7[v31];
                  if (v33 == 47)
                  {
                    v32 = &aLibraryCachesC_7[v31];
                  }

                  v33 = v34[1];
                  if (!v34[1])
                  {
                    break;
                  }

                  v35 = v31++ >= 0xFFF;
                }

                while (!v35);
                if (v32)
                {
                  v36 = v32 + 1;
                }

                else
                {
                  v36 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                }

                v37 = CFErrorCopyDescription(error);
                *buf = 136315650;
                *&buf[4] = v36;
                *&buf[12] = 1024;
                *&buf[14] = 341;
                *&buf[18] = 2112;
                *&buf[20] = v37;
                v38 = v37;
                _os_log_impl(&dword_226177000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create always accessible keys access control policy. { error=%@ }", buf, 0x1Cu);
              }
            }
          }

          else
          {
            v29 = 0;
          }

          v100 = v26;
          v48 = createReferenceKeyBlob(v29, 0, &v100);
          v49 = v100;

          if (v48)
          {
            v99 = v49;
            v46 = generateCredentialIdString(v48, &v99, v50, v51, v52, v53, v54, v55);
            v45 = v99;

            if (v46)
            {
              v47 = v96;
              if (saveCredentialKeychain(v48, EnvironmentByAppSigning, v98, v96, v46))
              {
                if (v98 == v8 || (saveAppUUIDKeychain(v98, v21, v96) & 1) != 0)
                {
                  v15 = &unk_28136F000;
LABEL_69:
                  CFRelease(v48);
                  goto LABEL_70;
                }

                v74 = createAppAttestError("CreateKey", 364, -3, 0, @"Failed to refresh appUUID keychain", v62, v63, v64, v94);

                v98 = 0;
              }

              else
              {
                v74 = createAppAttestError("CreateKey", 357, -3, 0, @"Failed to store keychain", v59, v60, v61, v94);
              }

              v45 = v46;
              v15 = &unk_28136F000;
            }

            else
            {
              v74 = createAppAttestError("CreateKey", 352, -3, v45, @"Failed to generate credentialId", v56, v57, v58, v94);
            }

            v46 = 0;
            v45 = v74;
            v47 = v96;
            goto LABEL_69;
          }

          v45 = createAppAttestError("CreateKey", 346, -3, v49, @"Failed to create bik", v53, v54, v55, v94);

          v46 = 0;
          v47 = v96;
        }

        else
        {
          v45 = createAppAttestError("CreateKey", 327, -2, v26, @"Unable to fetch application identifier", v23, v24, v25, v94);

          v46 = 0;
          v98 = 0;
          v47 = v22;
        }

LABEL_70:
        v75 = v15[420];
        if (v45)
        {
          if (v75 != -1)
          {
            AppAttest_AppAttestation_IsEligibleApplication_cold_1();
          }

          v76 = AAInternalLogSystem_log_7;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
          {
            v97 = v47;
            v77 = v7;
            v78 = v10;
            v79 = v21;
            v80 = v8;
            v81 = 0;
            v82 = 0;
            v83 = 47;
            do
            {
              v84 = &aLibraryCachesC_7[v81];
              if (v83 == 47)
              {
                v82 = &aLibraryCachesC_7[v81];
              }

              v83 = v84[1];
              if (!v84[1])
              {
                break;
              }

              v35 = v81++ >= 0xFFF;
            }

            while (!v35);
            if (v82)
            {
              v85 = v82 + 1;
            }

            else
            {
              v85 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
            }

            v86 = [v45 localizedDescription];
            *buf = 136315906;
            *&buf[4] = v85;
            *&buf[12] = 1024;
            *&buf[14] = 376;
            *&buf[18] = 2112;
            *&buf[20] = v86;
            *&buf[28] = 2112;
            *&buf[30] = v98;
            _os_log_impl(&dword_226177000, v76, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to create key. { error=%@, appUUID=%@ }", buf, 0x26u);

            v8 = v80;
            v21 = v79;
            v10 = v78;
            v7 = v77;
            v47 = v97;
          }
        }

        else
        {
          if (v75 != -1)
          {
            AppAttest_AppAttestation_IsEligibleApplication_cold_1();
          }

          v87 = AAInternalLogSystem_log_7;
          if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
          {
            v88 = 0;
            v89 = 0;
            v90 = 47;
            do
            {
              v91 = &aLibraryCachesC_7[v88];
              if (v90 == 47)
              {
                v89 = &aLibraryCachesC_7[v88];
              }

              v90 = v91[1];
              if (!v91[1])
              {
                break;
              }

              v35 = v88++ >= 0xFFF;
            }

            while (!v35);
            if (v89)
            {
              v92 = v89 + 1;
            }

            else
            {
              v92 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
            }

            *buf = 136315906;
            *&buf[4] = v92;
            *&buf[12] = 1024;
            *&buf[14] = 375;
            *&buf[18] = 2112;
            *&buf[20] = v46;
            *&buf[28] = 2112;
            *&buf[30] = v98;
            _os_log_impl(&dword_226177000, v87, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created key. { keyId=%@, appUUID=%@ }", buf, 0x26u);
          }
        }

        v9[2](v9, v98, v46, v45);

        goto LABEL_99;
      }

      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v65 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
      {
        v69 = 0;
        v70 = 0;
        v71 = 47;
        do
        {
          v72 = &aLibraryCachesC_7[v69];
          if (v71 == 47)
          {
            v70 = &aLibraryCachesC_7[v69];
          }

          v71 = v72[1];
          if (!v72[1])
          {
            break;
          }

          v35 = v69++ >= 0xFFF;
        }

        while (!v35);
        if (v70)
        {
          v73 = v70 + 1;
        }

        else
        {
          v73 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        *buf = 136315394;
        *&buf[4] = v73;
        *&buf[12] = 1024;
        *&buf[14] = 315;
        _os_log_impl(&dword_226177000, v65, OS_LOG_TYPE_ERROR, "%25s:%-5d Client is not eligible for priv service.", buf, 0x12u);
      }

      v45 = createAppAttestError("CreateKey", 316, -4, 0, @"Client is not eligible for priv service.", v66, v67, v68, v94);
    }

    else
    {
      v45 = createAppAttestError("CreateKey", 304, -4, 0, @"Client is not eligible.", v12, v13, v14, v94);
    }

    v46 = 0;
    v98 = 0;
    v21 = 0;
    v47 = 0;
    goto LABEL_70;
  }

  if (AAInternalLogSystem_onceToken_7 != -1)
  {
    AAInternalLogSystem_cold_1_1();
  }

  v39 = AAInternalLogSystem_log_7;
  if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
  {
    v40 = 0;
    v41 = 0;
    v42 = 47;
    do
    {
      v43 = &aLibraryCachesC_7[v40];
      if (v42 == 47)
      {
        v41 = &aLibraryCachesC_7[v40];
      }

      v42 = v43[1];
      if (!v43[1])
      {
        break;
      }

      v35 = v40++ >= 0xFFF;
    }

    while (!v35);
    if (v41)
    {
      v44 = v41 + 1;
    }

    else
    {
      v44 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
    }

    *buf = 136315394;
    *&buf[4] = v44;
    *&buf[12] = 1024;
    *&buf[14] = 287;
    _os_log_impl(&dword_226177000, v39, OS_LOG_TYPE_DEBUG, "%25s:%-5d Completion handler is nil, cannot create key.", buf, 0x12u);
  }

LABEL_99:

  v93 = *MEMORY[0x277D85DE8];
}

void AppAttest_AppAttestation_CreateKeyWithTeamIdentifier(__int128 *a1, void *a2, void *a3, void *a4)
{
  v4 = a1[1];
  v5[0] = *a1;
  v5[1] = v4;
  if (a2)
  {
    CreateKey(v5, a2, a3, a4);
  }

  else
  {
    AppAttest_AppAttestation_CreateKey(v5, a3, a4);
  }
}

void AppAttest_AppAttestation_AttestKey(__int128 *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (+[FeatureFlagsManager isModernizationEnabled])
  {
    v13 = [_TtC17AppAttestInternal16AppAttestHandler alloc];
    v14 = a1[1];
    v17 = *a1;
    v18 = v14;
    v15 = [(AppAttestHandler *)v13 initWith:&v17];
    [(AppAttestHandler *)v15 attestKeyWith:v9 credential:v10 clientDataHash:v11 completion:v12];
  }

  else
  {
    v16 = a1[1];
    v17 = *a1;
    v18 = v16;
    AttestKey(&v17, 0, v9, v10, v11, v12);
  }
}

void AttestKey(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v182 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = objc_alloc_init(AppAttestEligibilityManager);
    v17 = a1[1];
    *buf = *a1;
    *&buf[16] = v17;
    v156 = v16;
    v157 = v12;
    if ([(AppAttestEligibilityManager *)v16 isEligibleClientFor:buf])
    {
      if (!v11)
      {
        goto LABEL_7;
      }

      v21 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
      if (([v21 BOOLForKey:@"allowPrivAPI"] & 1) != 0 || (v22 = a1[1], *buf = *a1, *&buf[16] = v22, -[AppAttestEligibilityManager isEligibleForPrivService:](v16, "isEligibleForPrivService:", buf)))
      {

LABEL_7:
        v23 = a1[1];
        *buf = *a1;
        *&buf[16] = v23;
        HIDWORD(v147) = generateEnvironmentByAppSigning(buf);
        v179 = 0;
        v180 = 0;
        v178 = 0;
        v24 = a1[1];
        *buf = *a1;
        *&buf[16] = v24;
        v25 = extractApplicationIdentifiers(buf, v11, &v180, &v179, &v178);
        v26 = v180;
        v27 = v179;
        v162 = v178;
        if (v25)
        {
          v28 = resolveAppUUIDKeychain(v12, v26, v27);
          if (v28)
          {
            v150 = v28;
            v29 = isNSString(v13);

            if (v29)
            {
              v30 = isNSData(v14);
              v154 = v26;
              if (v30)
              {
                v31 = v30;
                v32 = [v14 length];

                if (v32 < 0x21)
                {
                  v51 = HIDWORD(v147);
                  v52 = v150;
                  CredentialKeychain = loadCredentialKeychain(SHIDWORD(v147), v150, v27, v13);
                  if (CredentialKeychain)
                  {
                    v115 = loadAssertionCounterKeychain(SHIDWORD(v147), v150, v27, v13);
                    v116 = v115;
                    if (v115 && [v115 intValue] >= 2)
                    {
                      v161 = v116;
                      v117 = AAInternalLogSystem_1();
                      if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
                      {
                        v118 = 0;
                        v119 = 0;
                        v120 = 47;
                        do
                        {
                          v121 = &aLibraryCachesC_7[v118];
                          if (v120 == 47)
                          {
                            v119 = &aLibraryCachesC_7[v118];
                          }

                          v120 = v121[1];
                          if (!v121[1])
                          {
                            break;
                          }

                          v38 = v118++ >= 0xFFF;
                        }

                        while (!v38);
                        if (v119)
                        {
                          v122 = v119 + 1;
                        }

                        else
                        {
                          v122 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                        }

                        v123 = [v161 intValue];
                        *buf = 136316674;
                        *&buf[4] = v122;
                        *&buf[12] = 1024;
                        *&buf[14] = 462;
                        *&buf[18] = 2112;
                        *&buf[20] = v13;
                        *&buf[28] = 1024;
                        *&buf[30] = v123;
                        *&buf[34] = 2112;
                        *&buf[36] = v150;
                        *&buf[44] = 2112;
                        *&buf[46] = v27;
                        *&buf[54] = 2112;
                        *&buf[56] = v26;
                        _os_log_impl(&dword_226177000, v117, OS_LOG_TYPE_ERROR, "%25s:%-5d Key already used, cannot be re-attested. { keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x40u);
                      }

                      v44 = createAppAttestError("AttestKey", 463, -3, 0, @"Key already used, cannot be reattested.", v124, v125, v126, v147);

                      v163 = 0;
                    }

                    else
                    {
                      v161 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:0];

                      v177 = v162;
                      v127 = createAppAttestationAuthenticatorDataFull(SHIDWORD(v147), v27, v161, CredentialKeychain, &v177);
                      v160 = v177;

                      v163 = v127;
                      if (v127)
                      {
                        v44 = v160;
LABEL_100:
                        v159 = v44;
                        if (v44)
                        {
                          if (AAInternalLogSystem_onceToken_7 != -1)
                          {
                            AppAttest_AppAttestation_IsEligibleApplication_cold_1();
                          }

                          v90 = CredentialKeychain;
                          v91 = AAInternalLogSystem_log_7;
                          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                          {
                            v151 = v52;
                            v92 = v27;
                            v93 = v15;
                            v94 = v14;
                            v95 = v11;
                            v96 = 0;
                            v97 = 0;
                            v98 = 47;
                            do
                            {
                              v99 = &aLibraryCachesC_7[v96];
                              if (v98 == 47)
                              {
                                v97 = &aLibraryCachesC_7[v96];
                              }

                              v98 = v99[1];
                              if (!v99[1])
                              {
                                break;
                              }

                              v38 = v96++ >= 0xFFF;
                            }

                            while (!v38);
                            if (v97)
                            {
                              v100 = v97 + 1;
                            }

                            else
                            {
                              v100 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                            }

                            v101 = [v44 localizedDescription];
                            *buf = 136315906;
                            *&buf[4] = v100;
                            *&buf[12] = 1024;
                            *&buf[14] = 481;
                            *&buf[18] = 2112;
                            *&buf[20] = v101;
                            *&buf[28] = 2112;
                            *&buf[30] = v13;
                            _os_log_impl(&dword_226177000, v91, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to attest key. { error=%@, keyId=%@ }", buf, 0x26u);

                            v11 = v95;
                            v14 = v94;
                            v15 = v93;
                            v27 = v92;
                            v52 = v151;
                            v90 = CredentialKeychain;
                          }

                          v102 = v159;
                          (*(v15 + 2))(v15, 0, v159);
                          if (!v90)
                          {
                            goto LABEL_116;
                          }
                        }

                        else
                        {
                          v152 = v27;
                          v104 = dispatch_semaphore_create(0);
                          v164[0] = MEMORY[0x277D85DD0];
                          v164[1] = 3221225472;
                          v164[2] = __AttestKey_block_invoke;
                          v164[3] = &unk_278585288;
                          v174 = v51;
                          v165 = v13;
                          v166 = v161;
                          v167 = v52;
                          v105 = v27;
                          v106 = v15;
                          v107 = v14;
                          v108 = v13;
                          v109 = v11;
                          v110 = v105;
                          v168 = v105;
                          v169 = v26;
                          v111 = a1[1];
                          v175 = *a1;
                          v176 = v111;
                          v170 = v163;
                          v171 = 0;
                          v172 = v104;
                          v173 = v106;
                          v112 = v104;
                          v113 = v51;
                          v114 = v110;
                          v11 = v109;
                          v13 = v108;
                          v14 = v107;
                          v15 = v106;
                          v90 = CredentialKeychain;
                          AppAttest_Common_AttestKey(0, v113, v114, CredentialKeychain, v170, v14, v164);
                          dispatch_semaphore_wait(v112, 0xFFFFFFFFFFFFFFFFLL);

                          v27 = v152;
                          v102 = 0;
                          if (!CredentialKeychain)
                          {
                            goto LABEL_116;
                          }
                        }

                        CFRelease(v90);
LABEL_116:

                        v12 = v157;
                        goto LABEL_117;
                      }

                      v153 = v27;
                      v137 = AAInternalLogSystem_1();
                      if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
                      {
                        v138 = 0;
                        v139 = 0;
                        v140 = 47;
                        do
                        {
                          v141 = &aLibraryCachesC_7[v138];
                          if (v140 == 47)
                          {
                            v139 = &aLibraryCachesC_7[v138];
                          }

                          v140 = v141[1];
                          if (!v141[1])
                          {
                            break;
                          }

                          v38 = v138++ >= 0xFFF;
                        }

                        while (!v38);
                        if (v139)
                        {
                          v142 = v139 + 1;
                        }

                        else
                        {
                          v142 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                        }

                        v143 = [v161 intValue];
                        *buf = 136316930;
                        *&buf[4] = v142;
                        *&buf[12] = 1024;
                        *&buf[14] = 473;
                        *&buf[18] = 1024;
                        *&buf[20] = HIDWORD(v147);
                        *&buf[24] = 2112;
                        *&buf[26] = v13;
                        *&buf[34] = 1024;
                        *&buf[36] = v143;
                        *&buf[40] = 2112;
                        *&buf[42] = v150;
                        *&buf[50] = 2112;
                        *&buf[52] = v153;
                        *&buf[60] = 2112;
                        *&buf[62] = v154;
                        _os_log_impl(&dword_226177000, v137, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create authenticator data for attestation. { env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x46u);
                      }

                      v44 = createAppAttestError("AttestKey", 474, -3, v160, @"Failed to generate authenticator data", v144, v145, v146, v147);

                      v163 = 0;
                      v27 = v153;
                      v26 = v154;
                    }
                  }

                  else
                  {
                    v128 = AAInternalLogSystem_1();
                    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                    {
                      v129 = 0;
                      v130 = 0;
                      v131 = 47;
                      do
                      {
                        v132 = &aLibraryCachesC_7[v129];
                        if (v131 == 47)
                        {
                          v130 = &aLibraryCachesC_7[v129];
                        }

                        v131 = v132[1];
                        if (!v132[1])
                        {
                          break;
                        }

                        v38 = v129++ >= 0xFFF;
                      }

                      while (!v38);
                      if (v130)
                      {
                        v133 = v130 + 1;
                      }

                      else
                      {
                        v133 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                      }

                      *buf = 136316674;
                      *&buf[4] = v133;
                      *&buf[12] = 1024;
                      *&buf[14] = 455;
                      *&buf[18] = 1024;
                      *&buf[20] = HIDWORD(v147);
                      *&buf[24] = 2112;
                      *&buf[26] = v13;
                      *&buf[34] = 2112;
                      *&buf[36] = v150;
                      *&buf[44] = 2112;
                      *&buf[46] = v27;
                      *&buf[54] = 2112;
                      *&buf[56] = v26;
                      _os_log_impl(&dword_226177000, v128, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to load BIK from Keychain. { env=%d, keyID=%@, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x40u);
                    }

                    v44 = createAppAttestError("AttestKey", 456, -3, 0, @"Failed to load keychain", v134, v135, v136, v147);

                    v161 = 0;
                    v163 = 0;
                    CredentialKeychain = 0;
                  }

LABEL_99:
                  v52 = v150;
                  goto LABEL_100;
                }
              }

              if (AAInternalLogSystem_onceToken_7 != -1)
              {
                AppAttest_AppAttestation_IsEligibleApplication_cold_1();
              }

              v33 = AAInternalLogSystem_log_7;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                v34 = 0;
                v35 = 0;
                v36 = 47;
                do
                {
                  v37 = &aLibraryCachesC_7[v34];
                  if (v36 == 47)
                  {
                    v35 = &aLibraryCachesC_7[v34];
                  }

                  v36 = v37[1];
                  if (!v37[1])
                  {
                    break;
                  }

                  v38 = v34++ >= 0xFFF;
                }

                while (!v38);
                if (v35)
                {
                  v39 = v35 + 1;
                }

                else
                {
                  v39 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                }

                v40 = [v14 base64EncodedStringWithOptions:0];
                *buf = 136315650;
                *&buf[4] = v39;
                *&buf[12] = 1024;
                *&buf[14] = 447;
                *&buf[18] = 2112;
                *&buf[20] = v40;
                _os_log_impl(&dword_226177000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid client data hash. { clientDataHash=%@ }", buf, 0x1Cu);

                v26 = v154;
              }

              v44 = createAppAttestError("AttestKey", 448, -2, 0, @"Invalid clientDataHash", v41, v42, v43, v147);
            }

            else
            {
              if (AAInternalLogSystem_onceToken_7 != -1)
              {
                AppAttest_AppAttestation_IsEligibleApplication_cold_1();
              }

              v81 = AAInternalLogSystem_log_7;
              if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
              {
                v85 = 0;
                v86 = 0;
                v87 = 47;
                do
                {
                  v88 = &aLibraryCachesC_7[v85];
                  if (v87 == 47)
                  {
                    v86 = &aLibraryCachesC_7[v85];
                  }

                  v87 = v88[1];
                  if (!v88[1])
                  {
                    break;
                  }

                  v38 = v85++ >= 0xFFF;
                }

                while (!v38);
                if (v86)
                {
                  v89 = v86 + 1;
                }

                else
                {
                  v89 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                }

                *buf = 136315650;
                *&buf[4] = v89;
                *&buf[12] = 1024;
                *&buf[14] = 441;
                *&buf[18] = 2112;
                *&buf[20] = v13;
                _os_log_impl(&dword_226177000, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d Key ID is invalid. { keyID=%@ }", buf, 0x1Cu);
              }

              v44 = createAppAttestError("AttestKey", 442, -2, v162, @"Invalid keyId", v82, v83, v84, v147);
            }

            v161 = 0;
            v163 = 0;
            CredentialKeychain = 0;
            v51 = v148;
            goto LABEL_99;
          }

          if (AAInternalLogSystem_onceToken_7 != -1)
          {
            AppAttest_AppAttestation_IsEligibleApplication_cold_1();
          }

          v63 = AAInternalLogSystem_log_7;
          if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
          {
            v67 = 0;
            v68 = 0;
            v69 = 47;
            do
            {
              v70 = &aLibraryCachesC_7[v67];
              if (v69 == 47)
              {
                v68 = &aLibraryCachesC_7[v67];
              }

              v69 = v70[1];
              if (!v70[1])
              {
                break;
              }

              v38 = v67++ >= 0xFFF;
            }

            while (!v38);
            if (v68)
            {
              v71 = v68 + 1;
            }

            else
            {
              v71 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
            }

            *buf = 136316162;
            *&buf[4] = v71;
            *&buf[12] = 1024;
            *&buf[14] = 435;
            *&buf[18] = 2112;
            *&buf[20] = v12;
            *&buf[28] = 2112;
            *&buf[30] = v27;
            *&buf[38] = 2112;
            *&buf[40] = v26;
            _os_log_impl(&dword_226177000, v63, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed resolved App UUID. { incomingAppUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x30u);
          }

          v44 = createAppAttestError("AttestKey", 436, -2, 0, @"Invalid appUUID", v64, v65, v66, v147);
        }

        else
        {
          if (AAInternalLogSystem_onceToken_7 != -1)
          {
            AppAttest_AppAttestation_IsEligibleApplication_cold_1();
          }

          v53 = AAInternalLogSystem_log_7;
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            v155 = v26;
            v54 = 0;
            v55 = 0;
            v56 = 47;
            do
            {
              v57 = &aLibraryCachesC_7[v54];
              if (v56 == 47)
              {
                v55 = &aLibraryCachesC_7[v54];
              }

              v56 = v57[1];
              if (!v57[1])
              {
                break;
              }

              v38 = v54++ >= 0xFFF;
            }

            while (!v38);
            if (v55)
            {
              v58 = v55 + 1;
            }

            else
            {
              v58 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
            }

            v59 = [v162 localizedDescription];
            *buf = 136315650;
            *&buf[4] = v58;
            *&buf[12] = 1024;
            *&buf[14] = 428;
            *&buf[18] = 2112;
            *&buf[20] = v59;
            _os_log_impl(&dword_226177000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch identifiers. { error=%@ }", buf, 0x1Cu);

            v26 = v155;
          }

          v44 = createAppAttestError("AttestKey", 429, -2, v162, @"Unable to fetch application identifier", v60, v61, v62, v147);
        }

        v161 = 0;
        v163 = 0;
        v52 = 0;
        CredentialKeychain = 0;
        v51 = v149;
        goto LABEL_100;
      }

      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v72 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
      {
        v76 = 0;
        v77 = 0;
        v78 = 47;
        do
        {
          v79 = &aLibraryCachesC_7[v76];
          if (v78 == 47)
          {
            v77 = &aLibraryCachesC_7[v76];
          }

          v78 = v79[1];
          if (!v79[1])
          {
            break;
          }

          v38 = v76++ >= 0xFFF;
        }

        while (!v38);
        if (v77)
        {
          v80 = v77 + 1;
        }

        else
        {
          v80 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        *buf = 136315394;
        *&buf[4] = v80;
        *&buf[12] = 1024;
        *&buf[14] = 416;
        _os_log_impl(&dword_226177000, v72, OS_LOG_TYPE_ERROR, "%25s:%-5d Client is not eligible for priv service.", buf, 0x12u);
      }

      v44 = createAppAttestError("AttestKey", 417, -4, 0, @"Client is not eligible for priv service.", v73, v74, v75, v147);
    }

    else
    {
      v44 = createAppAttestError("AttestKey", 405, -4, 0, @"Client is not eligible.", v18, v19, v20, v147);
    }

    v51 = 0;
    v161 = 0;
    v163 = 0;
    v27 = 0;
    v26 = 0;
    v52 = 0;
    CredentialKeychain = 0;
    goto LABEL_100;
  }

  if (AAInternalLogSystem_onceToken_7 != -1)
  {
    AAInternalLogSystem_cold_1_1();
  }

  v45 = AAInternalLogSystem_log_7;
  if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
  {
    v46 = 0;
    v47 = 0;
    v48 = 47;
    do
    {
      v49 = &aLibraryCachesC_7[v46];
      if (v48 == 47)
      {
        v47 = &aLibraryCachesC_7[v46];
      }

      v48 = v49[1];
      if (!v49[1])
      {
        break;
      }

      v38 = v46++ >= 0xFFF;
    }

    while (!v38);
    if (v47)
    {
      v50 = v47 + 1;
    }

    else
    {
      v50 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
    }

    *buf = 136315394;
    *&buf[4] = v50;
    *&buf[12] = 1024;
    *&buf[14] = 388;
    _os_log_impl(&dword_226177000, v45, OS_LOG_TYPE_DEBUG, "%25s:%-5d Completion handler is nil, cannot attest key.", buf, 0x12u);
  }

LABEL_117:

  v103 = *MEMORY[0x277D85DE8];
}

void AppAttest_AppAttestation_AttestKeyWithTeamIdentifier(__int128 *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  if (a2)
  {
    AttestKey(v7, a2, a3, a4, a5, a6);
  }

  else
  {
    AppAttest_AppAttestation_AttestKey(v7, a3, a4, a5, a6);
  }
}

void AppAttest_AppAttestation_Assert(_OWORD *a1, void *a2, void *a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!+[FeatureFlagsManager isModernizationEnabled])
  {
    v13 = a1[1];
    *buf = *a1;
    *&buf[16] = v13;
    Assert(buf, 0, v9, v10, v11, v12);
    goto LABEL_29;
  }

  if (!os_variant_allows_internal_security_policies())
  {
    goto LABEL_28;
  }

  if ([v10 isEqualToString:@"__debug_aa_kc_cleanup__"])
  {
    removeAllKeychainItemsForMissingApps();
    (*(v12 + 2))(v12, 0, 0);
    goto LABEL_29;
  }

  if (![v10 isEqualToString:@"__debug_aa_kc_list__"])
  {
LABEL_28:
    v27 = [_TtC17AppAttestInternal16AppAttestHandler alloc];
    v28 = a1[1];
    *buf = *a1;
    *&buf[16] = v28;
    v29 = [(AppAttestHandler *)v27 initWith:buf];
    [(AppAttestHandler *)v29 generateAssertionWith:v9 credential:v10 clientDataHash:v11 completion:v12];

    goto LABEL_29;
  }

  v31 = v12;
  v14 = listKeychainItems();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v33;
    do
    {
      v18 = 0;
      do
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v32 + 1) + 8 * v18);
        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v20 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
        {
          v21 = 0;
          v22 = 0;
          v23 = 47;
          do
          {
            v24 = &aLibraryCachesC_7[v21];
            if (v23 == 47)
            {
              v22 = &aLibraryCachesC_7[v21];
            }

            v23 = v24[1];
            if (!v24[1])
            {
              break;
            }
          }

          while (v21++ < 0xFFF);
          *buf = 136315650;
          if (v22)
          {
            v26 = v22 + 1;
          }

          else
          {
            v26 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          *&buf[4] = v26;
          *&buf[12] = 1024;
          *&buf[14] = 193;
          *&buf[18] = 2112;
          *&buf[20] = v19;
          _os_log_impl(&dword_226177000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found app ID in keychain. { appID=%@ }", buf, 0x1Cu);
        }

        ++v18;
      }

      while (v18 != v16);
      v16 = [v14 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v16);
  }

  v12 = v31;
  (*(v31 + 2))(v31, 0, 0);

LABEL_29:
  v30 = *MEMORY[0x277D85DE8];
}