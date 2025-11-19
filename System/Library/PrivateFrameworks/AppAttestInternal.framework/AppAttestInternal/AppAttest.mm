@interface AppAttest
@end

@implementation AppAttest

void __AppAttest_WebAuthentication_AttestKey_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v84 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = isNSDictionary(v5);
  if (!v8)
  {
    goto LABEL_58;
  }

  v12 = v8;
  v13 = [v5 objectForKeyedSubscript:@"certs"];
  v14 = isNSString(v13);

  if (!v14)
  {
LABEL_58:
    if (v6 && ([v6 domain], v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "isEqualToString:", @"com.apple.appattest.error"), v38, v39))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    }

    else
    {
      v40 = createAppAttestError("AppAttest_WebAuthentication_AttestKey_block_invoke", 147, -6, v6, @"Invalid server response", v9, v10, v11, v68);
      v41 = *(*(a1 + 40) + 8);
      v42 = *(v41 + 40);
      *(v41 + 40) = v40;
    }

    v23 = 0;
    goto LABEL_26;
  }

  v15 = objc_alloc(MEMORY[0x277CBEA90]);
  v16 = [v5 objectForKeyedSubscript:@"certs"];
  v17 = [v15 initWithBase64EncodedData:v16 options:1];

  v18 = *(*(a1 + 40) + 8);
  obj = *(v18 + 40);
  v19 = lockcrypto_decode_pems(v17, "CERTIFICATE", &obj);
  objc_storeStrong((v18 + 40), obj);
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v23)
  {
    v24 = createAppAttestError("AppAttest_WebAuthentication_AttestKey_block_invoke", 155, -1, 0, @"Failed to allocate array.", v20, v21, v22, v68);
    v25 = *(*(a1 + 40) + 8);
    v26 = *(v25 + 40);
    *(v25 + 40) = v24;
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_24;
  }

  v70 = v17;
  v71 = v7;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v69 = v19;
  v27 = v19;
  v28 = [v27 countByEnumeratingWithState:&v72 objects:v83 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v73;
    v31 = *MEMORY[0x277CBECE8];
    while (2)
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v73 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v33 = SecCertificateCreateWithData(v31, *(*(&v72 + 1) + 8 * i));
        if (!v33)
        {
          v43 = createAppAttestError("AppAttest_WebAuthentication_AttestKey_block_invoke", 167, -1, 0, @"Failed to create certificate.", v34, v35, v36, v68);
          v44 = *(*(a1 + 40) + 8);
          v45 = *(v44 + 40);
          *(v44 + 40) = v43;

          goto LABEL_21;
        }

        v37 = v33;
        [v23 addObject:v33];
        CFRelease(v37);
      }

      v29 = [v27 countByEnumeratingWithState:&v72 objects:v83 count:16];
      if (v29)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v17 = v70;
  v7 = v71;
  v19 = v69;
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_24;
  }

  if ([v23 count] != 2)
  {
    v49 = createAppAttestError("AppAttest_WebAuthentication_AttestKey_block_invoke", 179, -1, 0, @"The received cert chain length must be 2!", v46, v47, v48, v68);
    v50 = *(*(a1 + 40) + 8);
    v51 = *(v50 + 40);
    *(v50 + 40) = v49;

LABEL_24:
    v23 = 0;
  }

LABEL_26:
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_41;
  }

  if (AAInternalLogSystem_onceToken_2 != -1)
  {
    AppAttest_WebAuthentication_AttestKey_cold_3();
  }

  v52 = AAInternalLogSystem_log_2;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    v53 = 0;
    v54 = 0;
    v55 = 47;
    do
    {
      v56 = &aLibraryCachesC_2[v53];
      if (v55 == 47)
      {
        v54 = &aLibraryCachesC_2[v53];
      }

      v55 = v56[1];
      if (!v56[1])
      {
        break;
      }

      v57 = v53++ >= 0xFFF;
    }

    while (!v57);
    if (v54)
    {
      v58 = v54 + 1;
    }

    else
    {
      v58 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestWebAuthentication.m";
    }

    v59 = [*(*(*(a1 + 40) + 8) + 40) localizedDescription];
    *buf = 136315650;
    v78 = v58;
    v79 = 1024;
    v80 = 184;
    v81 = 2112;
    v82 = v59;
    _os_log_impl(&dword_226177000, v52, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to attest key. { error=%@ }", buf, 0x1Cu);
  }

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
LABEL_41:
    if (AAInternalLogSystem_onceToken_2 != -1)
    {
      AppAttest_WebAuthentication_AttestKey_cold_3();
    }

    v60 = AAInternalLogSystem_log_2;
    if (os_log_type_enabled(AAInternalLogSystem_log_2, OS_LOG_TYPE_DEBUG))
    {
      v61 = 0;
      v62 = 0;
      v63 = 47;
      do
      {
        v64 = &aLibraryCachesC_2[v61];
        if (v63 == 47)
        {
          v62 = &aLibraryCachesC_2[v61];
        }

        v63 = v64[1];
        if (!v64[1])
        {
          break;
        }

        v57 = v61++ >= 0xFFF;
      }

      while (!v57);
      if (v62)
      {
        v65 = v62 + 1;
      }

      else
      {
        v65 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestWebAuthentication.m";
      }

      *buf = 136315394;
      v78 = v65;
      v79 = 1024;
      v80 = 185;
      _os_log_impl(&dword_226177000, v60, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attested key.", buf, 0x12u);
    }

    v66 = *(*(*(a1 + 40) + 8) + 40);
  }

  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v7);
  v67 = *MEMORY[0x277D85DE8];
}

void __AppAttest_DeviceAttestation_AttestKey_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v105 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = isNSDictionary(v5);
  if (v8)
  {
    v9 = v8;
    v10 = [v5 objectForKeyedSubscript:@"certs"];
    v11 = isNSString(v10);

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CBEA90]);
      v13 = [v5 objectForKeyedSubscript:@"certs"];
      v14 = [v12 initWithBase64EncodedData:v13 options:1];

      v15 = *(*(a1 + 40) + 8);
      obj = *(v15 + 40);
      v16 = lockcrypto_decode_pems(v14, "CERTIFICATE", &obj);
      objc_storeStrong((v15 + 40), obj);
      v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (!v17)
      {
        if (AAInternalLogSystem_onceToken_5 != -1)
        {
          AppAttest_DeviceAttestation_AttestKey_cold_1();
        }

        v18 = AAInternalLogSystem_log_5;
        if (os_log_type_enabled(AAInternalLogSystem_log_5, OS_LOG_TYPE_ERROR))
        {
          v22 = 0;
          v23 = 0;
          v24 = 47;
          do
          {
            v25 = &aLibraryCachesC_5[v22];
            if (v24 == 47)
            {
              v23 = &aLibraryCachesC_5[v22];
            }

            v24 = v25[1];
            if (!v25[1])
            {
              break;
            }

            v26 = v22++ >= 0xFFF;
          }

          while (!v26);
          if (v23)
          {
            v27 = v23 + 1;
          }

          else
          {
            v27 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
          }

          *buf = 136315394;
          v98 = v27;
          v99 = 1024;
          v100 = 327;
          _os_log_impl(&dword_226177000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to allocate array for certificates.", buf, 0x12u);
        }

        v28 = createAppAttestError("AppAttest_DeviceAttestation_AttestKey_block_invoke", 328, -1, 0, @"Failed to allocate array.", v19, v20, v21, v87);
        v29 = *(*(a1 + 40) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v28;
      }

      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v89 = v14;
        v90 = v7;
        v93 = 0u;
        v94 = 0u;
        v91 = 0u;
        v92 = 0u;
        v88 = v16;
        v31 = v16;
        v32 = [v31 countByEnumeratingWithState:&v91 objects:v96 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v92;
          v35 = *MEMORY[0x277CBECE8];
          while (2)
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v92 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v37 = SecCertificateCreateWithData(v35, *(*(&v91 + 1) + 8 * i));
              if (!v37)
              {
                if (AAInternalLogSystem_onceToken_5 != -1)
                {
                  AppAttest_DeviceAttestation_AttestKey_cold_1();
                }

                v54 = AAInternalLogSystem_log_5;
                if (os_log_type_enabled(AAInternalLogSystem_log_5, OS_LOG_TYPE_ERROR))
                {
                  v58 = 0;
                  v59 = 0;
                  v60 = 47;
                  do
                  {
                    v61 = &aLibraryCachesC_5[v58];
                    if (v60 == 47)
                    {
                      v59 = &aLibraryCachesC_5[v58];
                    }

                    v60 = v61[1];
                    if (!v61[1])
                    {
                      break;
                    }

                    v26 = v58++ >= 0xFFF;
                  }

                  while (!v26);
                  if (v59)
                  {
                    v62 = v59 + 1;
                  }

                  else
                  {
                    v62 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
                  }

                  *buf = 136315394;
                  v98 = v62;
                  v99 = 1024;
                  v100 = 340;
                  _os_log_impl(&dword_226177000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create certificate.", buf, 0x12u);
                }

                v63 = createAppAttestError("AppAttest_DeviceAttestation_AttestKey_block_invoke", 341, -1, 0, @"Failed to create certificate.", v55, v56, v57, v87);
                v64 = *(*(a1 + 40) + 8);
                v65 = *(v64 + 40);
                *(v64 + 40) = v63;

                goto LABEL_60;
              }

              v38 = v37;
              [v17 addObject:v37];
              CFRelease(v38);
            }

            v33 = [v31 countByEnumeratingWithState:&v91 objects:v96 count:16];
            if (v33)
            {
              continue;
            }

            break;
          }
        }

LABEL_60:

        v14 = v89;
        v7 = v90;
        v16 = v88;
        if (!*(*(*(a1 + 40) + 8) + 40))
        {
          if ([v17 count] == 2)
          {
LABEL_64:

            goto LABEL_65;
          }

          v69 = createAppAttestError("AppAttest_DeviceAttestation_AttestKey_block_invoke", 353, -1, 0, @"The received cert chain length must be 2!", v66, v67, v68, v87);
          v70 = *(*(a1 + 40) + 8);
          v71 = *(v70 + 40);
          *(v70 + 40) = v69;
        }
      }

      v17 = 0;
      goto LABEL_64;
    }
  }

  if (v6 && ([v6 domain], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", @"com.apple.appattest.error"), v39, v40))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    if (AAInternalLogSystem_onceToken_5 != -1)
    {
      AAInternalLogSystem_cold_1_0();
    }

    v41 = AAInternalLogSystem_log_5;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = 0;
      v43 = 0;
      v44 = 47;
      do
      {
        v45 = &aLibraryCachesC_5[v42];
        if (v44 == 47)
        {
          v43 = &aLibraryCachesC_5[v42];
        }

        v44 = v45[1];
        if (!v45[1])
        {
          break;
        }

        v26 = v42++ >= 0xFFF;
      }

      while (!v26);
      if (v43)
      {
        v46 = v43 + 1;
      }

      else
      {
        v46 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
      }

      v47 = [v6 localizedDescription];
      *buf = 136315906;
      v98 = v46;
      v99 = 1024;
      v100 = 318;
      v101 = 2112;
      v102 = v5;
      v103 = 2112;
      v104 = v47;
      _os_log_impl(&dword_226177000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to attest key, invalid server response. { response=%@, error=%@ }", buf, 0x26u);
    }

    v51 = createAppAttestError("AppAttest_DeviceAttestation_AttestKey_block_invoke", 319, -6, v6, @"Invalid server response", v48, v49, v50, v87);
    v52 = *(*(a1 + 40) + 8);
    v53 = *(v52 + 40);
    *(v52 + 40) = v51;
  }

  v17 = 0;
LABEL_65:
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    goto LABEL_80;
  }

  if (AAInternalLogSystem_onceToken_5 != -1)
  {
    AppAttest_DeviceAttestation_AttestKey_cold_1();
  }

  v72 = AAInternalLogSystem_log_5;
  if (os_log_type_enabled(AAInternalLogSystem_log_5, OS_LOG_TYPE_DEFAULT))
  {
    v73 = 0;
    v74 = 0;
    v75 = 47;
    do
    {
      v76 = &aLibraryCachesC_5[v73];
      if (v75 == 47)
      {
        v74 = &aLibraryCachesC_5[v73];
      }

      v75 = v76[1];
      if (!v76[1])
      {
        break;
      }

      v26 = v73++ >= 0xFFF;
    }

    while (!v26);
    if (v74)
    {
      v77 = v74 + 1;
    }

    else
    {
      v77 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
    }

    *buf = 136315394;
    v98 = v77;
    v99 = 1024;
    v100 = 358;
    _os_log_impl(&dword_226177000, v72, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Attested key.", buf, 0x12u);
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
LABEL_80:
    if (AAInternalLogSystem_onceToken_5 != -1)
    {
      AppAttest_DeviceAttestation_AttestKey_cold_1();
    }

    v78 = AAInternalLogSystem_log_5;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      v79 = 0;
      v80 = 0;
      v81 = 47;
      do
      {
        v82 = &aLibraryCachesC_5[v79];
        if (v81 == 47)
        {
          v80 = &aLibraryCachesC_5[v79];
        }

        v81 = v82[1];
        if (!v82[1])
        {
          break;
        }

        v26 = v79++ >= 0xFFF;
      }

      while (!v26);
      if (v80)
      {
        v83 = v80 + 1;
      }

      else
      {
        v83 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestDeviceAttestation.m";
      }

      v84 = [*(*(*(a1 + 40) + 8) + 40) localizedDescription];
      *buf = 136315650;
      v98 = v83;
      v99 = 1024;
      v100 = 359;
      v101 = 2112;
      v102 = v84;
      _os_log_impl(&dword_226177000, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to attest key. { error=%@ }", buf, 0x1Cu);
    }

    v85 = *(*(*(a1 + 40) + 8) + 40);
  }

  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v7);
  v86 = *MEMORY[0x277D85DE8];
}

@end