void Assert(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v138 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v125 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = &unk_28136F000;
  if (v14)
  {
    v123 = v13;
    v124 = v11;
    v122 = v14;
    if (os_variant_allows_internal_security_policies())
    {
      if ([v12 isEqualToString:@"__debug_aa_kc_cleanup__"])
      {
        removeAllKeychainItemsForMissingApps();
        (*(v14 + 2))(v14, 0, 0);
      }

      else if ([v12 isEqualToString:@"__debug_aa_kc_list__"])
      {
        v120 = v12;
        v23 = listKeychainItems();
        v132 = 0u;
        v133 = 0u;
        v134 = 0u;
        v135 = 0u;
        v24 = [v23 countByEnumeratingWithState:&v132 objects:v137 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v133;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v133 != v26)
              {
                objc_enumerationMutation(v23);
              }

              v28 = *(*(&v132 + 1) + 8 * i);
              if (AAInternalLogSystem_onceToken_7 != -1)
              {
                AppAttest_AppAttestation_IsEligibleApplication_cold_1();
              }

              v29 = AAInternalLogSystem_log_7;
              if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
              {
                v30 = 0;
                v31 = 0;
                v32 = 47;
                do
                {
                  v33 = &aLibraryCachesC_7[v30];
                  if (v32 == 47)
                  {
                    v31 = &aLibraryCachesC_7[v30];
                  }

                  v32 = v33[1];
                  if (!v33[1])
                  {
                    break;
                  }

                  v21 = v30++ >= 0xFFF;
                }

                while (!v21);
                *buf = 136315650;
                if (v31)
                {
                  v34 = v31 + 1;
                }

                else
                {
                  v34 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                }

                *&buf[4] = v34;
                *&buf[12] = 1024;
                *&buf[14] = 588;
                *&buf[18] = 2112;
                *&buf[20] = v28;
                _os_log_impl(&dword_226177000, v29, OS_LOG_TYPE_DEBUG, "%25s:%-5d Found app ID in keychain. { appID=%@ }", buf, 0x1Cu);
              }
            }

            v25 = [v23 countByEnumeratingWithState:&v132 objects:v137 count:16];
          }

          while (v25);
        }

        (*(v122 + 2))(v122, 0, 0);

        v12 = v120;
        v15 = &unk_28136F000;
      }
    }

    v35 = objc_alloc_init(AppAttestEligibilityManager);
    v36 = a1[1];
    *buf = *a1;
    *&buf[16] = v36;
    v119 = v35;
    if (![(AppAttestEligibilityManager *)v35 isEligibleClientFor:buf])
    {
      v45 = createAppAttestError("Assert", 616, -4, 0, @"Client is not eligible.", v37, v38, v39, v112);
      v117 = 0;
      v118 = 0;
      v40 = 0;
      goto LABEL_46;
    }

    if (v11)
    {
      v40 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
      if (([v40 BOOLForKey:@"allowPrivAPI"] & 1) == 0)
      {
        v41 = a1[1];
        *buf = *a1;
        *&buf[16] = v41;
        if (![(AppAttestEligibilityManager *)v35 isEligibleForPrivService:buf])
        {
          v45 = createAppAttestError("Assert", 627, -4, 0, @"Client is not eligible for priv service.", v42, v43, v44, v112);
          v117 = 0;
          v118 = 0;
LABEL_46:
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v121 = 0;
          v50 = 0;
LABEL_51:
          v126 = v49;
          if (v15[420] != -1)
          {
            AppAttest_AppAttestation_IsEligibleApplication_cold_1();
          }

          v57 = v48;
          v58 = AAInternalLogSystem_log_7;
          if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
          {
            v59 = 0;
            v60 = 0;
            v61 = 47;
            do
            {
              v62 = &aLibraryCachesC_7[v59];
              if (v61 == 47)
              {
                v60 = &aLibraryCachesC_7[v59];
              }

              v61 = v62[1];
              if (!v62[1])
              {
                break;
              }

              v21 = v59++ >= 0xFFF;
            }

            while (!v21);
            if (v60)
            {
              v63 = v60 + 1;
            }

            else
            {
              v63 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
            }

            *buf = 136315650;
            *&buf[4] = v63;
            *&buf[12] = 1024;
            *&buf[14] = 711;
            *&buf[18] = 2112;
            *&buf[20] = v12;
            _os_log_impl(&dword_226177000, v58, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to create assertion. { keyId=%@ }", buf, 0x1Cu);
          }

          v64 = 0;
          v65 = v40;
LABEL_65:
          (*(v122 + 2))(v122, v64, v45);

          v14 = v122;
          v13 = v123;
          v11 = v124;
          goto LABEL_66;
        }
      }
    }

    else
    {
      v40 = 0;
    }

    v51 = isNSData(v13);
    if (!v51 || (v55 = v51, v56 = [v13 length], v55, v56 >= 0x21))
    {
      v45 = createAppAttestError("Assert", 634, -2, 0, @"Invalid clientDataHash", v52, v53, v54, v112);
      v117 = 0;
      v118 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v121 = 0;
      v50 = 0;
      v15 = &unk_28136F000;
      goto LABEL_51;
    }

    v67 = a1[1];
    *buf = *a1;
    *&buf[16] = v67;
    EnvironmentByAppSigning = generateEnvironmentByAppSigning(buf);
    v130 = 0;
    v131 = 0;
    v129 = 0;
    v69 = a1[1];
    v116 = a1;
    *buf = *a1;
    *&buf[16] = v69;
    v70 = extractApplicationIdentifiers(buf, v11, &v131, &v130, &v129);
    v71 = v131;
    v72 = v130;
    v76 = v129;
    if ((v70 & 1) == 0)
    {
      v48 = v72;
      v45 = createAppAttestError("Assert", 643, -2, v76, @"Unable to fetch application identifier", v73, v74, v75, v112);

      v117 = 0;
      v118 = 0;
      v46 = 0;
      v47 = 0;
      v121 = 0;
      v50 = 0;
      v15 = &unk_28136F000;
      v49 = v71;
      goto LABEL_51;
    }

    v126 = v71;
    v77 = resolveAppUUIDKeychain(v125, v71, v72);
    if (v77)
    {
      v121 = v77;
      v47 = isNSString(v12);

      if (v47)
      {
        CredentialKeychain = loadCredentialKeychain(EnvironmentByAppSigning, v121, v72, v12);
        if (CredentialKeychain)
        {
          cf = CredentialKeychain;
          loadAssertionCounterKeychain(EnvironmentByAppSigning, v121, v72, v12);
          v88 = v115 = v72;
          v89 = isNSNumber(v88);

          v118 = v88;
          if (v89)
          {
            if ([v88 unsignedIntValue] != -1)
            {
              v117 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{objc_msgSend(v88, "unsignedIntValue") + 1}];
              if (saveAssertionCounterKeychain(v117, EnvironmentByAppSigning, v121, v115, v12))
              {
                v128 = v76;
                v50 = createAppAttestationAuthenticatorDataShort(v115, v88, &v128);
                v113 = v128;

                if (v12 && v50)
                {
                  v65 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];

                  if ([v65 BOOLForKey:@"addCdHash"])
                  {
                    v99 = v116[1];
                    *buf = *v116;
                    *&buf[16] = v99;
                    v47 = fetchCdHash(buf);
                    v46 = 0;
                  }

                  else
                  {
                    v103 = v116[1];
                    *buf = *v116;
                    *&buf[16] = v103;
                    v104 = fetchOptInEntitlements(buf);
                    v46 = v104;
                    if (v104 && [v104 containsObject:@"CDhash"])
                    {
                      v105 = v116[1];
                      *buf = *v116;
                      *&buf[16] = v105;
                      v47 = fetchCdHash(buf);
                    }

                    else
                    {
                      v47 = 0;
                    }
                  }

                  v127 = v113;
                  v64 = generateAssertionObject(cf, v12, v50, v13, v47, &v127);
                  v45 = v127;

                  CFRelease(cf);
                  if (v64)
                  {
                    v57 = v115;
                    if (AAInternalLogSystem_onceToken_7 != -1)
                    {
                      AppAttest_AppAttestation_IsEligibleApplication_cold_1();
                    }

                    v106 = AAInternalLogSystem_log_7;
                    if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
                    {
                      v107 = 0;
                      v108 = 0;
                      v109 = 47;
                      do
                      {
                        v110 = &aLibraryCachesC_7[v107];
                        if (v109 == 47)
                        {
                          v108 = &aLibraryCachesC_7[v107];
                        }

                        v109 = v110[1];
                        if (!v110[1])
                        {
                          break;
                        }

                        v21 = v107++ >= 0xFFF;
                      }

                      while (!v21);
                      if (v108)
                      {
                        v111 = v108 + 1;
                      }

                      else
                      {
                        v111 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                      }

                      *buf = 136315650;
                      *&buf[4] = v111;
                      *&buf[12] = 1024;
                      *&buf[14] = 710;
                      *&buf[18] = 2112;
                      *&buf[20] = v12;
                      _os_log_impl(&dword_226177000, v106, OS_LOG_TYPE_DEBUG, "%25s:%-5d Created assertion. { keyId=%@ }", buf, 0x1Cu);
                    }

                    goto LABEL_65;
                  }

                  v48 = v115;
                  v40 = v65;
                  goto LABEL_89;
                }

                v48 = v115;
                v76 = v113;
                v45 = createAppAttestError("Assert", 687, -3, v113, @"Failed to generate authenticator data", v96, v97, v98, v113);
                goto LABEL_88;
              }

              v48 = v115;
              v45 = createAppAttestError("Assert", 680, -3, v76, @"Unable to update counter for authenticator data", v93, v94, v95, v112);
LABEL_87:
              v50 = 0;
LABEL_88:

              CFRelease(cf);
              v46 = 0;
              v47 = 0;
              goto LABEL_89;
            }

            v48 = v115;
            v100 = @"Unable to update counter for authenticator data";
            v101 = 672;
            v102 = 0;
          }

          else
          {
            v48 = v115;
            v100 = @"Key not yet attested";
            v101 = 666;
            v102 = v76;
          }

          v45 = createAppAttestError("Assert", v101, -3, v102, v100, v90, v91, v92, v112);
          v117 = 0;
          goto LABEL_87;
        }

        v48 = v72;
        v45 = createAppAttestError("Assert", 660, -3, 0, @"Failed to load keychain", v85, v86, v87, v112);

        v117 = 0;
        v118 = 0;
        v46 = 0;
        v47 = 0;
      }

      else
      {
        v48 = v72;
        v45 = createAppAttestError("Assert", 654, -2, v76, @"Invalid keyId", v81, v82, v83, v112);

        v117 = 0;
        v118 = 0;
        v46 = 0;
      }
    }

    else
    {
      v48 = v72;
      v45 = createAppAttestError("Assert", 649, -2, 0, @"Invalid appUUID", v78, v79, v80, v112);

      v117 = 0;
      v118 = 0;
      v46 = 0;
      v47 = 0;
      v121 = 0;
    }

    v50 = 0;
LABEL_89:
    v15 = &unk_28136F000;
    v49 = v71;
    goto LABEL_51;
  }

  if (AAInternalLogSystem_onceToken_7 != -1)
  {
    AAInternalLogSystem_cold_1_1();
  }

  v16 = AAInternalLogSystem_log_7;
  if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
  {
    v17 = 0;
    v18 = 0;
    v19 = 47;
    do
    {
      v20 = &aLibraryCachesC_7[v17];
      if (v19 == 47)
      {
        v18 = &aLibraryCachesC_7[v17];
      }

      v19 = v20[1];
      if (!v20[1])
      {
        break;
      }

      v21 = v17++ >= 0xFFF;
    }

    while (!v21);
    if (v18)
    {
      v22 = v18 + 1;
    }

    else
    {
      v22 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
    }

    *buf = 136315394;
    *&buf[4] = v22;
    *&buf[12] = 1024;
    *&buf[14] = 576;
    _os_log_impl(&dword_226177000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d Cannot assert key, completion handler is nil.", buf, 0x12u);
  }

LABEL_66:

  v66 = *MEMORY[0x277D85DE8];
}

void AppAttest_AppAttestation_AssertWithTeamIdentifier(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  if (a2)
  {
    Assert(v7, a2, a3, a4, a5, a6);
  }

  else
  {
    AppAttest_AppAttestation_Assert(v7, a3, a4, a5, a6);
  }
}

void AppAttest_AppAttestation_Sign(__int128 *a1, void *a2, void *a3, void *a4, void *a5)
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
    [(AppAttestHandler *)v15 signWithClientUUID:v9 blob:v11 credential:v10 completion:v12];
  }

  else
  {
    v16 = a1[1];
    v17 = *a1;
    v18 = v16;
    Sign(&v17, v9, v10, 0, v11, v12);
  }
}

void Sign(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v118 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(AppAttestEligibilityManager);
  v17 = a1[1];
  *buf = *a1;
  *&buf[16] = v17;
  if ([(AppAttestEligibilityManager *)v16 isEligibleClientFor:buf])
  {
    if (v13)
    {
      v21 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
      if (([v21 BOOLForKey:@"allowPrivAPI"] & 1) == 0)
      {
        v22 = a1[1];
        *buf = *a1;
        *&buf[16] = v22;
        if (![(AppAttestEligibilityManager *)v16 isEligibleForPrivService:buf])
        {
          v70 = createAppAttestError("Sign", 736, -4, 0, @"Client is not eligible for priv service.", v23, v24, v25, v105);
          v15[2](v15, 0, v70);

          goto LABEL_112;
        }
      }
    }

    v26 = a1[1];
    *buf = *a1;
    *&buf[16] = v26;
    EnvironmentByAppSigning = generateEnvironmentByAppSigning(buf);
    v113 = 0;
    v114 = 0;
    v112 = 0;
    v28 = a1[1];
    *buf = *a1;
    *&buf[16] = v28;
    v29 = extractApplicationIdentifiers(buf, v13, &v114, &v113, &v112);
    v30 = v114;
    v109 = v113;
    v107 = v30;
    v108 = v112;
    if (v29)
    {
      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v31 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 0;
        v33 = 0;
        v34 = 47;
        do
        {
          v35 = &aLibraryCachesC_7[v32];
          if (v34 == 47)
          {
            v33 = &aLibraryCachesC_7[v32];
          }

          v34 = v35[1];
          if (!v35[1])
          {
            break;
          }

          v36 = v32++ >= 0xFFF;
        }

        while (!v36);
        if (v33)
        {
          v37 = v33 + 1;
        }

        else
        {
          v37 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        *buf = 136315906;
        *&buf[4] = v37;
        *&buf[12] = 1024;
        *&buf[14] = 758;
        *&buf[18] = 2112;
        *&buf[20] = v30;
        *&buf[28] = 2112;
        *&buf[30] = v109;
        _os_log_impl(&dword_226177000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App_id=%@, %@", buf, 0x26u);
      }

      v106 = resolveAppUUIDKeychain(v11, v30, v109);
      if (v106)
      {
        v38 = isNSString(v12);
        v39 = v38 == 0;

        if (v39)
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

              v36 = v85++ >= 0xFFF;
            }

            while (!v36);
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
            *&buf[14] = 768;
            *&buf[18] = 2112;
            *&buf[20] = v12;
            _os_log_impl(&dword_226177000, v81, OS_LOG_TYPE_ERROR, "%25s:%-5d Key ID is invalid. { keyID=%@ }", buf, 0x1Cu);
          }

          v21 = createAppAttestError("Sign", 769, -2, v108, @"Invalid keyId", v82, v83, v84, v105);

          v15[2](v15, 0, v21);
        }

        else
        {
          v40 = isNSData(v14);
          if (!v40 || (v41 = [v14 length] == 0, v40, v41))
          {
            if (AAInternalLogSystem_onceToken_7 != -1)
            {
              AppAttest_AppAttestation_IsEligibleApplication_cold_1();
            }

            v71 = AAInternalLogSystem_log_7;
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              v72 = 0;
              v73 = 0;
              v74 = 47;
              do
              {
                v75 = &aLibraryCachesC_7[v72];
                if (v74 == 47)
                {
                  v73 = &aLibraryCachesC_7[v72];
                }

                v74 = v75[1];
                if (!v75[1])
                {
                  break;
                }

                v36 = v72++ >= 0xFFF;
              }

              while (!v36);
              if (v73)
              {
                v76 = v73 + 1;
              }

              else
              {
                v76 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
              }

              v77 = [v14 base64EncodedStringWithOptions:0];
              *buf = 136315650;
              *&buf[4] = v76;
              *&buf[12] = 1024;
              *&buf[14] = 775;
              *&buf[18] = 2112;
              *&buf[20] = v77;
              _os_log_impl(&dword_226177000, v71, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid blob to sign. { blob=%@ }", buf, 0x1Cu);
            }

            v21 = createAppAttestError("Sign", 776, -2, 0, @"Invalid clientDataHash", v78, v79, v80, v105);

            v15[2](v15, 0, v21);
          }

          else
          {
            CredentialKeychain = loadCredentialKeychain(EnvironmentByAppSigning, v106, v109, v12);
            if (CredentialKeychain)
            {
              aBlock[4] = 0;
              error = 0;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __Sign_block_invoke;
              aBlock[3] = &__block_descriptor_40_e5_v8__0l;
              v43 = _Block_copy(aBlock);
              v44 = SecKeyCreateSignature(CredentialKeychain, *MEMORY[0x277CDC300], v14, &error);
              if (v44)
              {
                v45 = AAInternalLogSystem_1();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
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

                    v36 = v46++ >= 0xFFF;
                  }

                  while (!v36);
                  if (v47)
                  {
                    v50 = v47 + 1;
                  }

                  else
                  {
                    v50 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                  }

                  *buf = 136316162;
                  *&buf[4] = v50;
                  *&buf[12] = 1024;
                  *&buf[14] = 803;
                  *&buf[18] = 2112;
                  *&buf[20] = v12;
                  *&buf[28] = 2112;
                  *&buf[30] = v11;
                  *&buf[38] = 2112;
                  *&buf[40] = v109;
                  _os_log_impl(&dword_226177000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Signed data blob. { keyId=%@ , appUUID=%@, resolvedAppID=%@ }", buf, 0x30u);
                }

                (v15)[2](v15, v44, 0);
              }

              else
              {
                v99 = [(__CFError *)error localizedDescription];
                v103 = createAppAttestError("Sign", 798, -2, 0, @"Failed to sign data. { error=%@ }", v100, v101, v102, v99);

                v15[2](v15, 0, v103);
                v108 = v103;
              }

              v43[2](v43);
              v21 = v108;
            }

            else
            {
              v90 = AAInternalLogSystem_1();
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                v91 = 0;
                v92 = 0;
                v93 = 47;
                do
                {
                  v94 = &aLibraryCachesC_7[v91];
                  if (v93 == 47)
                  {
                    v92 = &aLibraryCachesC_7[v91];
                  }

                  v93 = v94[1];
                  if (!v94[1])
                  {
                    break;
                  }

                  v36 = v91++ >= 0xFFF;
                }

                while (!v36);
                if (v92)
                {
                  v95 = v92 + 1;
                }

                else
                {
                  v95 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
                }

                *buf = 136316674;
                *&buf[4] = v95;
                *&buf[12] = 1024;
                *&buf[14] = 784;
                *&buf[18] = 1024;
                *&buf[20] = EnvironmentByAppSigning;
                *&buf[24] = 2112;
                *&buf[26] = v12;
                *&buf[34] = 2112;
                *&buf[36] = v106;
                *&buf[44] = 2112;
                *&buf[46] = v109;
                v116 = 2112;
                v117 = v107;
                _os_log_impl(&dword_226177000, v90, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to load BIK from Keychain. { env=%d, keyID=%@, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x40u);
              }

              v21 = createAppAttestError("Sign", 785, -3, 0, @"Failed to load keychain", v96, v97, v98, v105);

              v15[2](v15, 0, v21);
            }
          }
        }
      }

      else
      {
        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v61 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
        {
          v65 = 0;
          v66 = 0;
          v67 = 47;
          do
          {
            v68 = &aLibraryCachesC_7[v65];
            if (v67 == 47)
            {
              v66 = &aLibraryCachesC_7[v65];
            }

            v67 = v68[1];
            if (!v68[1])
            {
              break;
            }

            v36 = v65++ >= 0xFFF;
          }

          while (!v36);
          if (v66)
          {
            v69 = v66 + 1;
          }

          else
          {
            v69 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          *buf = 136316162;
          *&buf[4] = v69;
          *&buf[12] = 1024;
          *&buf[14] = 761;
          *&buf[18] = 2112;
          *&buf[20] = v11;
          *&buf[28] = 2112;
          *&buf[30] = v109;
          *&buf[38] = 2112;
          *&buf[40] = v30;
          _os_log_impl(&dword_226177000, v61, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed resolved App UUID. { incomingAppUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x30u);
        }

        v21 = createAppAttestError("Sign", 762, -2, 0, @"Invalid appUUID", v62, v63, v64, v105);

        v15[2](v15, 0, v21);
      }
    }

    else
    {
      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v51 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v52 = 0;
        v53 = 0;
        v54 = 47;
        do
        {
          v55 = &aLibraryCachesC_7[v52];
          if (v54 == 47)
          {
            v53 = &aLibraryCachesC_7[v52];
          }

          v54 = v55[1];
          if (!v55[1])
          {
            break;
          }

          v36 = v52++ >= 0xFFF;
        }

        while (!v36);
        if (v53)
        {
          v56 = v53 + 1;
        }

        else
        {
          v56 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        v57 = [v108 localizedDescription];
        *buf = 136315650;
        *&buf[4] = v56;
        *&buf[12] = 1024;
        *&buf[14] = 752;
        *&buf[18] = 2112;
        *&buf[20] = v57;
        _os_log_impl(&dword_226177000, v51, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch identifiers. { error=%@ }", buf, 0x1Cu);
      }

      v21 = createAppAttestError("Sign", 753, -2, v108, @"Unable to fetch application identifier", v58, v59, v60, v105);

      v15[2](v15, 0, v21);
    }
  }

  else
  {
    v21 = createAppAttestError("Sign", 725, -4, 0, @"Client is not eligible.", v18, v19, v20, v105);
    v15[2](v15, 0, v21);
  }

LABEL_112:

  v104 = *MEMORY[0x277D85DE8];
}

void AppAttest_AppAttestation_SignWithTeamIdentifier(__int128 *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v6 = a1[1];
  v7[0] = *a1;
  v7[1] = v6;
  if (a4)
  {
    Sign(v7, a2, a3, a4, a5, a6);
  }

  else
  {
    AppAttest_AppAttestation_Sign(v7, a2, a3, a5, a6);
  }
}

void AppAttest_AppAttestation_GetKey(__int128 *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a4)
  {
    v12 = a1[1];
    v20 = *a1;
    v21 = v12;
    v13 = v9;
    v14 = v10;
    v15 = a4;
LABEL_6:
    GetKey(&v20, v13, v14, v15, v11);
    goto LABEL_7;
  }

  if (!+[FeatureFlagsManager isModernizationEnabled])
  {
    v19 = a1[1];
    v20 = *a1;
    v21 = v19;
    v13 = v9;
    v14 = v10;
    v15 = 0;
    goto LABEL_6;
  }

  v16 = [_TtC17AppAttestInternal16AppAttestHandler alloc];
  v17 = a1[1];
  v20 = *a1;
  v21 = v17;
  v18 = [(AppAttestHandler *)v16 initWith:&v20];
  [(AppAttestHandler *)v18 getKeyFor:v9 credential:v10 completion:v11];

LABEL_7:
}

void GetKey(_OWORD *a1, void *a2, void *a3, void *a4, void *a5)
{
  v92 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_alloc_init(AppAttestEligibilityManager);
  v14 = a1[1];
  *buf = *a1;
  *&buf[16] = v14;
  if ([(AppAttestEligibilityManager *)v13 isEligibleClientFor:buf])
  {
    if (!v11)
    {
      goto LABEL_6;
    }

    v18 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
    if (([v18 BOOLForKey:@"allowPrivAPI"] & 1) != 0 || (v19 = a1[1], *buf = *a1, *&buf[16] = v19, -[AppAttestEligibilityManager isEligibleForPrivService:](v13, "isEligibleForPrivService:", buf)))
    {

LABEL_6:
      v23 = a1[1];
      *buf = *a1;
      *&buf[16] = v23;
      EnvironmentByAppSigning = generateEnvironmentByAppSigning(buf);
      v87 = 0;
      v88 = 0;
      v86 = 0;
      v25 = a1[1];
      *buf = *a1;
      *&buf[16] = v25;
      v26 = extractApplicationIdentifiers(buf, v11, &v88, &v87, &v86);
      v84 = v88;
      v85 = v87;
      v18 = v86;
      if ((v26 & 1) == 0)
      {
        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v38 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = 0;
          v40 = 0;
          v41 = 47;
          do
          {
            v42 = &aLibraryCachesC_7[v39];
            if (v41 == 47)
            {
              v40 = &aLibraryCachesC_7[v39];
            }

            v41 = v42[1];
            if (!v42[1])
            {
              break;
            }

            v32 = v39++ >= 0xFFF;
          }

          while (!v32);
          if (v40)
          {
            v43 = v40 + 1;
          }

          else
          {
            v43 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          v44 = [v18 localizedDescription];
          *buf = 136315650;
          *&buf[4] = v43;
          *&buf[12] = 1024;
          *&buf[14] = 839;
          *&buf[18] = 2112;
          *&buf[20] = v44;
          _os_log_impl(&dword_226177000, v38, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch identifiers. { error=%@ }", buf, 0x1Cu);
        }

        v48 = createAppAttestError("GetKey", 840, -2, v18, @"Unable to fetch application identifier", v45, v46, v47, v81);

        v12[2](v12, 0, v48);
        v18 = v48;
        goto LABEL_84;
      }

      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v27 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 0;
        v29 = 0;
        v30 = 47;
        do
        {
          v31 = &aLibraryCachesC_7[v28];
          if (v30 == 47)
          {
            v29 = &aLibraryCachesC_7[v28];
          }

          v30 = v31[1];
          if (!v31[1])
          {
            break;
          }

          v32 = v28++ >= 0xFFF;
        }

        while (!v32);
        if (v29)
        {
          v33 = v29 + 1;
        }

        else
        {
          v33 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        *buf = 136315906;
        *&buf[4] = v33;
        *&buf[12] = 1024;
        *&buf[14] = 845;
        *&buf[18] = 2112;
        *&buf[20] = v84;
        *&buf[28] = 2112;
        *&buf[30] = v85;
        _os_log_impl(&dword_226177000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d App_id=%@, %@", buf, 0x26u);
      }

      v34 = resolveAppUUIDKeychain(v9, v84, v85);
      v35 = v34;
      if (!v34)
      {
        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v49 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
        {
          v53 = 0;
          v54 = 0;
          v55 = 47;
          do
          {
            v56 = &aLibraryCachesC_7[v53];
            if (v55 == 47)
            {
              v54 = &aLibraryCachesC_7[v53];
            }

            v55 = v56[1];
            if (!v56[1])
            {
              break;
            }

            v32 = v53++ >= 0xFFF;
          }

          while (!v32);
          if (v54)
          {
            v57 = v54 + 1;
          }

          else
          {
            v57 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          *buf = 136316162;
          *&buf[4] = v57;
          *&buf[12] = 1024;
          *&buf[14] = 848;
          *&buf[18] = 2112;
          *&buf[20] = v9;
          *&buf[28] = 2112;
          *&buf[30] = v85;
          *&buf[38] = 2112;
          *&buf[40] = v84;
          _os_log_impl(&dword_226177000, v49, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed resolved App UUID. { incomingAppUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x30u);
        }

        v58 = createAppAttestError("GetKey", 849, -2, 0, @"Invalid appUUID", v50, v51, v52, v81);

        v12[2](v12, 0, v58);
        v18 = v58;
        goto LABEL_83;
      }

      v82 = v34;
      v36 = isNSString(v10);

      if (v36)
      {
        v35 = v82;
        CredentialKeychain = loadCredentialKeychain(EnvironmentByAppSigning, v82, v85, v10);
        if (CredentialKeychain)
        {
          (v12)[2](v12, CredentialKeychain, 0);
LABEL_83:

LABEL_84:
          goto LABEL_85;
        }

        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v73 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
        {
          v74 = 0;
          v75 = 0;
          v76 = 47;
          do
          {
            v77 = &aLibraryCachesC_7[v74];
            if (v76 == 47)
            {
              v75 = &aLibraryCachesC_7[v74];
            }

            v76 = v77[1];
            if (!v77[1])
            {
              break;
            }

            v32 = v74++ >= 0xFFF;
          }

          while (!v32);
          if (v75)
          {
            v78 = v75 + 1;
          }

          else
          {
            v78 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          *buf = 136316674;
          *&buf[4] = v78;
          *&buf[12] = 1024;
          *&buf[14] = 864;
          *&buf[18] = 1024;
          *&buf[20] = EnvironmentByAppSigning;
          *&buf[24] = 2112;
          *&buf[26] = v10;
          *&buf[34] = 2112;
          *&buf[36] = v82;
          *&buf[44] = 2112;
          *&buf[46] = v85;
          v90 = 2112;
          v91 = v84;
          _os_log_impl(&dword_226177000, v73, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to load BIK from Keychain. { env=%d, keyID=%@, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x40u);
        }

        v69 = @"Failed to load keychain";
        v70 = 865;
        v71 = -3;
        v72 = 0;
      }

      else
      {
        if (AAInternalLogSystem_onceToken_7 != -1)
        {
          AppAttest_AppAttestation_IsEligibleApplication_cold_1();
        }

        v60 = AAInternalLogSystem_log_7;
        if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_ERROR))
        {
          v64 = 0;
          v65 = 0;
          v66 = 47;
          do
          {
            v67 = &aLibraryCachesC_7[v64];
            if (v66 == 47)
            {
              v65 = &aLibraryCachesC_7[v64];
            }

            v66 = v67[1];
            if (!v67[1])
            {
              break;
            }

            v32 = v64++ >= 0xFFF;
          }

          while (!v32);
          if (v65)
          {
            v68 = v65 + 1;
          }

          else
          {
            v68 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
          }

          *buf = 136315650;
          *&buf[4] = v68;
          *&buf[12] = 1024;
          *&buf[14] = 855;
          *&buf[18] = 2112;
          *&buf[20] = v10;
          _os_log_impl(&dword_226177000, v60, OS_LOG_TYPE_ERROR, "%25s:%-5d Key ID is invalid. { keyID=%@ }", buf, 0x1Cu);
        }

        v69 = @"Invalid keyId";
        v70 = 856;
        v71 = -2;
        v72 = v18;
      }

      v79 = createAppAttestError("GetKey", v70, v71, v72, v69, v61, v62, v63, v82);

      v12[2](v12, 0, v79);
      v18 = v79;
      v35 = v83;
      goto LABEL_83;
    }

    v59 = createAppAttestError("GetKey", 823, -4, 0, @"Client is not eligible for priv service.", v20, v21, v22, v81);
    v12[2](v12, 0, v59);
  }

  else
  {
    v18 = createAppAttestError("GetKey", 812, -4, 0, @"Client is not eligible.", v15, v16, v17, v81);
    v12[2](v12, 0, v18);
  }

LABEL_85:

  v80 = *MEMORY[0x277D85DE8];
}

void __AttestKey_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v164 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = isNSDictionary(v5);

  v11 = &unk_28136F000;
  if (!v7)
  {
    if (v6 && ([v6 domain], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:", @"com.apple.appattest.error"), v46, v47))
    {
      v48 = v6;
    }

    else
    {
      v48 = createAppAttestError("AttestKey_block_invoke", 495, -6, v6, @"Invalid server response", v8, v9, v10, v141);
    }

    v45 = v48;
    if (AAInternalLogSystem_onceToken_7 != -1)
    {
      AAInternalLogSystem_cold_1_1();
    }

    v26 = AAInternalLogSystem_log_7;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v49 = 0;
    v50 = 0;
    v51 = 47;
    do
    {
      v52 = &aLibraryCachesC_7[v49];
      if (v51 == 47)
      {
        v50 = &aLibraryCachesC_7[v49];
      }

      v51 = v52[1];
      if (!v52[1])
      {
        break;
      }

      v34 = v49++ >= 0xFFF;
    }

    while (!v34);
    if (v50)
    {
      v53 = v50 + 1;
    }

    else
    {
      v53 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
    }

    v54 = [v6 localizedDescription];
    v55 = *(a1 + 104);
    v56 = *(a1 + 32);
    v57 = [*(a1 + 40) intValue];
    v58 = *(a1 + 48);
    v59 = *(a1 + 56);
    v60 = *(a1 + 64);
    *buf = 136317186;
    *&buf[4] = v53;
    *&buf[12] = 1024;
    *&buf[14] = 498;
    *&buf[18] = 2112;
    *&buf[20] = v54;
    *&buf[28] = 1024;
    *&buf[30] = v55;
    *&buf[34] = 2112;
    *&buf[36] = v56;
    *&buf[44] = 1024;
    *&buf[46] = v57;
    v158 = 2112;
    v159 = v58;
    v160 = 2112;
    v161 = v59;
    v162 = 2112;
    v163 = v60;
    goto LABEL_50;
  }

  v12 = [v5 objectForKeyedSubscript:@"attestationDataReceipt"];
  v13 = isNSString(v12);
  if (!v13)
  {

    goto LABEL_37;
  }

  v14 = v13;
  v15 = [v5 objectForKeyedSubscript:@"certs"];
  v16 = isNSString(v15);

  if (!v16)
  {
LABEL_37:
    v45 = createAppAttestError("AttestKey_block_invoke", 501, -6, 0, @"Invalid response", v17, v18, v19, v141);
    if (AAInternalLogSystem_onceToken_7 != -1)
    {
      AAInternalLogSystem_cold_1_1();
    }

    v26 = AAInternalLogSystem_log_7;
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_51;
    }

    v61 = 0;
    v62 = 0;
    v63 = 47;
    do
    {
      v64 = &aLibraryCachesC_7[v61];
      if (v63 == 47)
      {
        v62 = &aLibraryCachesC_7[v61];
      }

      v63 = v64[1];
      if (!v64[1])
      {
        break;
      }

      v34 = v61++ >= 0xFFF;
    }

    while (!v34);
    if (v62)
    {
      v65 = v62 + 1;
    }

    else
    {
      v65 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
    }

    v54 = [v6 localizedDescription];
    v66 = *(a1 + 104);
    v67 = *(a1 + 32);
    v68 = [*(a1 + 40) intValue];
    v69 = *(a1 + 48);
    v70 = *(a1 + 56);
    v71 = *(a1 + 64);
    *buf = 136317186;
    *&buf[4] = v65;
    *&buf[12] = 1024;
    *&buf[14] = 502;
    *&buf[18] = 2112;
    *&buf[20] = v54;
    *&buf[28] = 1024;
    *&buf[30] = v66;
    *&buf[34] = 2112;
    *&buf[36] = v67;
    *&buf[44] = 1024;
    *&buf[46] = v68;
    v158 = 2112;
    v159 = v69;
    v160 = 2112;
    v161 = v70;
    v162 = 2112;
    v163 = v71;
LABEL_50:
    _os_log_impl(&dword_226177000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to attest key. { error=%@, env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x50u);

LABEL_51:
    v44 = 0;
    goto LABEL_105;
  }

  v20 = objc_alloc(MEMORY[0x277CBEA90]);
  v21 = [v5 objectForKeyedSubscript:@"attestationDataReceipt"];
  v22 = [v20 initWithBase64EncodedData:v21 options:1];

  v23 = objc_alloc(MEMORY[0x277CBEA90]);
  v24 = [v5 objectForKeyedSubscript:@"certs"];
  v25 = [v23 initWithBase64EncodedData:v24 options:1];

  v156 = 0;
  v26 = lockcrypto_decode_pems(v25, "CERTIFICATE", &v156);
  v27 = v156;
  if (v27)
  {
    v28 = v27;
    if (AAInternalLogSystem_onceToken_7 != -1)
    {
      AppAttest_AppAttestation_IsEligibleApplication_cold_1();
    }

    v29 = AAInternalLogSystem_log_7;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v148 = v25;
      v151 = v22;
      v30 = 0;
      v31 = 0;
      v32 = 47;
      do
      {
        v33 = &aLibraryCachesC_7[v30];
        if (v32 == 47)
        {
          v31 = &aLibraryCachesC_7[v30];
        }

        v32 = v33[1];
        if (!v33[1])
        {
          break;
        }

        v34 = v30++ >= 0xFFF;
      }

      while (!v34);
      if (v31)
      {
        v35 = v31 + 1;
      }

      else
      {
        v35 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
      }

      v36 = [v28 localizedDescription];
      v37 = v28;
      v38 = *(a1 + 104);
      v39 = *(a1 + 32);
      v40 = [*(a1 + 40) intValue];
      v41 = *(a1 + 48);
      v42 = *(a1 + 56);
      v43 = *(a1 + 64);
      *buf = 136317186;
      *&buf[4] = v35;
      *&buf[12] = 1024;
      *&buf[14] = 518;
      *&buf[18] = 2112;
      *&buf[20] = v36;
      *&buf[28] = 1024;
      *&buf[30] = v38;
      v28 = v37;
      *&buf[34] = 2112;
      *&buf[36] = v39;
      *&buf[44] = 1024;
      *&buf[46] = v40;
      v158 = 2112;
      v159 = v41;
      v160 = 2112;
      v161 = v42;
      v162 = 2112;
      v163 = v43;
      _os_log_impl(&dword_226177000, v29, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to decode certificates. { error=%@, env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x50u);

      v11 = &unk_28136F000;
      v25 = v148;
      v22 = v151;
    }

    v44 = 0;
    v45 = v28;
  }

  else
  {
    if ([v26 count]== 2)
    {
      v28 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:1];
      if (saveAssertionCounterKeychain(v28, *(a1 + 104), *(a1 + 48), *(a1 + 56), *(a1 + 32)))
      {
        v145 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
        if ([v145 BOOLForKey:@"addCdHash"])
        {
          v78 = *(a1 + 124);
          *buf = *(a1 + 108);
          *&buf[16] = v78;
          v79 = fetchCdHash(buf);
        }

        else
        {
          v104 = *(a1 + 124);
          *buf = *(a1 + 108);
          *&buf[16] = v104;
          v105 = fetchOptInEntitlements(buf);
          v106 = v105;
          if (v105 && [v105 containsObject:@"CDhash"])
          {
            v107 = *(a1 + 124);
            *buf = *(a1 + 108);
            *&buf[16] = v107;
            v79 = fetchCdHash(buf);
          }

          else
          {
            v79 = 0;
          }
        }

        v108 = *(a1 + 72);
        v155 = 0;
        v144 = v79;
        v109 = generateAttestationObject(v108, v26, v22, v79, &v155);
        v110 = v155;
        v142 = v110;
        v143 = v109;
        if (v109)
        {
          v44 = v109;
          v45 = 0;
        }

        else
        {
          v45 = v110;
          v111 = AAInternalLogSystem_1();
          if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
          {
            loga = v28;
            v150 = v25;
            v154 = v22;
            v112 = 0;
            v113 = 0;
            v114 = 47;
            do
            {
              v115 = &aLibraryCachesC_7[v112];
              if (v114 == 47)
              {
                v113 = &aLibraryCachesC_7[v112];
              }

              v114 = v115[1];
              if (!v115[1])
              {
                break;
              }

              v34 = v112++ >= 0xFFF;
            }

            while (!v34);
            if (v113)
            {
              v116 = v113 + 1;
            }

            else
            {
              v116 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
            }

            v117 = [v45 localizedDescription];
            v118 = *(a1 + 104);
            v119 = *(a1 + 32);
            v120 = [*(a1 + 40) intValue];
            v121 = *(a1 + 48);
            v122 = *(a1 + 56);
            v123 = *(a1 + 64);
            *buf = 136317186;
            *&buf[4] = v116;
            *&buf[12] = 1024;
            *&buf[14] = 547;
            *&buf[18] = 2112;
            *&buf[20] = v117;
            *&buf[28] = 1024;
            *&buf[30] = v118;
            *&buf[34] = 2112;
            *&buf[36] = v119;
            *&buf[44] = 1024;
            *&buf[46] = v120;
            v158 = 2112;
            v159 = v121;
            v160 = 2112;
            v161 = v122;
            v162 = 2112;
            v163 = v123;
            _os_log_impl(&dword_226177000, v111, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to generate attestation object. { error=%@, env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x50u);

            v11 = &unk_28136F000;
            v25 = v150;
            v22 = v154;
            v28 = loga;
          }

          v44 = 0;
        }

        v28 = v143;
        goto LABEL_104;
      }

      v45 = createAppAttestError("AttestKey_block_invoke", 526, -3, 0, @"Unable to set counter for authenticator data", v75, v76, v77, v141);
      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v92 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
      {
        v149 = v25;
        v153 = v22;
        v93 = 0;
        v94 = 0;
        v95 = 47;
        do
        {
          v96 = &aLibraryCachesC_7[v93];
          if (v95 == 47)
          {
            v94 = &aLibraryCachesC_7[v93];
          }

          v95 = v96[1];
          if (!v96[1])
          {
            break;
          }

          v34 = v93++ >= 0xFFF;
        }

        while (!v34);
        if (v94)
        {
          v97 = v94 + 1;
        }

        else
        {
          v97 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        v98 = *(a1 + 104);
        v99 = *(a1 + 32);
        v100 = [v28 intValue];
        v101 = *(a1 + 48);
        v102 = *(a1 + 56);
        v103 = *(a1 + 64);
        *buf = 136316930;
        *&buf[4] = v97;
        *&buf[12] = 1024;
        *&buf[14] = 527;
        *&buf[18] = 1024;
        *&buf[20] = v98;
        *&buf[24] = 2112;
        *&buf[26] = v99;
        *&buf[34] = 1024;
        *&buf[36] = v100;
        *&buf[40] = 2112;
        *&buf[42] = v101;
        v158 = 2112;
        v159 = v102;
        v160 = 2112;
        v161 = v103;
        _os_log_impl(&dword_226177000, v92, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to update assertion counter. { env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x46u);
        v11 = &unk_28136F000;
        v25 = v149;
        v22 = v153;
      }
    }

    else
    {
      v45 = createAppAttestError("AttestKey_block_invoke", 520, -3, 0, @"The received cert chain length must be 2!", v72, v73, v74, v141);
      if (AAInternalLogSystem_onceToken_7 != -1)
      {
        AppAttest_AppAttestation_IsEligibleApplication_cold_1();
      }

      v28 = AAInternalLogSystem_log_7;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        log = v28;
        v152 = v22;
        v80 = 0;
        v81 = 0;
        v82 = 47;
        do
        {
          v83 = &aLibraryCachesC_7[v80];
          if (v82 == 47)
          {
            v81 = &aLibraryCachesC_7[v80];
          }

          v82 = v83[1];
          if (!v83[1])
          {
            break;
          }

          v34 = v80++ >= 0xFFF;
        }

        while (!v34);
        if (v81)
        {
          v84 = v81 + 1;
        }

        else
        {
          v84 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
        }

        v85 = [0 localizedDescription];
        v86 = *(a1 + 104);
        v87 = *(a1 + 32);
        v88 = [*(a1 + 40) intValue];
        v89 = *(a1 + 48);
        v90 = *(a1 + 56);
        v91 = *(a1 + 64);
        *buf = 136317186;
        *&buf[4] = v84;
        *&buf[12] = 1024;
        *&buf[14] = 521;
        *&buf[18] = 2112;
        *&buf[20] = v85;
        *&buf[28] = 1024;
        *&buf[30] = v86;
        *&buf[34] = 2112;
        *&buf[36] = v87;
        *&buf[44] = 1024;
        *&buf[46] = v88;
        v158 = 2112;
        v159 = v89;
        v160 = 2112;
        v161 = v90;
        v162 = 2112;
        v163 = v91;
        v28 = log;
        _os_log_impl(&dword_226177000, log, OS_LOG_TYPE_ERROR, "%25s:%-5d Certificate chain length is invalid. { error=%@, env=%d, keyID=%@, counter=%d, appUUID=%@, resolvedAppID=%@, realAppID=%@ }", buf, 0x50u);

        v44 = 0;
        v11 = &unk_28136F000;
        v22 = v152;
        goto LABEL_104;
      }
    }

    v44 = 0;
  }

LABEL_104:

LABEL_105:
  v124 = v11[420];
  if (v45)
  {
    if (v124 != -1)
    {
      AppAttest_AppAttestation_IsEligibleApplication_cold_1();
    }

    v125 = AAInternalLogSystem_log_7;
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEBUG))
    {
      v126 = 0;
      v127 = 0;
      v128 = 47;
      do
      {
        v129 = &aLibraryCachesC_7[v126];
        if (v128 == 47)
        {
          v127 = &aLibraryCachesC_7[v126];
        }

        v128 = v129[1];
        if (!v129[1])
        {
          break;
        }

        v34 = v126++ >= 0xFFF;
      }

      while (!v34);
      if (v127)
      {
        v130 = v127 + 1;
      }

      else
      {
        v130 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
      }

      v131 = [*(a1 + 80) localizedDescription];
      v132 = *(a1 + 32);
      *buf = 136315906;
      *&buf[4] = v130;
      *&buf[12] = 1024;
      *&buf[14] = 556;
      *&buf[18] = 2112;
      *&buf[20] = v131;
      *&buf[28] = 2112;
      *&buf[30] = v132;
      _os_log_impl(&dword_226177000, v125, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to attest key. { error=%@, keyId=%@ }", buf, 0x26u);
    }
  }

  else
  {
    if (v124 != -1)
    {
      AppAttest_AppAttestation_IsEligibleApplication_cold_1();
    }

    v133 = AAInternalLogSystem_log_7;
    if (os_log_type_enabled(AAInternalLogSystem_log_7, OS_LOG_TYPE_DEBUG))
    {
      v134 = 0;
      v135 = 0;
      v136 = 47;
      do
      {
        v137 = &aLibraryCachesC_7[v134];
        if (v136 == 47)
        {
          v135 = &aLibraryCachesC_7[v134];
        }

        v136 = v137[1];
        if (!v137[1])
        {
          break;
        }

        v34 = v134++ >= 0xFFF;
      }

      while (!v34);
      if (v135)
      {
        v138 = v135 + 1;
      }

      else
      {
        v138 = "/Library/Caches/com.apple.xbs/Sources/TwoBit/AppAttestInternal/Source/Interfaces/AppAttestAppAttestation.m";
      }

      v139 = *(a1 + 32);
      *buf = 136315650;
      *&buf[4] = v138;
      *&buf[12] = 1024;
      *&buf[14] = 555;
      *&buf[18] = 2112;
      *&buf[20] = v139;
      _os_log_impl(&dword_226177000, v133, OS_LOG_TYPE_DEBUG, "%25s:%-5d Attested key. { keyId=%@ }", buf, 0x1Cu);
    }
  }

  (*(*(a1 + 96) + 16))();
  dispatch_semaphore_signal(*(a1 + 88));

  v140 = *MEMORY[0x277D85DE8];
}

void __Sign_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t __AAInternalLogSystem_block_invoke_7()
{
  AAInternalLogSystem_log_7 = os_log_create("com.apple.devicecheck", "aai");

  return MEMORY[0x2821F96F8]();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft()
{
  result = qword_27D78F050;
  if (!qword_27D78F050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_226191B10@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD90, &qword_2261E89B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_2261E3A4C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2261E3A3C();
  sub_2261E3A2C();
  MEMORY[0x22AA77E40](7824750, 0xE300000000000000);
  sub_226191D60();
  sub_2261E39FC();
  sub_2261E3A0C();
  v11 = sub_2261E3B2C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v5, 1, v11) == 1)
  {
    sub_22619A7B4(v5, &qword_27D78DD90, &qword_2261E89B0);
    sub_22619477C();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return (*(v12 + 32))(a1, v5, v11);
  }
}

char *sub_226191D60()
{
  v1 = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF20, &unk_2261E61A0) - 8) + 64);
  v3 = (MEMORY[0x28223BE20])();
  v399 = &v363 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v398 = &v363 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v397 = &v363 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v394 = &v363 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v391 = &v363 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v388 = &v363 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v387 = &v363 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v363 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v363 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v363 - v23;
  v25 = sub_2261E39EC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = MEMORY[0x28223BE20](v25);
  v366 = &v363 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v365 = &v363 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v382 = &v363 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v381 = &v363 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v418 = &v363 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v380 = &v363 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v417 = &v363 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v416 = &v363 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v379 = &v363 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v415 = &v363 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v396 = &v363 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v395 = &v363 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v414 = &v363 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v378 = &v363 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v413 = &v363 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v412 = &v363 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v377 = &v363 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v411 = &v363 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v410 = &v363 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v376 = &v363 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v409 = &v363 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v408 = &v363 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v375 = &v363 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v407 = &v363 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v393 = &v363 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v392 = &v363 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v419 = &v363 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v374 = &v363 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v406 = &v363 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v405 = &v363 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v373 = &v363 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v404 = &v363 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v403 = &v363 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v372 = &v363 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v402 = &v363 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v390 = &v363 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v389 = &v363 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v401 = &v363 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v371 = &v363 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v400 = &v363 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v370 = &v363 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v369 = &v363 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v368 = &v363 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v367 = &v363 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v386 = &v363 - v117;
  v118 = MEMORY[0x28223BE20](v116);
  v385 = &v363 - v119;
  v120 = MEMORY[0x28223BE20](v118);
  v384 = &v363 - v121;
  v122 = MEMORY[0x28223BE20](v120);
  v383 = &v363 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v126 = &v363 - v125;
  MEMORY[0x28223BE20](v124);
  v128 = &v363 - v127;
  v423 = v26;
  v424 = MEMORY[0x277D84F90];
  v129 = v1[3];
  v420 = v1;
  if (!v129)
  {
    v421 = *(v26 + 56);
    v421(v24, 1, 1, v25);
LABEL_5:
    sub_22619A7B4(v24, &qword_27D78DF20, &unk_2261E61A0);
    v133 = v1[6];
    if (!v133)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v130 = v1[1];
  v131 = v1[2];
  v132 = *v1;

  v26 = v423;
  sub_2261E39DC();
  v421 = *(v26 + 56);
  v421(v24, 0, 1, v25);

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v1 = v420;
    goto LABEL_5;
  }

  v422 = *(v26 + 32);
  v422(v128, v24, v25);
  (*(v26 + 16))(v126, v128, v25);
  v166 = sub_2261987B0(0, 1, 1, MEMORY[0x277D84F90]);
  v168 = v166[2];
  v167 = v166[3];
  v364 = v19;
  if (v168 >= v167 >> 1)
  {
    v166 = sub_2261987B0(v167 > 1, v168 + 1, 1, v166);
  }

  v169 = v423;
  v170 = v423 + 8;
  (*(v423 + 8))(v128, v25);
  v166[2] = v168 + 1;
  v171 = v166 + ((*(v170 + 72) + 32) & ~*(v170 + 72)) + *(v170 + 64) * v168;
  v26 = v169;
  v422(v171, v126, v25);
  v424 = v166;
  v1 = v420;
  v19 = v364;
  v133 = v420[6];
  if (v133)
  {
LABEL_6:
    v135 = v1[7];
    v134 = v1[8];
    v425 = *(v1 + 2);
    v426 = v133;
    v427 = v135;
    v428 = v134;
    v136 = sub_226194D98();
    sub_2261975C8(v136);
  }

LABEL_7:
  v137 = v1[9];
  v138 = v1[10];
  v139 = *(v1 + 88);

  sub_226196FB0(v139, v22);

  v422 = *(v26 + 48);
  if (v422(v22, 1, v25) == 1)
  {
    sub_22619A7B4(v22, &qword_27D78DF20, &unk_2261E61A0);
  }

  else
  {
    v140 = *(v26 + 32);
    v141 = v383;
    v140(v383, v22, v25);
    (*(v26 + 16))(v384, v141, v25);
    v142 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_2261987B0(0, *(v142 + 2) + 1, 1, v142);
    }

    v144 = *(v142 + 2);
    v143 = *(v142 + 3);
    if (v144 >= v143 >> 1)
    {
      v142 = sub_2261987B0(v143 > 1, v144 + 1, 1, v142);
    }

    (*(v26 + 8))(v383, v25);
    *(v142 + 2) = v144 + 1;
    v140(&v142[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v144], v384, v25);
    v424 = v142;
    v1 = v420;
  }

  v145 = v1[12];
  v146 = v1[13];
  v147 = *(v1 + 112);

  sub_2261971A4(v147, v19);

  if (v422(v19, 1, v25) == 1)
  {
    sub_22619A7B4(v19, &qword_27D78DF20, &unk_2261E61A0);
    if (v1[18])
    {
      goto LABEL_16;
    }

LABEL_28:
    v151 = v387;
    v421(v387, 1, 1, v25);
    goto LABEL_29;
  }

  v158 = *(v26 + 32);
  v159 = v385;
  v158(v385, v19, v25);
  (*(v26 + 16))(v386, v159, v25);
  v160 = v424;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_2261987B0(0, *(v160 + 2) + 1, 1, v160);
  }

  v162 = *(v160 + 2);
  v161 = *(v160 + 3);
  if (v162 >= v161 >> 1)
  {
    v160 = sub_2261987B0(v161 > 1, v162 + 1, 1, v160);
  }

  (*(v26 + 8))(v385, v25);
  *(v160 + 2) = v162 + 1;
  v158(&v160[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v162], v386, v25);
  v424 = v160;
  if (!v1[18])
  {
    goto LABEL_28;
  }

LABEL_16:
  v149 = v1[16];
  v148 = v1[17];
  v150 = v1[15];

  v151 = v387;
  sub_2261E39DC();
  v421(v151, 0, 1, v25);

  if (v422(v151, 1, v25) != 1)
  {
    v152 = *(v26 + 32);
    v153 = v367;
    v152(v367, v151, v25);
    (*(v26 + 16))(v368, v153, v25);
    v154 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v154 = sub_2261987B0(0, *(v154 + 2) + 1, 1, v154);
    }

    v156 = *(v154 + 2);
    v155 = *(v154 + 3);
    if (v156 >= v155 >> 1)
    {
      v154 = sub_2261987B0(v155 > 1, v156 + 1, 1, v154);
    }

    (*(v26 + 8))(v367, v25);
    *(v154 + 2) = v156 + 1;
    v152(&v154[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v156], v368, v25);
    v424 = v154;
    if (!v1[22])
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_22619A7B4(v151, &qword_27D78DF20, &unk_2261E61A0);
  if (!v1[22])
  {
LABEL_22:
    v157 = v388;
    v421(v388, 1, 1, v25);
LABEL_31:
    sub_22619A7B4(v157, &qword_27D78DF20, &unk_2261E61A0);
    goto LABEL_41;
  }

LABEL_30:
  v164 = v1[20];
  v163 = v1[21];
  v165 = v1[19];

  v157 = v388;
  sub_2261E39DC();
  v421(v157, 0, 1, v25);

  if (v422(v157, 1, v25) == 1)
  {
    goto LABEL_31;
  }

  v172 = *(v26 + 32);
  v173 = v369;
  v172(v369, v157, v25);
  (*(v26 + 16))(v370, v173, v25);
  v174 = v424;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v174 = sub_2261987B0(0, *(v174 + 2) + 1, 1, v174);
  }

  v176 = *(v174 + 2);
  v175 = *(v174 + 3);
  if (v176 >= v175 >> 1)
  {
    v174 = sub_2261987B0(v175 > 1, v176 + 1, 1, v174);
  }

  (*(v26 + 8))(v369, v25);
  *(v174 + 2) = v176 + 1;
  v172(&v174[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v176], v370, v25);
  v424 = v174;
LABEL_41:
  v178 = v1[23];
  v177 = v1[24];
  v179 = v1[25];

  sub_226197D78(v180);
  if (v181)
  {
    v182 = v371;
    sub_2261E39DC();

    v183 = *(v26 + 32);
    v184 = v400;
    v183(v400, v182, v25);
    (*(v26 + 16))(v401, v184, v25);
    v185 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v185 = sub_2261987B0(0, *(v185 + 2) + 1, 1, v185);
    }

    v187 = *(v185 + 2);
    v186 = *(v185 + 3);
    if (v187 >= v186 >> 1)
    {
      v185 = sub_2261987B0(v186 > 1, v187 + 1, 1, v185);
    }

    (*(v26 + 8))(v400, v25);
    *(v185 + 2) = v187 + 1;
    v183(&v185[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v187], v401, v25);
    v424 = v185;
  }

  else
  {
  }

  v188 = type metadata accessor for TapToRadarDraft();
  v189 = v1 + v188[11];
  v190 = v391;
  sub_2261972FC(v391);
  if (v422(v190, 1, v25) == 1)
  {
    sub_22619A7B4(v190, &qword_27D78DF20, &unk_2261E61A0);
  }

  else
  {
    v191 = *(v26 + 32);
    v192 = v389;
    v191(v389, v190, v25);
    (*(v26 + 16))(v390, v192, v25);
    v193 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v193 = sub_2261987B0(0, *(v193 + 2) + 1, 1, v193);
    }

    v195 = *(v193 + 2);
    v194 = *(v193 + 3);
    if (v195 >= v194 >> 1)
    {
      v193 = sub_2261987B0(v194 > 1, v195 + 1, 1, v193);
    }

    (*(v26 + 8))(v389, v25);
    *(v193 + 2) = v195 + 1;
    v191(&v193[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v195], v390, v25);
    v424 = v193;
    v1 = v420;
  }

  v196 = (v1 + v188[12]);
  v198 = *v196;
  v197 = v196[1];
  v199 = v196[2];

  sub_226197B64(v200);
  if (v201)
  {
    v202 = v372;
    sub_2261E39DC();

    v203 = *(v26 + 32);
    v204 = v402;
    v203(v402, v202, v25);
    (*(v26 + 16))(v403, v204, v25);
    v205 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v205 = sub_2261987B0(0, *(v205 + 2) + 1, 1, v205);
    }

    v207 = *(v205 + 2);
    v206 = *(v205 + 3);
    if (v207 >= v206 >> 1)
    {
      v205 = sub_2261987B0(v206 > 1, v207 + 1, 1, v205);
    }

    (*(v26 + 8))(v402, v25);
    *(v205 + 2) = v207 + 1;
    v203(&v205[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v207], v403, v25);
    v424 = v205;
    v1 = v420;
  }

  else
  {
  }

  v208 = (v1 + v188[13]);
  v210 = *v208;
  v209 = v208[1];
  v211 = v208[2];

  sub_226197B64(v212);
  if (v213)
  {
    v214 = v373;
    sub_2261E39DC();

    v215 = *(v26 + 32);
    v216 = v404;
    v215(v404, v214, v25);
    (*(v26 + 16))(v405, v216, v25);
    v217 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v217 = sub_2261987B0(0, *(v217 + 2) + 1, 1, v217);
    }

    v219 = *(v217 + 2);
    v218 = *(v217 + 3);
    if (v219 >= v218 >> 1)
    {
      v217 = sub_2261987B0(v218 > 1, v219 + 1, 1, v217);
    }

    (*(v26 + 8))(v404, v25);
    *(v217 + 2) = v219 + 1;
    v215(&v217[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v219], v405, v25);
    v424 = v217;
    v1 = v420;
  }

  else
  {
  }

  v220 = (v1 + v188[14]);
  v222 = *v220;
  v221 = v220[1];
  v223 = v220[2];

  sub_226197A34(v224);
  if (v225)
  {
    v226 = v374;
    sub_2261E39DC();

    v227 = *(v26 + 32);
    v228 = v406;
    v227(v406, v226, v25);
    (*(v26 + 16))(v419, v228, v25);
    v229 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v229 = sub_2261987B0(0, *(v229 + 2) + 1, 1, v229);
    }

    v231 = *(v229 + 2);
    v230 = *(v229 + 3);
    if (v231 >= v230 >> 1)
    {
      v229 = sub_2261987B0(v230 > 1, v231 + 1, 1, v229);
    }

    (*(v26 + 8))(v406, v25);
    *(v229 + 2) = v231 + 1;
    v227(&v229[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v231], v419, v25);
    v424 = v229;
    v1 = v420;
  }

  else
  {
  }

  v232 = (v1 + v188[15]);
  v233 = *v232;
  v234 = v232[1];
  *(v232 + 16);

  v235 = v394;
  sub_2261E39DC();

  v419 = (v26 + 56);
  v421(v235, 0, 1, v25);

  if (v422(v235, 1, v25) == 1)
  {
    sub_22619A7B4(v235, &qword_27D78DF20, &unk_2261E61A0);
  }

  else
  {
    v236 = *(v26 + 32);
    v237 = v392;
    v236(v392, v235, v25);
    (*(v26 + 16))(v393, v237, v25);
    v238 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v238 = sub_2261987B0(0, *(v238 + 2) + 1, 1, v238);
    }

    v240 = *(v238 + 2);
    v239 = *(v238 + 3);
    if (v240 >= v239 >> 1)
    {
      v238 = sub_2261987B0(v239 > 1, v240 + 1, 1, v238);
    }

    v241 = v423 + 8;
    (*(v423 + 8))(v392, v25);
    *(v238 + 2) = v240 + 1;
    v236(&v238[((*(v241 + 72) + 32) & ~*(v241 + 72)) + *(v241 + 64) * v240], v393, v25);
    v424 = v238;
  }

  v242 = (v1 + v188[16]);
  v244 = *v242;
  v243 = v242[1];
  v245 = v242[2];

  sub_226197A34(v246);
  if (v247)
  {
    v248 = v375;
    sub_2261E39DC();

    v249 = v423;
    v250 = *(v423 + 32);
    v251 = v407;
    v250(v407, v248, v25);
    (*(v249 + 16))(v408, v251, v25);
    v252 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v252 = sub_2261987B0(0, *(v252 + 2) + 1, 1, v252);
    }

    v254 = *(v252 + 2);
    v253 = *(v252 + 3);
    if (v254 >= v253 >> 1)
    {
      v252 = sub_2261987B0(v253 > 1, v254 + 1, 1, v252);
    }

    v255 = v423 + 8;
    (*(v423 + 8))(v407, v25);
    *(v252 + 2) = v254 + 1;
    v250(&v252[((*(v255 + 72) + 32) & ~*(v255 + 72)) + *(v255 + 64) * v254], v408, v25);
    v424 = v252;
  }

  else
  {
  }

  v256 = (v1 + v188[17]);
  v258 = *v256;
  v257 = v256[1];
  v259 = v256[2];

  sub_22619785C(v260);
  if (v261)
  {
    v262 = v376;
    sub_2261E39DC();

    v263 = v423;
    v264 = *(v423 + 32);
    v265 = v409;
    v264(v409, v262, v25);
    (*(v263 + 16))(v410, v265, v25);
    v266 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v266 = sub_2261987B0(0, *(v266 + 2) + 1, 1, v266);
    }

    v268 = *(v266 + 2);
    v267 = *(v266 + 3);
    if (v268 >= v267 >> 1)
    {
      v266 = sub_2261987B0(v267 > 1, v268 + 1, 1, v266);
    }

    v269 = v423 + 8;
    (*(v423 + 8))(v409, v25);
    *(v266 + 2) = v268 + 1;
    v264(&v266[((*(v269 + 72) + 32) & ~*(v269 + 72)) + *(v269 + 64) * v268], v410, v25);
    v424 = v266;
  }

  else
  {
  }

  v270 = (v1 + v188[18]);
  v272 = *v270;
  v271 = v270[1];
  v273 = v270[2];

  sub_226197A34(v274);
  if (v275)
  {
    v276 = v377;
    sub_2261E39DC();

    v277 = v423;
    v278 = *(v423 + 32);
    v279 = v411;
    v278(v411, v276, v25);
    (*(v277 + 16))(v412, v279, v25);
    v280 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v280 = sub_2261987B0(0, *(v280 + 2) + 1, 1, v280);
    }

    v282 = *(v280 + 2);
    v281 = *(v280 + 3);
    if (v282 >= v281 >> 1)
    {
      v280 = sub_2261987B0(v281 > 1, v282 + 1, 1, v280);
    }

    v283 = v423 + 8;
    (*(v423 + 8))(v411, v25);
    *(v280 + 2) = v282 + 1;
    v278(&v280[((*(v283 + 72) + 32) & ~*(v283 + 72)) + *(v283 + 64) * v282], v412, v25);
    v424 = v280;
  }

  else
  {
  }

  v284 = (v1 + v188[19]);
  v286 = *v284;
  v285 = v284[1];
  v287 = v284[2];

  sub_226196308(v287);
  if (v288)
  {
    v289 = v378;
    sub_2261E39DC();

    v290 = v423;
    v291 = *(v423 + 32);
    v292 = v413;
    v291(v413, v289, v25);
    (*(v290 + 16))(v414, v292, v25);
    v293 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v293 = sub_2261987B0(0, *(v293 + 2) + 1, 1, v293);
    }

    v295 = *(v293 + 2);
    v294 = *(v293 + 3);
    if (v295 >= v294 >> 1)
    {
      v293 = sub_2261987B0(v294 > 1, v295 + 1, 1, v293);
    }

    v296 = v423 + 8;
    (*(v423 + 8))(v413, v25);
    *(v293 + 2) = v295 + 1;
    v291(&v293[((*(v296 + 72) + 32) & ~*(v296 + 72)) + *(v296 + 64) * v295], v414, v25);
    v424 = v293;
  }

  else
  {
  }

  v297 = (v1 + v188[20]);
  v298 = *v297;
  v299 = v297[1];
  *(v297 + 16);

  v300 = v397;
  sub_2261E39DC();

  v421(v300, 0, 1, v25);
  v301 = v300;

  if (v422(v300, 1, v25) == 1)
  {
    sub_22619A7B4(v300, &qword_27D78DF20, &unk_2261E61A0);
  }

  else
  {
    v302 = v423;
    v303 = *(v423 + 32);
    v304 = v395;
    v303(v395, v301, v25);
    (*(v302 + 16))(v396, v304, v25);
    v305 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v305 = sub_2261987B0(0, *(v305 + 2) + 1, 1, v305);
    }

    v307 = *(v305 + 2);
    v306 = *(v305 + 3);
    if (v307 >= v306 >> 1)
    {
      v305 = sub_2261987B0(v306 > 1, v307 + 1, 1, v305);
    }

    v308 = v423 + 8;
    (*(v423 + 8))(v395, v25);
    *(v305 + 2) = v307 + 1;
    v303(&v305[((*(v308 + 72) + 32) & ~*(v308 + 72)) + *(v308 + 64) * v307], v396, v25);
    v424 = v305;
  }

  v309 = (v1 + v188[21]);
  v311 = *v309;
  v310 = v309[1];
  v312 = *(v309 + 16);

  sub_226196A94(v312);
  if (v313)
  {
    v314 = v379;
    sub_2261E39DC();

    v315 = v423;
    v316 = *(v423 + 32);
    v317 = v415;
    v316(v415, v314, v25);
    (*(v315 + 16))(v416, v317, v25);
    v318 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v318 = sub_2261987B0(0, *(v318 + 2) + 1, 1, v318);
    }

    v320 = *(v318 + 2);
    v319 = *(v318 + 3);
    if (v320 >= v319 >> 1)
    {
      v318 = sub_2261987B0(v319 > 1, v320 + 1, 1, v318);
    }

    v321 = v423 + 8;
    (*(v423 + 8))(v415, v25);
    *(v318 + 2) = v320 + 1;
    v316(&v318[((*(v321 + 72) + 32) & ~*(v321 + 72)) + *(v321 + 64) * v320], v416, v25);
    v424 = v318;
  }

  else
  {
  }

  v322 = (v1 + v188[22]);
  v324 = *v322;
  v323 = v322[1];
  v325 = v322[2];

  sub_226197A34(v326);
  if (v327)
  {
    v328 = v380;
    sub_2261E39DC();

    v329 = v423;
    v330 = *(v423 + 32);
    v331 = v417;
    v330(v417, v328, v25);
    (*(v329 + 16))(v418, v331, v25);
    v332 = v424;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v332 = sub_2261987B0(0, *(v332 + 2) + 1, 1, v332);
    }

    v334 = *(v332 + 2);
    v333 = *(v332 + 3);
    if (v334 >= v333 >> 1)
    {
      v332 = sub_2261987B0(v333 > 1, v334 + 1, 1, v332);
    }

    v335 = v423 + 8;
    (*(v423 + 8))(v417, v25);
    *(v332 + 2) = v334 + 1;
    v330(&v332[((*(v335 + 72) + 32) & ~*(v335 + 72)) + *(v335 + 64) * v334], v418, v25);
    v424 = v332;
  }

  else
  {
  }

  v336 = (v1 + v188[23]);
  if (!v336[3])
  {
    v341 = v398;
    v421(v398, 1, 1, v25);
    v343 = v423;
    goto LABEL_140;
  }

  v338 = v336[1];
  v337 = v336[2];
  v339 = *v336;
  v340 = v336[3];

  v341 = v398;
  sub_2261E39DC();
  v421(v341, 0, 1, v25);

  v342 = v422(v341, 1, v25);
  v343 = v423;
  if (v342 == 1)
  {
LABEL_140:
    sub_22619A7B4(v341, &qword_27D78DF20, &unk_2261E61A0);
    goto LABEL_141;
  }

  v344 = *(v423 + 32);
  v345 = v381;
  v344(v381, v341, v25);
  (*(v343 + 16))(v382, v345, v25);
  v346 = v424;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v346 = sub_2261987B0(0, *(v346 + 2) + 1, 1, v346);
  }

  v348 = *(v346 + 2);
  v347 = *(v346 + 3);
  if (v348 >= v347 >> 1)
  {
    v346 = sub_2261987B0(v347 > 1, v348 + 1, 1, v346);
  }

  v343 = v423;
  v349 = v423 + 8;
  (*(v423 + 8))(v381, v25);
  *(v346 + 2) = v348 + 1;
  v344(&v346[((*(v349 + 72) + 32) & ~*(v349 + 72)) + *(v349 + 64) * v348], v382, v25);
  v424 = v346;
LABEL_141:
  v350 = (v420 + v188[24]);
  if (!v350[3])
  {
    v355 = v399;
    v421(v399, 1, 1, v25);
    goto LABEL_149;
  }

  v352 = v350[1];
  v351 = v350[2];
  v353 = *v350;
  v354 = v350[3];

  v355 = v399;
  sub_2261E39DC();
  v421(v355, 0, 1, v25);

  if (v422(v355, 1, v25) == 1)
  {
LABEL_149:
    sub_22619A7B4(v355, &qword_27D78DF20, &unk_2261E61A0);
    return v424;
  }

  v356 = *(v343 + 32);
  v357 = v365;
  v356(v365, v355, v25);
  v358 = v366;
  (*(v343 + 16))(v366, v357, v25);
  v359 = v424;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v359 = sub_2261987B0(0, *(v359 + 2) + 1, 1, v359);
  }

  v361 = *(v359 + 2);
  v360 = *(v359 + 3);
  if (v361 >= v360 >> 1)
  {
    v359 = sub_2261987B0(v360 > 1, v361 + 1, 1, v359);
  }

  (*(v343 + 8))(v357, v25);
  *(v359 + 2) = v361 + 1;
  v356(&v359[((*(v343 + 80) + 32) & ~*(v343 + 80)) + *(v343 + 72) * v361], v358, v25);
  return v359;
}

unint64_t sub_22619477C()
{
  result = qword_27D78DD98;
  if (!qword_27D78DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DD98);
  }

  return result;
}

uint64_t sub_2261947D0()
{
  v1[18] = v0;
  v2 = sub_2261E3B2C();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226194890, 0, 0);
}

uint64_t sub_226194890()
{
  v1 = v0[18];
  sub_226191B10(v0[21]);
  v0[22] = objc_opt_self();
  sub_2261E3F8C();
  v0[23] = sub_2261E3F7C();
  v3 = sub_2261E3F6C();

  return MEMORY[0x2822009F8](sub_226194990, v3, v2);
}

uint64_t sub_226194990()
{
  v2 = v0[22];
  v1 = v0[23];

  v0[24] = [v2 sharedApplication];

  return MEMORY[0x2822009F8](sub_226194A14, 0, 0);
}

uint64_t sub_226194A14()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = sub_2261E3AFC();
  v0[25] = v3;
  sub_226198B58(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_22619A648(&qword_27D78DDA0);
  v4 = sub_2261E3D4C();
  v0[26] = v4;

  v0[2] = v0;
  v0[7] = v0 + 27;
  v0[3] = sub_226194BC0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDA8, &qword_2261E57A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_226194D3C;
  v0[13] = &block_descriptor;
  v0[14] = v5;
  [v1 openURL:v3 options:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_226194BC0()
{
  v2 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226194CA0, 0, 0);
}

uint64_t sub_226194CA0()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[21], v0[19]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226194D3C(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_226194D98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB0, &qword_2261E57B0);
  v1 = *(sub_2261E39EC() - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2261E5760;
  v10 = *v0;
  sub_2261E423C();
  sub_2261E39DC();

  v5 = v0[1];
  v6 = v0[2];
  sub_2261E39DC();
  v7 = v0[3];
  v8 = v0[4];
  sub_2261E39DC();
  return v4;
}

uint64_t sub_226194F14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2261E42EC();
  MEMORY[0x22AA78720](v1);
  sub_2261E3E6C();
  sub_2261E3E6C();
  return sub_2261E430C();
}

uint64_t sub_226194F94()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x22AA78720](*v0);
  sub_2261E3E6C();

  return sub_2261E3E6C();
}

uint64_t sub_226195004()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_2261E42EC();
  MEMORY[0x22AA78720](v1);
  sub_2261E3E6C();
  sub_2261E3E6C();
  return sub_2261E430C();
}

uint64_t sub_226195080(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_2261E425C() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_2261E425C();
}

unint64_t sub_226195134(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_226195298(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_226195134(*a1);
  v5 = v4;
  if (v3 == sub_226195134(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2261E425C();
  }

  return v8 & 1;
}

uint64_t sub_226195320(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_2261E425C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_226195524(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x80000002261EA700;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x80000002261EA720;
    }

    v5 = 0x80000002261EA6C0;
    if (a1 != 3)
    {
      v5 = 0x80000002261EA6E0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_2261E425C();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x80000002261EA700;
    }

    else
    {
      v10 = 0x80000002261EA720;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x80000002261EA6C0;
    }

    else
    {
      v10 = 0x80000002261EA6E0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_2261956FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_2261E425C();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_2261958F4()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_226195134(v1);
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195958()
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195A6C()
{
  sub_226195134(*v0);
  sub_2261E3E6C();
}

uint64_t sub_226195AC0()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_226195134(v1);
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195B20()
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195C28()
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195D38()
{
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_226195E48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_226198D68();
  *a2 = result;
  return result;
}

unint64_t sub_226195E78@<X0>(unint64_t *a1@<X8>)
{
  result = sub_226195134(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_226195EC0()
{
  *v0;
  *v0;
  *v0;
  sub_2261E3E6C();
}

uint64_t sub_226195FC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_226198DB4();
  *a2 = result;
  return result;
}

void sub_226195FF4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2261960C0()
{
  v1 = *v0;
  result = *&aAlways_1[8 * v1];
  v3 = *&aIDidnTnotAppl[8 * v1 + 16];
  return result;
}

uint64_t sub_2261960F8()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_2261E3E6C();
}

uint64_t sub_2261961F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_226198E00();
  *a2 = result;
  return result;
}

void sub_226196224(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_2261962E8()
{
  v1 = *v0;
  result = *&aIphone_1[8 * v1];
  v3 = qword_2261E6248[v1];
  return result;
}

uint64_t sub_226196308(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_2261986A4(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_2261986A4((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_2261986A4((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_2261986A4((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_2261986A4((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_2261986A4((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
            sub_226198E4C();
            v1 = sub_2261E3D8C();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_2261986A4((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x80000002261EA770;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_2261986A4((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_2261986A4(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_2261986A4((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_2261967E0()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v1);
  return sub_2261E430C();
}

uint64_t sub_226196854()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v1);
  return sub_2261E430C();
}

BOOL sub_2261968DC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22619690C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_226196938@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_226196A24@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_226196A54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_226198B20(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_226196A94(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_2261E425C();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_226196C64()
{
  *v0;
  sub_2261E3E6C();
}

uint64_t sub_226196D68@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_226198EF8();
  *a2 = result;
  return result;
}

void sub_226196D98(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000002261EA700;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x80000002261EA720;
    }

    v5 = 0x80000002261EA6C0;
    if (v2 != 3)
    {
      v5 = 0x80000002261EA6E0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_226196E84()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v1);
  return sub_2261E430C();
}

uint64_t sub_226196EF8()
{
  v1 = *v0;
  sub_2261E42EC();
  MEMORY[0x22AA78720](v1);
  return sub_2261E430C();
}

unint64_t sub_226196F3C()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD000000000000028;
  }

  *v0;
  return result;
}

uint64_t sub_226196FB0@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 9u)
  {
    v3 = 1;
  }

  else
  {
    sub_2261E39DC();

    v3 = 0;
  }

  v4 = sub_2261E39EC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_2261971A4@<X0>(unsigned __int8 a1@<W2>, uint64_t a2@<X8>)
{
  if (a1 > 5u)
  {
    v3 = 1;
  }

  else
  {
    sub_2261E39DC();

    v3 = 0;
  }

  v4 = sub_2261E39EC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, v3, 1, v4);
}

uint64_t sub_2261972FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD88, &unk_2261E5780) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v22 - v5;
  v7 = sub_2261E3BFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20]();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DD80, &qword_2261E5778);
  sub_22619A73C(v2 + *(v12 + 36), v6, &qword_27D78DD88, &unk_2261E5780);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22619A7B4(v6, &qword_27D78DD88, &unk_2261E5780);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v15 = sub_2261E3DAC();
    [v14 setDateFormat_];

    [v14 setDoesRelativeDateFormatting_];
    v16 = sub_2261E3BEC();
    v17 = [v14 stringFromDate_];

    sub_2261E3DDC();
    (*(v8 + 8))(v11, v7);
    v18 = *v2;
    v19 = v2[1];
    sub_2261E39DC();

    v13 = 0;
  }

  v20 = sub_2261E39EC();
  return (*(*(v20 - 8) + 56))(a1, v13, 1, v20);
}

uint64_t sub_2261975C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2261987B0(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_2261E39EC();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2261976F4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_226197760()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 48;
  }
}

uint64_t sub_226197778()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_2261E3DAC();
  [v0 setDateFormat_];

  [v0 setDoesRelativeDateFormatting_];
  v2 = sub_2261E3BEC();
  v3 = [v0 stringFromDate_];

  v4 = sub_2261E3DDC();
  return v4;
}

uint64_t sub_22619785C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2261986A4(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_2261986A4((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
  sub_226198E4C();
  v17 = sub_2261E3D8C();

  return v17;
}

uint64_t sub_226197A34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2261986A4(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_2261986A4((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
  sub_226198E4C();
  v9 = sub_2261E3D8C();

  return v9;
}

uint64_t sub_226197B64(uint64_t a1)
{
  v24 = sub_2261E3B2C();
  v2 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return 0;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v22 = *(v7 + 56);
  v23 = v8;
  v10 = (v7 - 8);
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v24;
    v13 = v7;
    v23(v5, v9, v24);
    v14 = sub_2261E3B0C();
    v16 = v15;
    (*v10)(v5, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_2261986A4(0, *(v11 + 2) + 1, 1, v11);
    }

    v18 = *(v11 + 2);
    v17 = *(v11 + 3);
    if (v18 >= v17 >> 1)
    {
      v11 = sub_2261986A4((v17 > 1), v18 + 1, 1, v11);
    }

    *(v11 + 2) = v18 + 1;
    v19 = &v11[16 * v18];
    *(v19 + 4) = v14;
    *(v19 + 5) = v16;
    v9 += v22;
    --v6;
    v7 = v13;
  }

  while (v6);
  v25 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
  sub_226198E4C();
  v20 = sub_2261E3D8C();

  return v20;
}

uint64_t sub_226197D78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v4 = *v2++;
    v5 = sub_2261E423C();
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_2261986A4(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_2261986A4((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    v10 = &v3[16 * v9];
    *(v10 + 4) = v5;
    *(v10 + 5) = v7;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
  sub_226198E4C();
  v11 = sub_2261E3D8C();

  return v11;
}

uint64_t sub_226197ED0()
{
  sub_2261E3F5C();
  swift_getWitnessTable();
  v0 = sub_2261E3FBC();
  result = 0;
  if ((v0 & 1) == 0)
  {
    MEMORY[0x28223BE20](0);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getWitnessTable();
    sub_2261E3EEC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB8, &qword_2261E57B8);
    sub_226198E4C();
    v3 = sub_2261E3D8C();

    return v3;
  }

  return result;
}

uint64_t sub_226198070@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 8))(*(a1 + a2 - 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2261980B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  return sub_226197ED0();
}

uint64_t sub_2261980CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20]();
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v6 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v14, a1);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v4 + 8))(v8, a1);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v16 = (*(a2 + 8))(v9, a2);
    (*(v10 + 8))(v13, v9);
    return v16;
  }
}

uint64_t sub_2261982D0(uint64_t a1, id *a2)
{
  result = sub_2261E3DBC();
  *a2 = 0;
  return result;
}

uint64_t sub_226198348(uint64_t a1, id *a2)
{
  v3 = sub_2261E3DCC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2261983C8@<X0>(uint64_t *a1@<X8>)
{
  sub_2261E3DDC();
  v2 = sub_2261E3DAC();

  *a1 = v2;
  return result;
}

uint64_t sub_22619840C()
{
  v1 = *v0;
  v2 = sub_2261E3DDC();
  v3 = MEMORY[0x22AA782F0](v2);

  return v3;
}

uint64_t sub_226198448()
{
  v1 = *v0;
  sub_2261E3DDC();
  sub_2261E3E6C();
}

uint64_t sub_22619849C()
{
  v1 = *v0;
  sub_2261E3DDC();
  sub_2261E42EC();
  sub_2261E3E6C();
  v2 = sub_2261E430C();

  return v2;
}

uint64_t sub_226198510(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2261E3DDC();
  v6 = v5;
  if (v4 == sub_2261E3DDC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2261E425C();
  }

  return v9 & 1;
}

uint64_t sub_226198598@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2261E3DAC();

  *a2 = v5;
  return result;
}

uint64_t sub_2261985E0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2261E3DDC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22619860C(uint64_t a1)
{
  v2 = sub_22619A648(&qword_27D78DDA0);
  v3 = sub_22619A648(&qword_27D78DF08);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

char *sub_2261986A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D78E210, &unk_2261E8B60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2261987B0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DDB0, &qword_2261E57B0);
  v10 = *(sub_2261E39EC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2261E39EC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_226198988(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2261E3DDC();
  sub_2261E42EC();
  sub_2261E3E6C();
  v4 = sub_2261E430C();

  return sub_226198A1C(a1, v4);
}

unint64_t sub_226198A1C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2261E3DDC();
      v9 = v8;
      if (v7 == sub_2261E3DDC() && v9 == v10)
      {
        break;
      }

      v12 = sub_2261E425C();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_226198B20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_226198B58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF10, &qword_2261E6190);
    v3 = sub_2261E41CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_22619A73C(v4, &v11, &qword_27D78DF18, &qword_2261E6198);
      v5 = v11;
      result = sub_226198988(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_22619A7A4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_226198CB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_226198D68()
{
  v0 = sub_2261E41EC();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_226198DB4()
{
  v0 = sub_2261E41EC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_226198E00()
{
  v0 = sub_2261E41EC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_226198E4C()
{
  result = qword_27D78DDC0;
  if (!qword_27D78DDC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DDB8, &qword_2261E57B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDC0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_226198EF8()
{
  v0 = sub_2261E41EC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_226198F74()
{
  result = qword_27D78DDC8;
  if (!qword_27D78DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDC8);
  }

  return result;
}

unint64_t sub_226198FCC()
{
  result = qword_27D78DDD0;
  if (!qword_27D78DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDD0);
  }

  return result;
}

unint64_t sub_226199024()
{
  result = qword_27D78DDD8;
  if (!qword_27D78DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDD8);
  }

  return result;
}

unint64_t sub_22619907C()
{
  result = qword_27D78DDE0;
  if (!qword_27D78DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDE0);
  }

  return result;
}

unint64_t sub_2261990D4()
{
  result = qword_27D78DDE8;
  if (!qword_27D78DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDE8);
  }

  return result;
}

unint64_t sub_22619912C()
{
  result = qword_27D78DDF0;
  if (!qword_27D78DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDF0);
  }

  return result;
}

unint64_t sub_226199184()
{
  result = qword_27D78DDF8;
  if (!qword_27D78DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DDF8);
  }

  return result;
}

unint64_t sub_2261991DC()
{
  result = qword_27D78DE00;
  if (!qword_27D78DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE00);
  }

  return result;
}

unint64_t sub_226199234()
{
  result = qword_27D78DE08;
  if (!qword_27D78DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE08);
  }

  return result;
}

unint64_t sub_22619928C()
{
  result = qword_27D78DE10;
  if (!qword_27D78DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE10);
  }

  return result;
}

void sub_22619930C()
{
  sub_226199754(319, &qword_27D78DE18, &qword_27D78DE20, &unk_2261E6280, sub_226199688);
  if (v0 <= 0x3F)
  {
    sub_226199704(319, &qword_27D78DE30, &type metadata for TapToRadarDraft.Component, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_226199754(319, &qword_27D78DE38, &qword_27D78DE40, &qword_2261E5EC0, sub_2261997C4);
      if (v2 <= 0x3F)
      {
        sub_226199754(319, &qword_27D78DE50, &qword_27D78DE58, &qword_2261E5EC8, sub_226199840);
        if (v3 <= 0x3F)
        {
          sub_226199754(319, &qword_27D78DE68, &qword_27D78DE70, &qword_2261E5ED0, sub_2261998BC);
          if (v4 <= 0x3F)
          {
            sub_226199754(319, &qword_27D78DE80, &qword_27D78DD88, &unk_2261E5780, sub_226199938);
            if (v5 <= 0x3F)
            {
              sub_226199754(319, &qword_27D78DE90, &qword_27D78DE98, &qword_2261E5ED8, sub_2261999B4);
              if (v6 <= 0x3F)
              {
                sub_226199754(319, &qword_27D78DEA8, &qword_27D78DDB8, &qword_2261E57B8, sub_226199A30);
                if (v7 <= 0x3F)
                {
                  sub_226199B28(319, &qword_27D78DEB8);
                  if (v8 <= 0x3F)
                  {
                    sub_226199754(319, &qword_27D78DEC0, &qword_27D78DEC8, &qword_2261E5EE0, sub_226199AAC);
                    if (v9 <= 0x3F)
                    {
                      sub_226199B28(319, &qword_27D78DED8);
                      if (v10 <= 0x3F)
                      {
                        sub_226199B28(319, &qword_27D78DEE0);
                        if (v11 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_226199688()
{
  result = qword_27D78DE28;
  if (!qword_27D78DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE20, &unk_2261E6280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE28);
  }

  return result;
}

void sub_226199704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_226199754(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for URLParameter();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2261997C4()
{
  result = qword_27D78DE48;
  if (!qword_27D78DE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE40, &qword_2261E5EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE48);
  }

  return result;
}

unint64_t sub_226199840()
{
  result = qword_27D78DE60;
  if (!qword_27D78DE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE58, &qword_2261E5EC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE60);
  }

  return result;
}

unint64_t sub_2261998BC()
{
  result = qword_27D78DE78;
  if (!qword_27D78DE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE70, &qword_2261E5ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE78);
  }

  return result;
}

unint64_t sub_226199938()
{
  result = qword_27D78DE88;
  if (!qword_27D78DE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DD88, &unk_2261E5780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DE88);
  }

  return result;
}

unint64_t sub_2261999B4()
{
  result = qword_27D78DEA0;
  if (!qword_27D78DEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DE98, &qword_2261E5ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DEA0);
  }

  return result;
}

unint64_t sub_226199A30()
{
  result = qword_27D78DEB0;
  if (!qword_27D78DEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DDB8, &qword_2261E57B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DEB0);
  }

  return result;
}

unint64_t sub_226199AAC()
{
  result = qword_27D78DED0;
  if (!qword_27D78DED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D78DEC8, &qword_2261E5EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DED0);
  }

  return result;
}

void sub_226199B28(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for URLParameter();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_226199B8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226199BD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ErrorCodes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ErrorCodes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22619A1C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22619A240(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_22619A3C4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_22619A648(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22619A73C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_22619A7A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_22619A7B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22619A85C(char a1)
{
  if (!a1)
  {
    return 109;
  }

  if (a1 == 1)
  {
    return 99;
  }

  return 0x64696C61766E69;
}

uint64_t sub_22619A89C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE100000000000000;
  v4 = 99;
  if (v2 != 1)
  {
    v4 = 0x64696C61766E69;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 109;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  v7 = 0xE100000000000000;
  v8 = 99;
  if (*a2 != 1)
  {
    v8 = 0x64696C61766E69;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 109;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE100000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2261E425C();
  }

  return v11 & 1;
}

uint64_t sub_22619A980()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_22619AA0C()
{
  *v0;
  *v0;
  sub_2261E3E6C();
}

uint64_t sub_22619AA84()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_22619AB0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22619C768();
  *a2 = result;
  return result;
}

void sub_22619AB3C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 0xE100000000000000;
  v5 = 99;
  if (v2 != 1)
  {
    v5 = 0x64696C61766E69;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 109;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

char *sub_22619AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  *(v11 + 7) = 0;
  *(v11 + 8) = 0;
  *(v11 + 6) = 0;
  v12 = OBJC_IVAR____TtC17AppAttestInternal15IdentityManager_logger;
  v13 = sub_2261A5168();
  v14 = sub_2261E3CDC();
  (*(*(v14 - 8) + 16))(&v11[v12], v13, v14);
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  *(v11 + 4) = a3;
  *(v11 + 5) = a4;
  return v11;
}

char *sub_22619AC3C()
{
  if (v0[6])
  {
    v1 = v0[6];
  }

  else
  {
    type metadata accessor for BundleRecordController();
    v2 = v0;
    v1 = sub_2261A2BE4(v0[2], v0[3], v0[4], v0[5]);
    v3 = v0[6];
    v2[6] = v1;
  }

  return v1;
}

uint64_t sub_22619ACB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  if (*a1 && v4 != 1)
  {
    goto LABEL_11;
  }

  v5 = sub_2261E425C();

  if (v5)
  {
    return 0;
  }

  v6 = *(a1 + 4);
  if (!v6)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 3);
  v9 = *(a1 + 1);
  v10 = *(a2 + 4);
  if (v10)
  {
    if (*(a2 + 3) == v8 && v10 == v6 || (v11 = *(a1 + 3), v12 = *(a1 + 4), (sub_2261E425C() & 1) != 0))
    {

      v13 = sub_2261E3FEC();
      sub_2261A4EAC(v13, 0xD00000000000002ELL, 0x80000002261EA840, 0xD000000000000069, 0x80000002261EA870, 54);
      return v8;
    }
  }

  v15 = *(a2 + 2);
  if (v15 && (v9 == *(a2 + 1) && v7 == v15 || (sub_2261E425C() & 1) != 0))
  {
    v16 = sub_2261E3CBC();
    v17 = sub_2261E3FEC();
    if (!os_log_type_enabled(v16, v17))
    {
LABEL_20:

      return 0;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = "Current identifier matches last UUID entry identifier, but UUID mismatch, cannot inherit UUID.";
LABEL_19:
    _os_log_impl(&dword_226177000, v16, v17, v19, v18, 2u);
    MEMORY[0x22AA792E0](v18, -1, -1);
    goto LABEL_20;
  }

  if (v4)
  {

    goto LABEL_24;
  }

  v20 = sub_2261E425C();

  if ((v20 & 1) == 0)
  {

    v30 = *a2;
    if (*a2 && v30 == 1)
    {
    }

    else
    {
      v31 = sub_2261E425C();

      if ((v31 & 1) == 0)
      {

        if (v30)
        {
          v36 = sub_2261E425C();

          if ((v36 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
        }

        v16 = sub_2261E3CBC();
        v17 = sub_2261E3FEC();
        if (!os_log_type_enabled(v16, v17))
        {
          goto LABEL_20;
        }

        v18 = swift_slowAlloc();
        *v18 = 0;
        v19 = "Invalid state, cannot migrate to another main App with different identifiers.";
        goto LABEL_19;
      }
    }

    v32 = sub_2261E3CBC();
    v33 = sub_2261E3FEC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_226177000, v32, v33, "Moving to App Clip from main App, ensuring main App is still installed to inherit UUID.", v34, 2u);
      MEMORY[0x22AA792E0](v34, -1, -1);
    }

    sub_22619AC3C();
    v35 = sub_2261A3908();

    if (v35)
    {
      return v8;
    }

LABEL_11:

    return 0;
  }

LABEL_24:

  v21 = *a2;
  if (v21 == 1)
  {

LABEL_27:
    v23 = sub_2261E3CBC();
    v24 = sub_2261E3FEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_226177000, v23, v24, "Moving across App Clips, inheriting previous UUID.", v25, 2u);
      MEMORY[0x22AA792E0](v25, -1, -1);
    }

    goto LABEL_30;
  }

  v22 = sub_2261E425C();

  if (v22)
  {
    goto LABEL_27;
  }

LABEL_30:
  if (!v21)
  {

    goto LABEL_34;
  }

  v26 = sub_2261E425C();

  if (v26)
  {
LABEL_34:
    v27 = sub_2261E3CBC();
    v28 = sub_2261E3FEC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_226177000, v27, v28, "Upgrading to main App, inheriting App Clip UUID.", v29, 2u);
      MEMORY[0x22AA792E0](v29, -1, -1);
    }
  }

  return v8;
}

void sub_22619B27C()
{
  v1 = v0;
  v2 = sub_2261E3E2C();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22619AC3C();
  sub_2261A2CB8(v40);

  if (*(&v40[0] + 1) != 1)
  {
    v41 = v40[0];
    v42 = v40[1];
    v43 = v40[2];
    v4 = sub_2261A54B0();
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = sub_2261A5588();
      if (v9)
      {
        v10 = v8;
        v11 = v9;
        v12 = *(v0 + 48);

        v13 = sub_2261A30F4();

        if (sub_2261A3324(v13, 4u))
        {
          v6 = v10;
          v7 = v11;
        }
      }

      sub_22619B938();
      v14 = sub_2261E1EC4(v6, v7);
      v16 = v15;
      v18 = v17;

      if ((v18 & 0x100) != 0)
      {
        v47 = v41;
        sub_22619A7B4(&v47, &qword_27D78DE20, &unk_2261E6280);
        v48 = v42;
        sub_22619A7B4(&v48, &qword_27D78DE20, &unk_2261E6280);
        v49 = v43;
        sub_22619A7B4(&v49, &qword_27D78DE20, &unk_2261E6280);
        sub_22619C7B4();
        swift_willThrowTypedImpl();
        swift_allocError();
        *v33 = v14;
        *(v33 + 8) = v16;
        *(v33 + 16) = v18 & 1;
      }

      else
      {
        v19 = *(v1 + 56);
        type metadata accessor for CFData(0);
        v21 = v20;

        v39 = sub_2261DFE64(v14, v16, v21);
        v23 = v22;
        v25 = v24;
        sub_22619C81C(v14, v16, v18, 0);

        if ((v25 & 0x100) != 0)
        {
          v50 = v41;
          sub_22619C838();
          sub_22619A7B4(&v50, &qword_27D78DE20, &unk_2261E6280);
          v51 = v42;
          sub_22619A7B4(&v51, &qword_27D78DE20, &unk_2261E6280);
          v52 = v43;
          sub_22619A7B4(&v52, &qword_27D78DE20, &unk_2261E6280);
          sub_22619C7B4();
          swift_willThrowTypedImpl();
          swift_allocError();
          *v34 = v39;
          *(v34 + 8) = v23;
          *(v34 + 16) = v25 & 1;
          sub_2261795CC(v39, v23, v25, 1);
        }

        else if (v39)
        {
          v62 = v25;
          v26 = v39;
          v27 = sub_2261E3BBC();
          v29 = v28;
          sub_2261E3E1C();
          sub_2261E3DFC();
          v31 = v30;
          sub_22619C840(v27, v29);
          if (v31)
          {
            v53 = v41;
            sub_22619A7B4(&v53, &qword_27D78DE20, &unk_2261E6280);
            v54 = v42;
            sub_22619A7B4(&v54, &qword_27D78DE20, &unk_2261E6280);
            v55 = v43;
            sub_22619A7B4(&v55, &qword_27D78DE20, &unk_2261E6280);
          }

          else
          {
            v35 = sub_2261E3FEC();
            sub_2261E410C();

            v59 = v43;
            v60 = v42;
            v61 = v41;
            sub_22619C894();
            v36 = sub_2261E423C();
            v38 = v37;
            sub_22619A7B4(&v61, &qword_27D78DE20, &unk_2261E6280);
            sub_22619A7B4(&v60, &qword_27D78DE20, &unk_2261E6280);
            sub_22619A7B4(&v59, &qword_27D78DE20, &unk_2261E6280);
            MEMORY[0x22AA782B0](v36, v38);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            sub_2261A4EAC(v35, 0xD000000000000018, 0x80000002261EA910, 0xD000000000000069, 0x80000002261EA870, 120);
          }

          v32 = v62;
          sub_2261795CC(v39, v23, v62, 0);
          sub_2261795CC(v39, v23, v32, 0);
        }

        else
        {
          sub_2261795CC(0, v23, v25, 0);
          v56 = v41;
          sub_22619A7B4(&v56, &qword_27D78DE20, &unk_2261E6280);
          v57 = v42;
          sub_22619A7B4(&v57, &qword_27D78DE20, &unk_2261E6280);
          v58 = v43;
          sub_22619A7B4(&v58, &qword_27D78DE20, &unk_2261E6280);
        }
      }
    }

    else
    {
      v44 = v41;
      sub_22619A7B4(&v44, &qword_27D78DE20, &unk_2261E6280);
      v45 = v42;
      sub_22619A7B4(&v45, &qword_27D78DE20, &unk_2261E6280);
      v46 = v43;
      sub_22619A7B4(&v46, &qword_27D78DE20, &unk_2261E6280);
    }
  }
}

uint64_t sub_22619B938()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    v2 = v0;
    type metadata accessor for KeychainController();
    v3 = sub_2261A2B48();
    v4 = *v3;
    v5 = v3[1];

    v1 = sub_2261DFDC8(v4, v5);
    v6 = *(v2 + 56);
    *(v2 + 56) = v1;
  }

  return v1;
}

uint64_t sub_22619B9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF28, &unk_2261E6FD0);
  v8 = *(*(v7 - 8) + 64);
  result = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v40 - v10;
  if (!a2)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 2;
LABEL_28:
    *a3 = v30;
    *(a3 + 8) = v26;
    *(a3 + 16) = v27;
    *(a3 + 24) = v28;
    *(a3 + 32) = a2;
    *(a3 + 40) = v29;
    return result;
  }

  v12 = v3;
  sub_22619AC3C();
  sub_2261A2CB8(v42);

  if (*(&v42[0] + 1) == 1)
  {
LABEL_15:
    v28 = 0;
    a2 = 0;
    v26 = 0x80000002261EA8E0;
    v27 = 1;
    v30 = 0xD000000000000026;
    v29 = 1;
    goto LABEL_28;
  }

  v43 = v42[0];
  v44 = v42[1];
  v45 = v42[2];
  v13 = sub_2261A54B0();
  if (!v14)
  {
    v46 = v43;
    sub_22619A7B4(&v46, &qword_27D78DE20, &unk_2261E6280);
    v47 = v44;
    sub_22619A7B4(&v47, &qword_27D78DE20, &unk_2261E6280);
    v48[0] = v45;
    result = sub_22619A7B4(v48, &qword_27D78DE20, &unk_2261E6280);
    goto LABEL_15;
  }

  v15 = v13;
  v16 = v14;
  *&v48[0] = a1;
  *(&v48[0] + 1) = a2;
  *&v47 = 58;
  *(&v47 + 1) = 0xE100000000000000;
  sub_22619C8E8();
  v17 = sub_2261E407C();
  v18 = v17;
  v19 = v17[2];
  if (v19 == 1)
  {
    v28 = v17[4];
    a2 = v17[5];

    v41 = v15;
    v31 = 0;
    v27 = v16;
LABEL_18:
    v46 = v43;
    sub_22619A7B4(&v46, &qword_27D78DE20, &unk_2261E6280);
    v47 = v44;
    sub_22619A7B4(&v47, &qword_27D78DE20, &unk_2261E6280);
    v48[0] = v45;
    sub_22619A7B4(v48, &qword_27D78DE20, &unk_2261E6280);

    v26 = v41;
    v25 = v31;
LABEL_27:
    v29 = 0;
    v30 = v25;
    goto LABEL_28;
  }

  if (v19 != 3)
  {
    v27 = 0;
    v41 = 0;
    a2 = 0;
    v28 = 0;
    v31 = 2;
    goto LABEL_18;
  }

  v20 = v17[4];
  v21 = v17[5];
  if (v20 == 109 && v21 == 0xE100000000000000 || (v22 = v17[4], v23 = v18[5], v24 = 0, (sub_2261E425C() & 1) != 0))
  {
    v24 = 1;
  }

  if (v20 == 99 && v21 == 0xE100000000000000)
  {
    v25 = 1;
  }

  else
  {
    v32 = sub_2261E425C();
    v25 = v32 & 1;
    if (((v24 | v32) & 1) == 0)
    {

      v25 = 2;
      goto LABEL_25;
    }
  }

  v33 = sub_2261E425C();

  if (v33)
  {
LABEL_25:
    v46 = v43;
    sub_22619A7B4(&v46, &qword_27D78DE20, &unk_2261E6280);
    v47 = v44;
    sub_22619A7B4(&v47, &qword_27D78DE20, &unk_2261E6280);
    v48[0] = v45;
    sub_22619A7B4(v48, &qword_27D78DE20, &unk_2261E6280);

    goto LABEL_26;
  }

  if (v18[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v28 = v18[8];
    a2 = v18[9];

    sub_2261E3C0C();
    v34 = sub_2261E3C3C();
    if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
    {
      v46 = v43;
      sub_22619A7B4(&v46, &qword_27D78DE20, &unk_2261E6280);
      v47 = v44;
      sub_22619A7B4(&v47, &qword_27D78DE20, &unk_2261E6280);
      v48[0] = v45;
      sub_22619A7B4(v48, &qword_27D78DE20, &unk_2261E6280);

      result = sub_22619A7B4(v11, &qword_27D78DF28, &unk_2261E6FD0);
LABEL_26:
      v28 = 0;
      a2 = 0;
      v26 = 0;
      v27 = 0;
      goto LABEL_27;
    }

    result = sub_22619A7B4(v11, &qword_27D78DF28, &unk_2261E6FD0);
    if (v18[2] >= 2uLL)
    {
      v26 = v18[6];
      v27 = v18[7];

      v35 = *(v12 + 48);

      v36 = sub_2261A30F4();

      if (sub_2261A3324(v36, 4u))
      {
        v40 = sub_2261A5588();
        v41 = v37;
        v46 = v43;
        sub_22619A7B4(&v46, &qword_27D78DE20, &unk_2261E6280);
        v47 = v44;
        sub_22619A7B4(&v47, &qword_27D78DE20, &unk_2261E6280);
        v48[0] = v45;
        v38 = v41;
        sub_22619A7B4(v48, &qword_27D78DE20, &unk_2261E6280);
        if (v38)
        {
        }
      }

      else
      {
        v46 = v43;
        sub_22619A7B4(&v46, &qword_27D78DE20, &unk_2261E6280);
        v47 = v44;
        sub_22619A7B4(&v47, &qword_27D78DE20, &unk_2261E6280);
        v48[0] = v45;
        sub_22619A7B4(v48, &qword_27D78DE20, &unk_2261E6280);
      }

      v39 = sub_2261E3EBC();

      if (v39)
      {
        result = swift_bridgeObjectRelease_n();
      }

      else
      {

        v28 = 0;
        a2 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 2;
      }

      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22619C044()
{
  v1 = v0;
  v2 = sub_22619C394();
  v3 = sub_2261A2BCC();
  v4 = *v3;
  v5 = v3[1];

  v6 = MEMORY[0x277D837D0];
  v7 = isRunningInRecovery();
  sub_2261A10B4(v4, v5, v7 & 1, v6, &v24);

  v8 = v25;
  if (v25)
  {
    v9 = v24;
    if (v24 == 0x6D706F6C65766564 && v25 == 0xEB00000000746E65 || (sub_2261E425C() & 1) != 0)
    {

      v10 = sub_2261E400C();
      sub_2261A4EAC(v10, 0xD000000000000025, 0x80000002261EA980, 0xD000000000000069, 0x80000002261EA870, 201);
      return 0;
    }

    if (v9 == 0x69746375646F7270 && v8 == 0xEA00000000006E6FLL)
    {

LABEL_10:
      v13 = sub_2261E400C();
      sub_2261A4EAC(v13, 0xD000000000000024, 0x80000002261EA950, 0xD000000000000069, 0x80000002261EA870, 206);
      return 1;
    }

    v12 = sub_2261E425C();

    if (v12)
    {
      goto LABEL_10;
    }
  }

  sub_22619AC3C();
  v14 = sub_2261A30F4();

  if (!sub_2261A3324(v14, 5u))
  {
    v15 = *(v1 + 48);

    v16 = sub_2261A30F4();

    if ((v16 - 3) <= 3u)
    {
      v17 = *(v1 + 48);

      v18 = sub_2261A3DA0();

      if (v18)
      {
        v19 = *(v1 + 48);

        v20 = sub_2261A3EA8();

        if (v20)
        {
          sub_22619C93C();
          v21 = sub_22619CBEC;
        }

        else
        {
          v22 = *(v1 + 48);

          v23 = sub_2261A3EB4();

          sub_22619C93C();
          if ((v23 & 1) == 0)
          {
            sub_2261C83C4(0x676F6C5F65636E6FLL, 0xEE006E656B6F745FLL, sub_22619C9F0);
            return 0;
          }

          v21 = sub_22619CA58;
        }
      }

      else
      {
        sub_22619C93C();
        v21 = sub_22619C988;
      }

      sub_2261C83C4(0x676F6C5F65636E6FLL, 0xEE006E656B6F745FLL, v21);
    }
  }

  return 1;
}

id sub_22619C394()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[8];
  }

  else
  {
    type metadata accessor for SecurityController();
    v3 = v0;
    v4 = sub_2261A0FCC(v0[2], v0[3], v0[4], v0[5]);
    v5 = v0[8];
    v3[8] = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_22619C400()
{
  sub_22619AC3C();
  v0 = sub_2261A30F4();

  if (v0 == 6)
  {
    return 2;
  }

  else
  {
    return v0 == 4;
  }
}

double sub_22619C44C@<D0>(_OWORD *a1@<X8>)
{
  sub_22619AC3C();
  sub_2261A2CB8(v4);

  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_22619C49C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_22619C4AC(char a1)
{
  if (a1)
  {
    return 112;
  }

  else
  {
    return 100;
  }
}

uint64_t sub_22619C4C4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 112;
  }

  else
  {
    v2 = 100;
  }

  if (*a2)
  {
    v3 = 112;
  }

  else
  {
    v3 = 100;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2261E425C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_22619C534()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_22619C594()
{
  *v0;
  sub_2261E3E6C();
}

uint64_t sub_22619C5D8()
{
  v1 = *v0;
  sub_2261E42EC();
  sub_2261E3E6C();

  return sub_2261E430C();
}

uint64_t sub_22619C634@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2261E41EC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_22619C694(uint64_t *a1@<X8>)
{
  v2 = 100;
  if (*v1)
  {
    v2 = 112;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_22619C6B4()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);

  v3 = OBJC_IVAR____TtC17AppAttestInternal15IdentityManager_logger;
  v4 = sub_2261E3CDC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22619C768()
{
  v0 = sub_2261E41EC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_22619C7B4()
{
  result = qword_28136E240[0];
  if (!qword_28136E240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136E240);
  }

  return result;
}

uint64_t sub_22619C81C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_22619C830();
  }

  else
  {
  }
}

uint64_t sub_22619C840(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22619C894()
{
  result = qword_28136E980[0];
  if (!qword_28136E980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28136E980);
  }

  return result;
}

unint64_t sub_22619C8E8()
{
  result = qword_28136E228;
  if (!qword_28136E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28136E228);
  }

  return result;
}

unint64_t sub_22619C93C()
{
  result = qword_28136E1D8;
  if (!qword_28136E1D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28136E1D8);
  }

  return result;
}

uint64_t sub_22619CA58()
{
  sub_22619AC3C();
  sub_2261A2CB8(v5);

  if (*(&v5[0] + 1) == 1)
  {
    goto LABEL_3;
  }

  v6 = v5[0];
  v7 = v5[1];
  v8 = v5[2];
  v0 = sub_2261A54B0();
  v2 = v1;
  v9 = v6;
  sub_22619A7B4(&v9, &qword_27D78DE20, &unk_2261E6280);
  v10 = v7;
  sub_22619A7B4(&v10, &qword_27D78DE20, &unk_2261E6280);
  v11 = v8;
  sub_22619A7B4(&v11, &qword_27D78DE20, &unk_2261E6280);
  if (!v2)
  {
LABEL_3:

    v0 = 0;
    v2 = 0xE000000000000000;
  }

  v3 = sub_2261E3FEC();
  sub_2261E410C();

  MEMORY[0x22AA782B0](v0, v2);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v3, 0xD000000000000029, 0x80000002261EAAA0, 0xD000000000000069, 0x80000002261EA870, 238);
}

uint64_t sub_22619CBEC()
{
  sub_22619AC3C();
  sub_2261A2CB8(v5);

  if (*(&v5[0] + 1) == 1)
  {
    goto LABEL_3;
  }

  v6 = v5[0];
  v7 = v5[1];
  v8 = v5[2];
  v0 = sub_2261A54B0();
  v2 = v1;
  v9 = v6;
  sub_22619A7B4(&v9, &qword_27D78DE20, &unk_2261E6280);
  v10 = v7;
  sub_22619A7B4(&v10, &qword_27D78DE20, &unk_2261E6280);
  v11 = v8;
  sub_22619A7B4(&v11, &qword_27D78DE20, &unk_2261E6280);
  if (!v2)
  {
LABEL_3:

    v0 = 0;
    v2 = 0xE000000000000000;
  }

  v3 = sub_2261E3FEC();
  sub_2261E410C();

  MEMORY[0x22AA782B0](v0, v2);

  MEMORY[0x22AA782B0](32032, 0xE200000000000000);
  sub_2261A4EAC(v3, 0xD000000000000029, 0x80000002261EAA70, 0xD000000000000069, 0x80000002261EA870, 226);
}

unint64_t sub_22619CD84()
{
  result = qword_27D78DF30;
  if (!qword_27D78DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DF30);
  }

  return result;
}

unint64_t sub_22619CDDC()
{
  result = qword_27D78DF38;
  if (!qword_27D78DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D78DF38);
  }

  return result;
}

uint64_t type metadata accessor for IdentityManager()
{
  result = qword_28136F0F0;
  if (!qword_28136F0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22619CE94()
{
  result = sub_2261E3CDC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22619CF3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22619CF98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IdentityManager.Environment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityManager.Environment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22619D16C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22619D18C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

void sub_22619D1CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

const __CFData *sub_22619D21C(uint64_t a1)
{
  v2 = sub_2261E3D3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2261E3D2C();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v38 = *(a1 + 8);
  v39 = v38;
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  sub_22619D608(&v39, v34);
  sub_2261E3BCC();
  v13 = v38;
  sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540]);
  sub_2261E3D1C();
  sub_22619D8F4(v13, *(&v13 + 1));
  v14 = v30;
  sub_22619D714(v13, *(&v13 + 1));
  v30 = v14;
  sub_22619C840(v13, *(&v13 + 1));
  sub_2261E3D0C();
  (*(v3 + 8))(v6, v2);
  v36 = v7;
  v37 = sub_22619D948(&qword_28136E238, MEMORY[0x277CC5290]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  v16 = v31;
  (*(v31 + 16))(boxed_opaque_existential_1, v10, v7);
  __swift_project_boxed_opaque_existential_0(v34, v36);
  sub_2261E3ADC();
  (*(v16 + 8))(v10, v7);
  v17 = v32;
  v18 = v33;
  __swift_destroy_boxed_opaque_existential_0(v34);
  sub_22619C840(v38, *(&v38 + 1));
  *&v38 = v17;
  *(&v38 + 1) = v18;
  v19 = *v40;
  v20 = sub_2261E3B8C();
  v21 = sub_2261C8E9C(v19, v20);
  v23 = v22;
  v25 = v24;

  if ((v25 & 0x100) != 0)
  {
    v34[0] = v21;
    v34[1] = v23;
    v35 = v25 & 1;
    sub_22619C7B4();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v27 = v21;
    *(v27 + 8) = v23;
    *(v27 + 16) = v25 & 1;
    sub_22619C840(v38, *(&v38 + 1));
  }

  else
  {
    if (v21)
    {
      v26 = v21;
      v20 = sub_2261E3BBC();
      sub_2261795CC(v21, v23, v25, 0);
      sub_2261795CC(v21, v23, v25, 0);
    }

    else
    {
      v20 = 0;
    }

    sub_22619C840(v17, v18);
  }

  return v20;
}

uint64_t sub_22619D664@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

_BYTE *sub_22619D680@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22619DC94(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22619DD4C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22619DDC8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_22619D714(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_2261E3D3C();
      sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540]);
      result = sub_2261E3CFC();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_22619DBB4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22619D8F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22619D948(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_22619D9F4(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22619D8F4(result, a2);

    return sub_22619D8F4(a3, a4);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_17AppAttestInternal18SecurityControllerC6CDHashVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22619DABC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22619DB04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for SecKey()
{
  if (!qword_28136E180)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28136E180);
    }
  }
}

uint64_t sub_22619DBB4(uint64_t a1, uint64_t a2)
{
  result = sub_2261E3A6C();
  if (!result || (result = sub_2261E3A8C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_2261E3A7C();
      sub_2261E3D3C();
      sub_22619D948(&qword_28136E230, MEMORY[0x277CC5540]);
      return sub_2261E3CFC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22619DC94(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22619DD4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2261E3A9C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2261E3A5C();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2261E3B6C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_22619DDC8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_2261E3A9C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_2261E3A5C();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_22619DE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  sub_22619DEBC(a1, a2, a3, a4, a5);
  return v13;
}

uint64_t sub_22619DEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = 514;
  v11 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager_logger;
  v12 = sub_2261A52B8();
  v13 = sub_2261E3CDC();
  (*(*(v13 - 8) + 16))(v5 + v11, v12, v13);
  *(v5 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController) = 0;
  *(v5 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController) = 0;
  *(v5 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedDaemons) = 0;
  *(v5 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedExtensions) = 0;
  *(v5 + 20) = a1;
  *(v5 + 28) = a2;
  *(v5 + 36) = a3;
  *(v5 + 44) = a4;
  *(v5 + 52) = a5;
  return v5;
}

uint64_t sub_22619DFA0()
{
  if ((sub_22619E154() & 1) == 0)
  {
    v2 = sub_2261E3FFC();
    v3 = 0xD00000000000001ALL;
    v4 = 0x80000002261EAC60;
    v5 = 37;
LABEL_13:
    sub_2261A4EAC(v2, v3, v4, 0xD00000000000006CLL, 0x80000002261EAC80, v5);
    return 0;
  }

  if ((sub_22619E180() & 1) == 0)
  {
    v2 = sub_2261E3FFC();
    v3 = 0xD000000000000029;
    v4 = 0x80000002261EACF0;
    v5 = 42;
    goto LABEL_13;
  }

  if ((sub_22619E2A8() & 1) == 0)
  {
    v2 = sub_2261E3FFC();
    v3 = 0xD000000000000028;
    v4 = 0x80000002261EAD20;
    v5 = 47;
    goto LABEL_13;
  }

  sub_22619E470();
  v0 = sub_2261A30F4();

  if (v0 - 3 < 2)
  {
    return 1;
  }

  if (v0 == 6)
  {
    return 0;
  }

  if (v0 == 5)
  {

    return sub_22619E4F4();
  }

  else
  {

    return sub_22619EB90();
  }
}

uint64_t sub_22619E154()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    LOBYTE(v1) = DeviceIdentityIsSupported();
    *(v0 + 16) = v1;
  }

  return v1 & 1;
}

uint64_t sub_22619E180()
{
  LODWORD(v1) = *(v0 + 17);
  if (v1 == 2)
  {
    if (*(v0 + 52))
    {
      if (*(v0 + 52) == 1)
      {
        v2 = MEMORY[0x277D84FA0];
LABEL_8:
        v3 = [objc_opt_self() processInfo];
        v4 = [v3 processName];

        v1 = sub_2261E3DDC();
        v6 = v5;

        LOBYTE(v1) = sub_22619F5B4(v1, v6, v2);

        *(v0 + 17) = v1 & 1;
        return v1 & 1;
      }

      v2 = sub_2261A0370(&unk_28395C150);
    }

    else
    {
      v2 = sub_2261A0370(&unk_28395C110);
    }

    swift_arrayDestroy();
    goto LABEL_8;
  }

  return v1 & 1;
}

uint64_t sub_22619E2A8()
{
  v1 = v0;
  v2 = sub_22619F3F8();
  sub_2261A10B4(0xD000000000000017, 0x80000002261EAD50, 1, MEMORY[0x277D839B0], v11);

  if (LOBYTE(v11[0]) == 2)
  {
    goto LABEL_10;
  }

  if ((v11[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  v3 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController;
  v4 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
  sub_2261A10B4(0xD000000000000025, 0x80000002261EAD70, 1, MEMORY[0x277D839B0], v11);

  if (LOBYTE(v11[0]) == 2 || (v11[0] & 1) == 0)
  {
    goto LABEL_10;
  }

  v13 = *(v1 + 52);
  v12 = 2;
  sub_22619F798();
  sub_2261E3EFC();
  sub_2261E3EFC();
  if (v11[0] == v9 && v11[1] == v10)
  {
  }

  else
  {
    v5 = sub_2261E425C();

    if ((v5 & 1) == 0)
    {
      v7 = 1;
      return v7 & 1;
    }
  }

  v6 = *(v1 + v3);
  sub_2261A10B4(0xD00000000000001FLL, 0x80000002261EADA0, 1, MEMORY[0x277D839B0], v11);

  v7 = v11[0];
  if (LOBYTE(v11[0]) == 2)
  {
LABEL_10:
    v7 = 0;
  }

  return v7 & 1;
}

char *sub_22619E470()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController);
  }

  else
  {
    type metadata accessor for BundleRecordController();
    v3 = v0;
    v2 = sub_2261A2BE4(*(v0 + 20), *(v0 + 28), *(v0 + 36), *(v0 + 44));
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22619E4F4()
{
  v1 = v0;
  sub_22619E470();
  v2 = sub_2261A30F4();

  if (sub_2261A3324(v2, 5u))
  {
    v3 = sub_22619F3F8();
    v4 = MEMORY[0x277D839B0];
    v5 = isRunningInRecovery();
    sub_2261A10B4(0xD000000000000023, 0x80000002261EADE0, v5 & 1, v4, &v39);

    if (v39 == 2 || (v39 & 1) == 0)
    {
      v18 = sub_2261E3FFC();
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      sub_2261E410C();

      v19 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController);

      sub_2261A2CB8(&v39);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
      v20 = sub_2261E3E3C();
      MEMORY[0x22AA782B0](v20);

      MEMORY[0x22AA782B0](32032, 0xE200000000000000);
      v21 = 0xD00000000000002BLL;
      v22 = v18;
      v23 = 0x80000002261EAE10;
      v24 = 112;
    }

    else
    {
      v6 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController;
      v7 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
      v8 = MEMORY[0x277D837D0];
      v9 = isRunningInRecovery();
      sub_2261A10B4(0xD000000000000016, 0x80000002261EAE40, v9 & 1, v8, &v39);

      v10 = *(&v39 + 1);
      if (*(&v39 + 1))
      {
        v11 = v39;
        if (sub_2261E3EBC())
        {
          v12 = sub_22619F47C();
          v13 = sub_22619F5B4(v11, v10, v12);

          if (v13)
          {
            v14 = *(v1 + v6);
            v15 = sub_2261A16F8();

            if (v15)
            {
              return 1;
            }

            v34 = sub_2261E3FFC();
            *&v39 = 0;
            *(&v39 + 1) = 0xE000000000000000;
            sub_2261E410C();
            v38 = v39;
            MEMORY[0x22AA782B0](0xD000000000000032, 0x80000002261EAF00);
            v35 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController);

            sub_2261A2CB8(&v39);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
            v36 = sub_2261E3E3C();
            MEMORY[0x22AA782B0](v36);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v21 = v38;
            v22 = v34;
            v23 = *(&v38 + 1);
            v24 = 132;
          }

          else
          {
            v31 = sub_2261E3FFC();
            *&v39 = 0;
            *(&v39 + 1) = 0xE000000000000000;
            sub_2261E410C();

            v32 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController);

            sub_2261A2CB8(&v39);

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
            v33 = sub_2261E3E3C();
            MEMORY[0x22AA782B0](v33);

            MEMORY[0x22AA782B0](32032, 0xE200000000000000);
            v21 = 0xD000000000000024;
            v22 = v31;
            v23 = 0x80000002261EAED0;
            v24 = 127;
          }
        }

        else
        {

          v28 = sub_2261E3FFC();
          *&v39 = 0;
          *(&v39 + 1) = 0xE000000000000000;
          sub_2261E410C();

          v29 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController);

          sub_2261A2CB8(&v39);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
          v30 = sub_2261E3E3C();
          MEMORY[0x22AA782B0](v30);

          MEMORY[0x22AA782B0](32032, 0xE200000000000000);
          v21 = 0xD000000000000024;
          v22 = v28;
          v23 = 0x80000002261EAEA0;
          v24 = 122;
        }
      }

      else
      {
        v25 = sub_2261E3FFC();
        *&v39 = 0;
        *(&v39 + 1) = 0xE000000000000000;
        sub_2261E410C();
        v37 = v39;
        MEMORY[0x22AA782B0](0xD00000000000003FLL, 0x80000002261EAE60);
        v26 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController);

        sub_2261A2CB8(&v39);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v27 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v27);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v21 = v37;
        v22 = v25;
        v23 = *(&v37 + 1);
        v24 = 117;
      }
    }

    sub_2261A4EAC(v22, v21, v23, 0xD00000000000006CLL, 0x80000002261EAC80, v24);
  }

  else
  {
    v17 = sub_2261E400C();
    sub_2261A4EAC(v17, 0xD00000000000001DLL, 0x80000002261EADC0, 0xD00000000000006CLL, 0x80000002261EAC80, 106);
  }

  return 0;
}

uint64_t sub_22619EB90()
{
  v1 = v0;
  sub_22619E470();
  v2 = sub_2261A30F4();

  if ((v2 - 3) >= 4u)
  {
    v7 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController;
    v8 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___bundleRecordController);

    v9 = sub_2261A30F4();

    if (sub_2261A3324(v9, 0) || (v11 = *(v1 + v7), , v12 = sub_2261A30F4(), , sub_2261A3324(v12, 1u)) && (*sub_2261A0970() & 1) == 0)
    {
      nullsub_1();
      if ((sub_2261A0D3C(0) & 1) == 0)
      {
        v3 = sub_2261E400C();
        v4 = 0xD000000000000032;
        v5 = 0x80000002261EB0B0;
        v6 = 153;
        goto LABEL_14;
      }
    }

    else
    {
      v13 = sub_22619F3F8();
      v14 = MEMORY[0x277D839B0];
      v15 = isRunningInRecovery();
      sub_2261A10B4(0xD000000000000026, 0x80000002261EAF70, v15 & 1, v14, &v48);

      if (v48 == 2 || (v48 & 1) == 0)
      {
        v3 = sub_2261E3FFC();
        v4 = 0xD000000000000028;
        v5 = 0x80000002261EAFA0;
        v6 = 162;
        goto LABEL_14;
      }

      v16 = *(v1 + v7);

      sub_2261A2CB8(&v45);

      v17 = *(&v45 + 1);
      if (*(&v45 + 1) == 1)
      {
        v18 = sub_2261E3FFC();
        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        sub_2261E410C();

        *&v51 = 0xD00000000000001ELL;
        *(&v51 + 1) = 0x80000002261EAFD0;
        v19 = *(v1 + v7);

        sub_2261A2CB8(&v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v20 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v20);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v21 = v51;
        v22 = v18;
        v23 = *(&v51 + 1);
        v24 = 167;
LABEL_23:
        sub_2261A4EAC(v22, v21, v23, 0xD00000000000006CLL, 0x80000002261EAC80, v24);

        return 0;
      }

      v25 = v45;
      v49 = v45;
      if (!*(&v45 + 1))
      {
        v50 = v46;
        sub_22619F7EC(&v50);
        v51 = v47;
        sub_22619F7EC(&v51);
        v27 = sub_2261E3FFC();
        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        sub_2261E410C();

        v28 = *(v1 + v7);

        sub_2261A2CB8(&v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v29 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v29);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v21 = 0xD00000000000001DLL;
        v22 = v27;
        v23 = 0x80000002261EAFF0;
        v24 = 172;
        goto LABEL_23;
      }

      sub_22619F854(&v49, &v48);
      if ((sub_2261E3EBC() & 1) == 0)
      {
        sub_22619F7EC(&v49);
        sub_22619F7EC(&v49);
        v50 = v46;
        sub_22619F7EC(&v50);
        v51 = v47;
        sub_22619F7EC(&v51);
        v30 = sub_2261E3FFC();
        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        sub_2261E410C();

        v31 = *(v1 + v7);

        sub_2261A2CB8(&v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v32 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v32);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v21 = 0xD000000000000027;
        v22 = v30;
        v23 = 0x80000002261EB010;
        v24 = 177;
        goto LABEL_23;
      }

      v50 = v46;
      v26 = v46;
      sub_22619F7EC(&v49);
      if (!*(&v26 + 1))
      {
        sub_22619F7EC(&v49);
        v48 = v47;
        sub_22619F7EC(&v48);
        return 0;
      }

      v51 = v47;
      sub_22619F7EC(&v51);
      if (v26 == __PAIR128__(0xEA00000000003030, 0x3030303030303030))
      {
        sub_22619F7EC(&v50);
      }

      else
      {
        v33 = sub_2261E425C();
        sub_22619F7EC(&v50);
        if ((v33 & 1) == 0)
        {
          sub_22619F7EC(&v49);
          return 0;
        }
      }

      v34 = sub_22619F6AC();
      v35 = sub_22619F5B4(v25, v17, v34);

      sub_22619F7EC(&v49);
      if ((v35 & 1) == 0)
      {
        v41 = sub_2261E3FFC();
        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        sub_2261E410C();

        v42 = *(v1 + v7);

        sub_2261A2CB8(&v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v43 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v43);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v21 = 0xD000000000000027;
        v22 = v41;
        v23 = 0x80000002261EB040;
        v24 = 188;
        goto LABEL_23;
      }

      v36 = *(v1 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
      v37 = sub_2261A16F8();

      if ((v37 & 1) == 0)
      {
        v38 = sub_2261E3FFC();
        *&v48 = 0;
        *(&v48 + 1) = 0xE000000000000000;
        sub_2261E410C();
        v44 = v48;
        MEMORY[0x22AA782B0](0xD000000000000035, 0x80000002261EB070);
        v39 = *(v1 + v7);

        sub_2261A2CB8(&v48);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D78DF48, &unk_2261E6750);
        v40 = sub_2261E3E3C();
        MEMORY[0x22AA782B0](v40);

        MEMORY[0x22AA782B0](32032, 0xE200000000000000);
        v21 = v44;
        v22 = v38;
        v23 = *(&v44 + 1);
        v24 = 193;
        goto LABEL_23;
      }
    }

    return 1;
  }

  v3 = sub_2261E400C();
  v4 = 0xD000000000000020;
  v5 = 0x80000002261EAF40;
  v6 = 141;
LABEL_14:
  sub_2261A4EAC(v3, v4, v5, 0xD00000000000006CLL, 0x80000002261EAC80, v6);
  return 0;
}

id sub_22619F3F8()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController;
  v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___securityController);
  }

  else
  {
    type metadata accessor for SecurityController();
    v4 = v0;
    v5 = sub_2261A0FCC(*(v0 + 20), *(v0 + 28), *(v0 + 36), *(v0 + 44));
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_22619F47C()
{
  v1 = OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedDaemons;
  if (*(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedDaemons))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17AppAttestInternal18EligibilityManager____lazy_storage___allowlistedDaemons);
  }

  else
  {
    v2 = sub_2261A0370(&unk_28395C220);
    swift_arrayDestroy();
    v7 = v2;
    if (sub_2261CF5C8())
    {
      v3 = sub_2261E400C();
      sub_2261A4EAC(v3, 0xD000000000000024, 0x80000002261EB240, 0xD00000000000006CLL, 0x80000002261EAC80, 282);
      sub_22619FAAC(&v6, 0xD000000000000016, 0x80000002261EB270);

      v2 = v7;
    }

    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22619F5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2261E42EC();
  sub_2261E3E6C();
  v7 = sub_2261E430C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_2261E425C() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}