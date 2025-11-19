SecPolicyRef SecPolicyCreateWithProperties(CFTypeRef policyIdentifier, CFDictionaryRef properties)
{
  v2 = policyIdentifier;
  v46 = *MEMORY[0x1E69E9840];
  cf = 0;
  if (!policyIdentifier)
  {
    goto LABEL_28;
  }

  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v2))
  {
    goto LABEL_14;
  }

  if (properties)
  {
    cf = CFDictionaryGetValue(properties, @"SecPolicyName");
    v5 = CFDictionaryGetValue(properties, @"SecPolicyTeamIdentifier");
    *value = 0xAAAAAAAAAAAAAAAALL;
    v6 = 0;
    if (CFDictionaryGetValueIfPresent(properties, @"SecPolicyClient", value) && *value)
    {
      v6 = CFEqual(*MEMORY[0x1E695E4D0], *value) != 0;
    }

    v7 = CFDictionaryGetValue(properties, @"SecPolicyContext");
    v8 = CFDictionaryGetValue(properties, @"SecPolicyPolicyName");
    v9 = CFDictionaryGetValue(properties, @"SecPolicyIntermediateMarkerOid");
    v10 = CFDictionaryGetValue(properties, @"SecPolicyLeafMarkerOid");
    properties = CFDictionaryGetValue(properties, @"SecPolicyRootDigest");
    if (cf)
    {
      v11 = CFGetTypeID(cf);
      if (v11 != CFStringGetTypeID() && !CFEqual(v2, @"1.2.840.113635.100.1.9") && !CFEqual(v2, @"1.2.840.113635.100.1.122"))
      {
        v12 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *value = 138412546;
          *&value[4] = v2;
          v44 = 2112;
          v45 = @"SecPolicyName";
          v13 = "policy %@ requires a string value for the %@ key";
          v14 = v12;
          v15 = 22;
LABEL_13:
          _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, v13, value, v15);
        }

LABEL_14:
        v2 = 0;
        goto LABEL_28;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  if (CFEqual(v2, @"1.2.840.113635.100.1.3.2") || CFEqual(v2, @"1.2.840.113635.100.1.9.2") || CFEqual(v2, @"1.2.840.113635.100.1.11.2"))
  {
    v6 = 1;
  }

  else if (CFEqual(v2, @"1.2.840.113635.100.1.3.1") || CFEqual(v2, @"1.2.840.113635.100.1.9.1") || CFEqual(v2, @"1.2.840.113635.100.1.11.1"))
  {
    v6 = 0;
  }

  if (!CFEqual(v2, @"1.2.840.113635.100.1.3") && !CFEqual(v2, @"1.2.840.113635.100.1.3.1") && !CFEqual(v2, @"1.2.840.113635.100.1.3.2"))
  {
    if (CFEqual(v2, @"1.2.840.113635.100.1.8"))
    {
      SMIME = SecPolicyCreateSMIME(31, cf);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.9") || CFEqual(v2, @"1.2.840.113635.100.1.9.2") || CFEqual(v2, @"1.2.840.113635.100.1.9.1"))
    {
      if (isString(cf))
      {
        Copy = CFArrayCreate(*MEMORY[0x1E695E480], &cf, 1, MEMORY[0x1E695E9C0]);
      }

      else
      {
        if ((isArray(cf) & 1) == 0)
        {
          SMIME = SecPolicyCreateEAP(!v6, 0);
          goto LABEL_24;
        }

        Copy = CFArrayCreateCopy(0, cf);
      }

      v20 = Copy;
      EAP = SecPolicyCreateEAP(!v6, Copy);
LABEL_43:
      v2 = EAP;
      if (v20)
      {
        CFRelease(v20);
      }

      goto LABEL_25;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.11") || CFEqual(v2, @"1.2.840.113635.100.1.11.1") || CFEqual(v2, @"1.2.840.113635.100.1.11.2"))
    {
      SMIME = SecPolicyCreateIPSec(!v6, cf);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.19"))
    {
      SMIME = SecPolicyCreateMacAppStoreReceipt();
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.21"))
    {
      SMIME = SecPolicyCreateRevocation(3uLL);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.22"))
    {
      if (cf)
      {
        SMIME = SecPolicyCreatePassbookCardSigner(cf, v5);
        goto LABEL_24;
      }

      v27 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *value = 138412290;
      *&value[4] = v2;
      v13 = "policy %@ requires kSecPolicyName input";
LABEL_115:
      v14 = v27;
      v15 = 12;
      goto LABEL_13;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.42"))
    {
      v22 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v23 = @"1.2.840.113635.100.1.42";
      v24 = @"AST2";
      v25 = &oidAppleCertExtAST2DiagnosticsServerAuthProd;
      v26 = &oidAppleCertExtAST2DiagnosticsServerAuthProdQA;
      goto LABEL_85;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.43"))
    {
      v22 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v23 = @"1.2.840.113635.100.1.43";
      v24 = @"Escrow";
      v25 = &oidAppleCertExtEscrowProxyServerAuthProd;
      v26 = &oidAppleCertExtEscrowProxyServerAuthProdQA;
      goto LABEL_85;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.44"))
    {
      v22 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v23 = @"1.2.840.113635.100.1.44";
      v24 = @"FMiP";
      v25 = &oidAppleCertExtFMiPServerAuthProd;
      v26 = &oidAppleCertExtFMiPServerAuthProdQA;
      goto LABEL_85;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.45"))
    {
      v22 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v23 = @"1.2.840.113635.100.1.45";
      v24 = @"MMCS";
      v25 = &oidAppleCertExtAppleServerAuthenticationMMCSProd;
      v26 = &oidAppleCertExtAppleServerAuthenticationMMCSProdQA;
      goto LABEL_85;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.46"))
    {
      v22 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v23 = @"1.2.840.113635.100.1.46";
      v24 = @"GS";
      v25 = &oidAppleCertExtAppleServerAuthenticationGS;
      v26 = 0;
      goto LABEL_85;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.47"))
    {
      v22 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v23 = @"1.2.840.113635.100.1.47";
      v24 = @"PPQ";
      v25 = &oidAppleCertExtAppleServerAuthenticationPPQProd;
      v26 = &oidAppleCertExtAppleServerAuthenticationPPQProdQA;
      goto LABEL_85;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.62"))
    {
      if (!v8)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyPolicyName input";
        goto LABEL_115;
      }

      v28 = v8;
      v29 = v9;
      v30 = v10;
LABEL_91:
      SMIME = SecPolicyCreateApplePinned(v28, v29, v30);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.63"))
    {
      if (v8 && cf && v10)
      {
        SMIME = SecPolicyCreateAppleSSLPinned(v8, cf, v9, v10);
        goto LABEL_24;
      }

      v27 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *value = 138412290;
      *&value[4] = v2;
      v13 = "policy %@ requires kSecPolicyPolicyName, kSecPolicyName, and kSecPolicyLeafMarkerOid  input";
      goto LABEL_115;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.68"))
    {
      v22 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v23 = @"1.2.840.113635.100.1.68";
      v24 = @"IDS";
      v25 = &oidAppleCertExtAppleServerAuthenticationIDSProd;
      v26 = &oidAppleCertExtAppleServerAuthenticationIDSProdQA;
      goto LABEL_85;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.69"))
    {
      v22 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v23 = @"1.2.840.113635.100.1.69";
      v24 = @"APN";
      v25 = &oidAppleCertExtAppleServerAuthenticationAPNProd;
      v26 = &oidAppleCertExtAppleServerAuthenticationAPNProdQA;
      goto LABEL_85;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.72"))
    {
      SMIME = SecPolicyCreateAppleUniqueDeviceCertificate(properties);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.77"))
    {
      v22 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v23 = @"1.2.840.113635.100.1.77";
      v24 = @"iCloudSetup";
      v25 = &oidAppleCertExtAppleServerAuthenticationiCloudSetupProd;
      v26 = &oidAppleCertExtAppleServerAuthenticationiCloudSetupProdQA;
LABEL_85:
      SMIME = SecPolicyCreateAppleServerAuthCommon(v22, v23, v24, v25, v26);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.84"))
    {
      SMIME = SecPolicyCreateAppleBasicAttestationSystem(properties);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.85"))
    {
      SMIME = SecPolicyCreateAppleBasicAttestationUser(properties);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.92"))
    {
      SMIME = SecPolicyCreateAppleComponentCertificate(properties);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.102"))
    {
      SMIME = SecPolicyCreateAggregateMetricTransparency(!v6);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.106"))
    {
      SMIME = SecPolicyCreateAggregateMetricEncryption(!v6);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.107"))
    {
      SMIME = SecPolicyCreateApplePayModelSigning(1);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.108"))
    {
      SMIME = SecPolicyCreateMDLTerminalAuth(!v6, 0);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.112"))
    {
      SMIME = SecPolicyCreatePPMAggregatorConfigSigning(!v6);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.115"))
    {
      if (cf)
      {
        SMIME = SecPolicyCreateVerifiedMark(cf, properties);
        goto LABEL_24;
      }

      v27 = secLogObjForScope("SecError");
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *value = 138412290;
      *&value[4] = v2;
      v13 = "policy %@ requires kSecPolicyName input";
      goto LABEL_115;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.117"))
    {
      SMIME = SecPolicyCreateiAPAuthV4(1);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.118"))
    {
      v31 = cf;
      if (!cf)
      {
        v27 = secLogObjForScope("SecError");
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *value = 138412290;
        *&value[4] = v2;
        v13 = "policy %@ requires kSecPolicyName input";
        goto LABEL_115;
      }

      v32 = @"1.2.840.113635.100.1.118";
      v33 = @"ParakeetService";
      v34 = v7;
      goto LABEL_147;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.121"))
    {
      SMIME = SecPolicyCreateRCSEncryption(cf, v9, 1);
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.122"))
    {
      if (isString(cf))
      {
        v35 = CFArrayCreate(*MEMORY[0x1E695E480], &cf, 1, MEMORY[0x1E695E9C0]);
      }

      else
      {
        if (!isArray(cf))
        {
          v27 = secLogObjForScope("SecError");
          if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_14;
          }

          *value = 138412290;
          *&value[4] = v2;
          v13 = "policy %@ requires kSecPolicyName input";
          goto LABEL_115;
        }

        v35 = CFArrayCreateCopy(0, cf);
      }

      v20 = v35;
      EAP = SecPolicyCreate3PMobileAsset(v35);
      goto LABEL_43;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.2"))
    {
      SMIME = SecPolicyCreateBasicX509();
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.10"))
    {
      SMIME = SecPolicyCreateAppleSWUpdateSigning();
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.16"))
    {
      SMIME = SecPolicyCreateCodeSigning();
      goto LABEL_24;
    }

    if (CFEqual(v2, @"1.2.840.113635.100.1.17"))
    {
      SMIME = SecPolicyCreateApplePackageSigning();
      goto LABEL_24;
    }

    if (!CFEqual(v2, @"1.2.840.113635.100.1.18"))
    {
      if (CFEqual(v2, @"1.2.840.113635.100.1.20"))
      {
        SMIME = SecPolicyCreateAppleTimeStamping();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.23"))
      {
        v36 = 0;
LABEL_180:
        SMIME = CreateMobileStoreSigner(v36);
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.24"))
      {
        SMIME = SecPolicyCreateEscrowServiceSigner();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.25") || CFEqual(v2, @"1.2.840.113635.100.1.26"))
      {
        SMIME = SecPolicyCreateConfigurationProfileSigner();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.27"))
      {
        v36 = 1;
        goto LABEL_180;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.30"))
      {
        SMIME = SecPolicyCreateAppleIDValidationRecordSigningPolicy();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.30"))
      {
        SMIME = SecPolicyCreateAppleIDValidationShortcutSigningPolicy();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.31"))
      {
        SMIME = SecPolicyCreateAppleSMPEncryption();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.32"))
      {
        SMIME = SecPolicyCreateTestAppleSMPEncryption();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.33") && cf)
      {
        SMIME = SecPolicyCreateAppleSSLService(cf);
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.34"))
      {
        SMIME = SecPolicyCreatePCSEscrowServiceSigner();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.35"))
      {
        SMIME = SecPolicyCreateApplePPQSigning();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.36"))
      {
        SMIME = SecPolicyCreateTestApplePPQSigning();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.39"))
      {
        SMIME = SecPolicyCreateApplePayIssuerEncryption();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.40"))
      {
        SMIME = SecPolicyCreateOSXProvisioningProfileSigning();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.41"))
      {
        SMIME = SecPolicyCreateAppleATVVPNProfileSigning();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.48") && cf)
      {
        SMIME = SecPolicyCreateAppleHomeKitServerAuth(cf);
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.49"))
      {
        SMIME = SecPolicyCreateiPhoneActivation();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.50"))
      {
        SMIME = SecPolicyCreateiPhoneDeviceCertificate();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.51"))
      {
        SMIME = SecPolicyCreateFactoryDeviceCertificate();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.52"))
      {
        SMIME = SecPolicyCreateiAP();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.53"))
      {
        SMIME = SecPolicyCreateiTunesStoreURLBag();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.54"))
      {
        SMIME = SecPolicyCreateiPhoneApplicationSigning();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.55"))
      {
        SMIME = SecPolicyCreateiPhoneProfileApplicationSigning();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.56"))
      {
        SMIME = SecPolicyCreateiPhoneProvisioningProfileSigning();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.57"))
      {
        SMIME = SecPolicyCreateLockdownPairing();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.58"))
      {
        SMIME = SecPolicyCreateURLBag();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.59"))
      {
        SMIME = SecPolicyCreateOTATasking();
        goto LABEL_24;
      }

      if (CFEqual(v2, @"1.2.840.113635.100.1.60"))
      {
        SMIME = SecPolicyCreateMobileAsset();
        goto LABEL_24;
      }

      if (!CFEqual(v2, @"1.2.840.113635.100.1.61"))
      {
        if (CFEqual(v2, @"1.2.840.113635.100.1.64"))
        {
          SMIME = SecPolicyCreateAppleSoftwareSigning();
          goto LABEL_24;
        }

        if (CFEqual(v2, @"1.2.840.113635.100.1.65"))
        {
          SMIME = SecPolicyCreateAppleExternalDeveloperOptionalExpiry(1);
          goto LABEL_24;
        }

        if (CFEqual(v2, @"1.2.840.113635.100.1.66"))
        {
          SMIME = SecPolicyCreateOCSPSigner();
          goto LABEL_24;
        }

        if (CFEqual(v2, @"1.2.840.113635.100.1.67") && cf)
        {
          SMIME = SecPolicyCreateAppleIDSService(cf);
          goto LABEL_24;
        }

        if (CFEqual(v2, @"1.2.840.113635.100.1.70") && cf)
        {
          SMIME = SecPolicyCreateApplePushServiceLegacy(cf);
          goto LABEL_24;
        }

        if (CFEqual(v2, @"1.2.840.113635.100.1.71"))
        {
          SMIME = SecPolicyCreateAppleTVOSApplicationSigning();
          goto LABEL_24;
        }

        if (CFEqual(v2, @"1.2.840.113635.100.1.73") && (v37 = cf) != 0)
        {
          v38 = @"1.2.840.113635.100.1.73";
          v39 = @"Escrow";
          v40 = @"1.2.840.113635.100.6.27.7.2";
          v41 = @"1.2.840.113635.100.6.27.7.1";
        }

        else if (CFEqual(v2, @"1.2.840.113635.100.1.74") && (v37 = cf) != 0)
        {
          v38 = @"1.2.840.113635.100.1.74";
          v39 = @"MMCS";
          v40 = @"1.2.840.113635.100.6.27.11.2";
          v41 = @"1.2.840.113635.100.6.27.11.1";
        }

        else
        {
          if (CFEqual(v2, @"1.2.840.113635.100.1.75"))
          {
            SMIME = SecPolicyCreateAppleSecureIOStaticAsset();
            goto LABEL_24;
          }

          if (CFEqual(v2, @"1.2.840.113635.100.1.76"))
          {
            SMIME = SecPolicyCreateAppleWarsaw();
            goto LABEL_24;
          }

          if (!CFEqual(v2, @"1.2.840.113635.100.1.78") || (v37 = cf) == 0)
          {
            if (CFEqual(v2, @"1.2.840.113635.100.1.80"))
            {
              SMIME = SecPolicyCreateAppleAppTransportSecurity();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.81"))
            {
              SMIME = SecPolicyCreateMacOSProfileApplicationSigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.82"))
            {
              SMIME = SecPolicyCreateMobileSoftwareUpdate();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.83"))
            {
              SMIME = SecPolicyCreateMobileAssetDevelopment();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.86"))
            {
              SMIME = SecPolicyCreateiPhoneVPNApplicationSigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.87"))
            {
              SMIME = SecPolicyCreateiAPSWAuthWithExpiration(0);
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.88"))
            {
              SMIME = SecPolicyCreateDemoDigitalCatalogSigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.89"))
            {
              SMIME = SecPolicyCreateAppleAssetReceipt();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.90"))
            {
              SMIME = SecPolicyCreateAppleDeveloperIDPlusTicket();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.91"))
            {
              SMIME = SecPolicyCreateAppleFDRProvisioning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.93") && cf)
            {
              SMIME = SecPolicyCreateAppleKeyTransparency(cf);
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.95"))
            {
              SMIME = SecPolicyCreateAlisha();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.96"))
            {
              SMIME = SecPolicyCreateMeasuredBootPolicySigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.97"))
            {
              SMIME = SecPolicyCreateApplePayQRCodeEncryption();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.98"))
            {
              SMIME = SecPolicyCreateApplePayQRCodeSigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.99"))
            {
              SMIME = SecPolicyCreateAppleAccessoryUpdateSigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.100"))
            {
              SMIME = SecPolicyCreateEscrowServiceIdKeySigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.101"))
            {
              SMIME = SecPolicyCreatePCSEscrowServiceIdKeySigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.103"))
            {
              SMIME = SecPolicyCreateDeveloperIDInstaller();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.104"))
            {
              SMIME = SecPolicyCreateMacAppStoreInstaller();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.105"))
            {
              v28 = @"MacDistributionInstaller";
              v29 = @"1.2.840.113635.100.6.2.1";
              v30 = @"1.2.840.113635.100.6.1.8";
              goto LABEL_91;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.109"))
            {
              SMIME = SecPolicyCreateAppleCHIPUpdateSigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.110") && cf)
            {
              SMIME = SecPolicyCreateOrderBundleSigner(cf);
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.111"))
            {
              SMIME = SecPolicyCreateQiSigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.113"))
            {
              SMIME = SecPolicyCreateAppleXROSApplicationSigning();
              goto LABEL_24;
            }

            if (CFEqual(v2, @"1.2.840.113635.100.1.114"))
            {
              SMIME = SecPolicyCreateEDPSigning();
              goto LABEL_24;
            }

            if (!CFEqual(v2, @"1.2.840.113635.100.1.116"))
            {
              if (CFEqual(v2, @"1.2.840.113635.100.1.119"))
              {
                SMIME = SecPolicyCreateDCAttestation();
                goto LABEL_24;
              }

              if (CFEqual(v2, @"1.2.840.113635.100.1.120"))
              {
                SMIME = SecPolicyCreateQWAC();
                goto LABEL_24;
              }

              if (CFEqual(v2, @"1.2.840.113635.100.1.123") && cf)
              {
                SMIME = SecPolicyCreateJibeTLS(cf);
                goto LABEL_24;
              }

              if (CFEqual(v2, @"1.2.840.113635.100.1.124") && cf)
              {
                SMIME = SecPolicyCreateIdentityWebPresentment(cf);
                goto LABEL_24;
              }

              v27 = secLogObjForScope("SecError");
              if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_14;
              }

              *value = 138412290;
              *&value[4] = v2;
              v13 = "ERROR: policy %@ is unsupported or requires additional inputs";
              goto LABEL_115;
            }

            v32 = @"1.2.840.113635.100.1.116";
            v33 = @"ParakeetSigning";
            v31 = 0;
            v34 = 0;
LABEL_147:
            SMIME = SecPolicyCreateParakeetCommon(v31, v34, v32, v33);
            goto LABEL_24;
          }

          v38 = @"1.2.840.113635.100.1.78";
          v39 = @"iCloudSetup";
          v40 = @"1.2.840.113635.100.6.27.15.2";
          v41 = @"1.2.840.113635.100.6.27.15.1";
        }

        SMIME = SecPolicyCreateAppleGeoTrustServerAuthCommon(v37, v38, v39, v40, v41);
        goto LABEL_24;
      }
    }

    SMIME = SecPolicyCreateAppleIDAuthorityPolicy();
    goto LABEL_24;
  }

  SMIME = SecPolicyCreateSSL_internal(!v6, cf, 0, 0);
LABEL_24:
  v2 = SMIME;
LABEL_25:
  if (v2 && v8)
  {
    SecPolicySetName(v2, v8);
  }

LABEL_28:
  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

void *SecPolicyCreateSMIME(char a1, const void *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  if ((a1 & 0x40) != 0)
  {
    SecPolicyAddBasicCertOptions(Mutable);
    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  SecPolicyAddBasicX509Options(Mutable);
  if (a1)
  {
LABEL_6:
    add_ku(v5, 0);
    add_ku(v5, 1);
  }

LABEL_7:
  if ((a1 & 2) != 0)
  {
    add_ku(v5, 4);
    if ((a1 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((a1 & 4) != 0)
  {
LABEL_9:
    add_ku(v5, 8);
  }

LABEL_10:
  if ((a1 & 0x38) != 0)
  {
    add_ku(v5, 16);
  }

  if (a2)
  {
    CFDictionaryAddValue(v5, @"Email", a2);
  }

  add_eku(v5, 0);
  add_eku(v5, &oidExtendedKeyUsageEmailProtection);
  CFDictionaryAddValue(v5, @"EmailProtectionEKU", *MEMORY[0x1E695E4D0]);
  v6 = CFArrayCreateMutable(0, 2, MEMORY[0x1E695E9C0]);
  v7 = CFDateCreate(0, 670464000.0);
  valuePtr = 0x4198690600000000;
  v8 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  CFArrayAppendValue(v6, v7);
  CFArrayAppendValue(v6, v8);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v9 = CFArrayCreateMutable(0, 1, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(v9, v6);
  if (v6)
  {
    CFRelease(v6);
  }

  CFDictionaryAddValue(v5, @"SystemTrustValidityPeriod", v9);
  if (v9)
  {
    CFRelease(v9);
  }

  if (SecPolicyAddStrongKeySizeOptions(v5) && SecPolicyRemoveWeakHashOptions(v5))
  {
    v10 = SecPolicyCreate(@"1.2.840.113635.100.1.8", @"SMIME", v5);
  }

  else
  {
    v10 = 0;
  }

  CFRelease(v5);
  return v10;
}

const void *isString(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFStringGetTypeID());
  }

  return result;
}

const void *isArray(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFArrayGetTypeID());
  }

  return result;
}

__CFDictionary *SecPolicyCreateEAP(int a1, const void *a2)
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v5 = result;
    SecPolicyAddBasicX509Options(result);
    v6 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(v5, @"NoNetworkAccess", *MEMORY[0x1E695E4D0]);
    if (a2)
    {
      CFDictionaryAddValue(v5, @"EAPTrustedServerNames", a2);
    }

    if (a1)
    {
      CFDictionaryAddValue(v5, @"SystemTrustedWeakHash", v6);
      CFDictionaryAddValue(v5, @"SystemTrustedWeakKey", v6);
    }

    v7 = a1 == 0;
    v8 = a1 != 0;
    if (a1)
    {
      v9 = @"1.2.840.113635.100.1.9.1";
    }

    else
    {
      v9 = @"1.2.840.113635.100.1.9.2";
    }

    if (v7)
    {
      v10 = @"eapClient";
    }

    else
    {
      v10 = @"eapServer";
    }

    set_ssl_ekus(v5, v8);
    v11 = SecPolicyCreate(v9, v10, v5);
    CFRelease(v5);
    return v11;
  }

  return result;
}

__CFDictionary *SecPolicyCreateIPSec(int a1, const void *a2)
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v5 = result;
    SecPolicyAddBasicX509Options(result);
    if (a2)
    {
      CFDictionaryAddValue(v5, @"SSLHostname", a2);
    }

    if (a1)
    {
      v6 = @"1.2.840.113635.100.1.11.1";
    }

    else
    {
      v6 = @"1.2.840.113635.100.1.11.2";
    }

    if (a1)
    {
      v7 = @"ipsecServer";
    }

    else
    {
      v7 = @"ipsecClient";
    }

    v8 = SecPolicyCreate(v6, v7, v5);
    CFRelease(v5);
    return v8;
  }

  return result;
}

void *SecPolicyCreateMacAppStoreReceipt()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3))
  {
    add_element(v1, @"CertificatePolicy", @"1.2.840.113635.100.5.6.1");
    add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.1");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.11.1");
    CFDictionaryAddValue(v1, @"Revocation", @"AnyRevocationMethod");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.19", @"MacAppStoreReceipt", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

SecPolicyRef SecPolicyCreateRevocation(CFOptionFlags revocationFlags)
{
  v1 = revocationFlags;
  if (!revocationFlags)
  {
    return v1;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  v4 = MEMORY[0x1E695E4D0];
  if ((v1 & 0x40) != 0)
  {
    CFDictionaryAddValue(Mutable, @"RevocationIfTrusted", *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(v3, @"Revocation", @"AnyRevocationMethod");
  }

  if ((v1 & 0x20) != 0)
  {
    CFDictionaryAddValue(v3, @"RevocationOnline", *v4);
    CFDictionaryAddValue(v3, @"Revocation", @"AnyRevocationMethod");
  }

  if ((v1 & 3) == 3)
  {
    v5 = @"AnyRevocationMethod";
  }

  else
  {
    if (v1)
    {
      v5 = @"OCSP";
    }

    else
    {
      v5 = @"CRL";
    }

    if ((v1 & 3) == 0)
    {
      goto LABEL_14;
    }
  }

  CFDictionaryAddValue(v3, @"Revocation", v5);
LABEL_14:
  v6 = *v4;
  if ((v1 & 8) != 0)
  {
    CFDictionaryAddValue(v3, @"RevocationResponseRequired", v6);
  }

  v7 = *MEMORY[0x1E695E4C0];
  if ((v1 & 0x10) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = *MEMORY[0x1E695E4C0];
  }

  CFDictionaryAddValue(v3, @"NoNetworkAccess", v8);
  if (v1 > 0x7F)
  {
    v1 = 0;
  }

  else
  {
    v1 = SecPolicyCreate(@"1.2.840.113635.100.1.21", @"revocation", v3);
  }

  CFRelease(v3);
  return v1;
}

void *SecPolicyCreateApplePinned(const void *a1, const __CFString *a2, const __CFString *a3)
{
  v3 = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a3)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v8 = Mutable;
      SecPolicyAddBasicX509Options(Mutable);
      if (!SecPolicyAddAppleAnchorOptions(v8) || !SecPolicyAddChainLengthOptions(v8, 3))
      {
        goto LABEL_17;
      }

      if ((isAppleOid(a2) & 1) == 0)
      {
        v9 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = a2;
          _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "creating an Apple pinning policy with a non-Apple OID: %@", &v13, 0xCu);
        }
      }

      add_element(v8, @"IntermediateMarkerOid", a2);
      if ((isAppleOid(a3) & 1) == 0)
      {
        v10 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 138412290;
          v14 = a3;
          _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "creating an Apple pinning policy with a non-Apple OID: %@", &v13, 0xCu);
        }
      }

      add_element(v8, @"LeafMarkerOidWithoutValueCheck", a3);
      add_element(v8, @"Revocation", @"AnyRevocationMethod");
      if (SecPolicyAddStrongKeySizeOptions(v8))
      {
        v3 = SecPolicyCreate(@"1.2.840.113635.100.1.62", a1, v8);
      }

      else
      {
LABEL_17:
        v3 = 0;
      }

      CFRelease(v8);
    }

    else
    {
      v3 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3;
}

void *SecPolicyCreateAppleSSLPinned(const void *a1, const __CFString *a2, const __CFString *a3, __CFString *a4)
{
  SSL_internal = 0;
  v19 = *MEMORY[0x1E69E9840];
  if (a1 && a2 && a4)
  {
    if (requireUATPinning(a1))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v10 = Mutable;
        SecPolicyAddBasicX509Options(Mutable);
        if (!SecPolicyAddAppleAnchorOptions(v10) || !SecPolicyAddChainLengthOptions(v10, 3))
        {
          goto LABEL_23;
        }

        if (a3)
        {
          if ((isAppleOid(a3) & 1) == 0)
          {
            v11 = secLogObjForScope("SecWarning");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v17 = 138412290;
              v18 = a3;
              _os_log_impl(&dword_1887D2000, v11, OS_LOG_TYPE_DEFAULT, "creating an Apple pinning policy with a non-Apple OID: %@", &v17, 0xCu);
            }
          }

          v12 = v10;
          v13 = a3;
        }

        else
        {
          v13 = @"1.2.840.113635.100.6.2.12";
          v12 = v10;
        }

        add_element(v12, @"IntermediateMarkerOid", v13);
        if ((isAppleOid(a4) & 1) == 0)
        {
          v14 = secLogObjForScope("SecWarning");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 138412290;
            v18 = a4;
            _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "creating an Apple pinning policy with a non-Apple OID: %@", &v17, 0xCu);
          }
        }

        add_element(v10, @"LeafMarkerOid", a4);
        add_leaf_marker_value_string(v10, @"1.2.840.113635.100.6.48.1", a4);
        add_element(v10, @"ExtendedKeyUsage", @"1.3.6.1.5.5.7.3.1");
        add_element(v10, @"SSLHostname", a2);
        if (SecPolicyAddStrongKeySizeOptions(v10) && SecPolicyRemoveWeakHashOptions(v10))
        {
          add_element(v10, @"Revocation", @"AnyRevocationMethod");
          SSL_internal = SecPolicyCreate(@"1.2.840.113635.100.1.63", a1, v10);
        }

        else
        {
LABEL_23:
          SSL_internal = 0;
        }

        CFRelease(v10);
      }

      else
      {
        SSL_internal = 0;
      }
    }

    else
    {
      SSL_internal = SecPolicyCreateSSL_internal(1, a2, 0, 0);
      SecPolicySetOid(SSL_internal, @"1.2.840.113635.100.1.63");
      SecPolicySetName(SSL_internal, a1);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return SSL_internal;
}

void *SecPolicyCreateAppleUniqueDeviceCertificate(const void *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  cf = 0;
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v4 = Mutable;
    SecPolicyAddBasicCertOptions(Mutable);
    if (!SecPolicyAddAnchorSHA256Options(v4, SEPRootCA_SHA256))
    {
      goto LABEL_16;
    }

    if (a1 && os_variant_allows_internal_security_policies() && CFDataGetLength(a1) == 32)
    {
      add_element(v4, @"AnchorSHA256", a1);
    }

    if (!SecPolicyAddChainLengthOptions(v4, 3))
    {
      goto LABEL_16;
    }

    values = @"ucrt";
    keys[0] = @"1.2.840.113635.100.6.44";
    v5 = CFDictionaryCreate(v2, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    add_element(v4, @"IntermediateMarkerOid", v5);
    if (v5)
    {
      CFRelease(v5);
    }

    add_element(v4, @"LeafMarkerOidWithoutValueCheck", @"1.2.840.113635.100.10.1");
    keys[0] = 256;
    cf = CFNumberCreate(0, kCFNumberCFIndexType, keys);
    if (cf && (v6 = CFDictionaryCreate(0, &kSecAttrKeyTypeEC, &cf, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
    {
      v7 = v6;
      add_element(v4, @"KeySize", v6);
      v8 = SecPolicyCreate(@"1.2.840.113635.100.1.72", @"UCRT", v4);
      CFRelease(v4);
      v4 = v7;
    }

    else
    {
LABEL_16:
      v8 = 0;
    }

    CFRelease(v4);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void *SecPolicyCreateAppleBasicAttestationSystem(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  CFDictionaryAddValue(v3, @"ValidLeaf", *MEMORY[0x1E695E4D0]);
  SecPolicyAddAnchorSHA256Options(v3, BASystemRootCA_SHA256);
  if (a1 && os_variant_allows_internal_security_policies() && CFDataGetLength(a1) == 32)
  {
    add_element(v3, @"AnchorSHA256", a1);
  }

  if (SecPolicyAddChainLengthOptions(v3, 3))
  {
    v4 = SecPolicyCreate(@"1.2.840.113635.100.1.84", @"BAA-SCRT", v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void *SecPolicyCreateAppleBasicAttestationUser(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  CFDictionaryAddValue(v3, @"ValidLeaf", *MEMORY[0x1E695E4D0]);
  SecPolicyAddAnchorSHA256Options(v3, BAUserRootCA_SHA256);
  if (a1 && os_variant_allows_internal_security_policies() && CFDataGetLength(a1) == 32)
  {
    add_element(v3, @"AnchorSHA256", a1);
  }

  if (SecPolicyAddChainLengthOptions(v3, 3))
  {
    v4 = SecPolicyCreate(@"1.2.840.113635.100.1.85", @"BAA-UCRT", v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void *SecPolicyCreateAppleComponentCertificate(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  SecPolicyAddAnchorSHA256Options(v3, ComponentRootCA_SHA256);
  if (a1 && os_variant_allows_internal_security_policies() && CFDataGetLength(a1) == 32)
  {
    add_element(v3, @"AnchorSHA256", a1);
  }

  if (SecPolicyAddChainLengthOptions(v3, 3))
  {
    add_element(v3, @"LeafMarkerOidWithoutValueCheck", @"1.2.840.113635.100.11.1");
    add_element(v3, @"IntermediateMarkerOidWithoutValueCheck", @"1.2.840.113635.100.11.1");
    v4 = SecPolicyCreate(@"1.2.840.113635.100.1.92", @"Component", v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void *SecPolicyCreateAggregateMetricTransparency(int a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v3) && SecPolicyAddChainLengthOptions(v3, 3) && ((add_element(v3, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.26"), !a1) ? (v4 = @"1.2.840.113635.100.12.18") : (v4 = @"1.2.840.113635.100.12.17"), add_element(v3, @"LeafMarkerOidWithoutValueCheck", v4), add_element(v3, @"Revocation", @"AnyRevocationMethod"), SecPolicyAddStrongKeySizeOptions(v3)))
  {
    if (!os_variant_allows_internal_security_policies() || !CFPreferencesGetAppBooleanValue(@"disableAggregateMetricsCTCheck", @"com.apple.security", 0))
    {
      add_element(v3, @"CTRequired", *MEMORY[0x1E695E4D0]);
    }

    v5 = SecPolicyCreate(@"1.2.840.113635.100.1.102", @"AggregateMetricTransparency", v3);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

void *SecPolicyCreateAggregateMetricEncryption(int a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v3) && SecPolicyAddChainLengthOptions(v3, 3) && ((add_element(v3, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.26"), !a1) ? (v4 = @"1.2.840.113635.100.15.3") : (v4 = @"1.2.840.113635.100.15.2"), add_element(v3, @"LeafMarkerOid", v4), add_element(v3, @"Revocation", @"AnyRevocationMethod"), SecPolicyAddStrongKeySizeOptions(v3)))
  {
    if (!os_variant_allows_internal_security_policies() || !CFPreferencesGetAppBooleanValue(@"disableAggregateMetricsCTCheck", @"com.apple.security", 0))
    {
      add_element(v3, @"NonTlsCTRequired", *MEMORY[0x1E695E4D0]);
    }

    v5 = SecPolicyCreate(@"1.2.840.113635.100.1.106", @"AggregateMetricEncryption", v3);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

void *SecPolicyCreateApplePayModelSigning(int a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  if (a1)
  {
    SecPolicyAddBasicX509Options(Mutable);
  }

  else
  {
    SecPolicyAddBasicCertOptions(Mutable);
  }

  if (SecPolicyAddAppleAnchorOptions(v3) && SecPolicyAddChainLengthOptions(v3, 3) && (add_element(v3, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.17"), add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.12.20"), add_element(v3, @"Revocation", @"AnyRevocationMethod"), SecPolicyAddStrongKeySizeOptions(v3)))
  {
    v4 = SecPolicyCreate(@"1.2.840.113635.100.1.107", @"ApplePayModelSigning", v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void *SecPolicyCreateMDLTerminalAuth(int a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  add_ku(v5, 1);
  if (a1)
  {
    add_element(v5, @"ExtendedKeyUsage", @"1.0.18013.5.1.6");
  }

  if (a2)
  {
    add_element(v5, @"BasicConstraintsCA", *MEMORY[0x1E695E4D0]);
  }

  if (SecPolicyAddStrongKeySizeOptions(v5) && SecPolicyRemoveWeakHashOptions(v5) && (Value = CFDictionaryGetValue(v5, @"SignatureHashAlgorithms")) != 0)
  {
    CFArrayAppendValue(Value, @"SignatureDigestSHA224");
    v7 = SecPolicyCreate(@"1.2.840.113635.100.1.108", @"MDLTerminalAuth", v5);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v5);
  return v7;
}

void *SecPolicyCreatePPMAggregatorConfigSigning(int a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v3) && SecPolicyAddChainLengthOptions(v3, 3) && ((add_element(v3, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.26"), !a1) ? (v4 = @"1.2.840.113635.100.14.3") : (v4 = @"1.2.840.113635.100.12.44"), add_element(v3, @"LeafMarkerOid", v4), add_element(v3, @"Revocation", @"AnyRevocationMethod"), SecPolicyAddStrongKeySizeOptions(v3)))
  {
    if (!os_variant_allows_internal_security_policies() || !CFPreferencesGetAppBooleanValue(@"disableAggregateMetricsCTCheck", @"com.apple.security", 0))
    {
      add_element(v3, @"NonTlsCTRequired", *MEMORY[0x1E695E4D0]);
    }

    v5 = SecPolicyCreate(@"1.2.840.113635.100.1.112", @"PPMAggregatorConfigSigning", v3);
  }

  else
  {
    v5 = 0;
  }

  CFRelease(v3);
  return v5;
}

void *SecPolicyCreateVerifiedMark(const void *a1, const __CFData *a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v6 = Mutable;
  v7 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v7)
  {
    v15 = 0;
    v14 = v6;
LABEL_16:
    CFRelease(v14);
    return v15;
  }

  v8 = v7;
  SecPolicyAddBasicX509Options(v6);
  if (a1)
  {
    CFDictionaryAddValue(v6, @"SSLHostname", a1);
  }

  if (SecPolicyRemoveWeakHashOptions(v6) && SecPolicyAddStrongKeySizeOptions(v6))
  {
    add_element(v6, @"CertificatePolicy", @"1.3.6.1.4.1.53087.1.1");
    CFDictionaryAddValue(v6, @"SinglePurposeChainEKU", @"1.3.6.1.5.5.7.3.31");
    if (!a2)
    {
      v14 = 0;
      v11 = 0;
      goto LABEL_12;
    }

    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    v11 = SecSHA1DigestCreate(v4, BytePtr, Length);
    if (v11)
    {
      v12 = CFDataGetBytePtr(a2);
      v13 = CFDataGetLength(a2);
      v14 = SecSHA256DigestCreate(v4, v12, v13);
      if (v14)
      {
        CFDictionaryAddValue(v8, @"sha1", v11);
        CFDictionaryAddValue(v8, @"sha256", v14);
        add_element(v6, @"MarkRepresentation", v8);
LABEL_12:
        v15 = SecPolicyCreate(@"1.2.840.113635.100.1.115", @"VerifiedMark", v6);
        goto LABEL_13;
      }

      v15 = 0;
    }

    else
    {
      v15 = 0;
      v14 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
    v11 = 0;
  }

LABEL_13:
  CFRelease(v6);
  CFRelease(v8);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v14)
  {
    goto LABEL_16;
  }

  return v15;
}

void *SecPolicyCreateiAPAuthV4(int a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (a1 == 1)
  {
    v4 = @"Apple Accessories Certification Authority - ";
LABEL_8:
    CFDictionaryAddValue(v3, @"IssuerCommonNamePrefix", v4);
    add_element(v3, @"LeafMarkerOidWithoutValueCheck", @"1.2.840.113635.100.6.71.1");
    goto LABEL_9;
  }

  if (a1 != 3)
  {
    if (a1 != 2)
    {
      v5 = 0;
      goto LABEL_11;
    }

    v4 = @"Apple Accessory Host Attestation Authority - ";
    goto LABEL_8;
  }

  CFDictionaryAddValue(v3, @"IssuerCommonNamePrefix", @"Apple Accessories Provisioning Authority - ");
LABEL_9:
  v5 = SecPolicyCreate(@"1.2.840.113635.100.1.117", @"iAPAuthV4", v3);
LABEL_11:
  CFRelease(v3);
  return v5;
}

void *SecPolicyCreateParakeetCommon(const void *a1, const void *a2, const void *a3, const void *a4)
{
  values = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v9 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddChainLengthOptions(v9, 3))
  {
    valuePtr = 256;
    values = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
    if (values)
    {
      v10 = CFDictionaryCreate(0, &kSecAttrKeyTypeEC, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v10)
      {
        v11 = v10;
        add_element(v9, @"KeySize", v10);
        if (!SecPolicyRemoveWeakHashOptions(v9) || (Value = CFDictionaryGetValue(v9, @"SignatureHashAlgorithms")) == 0)
        {
          v26 = 0;
          goto LABEL_30;
        }

        v29 = a3;
        CFArrayAppendValue(Value, @"SignatureDigestSHA224");
        add_ku(v9, 16);
        v13 = *MEMORY[0x1E695E4D0];
        CFDictionarySetValue(v9, @"NotCA", *MEMORY[0x1E695E4D0]);
        v14 = MEMORY[0x1E695E9C0];
        v15 = CFArrayCreateMutable(0, 1, MEMORY[0x1E695E9C0]);
        v16 = CFArrayCreateMutable(0, 2, v14);
        valuePtr = 0x4158674400000000;
        v17 = CFDateCreate(0, 0.0);
        v18 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
        CFArrayAppendValue(v16, v17);
        CFArrayAppendValue(v16, v18);
        if (v17)
        {
          CFRelease(v17);
        }

        if (v18)
        {
          CFRelease(v18);
        }

        CFArrayAppendValue(v15, v16);
        if (v16)
        {
          CFRelease(v16);
        }

        CFDictionaryAddValue(v9, @"SystemTrustValidityPeriod", v15);
        CFDictionaryAddValue(v9, @"OtherTrustValidityPeriod", v15);
        if (v15)
        {
          CFRelease(v15);
        }

        CFDictionaryAddValue(v9, @"NoNetworkAccess", v13);
        if (a1)
        {
          CFDictionaryAddValue(v9, @"SSLHostname", a1);
        }

        if (a2)
        {
          v19 = CFGetTypeID(a2);
          if (v19 == CFDictionaryGetTypeID())
          {
            Current = CFAbsoluteTimeGetCurrent();
            v21 = CFDictionaryGetValue(a2, @"verify");
            if (v21)
            {
              v22 = v21;
              v23 = CFGetTypeID(v21);
              if (v23 == CFDateGetTypeID())
              {
                Current = MEMORY[0x18CFD8B20](v22);
              }
            }

            v24 = CFDictionaryGetValue(a2, @"fresh");
            if (v13 && v24)
            {
              if (!CFEqual(v24, v13))
              {
                goto LABEL_29;
              }

LABEL_27:
              v25 = CFDateCreate(0, Current + -172800.0);
              CFDictionaryAddValue(v9, @"NotValidBefore", v25);
              if (v25)
              {
                CFRelease(v25);
              }

              goto LABEL_29;
            }

            if (v24 == v13)
            {
              goto LABEL_27;
            }
          }
        }

LABEL_29:
        v26 = SecPolicyCreate(v29, a4, v9);
LABEL_30:
        CFRelease(v9);
        goto LABEL_31;
      }
    }
  }

  v26 = 0;
  v11 = v9;
LABEL_31:
  CFRelease(v11);
  v27 = values;
  if (values)
  {
    values = 0;
    CFRelease(v27);
  }

  return v26;
}

__CFDictionary *SecPolicyCreateRCSEncryption(const void *a1, const void *a2, int a3)
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v7 = result;
    if (a3)
    {
      SecPolicyAddBasicX509Options(result);
    }

    else
    {
      SecPolicyAddBasicCertOptions(result);
    }

    CFDictionaryAddValue(v7, @"SinglePurposeChainEKU", @"2.23.146.2.1.3");
    add_ku(v7, 1);
    if (a1)
    {
      CFDictionaryAddValue(v7, @"URI", a1);
    }

    if (a2)
    {
      Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, @"2.23.146.2.1.6", a2);
      add_element(v7, @"RootMarkerOid", Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    v9 = SecPolicyCreate(@"1.2.840.113635.100.1.121", @"RCSEncryption", v7);
    CFRelease(v7);
    return v9;
  }

  return result;
}

__CFDictionary *SecPolicyCreate3PMobileAsset(const void *a1)
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v3 = result;
    SecPolicyAddBasicCertOptions(result);
    add_element(v3, @"ExtendedKeyUsage", @"1.3.6.1.5.5.7.3.36");
    add_element(v3, @"ExtendedKeyUsage", @"1.2.840.113583.1.1.5");
    CFDictionaryAddValue(v3, @"SubjectOrganization", a1);
    v4 = SecPolicyCreate(@"1.2.840.113635.100.1.122", @"3PMobileAsset", v3);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void *SecPolicyCreateAppleSWUpdateSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddChainLengthOptions(v1, 3) && SecPolicyAddAppleAnchorOptions(v1))
  {
    add_eku(v1, oidAppleExtendedKeyUsageCodeSigning);
    add_oid(v1, @"IntermediateEKU", _oidAppleExtendedKeyUsageCodeSigning, 9);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.10", @"AppleSWUpdateSigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

__CFDictionary *SecPolicyCreateCodeSigning()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicX509Options(result);
    add_ku(v1, 1);
    add_ku(v1, 2);
    add_eku(v1, &oidExtendedKeyUsageCodeSigning);
    add_eku(v1, &oidAnyExtendedKeyUsage);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.16", @"CodeSigning", v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void *SecPolicyCreateApplePackageSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddChainLengthOptions(v1, 3) && SecPolicyAddAppleAnchorOptions(v1))
  {
    add_ku(v1, 1);
    add_eku(v1, &oidExtendedKeyUsageCodeSigning);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.17", @"PackageSigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleIDAuthorityPolicy()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1))
  {
    add_leaf_marker_value(v1, &oidAppleExtendedKeyUsageAppleID, 0);
    add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleID, 10);
    add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleID2, 10);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.61", @"AppleIDAuthority", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

__CFDictionary *SecPolicyCreateAppleTimeStamping()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicX509Options(result);
    add_eku(v1, &oidExtendedKeyUsageTimeStamping);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.20", @"AppleTimeStamping", v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void *CreateMobileStoreSigner(int a1)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v4 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (a1)
  {
    v5 = @"AppleTestMobileStore";
  }

  else
  {
    v5 = @"AppleMobileStore";
  }

  if (SecPolicyAddAppleAnchorOptions(v4) && SecPolicyAddChainLengthOptions(v4, 3))
  {
    CFDictionaryAddValue(v4, @"IssuerCommonName", @"Apple System Integration 2 Certification Authority");
    add_ku(v4, 1);
    v6 = &oidApplePolicyMobileStore;
    v7 = &unk_1E70D43E8;
    if (a1)
    {
      v7 = &unk_1E70D43F8;
    }

    if ((*v7 & 0x8000000000000000) == 0)
    {
      if (a1)
      {
        v6 = &oidApplePolicyMobileStoreProdQA;
      }

      v8 = CFDataCreate(v2, *v6, *v7);
      if (v8)
      {
        v9 = v8;
        add_element(v4, @"CertificatePolicy", v8);
        CFRelease(v9);
      }
    }

    if (a1)
    {
      v10 = @"1.2.840.113635.100.1.27";
    }

    else
    {
      v10 = @"1.2.840.113635.100.1.23";
    }

    v11 = SecPolicyCreate(v10, v5, v4);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v4);
  return v11;
}

void *SecPolicyCreateEscrowServiceSigner()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  add_ku(v1, 4);
  add_element(v1, @"LeafMarkerOidWithoutValueCheck", @"1.2.840.113635.100.6.23.1");
  if (SecPolicyAddChainLengthOptions(v1, 2))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.24", @"AppleEscrowService", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateConfigurationProfileSigner()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    CFRelease(v0);
  }

  return SecPolicyCreatePrivacyConfigurationProfileSigner(1, v1 != 0);
}

void *SecPolicyCreateAppleIDValidationRecordSigningPolicy()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1))
  {
    add_leaf_marker_value(v1, &oidAppleCertExtensionAppleIDRecordValidationSigning, 0);
    add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleID, 10);
    add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleSystemIntg2, 10);
    CFDictionaryAddValue(v1, @"Revocation", @"OCSP");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.30", @"AppleIDValidationRecordSigningPolicy", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleIDValidationShortcutSigningPolicy()
{
  AppleIDValidationRecordSigningPolicy = SecPolicyCreateAppleIDValidationRecordSigningPolicy();
  v1 = AppleIDValidationRecordSigningPolicy;
  if (AppleIDValidationRecordSigningPolicy)
  {
    v2 = AppleIDValidationRecordSigningPolicy[4];
    if (v2)
    {
      CFDictionaryRemoveValue(v2, @"TemporalValidity");
    }
  }

  return v1;
}

void *SecPolicyCreateAppleSMPEncryption()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3))
  {
    add_leaf_marker_value(v1, &oidAppleCertExtAppleSMPEncryption, 0);
    add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleSystemIntgG3, 10);
    add_ku(v1, 4);
    CFDictionaryAddValue(v1, @"Revocation", @"OCSP");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.31", @"AppleSMPEncryption", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateTestAppleSMPEncryption()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3))
  {
    add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.13");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.30");
    add_ku(v1, 4);
    CFDictionaryAddValue(v1, @"Revocation", @"OCSP");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.32", @"AppleTestSMPEncryption", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

const void *SecPolicyCreateAppleSSLService(const __CFString *a1)
{
  SSL_internal = SecPolicyCreateSSL_internal(1, a1, 0, 0);
  v2 = SSL_internal;
  if (SSL_internal)
  {
    v3 = SSL_internal[4];
    if (v3)
    {
      if (SecPolicyAddAppleAnchorOptions(SSL_internal[4]))
      {
        add_leaf_marker_value(v3, &oidAppleCertExtAppleServerAuthentication, 0);
        add_oid(v3, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleServerAuthentication, 10);
        if (SecPolicyRemoveWeakHashOptions(v3))
        {
          CFDictionaryAddValue(v3, @"Revocation", @"AnyRevocationMethod");
          SecPolicySetOid(v2, @"1.2.840.113635.100.1.33");
          SecPolicySetName(v2, @"AppleSSLService");
          return v2;
        }
      }

      CFRelease(v3);
    }

    CFRelease(v2);
    return 0;
  }

  return v2;
}

void *SecPolicyCreatePCSEscrowServiceSigner()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  add_ku(v1, 4);
  add_element(v1, @"LeafMarkerOidWithoutValueCheck", @"1.2.840.113635.100.6.23.1");
  if (SecPolicyAddChainLengthOptions(v1, 2))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.34", @"ApplePCSEscrowService", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateApplePPQSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  SecPolicyAddAppleAnchorOptions(v1);
  if (SecPolicyAddChainLengthOptions(v1, 3))
  {
    CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple System Integration 2 Certification Authority");
    add_leaf_marker_value(v1, &oidAppleCertExtApplePPQSigningProd, 0);
    add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleSystemIntg2, 10);
    add_ku(v1, 1);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.35", @"ApplePPQSigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateTestApplePPQSigning()
{
  if (os_variant_allows_internal_security_policies())
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 0;
    }

    v1 = Mutable;
    SecPolicyAddBasicCertOptions(Mutable);
    SecPolicyAddAppleAnchorOptions(v1);
    if (SecPolicyAddChainLengthOptions(v1, 3))
    {
      CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple System Integration 2 Certification Authority");
      add_leaf_marker_value(v1, &oidAppleCertExtApplePPQSigningProdQA, 0);
      add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleSystemIntg2, 10);
      add_ku(v1, 1);
      v2 = SecPolicyCreate(@"1.2.840.113635.100.1.36", @"AppleTestPPQSigning", v1);
    }

    else
    {
      v2 = 0;
    }

    CFRelease(v1);
    return v2;
  }

  else
  {

    return SecPolicyCreateApplePPQSigning();
  }
}

void *SecPolicyCreateApplePayIssuerEncryption()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3))
  {
    CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple Worldwide Developer Relations CA - G2");
    add_leaf_marker_value(v1, &oidAppleCertExtCryptoServicesExtEncryption, 0);
    add_ku(v1, 4);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.39", @"ApplePayIssuerEncryption", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

__CFDictionary *SecPolicyCreateOSXProvisioningProfileSigning()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicX509Options(result);
    SecPolicyAddAppleAnchorOptions(v1);
    add_leaf_marker_value(v1, &oidAppleCertExtOSXProvisioningProfileSigning, 0);
    add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleWWDR, 10);
    add_ku(v1, 1);
    CFDictionaryAddValue(v1, @"Revocation", @"OCSP");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.40", @"AppleOSXProvisioningProfileSigning", v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void *SecPolicyCreateAppleATVVPNProfileSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  v2 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    v3 = v2;
    if (os_variant_allows_internal_security_policies())
    {
      CFDictionarySetValue(v3, @"AnchorAppleTestRoots", *MEMORY[0x1E695E4D0]);
    }

    add_element(v1, @"AnchorApple", v3);
    if (SecPolicyAddChainLengthOptions(v1, 3))
    {
      add_leaf_marker_value(v1, &oidAppleCertExtATVVPNProfileSigning, 0);
      add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleSystemIntg2, 10);
      CFDictionaryAddValue(v1, @"Revocation", @"OCSP");
      v4 = SecPolicyCreate(@"1.2.840.113635.100.1.41", @"AppleATVVPNProfileSigning", v1);
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    v4 = 0;
    v3 = v1;
  }

  CFRelease(v3);
  return v4;
}

void *SecPolicyCreateAppleHomeKitServerAuth(const void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  CFDictionaryAddValue(v3, @"SSLHostname", a1);
  add_eku(v3, &oidExtendedKeyUsageServerAuth);
  if (requireUATPinning(@"HomeKit"))
  {
    if (!SecPolicyAddChainLengthOptions(v3, 3))
    {
LABEL_10:
      v4 = 0;
      goto LABEL_8;
    }

    SecPolicyAddAppleAnchorOptions(v3);
    add_leaf_marker_value(v3, &oidAppleCertExtHomeKitServerAuth, 0);
    add_oid(v3, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleHomeKitServerCA, 10);
  }

  if (!SecPolicyRemoveWeakHashOptions(v3) || !SecPolicyAddStrongKeySizeOptions(v3))
  {
    goto LABEL_10;
  }

  CFDictionaryAddValue(v3, @"Revocation", @"AnyRevocationMethod");
  v4 = SecPolicyCreate(@"1.2.840.113635.100.1.48", @"HomeKit", v3);
LABEL_8:
  CFRelease(v3);
  return v4;
}

void *SecPolicyCreateiPhoneActivation()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple iPhone Certification Authority");
  CFDictionaryAddValue(v1, @"SubjectCommonName", @"Apple iPhone Activation");
  if (SecPolicyAddChainLengthOptions(v1, 3) && SecPolicyAddAppleAnchorOptions(v1))
  {
    CFDictionaryAddValue(v1, @"RevocationDbIgnored", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.49", @"iPhoneActivation", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateiPhoneDeviceCertificate()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple iPhone Device CA");
  if (SecPolicyAddChainLengthOptions(v1, 4) && SecPolicyAddAppleAnchorOptions(v1))
  {
    CFDictionaryAddValue(v1, @"RevocationDbIgnored", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.50", @"iPhoneDeviceCertificate", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateFactoryDeviceCertificate()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAnchorSHA256Options(v1, kFactoryDeviceCASHA256))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.51", @"FactoryDeviceCertificate", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateiAP()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  CFDictionaryAddValue(v1, @"SubjectCommonNamePrefix", @"IPA_");
  v2 = CFDateCreate(0, 170726400.0);
  CFDictionaryAddValue(v1, @"NotValidBefore", v2);
  CFDictionaryAddValue(v1, @"RevocationDbIgnored", *MEMORY[0x1E695E4D0]);
  v3 = SecPolicyCreate(@"1.2.840.113635.100.1.52", @"iAP", v1);
  if (v2)
  {
    CFRelease(v2);
  }

  CFRelease(v1);
  return v3;
}

void *SecPolicyCreateiTunesStoreURLBag()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  CFDictionaryAddValue(v1, @"SubjectOrganization", @"Apple Inc.");
  CFDictionaryAddValue(v1, @"SubjectCommonName", @"iTunes Store URL Bag");
  if (SecPolicyAddChainLengthOptions(v1, 2) && SecPolicyAddAnchorSHA256Options(v1, kITMS_CA_SHA256))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.53", @"iTunesStoreURLBag", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateiPhoneProfileApplicationSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3))
  {
    add_element(v1, @"ExtendedKeyUsage", @"1.3.6.1.5.5.7.3.3");
    add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.1");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.2");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.4");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.25.1");
    if (os_variant_allows_internal_security_policies())
    {
      add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.25.2");
    }

    CFDictionaryAddValue(v1, @"Revocation", @"AnyRevocationMethod");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.55", @"iPhoneProfileApplicationSigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateiPhoneProvisioningProfileSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple iPhone Certification Authority");
  if (os_variant_allows_internal_security_policies())
  {
    v2 = @"SubjectCommonNameTEST";
  }

  else
  {
    v2 = @"SubjectCommonName";
  }

  CFDictionaryAddValue(v1, v2, @"Apple iPhone OS Provisioning Profile Signing");
  if (SecPolicyAddChainLengthOptions(v1, 3) && SecPolicyAddAppleAnchorOptions(v1))
  {
    CFDictionaryAddValue(v1, @"NoNetworkAccess", *MEMORY[0x1E695E4D0]);
    v3 = SecPolicyCreate(@"1.2.840.113635.100.1.56", @"iPhoneProvisioningProfileSigning", v1);
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

__CFDictionary *SecPolicyCreateURLBag()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicCertOptions(result);
    add_eku(v1, &oidExtendedKeyUsageCodeSigning);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.58", @"URLBag", v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void *SecPolicyCreateOTATasking()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3))
  {
    CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple iPhone Certification Authority");
    CFDictionaryAddValue(v1, @"SubjectCommonName", @"OTA Task Signing");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.59", @"OTATasking", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateMobileAsset()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3))
  {
    CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple iPhone Certification Authority");
    CFDictionaryAddValue(v1, @"SubjectCommonName", @"Asset Manifest Signing");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.60", @"MobileAsset", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleSoftwareSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (!SecPolicyAddAppleAnchorOptions(v1) || !SecPolicyAddChainLengthOptions(v1, 3))
  {
    goto LABEL_10;
  }

  add_element(v1, @"IssuerCommonName", @"Apple Code Signing Certification Authority");
  add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.22");
  if (os_variant_allows_internal_security_policies())
  {
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.22.1");
  }

  add_element(v1, @"ExtendedKeyUsage", @"1.3.6.1.5.5.7.3.3");
  add_element(v1, @"Revocation", @"AnyRevocationMethod");
  if (SecPolicyAddStrongKeySizeOptions(v1))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.64", @"SoftwareSigning", v1);
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleExternalDeveloperOptionalExpiry(int a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  if (a1)
  {
    SecPolicyAddBasicX509Options(Mutable);
  }

  else
  {
    SecPolicyAddBasicCertOptions(Mutable);
  }

  if (!SecPolicyAddAppleAnchorOptions(v3))
  {
    goto LABEL_11;
  }

  if (!SecPolicyAddChainLengthOptions(v3, 3))
  {
    goto LABEL_11;
  }

  add_element(v3, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.1");
  add_element(v3, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.6");
  add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.2");
  add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.4");
  add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.5");
  add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.7");
  add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.8");
  add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.12");
  add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.13");
  add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.14");
  add_element(v3, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.35");
  add_element(v3, @"ExtendedKeyUsage", @"1.3.6.1.5.5.7.3.3");
  add_element(v3, @"ExtendedKeyUsage", @"1.2.840.113635.100.4.8");
  add_element(v3, @"ExtendedKeyUsage", @"1.2.840.113635.100.4.9");
  add_element(v3, @"ExtendedKeyUsage", @"1.2.840.113635.100.4.13");
  add_element(v3, @"Revocation", @"AnyRevocationMethod");
  if (SecPolicyAddStrongKeySizeOptions(v3))
  {
    v4 = SecPolicyCreate(@"1.2.840.113635.100.1.65", @"Developer", v3);
  }

  else
  {
LABEL_11:
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void *SecPolicyCreateApplePushServiceLegacy(const void *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], entrustSPKIL1C, 32, *MEMORY[0x1E695E498]);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v6 = Mutable;
    SecPolicyAddBasicX509Options(Mutable);
    CFDictionaryAddValue(v6, @"SSLHostname", a1);
    v7 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(v6, @"BlackListedLeaf", *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(v6, @"GrayListedLeaf", v7);
    CFDictionaryAddValue(v6, @"IntermediateSPKISHA256", v4);
    add_eku(v6, &oidExtendedKeyUsageServerAuth);
    if (SecPolicyRemoveWeakHashOptions(v6) && SecPolicyAddStrongKeySizeOptions(v6))
    {
      CFDictionaryAddValue(v6, @"Revocation", @"AnyRevocationMethod");
      v8 = SecPolicyCreate(@"1.2.840.113635.100.1.70", @"AppleLegacyPushService", v6);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v8 = 0;
    v6 = v4;
  }

  CFRelease(v6);
  return v8;
}

void *SecPolicyCreateAppleTVOSApplicationSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddChainLengthOptions(v1, 3) && SecPolicyAddAppleAnchorOptions(v1))
  {
    add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleWWDR, 10);
    add_ku(v1, 1);
    add_leaf_marker_value(v1, &oidAppleTVOSApplicationSigningProd, 0);
    add_leaf_marker_value(v1, &oidAppleTVOSApplicationSigningProdQA, 0);
    CFDictionaryAddValue(v1, @"NoNetworkAccess", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.71", @"AppleTVApplicationSigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleGeoTrustServerAuthCommon(const void *a1, const void *a2, const void *a3, void *a4, void *a5)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v11 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (!a1)
  {
    goto LABEL_13;
  }

  CFDictionaryAddValue(v11, @"SSLHostname", a1);
  add_eku(v11, &oidExtendedKeyUsageServerAuth);
  if (requireUATPinning(a3))
  {
    SecPolicyAddAnchorSHA256Options(v11, GeoTrust_Global_CA_sha256);
    add_element(v11, @"IntermediateCountry", @"US");
    add_element(v11, @"IntermediateOrganization", @"Apple Inc.");
    if (!SecPolicyAddChainLengthOptions(v11, 3))
    {
LABEL_13:
      v12 = 0;
      goto LABEL_11;
    }

    if (a5)
    {
      add_leaf_prod_qa_element(v11, a4, a5);
      add_leaf_prod_qa_markers_value_string(v11, a4, a5);
    }

    else
    {
      add_element(v11, @"LeafMarkerOid", a4);
      add_leaf_marker_value_string(v11, @"1.2.840.113635.100.6.48.1", a4);
    }
  }

  if (!SecPolicyRemoveWeakHashOptions(v11) || !SecPolicyAddStrongKeySizeOptions(v11))
  {
    goto LABEL_13;
  }

  v12 = SecPolicyCreate(a2, a3, v11);
LABEL_11:
  CFRelease(v11);
  return v12;
}

void *SecPolicyCreateAppleSecureIOStaticAsset()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3) && (add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.10"), add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.50"), SecPolicyAddStrongKeySizeOptions(v1)))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.75", @"SecureIOStaticAsset", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleWarsaw()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3) && (add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.14"), add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.29"), add_element(v1, @"Revocation", @"AnyRevocationMethod"), SecPolicyAddStrongKeySizeOptions(v1)))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.76", @"Warsaw", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

__CFArray *SecPolicyCreateAppleAppTransportSecurity()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  if (SecPolicyAddStrongKeySizeOptions(Mutable))
  {
    v2 = CFArrayCreateMutable(0, 5, MEMORY[0x1E695E9C0]);
    v3 = v2;
    if (v2)
    {
      CFArrayAppendValue(v2, @"SignatureDigestMD2");
      CFArrayAppendValue(v3, @"SignatureDigestMD4");
      CFArrayAppendValue(v3, @"SignatureDigestMD5");
      CFArrayAppendValue(v3, @"SignatureDigestSHA1");
      CFArrayAppendValue(v3, @"SignatureDigestSHA224");
      add_element(v1, @"SignatureHashAlgorithms", v3);
      v3 = SecPolicyCreate(@"1.2.840.113635.100.1.80", @"ATS", v1);
    }
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

void *SecPolicyCreateMacOSProfileApplicationSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3))
  {
    add_element(v1, @"ExtendedKeyUsage", @"1.3.6.1.5.5.7.3.3");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.12");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.7");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.13");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.22");
    if (os_variant_allows_internal_security_policies())
    {
      add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.22.1");
    }

    CFDictionaryAddValue(v1, @"Revocation", @"AnyRevocationMethod");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.81", @"macOSProfileApplicationSigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateMobileSoftwareUpdate()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (!SecPolicyAddAppleAnchorOptions(v1) || !SecPolicyAddChainLengthOptions(v1, 3))
  {
    goto LABEL_10;
  }

  add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.18");
  add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.57.2");
  if (os_variant_allows_internal_security_policies())
  {
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.57.1");
  }

  if (SecPolicyAddStrongKeySizeOptions(v1))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.82", @"MobileSoftwareUpdate", v1);
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateMobileAssetDevelopment()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3))
  {
    add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.18");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.55.1");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.83", @"MobileAsset", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateiPhoneVPNApplicationSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (!SecPolicyAddAppleAnchorOptions(v1))
  {
    goto LABEL_10;
  }

  if (os_variant_allows_internal_security_policies())
  {
    CFDictionaryAddValue(v1, @"SubjectCommonNameTEST", @"Apple iPhone OS Application Signing");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.6.1");
  }

  else
  {
    CFDictionaryAddValue(v1, @"SubjectCommonName", @"Apple iPhone OS Application Signing");
  }

  add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.6");
  add_eku(v1, 0);
  add_eku(v1, &oidAnyExtendedKeyUsage);
  add_eku(v1, &oidExtendedKeyUsageCodeSigning);
  CFDictionaryAddValue(v1, @"IssuerCommonName", @"Apple iPhone Certification Authority");
  if (SecPolicyAddChainLengthOptions(v1, 3))
  {
    CFDictionaryAddValue(v1, @"NoNetworkAccess", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.86", @"iPhoneVPNApplicationSigning", v1);
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateiAPSWAuthWithExpiration(int a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  if (a1)
  {
    SecPolicyAddBasicX509Options(Mutable);
  }

  else
  {
    SecPolicyAddBasicCertOptions(Mutable);
  }

  if (SecPolicyAddChainLengthOptions(v3, 2))
  {
    add_element(v3, @"LeafMarkerOidWithoutValueCheck", @"1.2.840.113635.100.6.59.1");
    CFDictionaryAddValue(v3, @"RevocationDbIgnored", *MEMORY[0x1E695E4D0]);
    v4 = SecPolicyCreate(@"1.2.840.113635.100.1.87", @"iAPSWAuth", v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void *SecPolicyCreateDemoDigitalCatalogSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddChainLengthOptions(v1, 3))
  {
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.60");
    add_element(v1, @"IssuerCommonName", @"DemoUnit CA");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.88", @"DemoCatalog", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleAssetReceipt()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3) && (add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.10"), add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.61"), SecPolicyAddStrongKeySizeOptions(v1)))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.89", @"AssetReceipt", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleDeveloperIDPlusTicket()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3) && (add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.17"), add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.30"), SecPolicyAddStrongKeySizeOptions(v1)))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.90", @"DeveloperIDPlusTicket", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

__CFDictionary *SecPolicyCreateAppleFDRProvisioning()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicCertOptions(result);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.91", @"FDRProvisioning", v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void *SecPolicyCreateAppleKeyTransparency(void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v3) && SecPolicyAddChainLengthOptions(v3, 3) && (add_element(v3, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.3"), add_leaf_marker_value_string(v3, @"1.2.840.113635.100.12.4", a1), SecPolicyAddStrongKeySizeOptions(v3)) && SecPolicyRemoveWeakHashOptions(v3))
  {
    v4 = SecPolicyCreate(@"1.2.840.113635.100.1.93", @"KT", v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

void *SecPolicyCreateAlisha()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  valuePtr = 256;
  valuePtr = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  if (valuePtr && (v2 = CFDictionaryCreate(0, &kSecAttrKeyTypeEC, &valuePtr, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8])) != 0)
  {
    v3 = v2;
    add_element(v1, @"KeySize", v2);
    if (SecPolicyRemoveWeakHashOptions(v1))
    {
      v4 = SecPolicyCreate(@"1.2.840.113635.100.1.95", @"Alisha", v1);
    }

    else
    {
      v4 = 0;
    }

    CFRelease(v1);
  }

  else
  {
    v4 = 0;
    v3 = v1;
  }

  CFRelease(v3);
  v5 = valuePtr;
  if (valuePtr)
  {
    valuePtr = 0;
    CFRelease(v5);
  }

  return v4;
}

void *SecPolicyCreateMeasuredBootPolicySigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddChainLengthOptions(v1, 3) && (add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.24.17"), add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.26.6.1"), SecPolicyAddStrongKeySizeOptions(v1)))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.96", @"MeasuredBootPolicySigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateApplePayQRCodeEncryption()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddChainLengthOptions(v1, 3) && (add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.22"), add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.13.3"), SecPolicyAddStrongKeySizeOptions(v1)) && SecPolicyAddAnchorSHA256Options(v1, AppleExternalECRoot_SHA256) && (!os_variant_allows_internal_security_policies() || SecPolicyAddAnchorSHA256Options(v1, TestAppleExternalECRoot_SHA256)))
  {
    add_element(v1, @"Revocation", @"AnyRevocationMethod");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.97", @"ApplePayQRCodeEncryption", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateApplePayQRCodeSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddChainLengthOptions(v1, 3) && (add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.22"), add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.12.12"), SecPolicyAddStrongKeySizeOptions(v1)) && SecPolicyAddAnchorSHA256Options(v1, AppleExternalECRoot_SHA256) && (!os_variant_allows_internal_security_policies() || SecPolicyAddAnchorSHA256Options(v1, TestAppleExternalECRoot_SHA256)))
  {
    add_element(v1, @"Revocation", @"AnyRevocationMethod");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.98", @"ApplePayQRCodeSigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleAccessoryUpdateSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (!SecPolicyAddChainLengthOptions(v1, 3) || !SecPolicyAddAppleAnchorOptions(v1))
  {
    goto LABEL_10;
  }

  add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.17");
  add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.12.9");
  if (CFPreferencesGetAppBooleanValue(@"AllowAccessoryUpdateSigningBeta", @"com.apple.security", 0))
  {
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.12.10");
  }

  if (SecPolicyAddStrongKeySizeOptions(v1))
  {
    add_element(v1, @"Revocation", @"AnyRevocationMethod");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.99", @"AccessoryUpdateSigning", v1);
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateEscrowServiceIdKeySigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  add_ku(v1, 1);
  CFDictionaryAddValue(v1, @"SubjectCommonName", @"Escrow Service ID Key");
  if (SecPolicyAddChainLengthOptions(v1, 2))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.100", @"AppleEscrowServiceIdKeySigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreatePCSEscrowServiceIdKeySigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  add_ku(v1, 1);
  CFDictionaryAddValue(v1, @"SubjectCommonName", @"Effaceable Service ID Key");
  if (SecPolicyAddChainLengthOptions(v1, 2))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.101", @"ApplePCSEscrowServiceIdKeySigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateDeveloperIDInstaller()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3) && (add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.6"), add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.14"), add_element(v1, @"ExtendedKeyUsage", @"1.2.840.113635.100.4.13"), add_element(v1, @"Revocation", @"AnyRevocationMethod"), SecPolicyAddStrongKeySizeOptions(v1)))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.103", @"DeveloperIDInstaller", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateMacAppStoreInstaller()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v1) && SecPolicyAddChainLengthOptions(v1, 3) && (add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.1"), add_leaf_prod_qa_element(v1, @"1.2.840.113635.100.6.1.10", @"1.2.840.113635.100.6.1.10.1"), add_element(v1, @"ExtendedKeyUsage", @"1.2.840.113635.100.4.10"), add_element(v1, @"Revocation", @"AnyRevocationMethod"), SecPolicyAddStrongKeySizeOptions(v1)))
  {
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.104", @"MacAppStoreInstaller", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateAppleCHIPUpdateSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (!SecPolicyAddChainLengthOptions(v1, 3) || !SecPolicyAddAppleAnchorOptions(v1))
  {
    goto LABEL_10;
  }

  add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.17");
  add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.12.25");
  if (CFPreferencesGetAppBooleanValue(@"AllowCHIPUpdateSigningBeta", @"com.apple.security", 0))
  {
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.12.26");
  }

  if (SecPolicyAddStrongKeySizeOptions(v1))
  {
    add_element(v1, @"Revocation", @"AnyRevocationMethod");
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.109", @"CHIPUpdateSigning", v1);
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateOrderBundleSigner(void *a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v3) && SecPolicyAddChainLengthOptions(v3, 3))
  {
    add_leaf_marker_value_string(v3, @"1.2.840.113635.100.14.2", a1);
    add_element(v3, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.1");
    add_element(v3, @"ExtendedKeyUsage", @"1.2.840.113635.100.4.19");
    add_element(v3, @"Revocation", @"AnyRevocationMethod");
    v4 = SecPolicyCreate(@"1.2.840.113635.100.1.110", @"OrderBundleSigner", v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

__CFDictionary *SecPolicyCreateQiSigning()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicCertOptions(result);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.111", @"QiSigning", v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void *SecPolicyCreateAppleXROSApplicationSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (SecPolicyAddChainLengthOptions(v1, 3) && SecPolicyAddAppleAnchorOptions(v1))
  {
    add_oid(v1, @"IntermediateMarkerOid", _oidAppleIntmMarkerAppleWWDR, 10);
    add_ku(v1, 1);
    add_eku(v1, &oidAnyExtendedKeyUsage);
    add_eku(v1, &oidExtendedKeyUsageCodeSigning);
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.36");
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.6.1.36.1");
    CFDictionaryAddValue(v1, @"NoNetworkAccess", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.113", @"AppleXROSApplicationSigning", v1);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

void *SecPolicyCreateEDPSigning()
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v1 = Mutable;
  SecPolicyAddBasicCertOptions(Mutable);
  if (!SecPolicyAddAppleAnchorOptions(v1) || !SecPolicyAddChainLengthOptions(v1, 3))
  {
    goto LABEL_10;
  }

  add_element(v1, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.17");
  if (os_variant_allows_internal_security_policies())
  {
    add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.12.48");
  }

  add_element(v1, @"LeafMarkerOid", @"1.2.840.113635.100.12.47");
  if (SecPolicyAddStrongKeySizeOptions(v1))
  {
    CFDictionaryAddValue(v1, @"NoNetworkAccess", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.114", @"EDPSigning", v1);
  }

  else
  {
LABEL_10:
    v2 = 0;
  }

  CFRelease(v1);
  return v2;
}

__CFDictionary *SecPolicyCreateDCAttestation()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicCertOptions(result);
    v2 = *MEMORY[0x1E695E4D0];
    CFDictionaryAddValue(v1, @"ValidLeaf", *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(v1, @"NoNetworkAccess", v2);
    v3 = SecPolicyCreate(@"1.2.840.113635.100.1.119", @"DCAttestation", v1);
    CFRelease(v1);
    return v3;
  }

  return result;
}

__CFDictionary *SecPolicyCreateQWAC()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v1 = result;
    SecPolicyAddBasicX509Options(result);
    add_element(v1, @"QWAC", *MEMORY[0x1E695E4D0]);
    v2 = SecPolicyCreate(@"1.2.840.113635.100.1.120", @"QWAC", v1);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void *SecPolicyCreateJibeTLS(const __CFString *a1)
{
  SSL_internal = SecPolicyCreateSSL_internal(1, a1, 0, 0);
  SecPolicySetOid(SSL_internal, @"1.2.840.113635.100.1.123");
  SecPolicySetName(SSL_internal, @"JibeTLS");
  return SSL_internal;
}

void *SecPolicyCreateIdentityWebPresentment(const void *a1)
{
  ApplePinned = SecPolicyCreateApplePinned(@"IdentityWebPresentment", @"1.2.840.113635.100.6.2.31", @"1.2.840.113635.100.6.92");
  SecPolicySetOid(ApplePinned, @"1.2.840.113635.100.1.124");
  SecPolicySetOptionsValue_internal(ApplePinned, @"SSLHostname", a1);
  return ApplePinned;
}

void SecPolicySetOid(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v4 = *(a1 + 16);
      CFRetain(cf);
      *(a1 + 16) = cf;
      if (v4)
      {

        CFRelease(v4);
      }
    }
  }
}

void add_leaf_marker_value_string(const __CFDictionary *a1, void *a2, void *a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    values = a3;
    keys[0] = a2;
    v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    add_element(a1, @"LeafMarkerOid", v4);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v6 = *MEMORY[0x1E69E9840];

    add_element(a1, @"LeafMarkerOid", a2);
  }
}

BOOL SecPolicyAddAnchorSHA256Options(const __CFDictionary *a1, const UInt8 *a2)
{
  v3 = CFDataCreate(*MEMORY[0x1E695E480], a2, 32);
  if (v3)
  {
    add_element(a1, @"AnchorSHA256", v3);
    CFRelease(v3);
  }

  return v3 != 0;
}

void *SecPolicyCreatePrivacyConfigurationProfileSigner(int a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  SecPolicyAddBasicX509Options(Mutable);
  if (SecPolicyAddAppleAnchorOptions(v5))
  {
    v6 = SecPolicyAddChainLengthOptions(v5, 3);
    v7 = 0;
    if ((a1 | a2) == 1 && v6)
    {
      if (a1)
      {
        add_eku(v5, oidAppleExtendedKeyUsageProfileSigning);
      }

      if (a2)
      {
        add_eku(v5, oidAppleExtendedKeyUsageQAProfileSigning);
      }

      add_element(v5, @"IntermediateMarkerOid", @"1.2.840.113635.100.6.2.3");
      v7 = SecPolicyCreate(@"1.2.840.113635.100.1.25", @"AppleProfileSigner", v5);
    }
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v5);
  return v7;
}

const __CFString *isAppleOid(const __CFString *a1)
{
  result = SecCertificateIsOidString(a1);
  if (result)
  {
    return (CFStringHasPrefix(a1, @"1.2.840.113635") != 0);
  }

  return result;
}

CFMutableArrayRef parseNSPinnedDomains(const __CFDictionary *a1, const __CFString *a2, uint64_t a3)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  Length = CFStringGetLength(a2);
  v8 = Length - 1;
  if (Length >= 1 && CFStringGetCharacterAtIndex(a2, v8) == 46)
  {
    v15.location = 0;
    v15.length = v8;
    a2 = CFStringCreateWithSubstring(0, a2, v15);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    CFRetain(a2);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = __parseNSPinnedDomains_block_invoke;
  v10[3] = &unk_1E70E20F0;
  v10[4] = &v11;
  v10[5] = a2;
  v10[6] = a3;
  v10[7] = Mutable;
  CFDictionaryApplyFunction(a1, apply_block_2_13996, v10);
  if (a2)
  {
    CFRelease(a2);
  }

LABEL_9:
  if ((v12[3] & 1) == 0 && Mutable)
  {
    CFRelease(Mutable);
    Mutable = 0;
  }

  _Block_object_dispose(&v11, 8);
  return Mutable;
}

void __parseNSPinnedDomains_block_invoke(uint64_t a1, const __CFString *cf, const void *a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    TypeID = CFStringGetTypeID();
    if (a3)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a3);
        if (v8 == CFDictionaryGetTypeID())
        {
          if (CFStringCompare(cf, *(a1 + 40), 1uLL))
          {
            if (CFDictionaryGetValue(a3, @"NSIncludesSubdomains") != *MEMORY[0x1E695E4D0])
            {
              return;
            }

            v9 = *(a1 + 40);
            if (!v9)
            {
              return;
            }

            Length = CFStringGetLength(*(a1 + 40));
            if (!Length)
            {
              return;
            }

            v11 = Length;
            location = CFStringFind(v9, @".", 0).location;
            if (location == -1)
            {
              return;
            }

            if (location >= v11 - 1)
            {
              return;
            }

            v20.location = location + 1;
            v20.length = v11 + ~location;
            v13 = CFStringCreateWithSubstring(0, v9, v20);
            if (!v13)
            {
              return;
            }

            v14 = v13;
            if (CFStringCompare(cf, v13, 1uLL))
            {
LABEL_19:
              CFRelease(v14);
              return;
            }
          }

          else
          {
            v14 = 0;
          }

          Value = CFDictionaryGetValue(a3, *(a1 + 48));
          if (Value)
          {
            v16 = Value;
            *(*(*(a1 + 32) + 8) + 24) = 1;
            v17 = CFGetTypeID(Value);
            if (v17 == CFArrayGetTypeID())
            {
              context[0] = MEMORY[0x1E69E9820];
              context[1] = 0x40000000;
              context[2] = __parseNSPinnedDomains_block_invoke_2;
              context[3] = &__block_descriptor_tmp_784;
              context[4] = *(a1 + 56);
              v19.length = CFArrayGetCount(v16);
              v19.location = 0;
              CFArrayApplyFunction(v16, v19, apply_block_1_13998, context);
            }
          }

          if (v14)
          {
            goto LABEL_19;
          }
        }
      }
    }
  }
}

void __parseNSPinnedDomains_block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(cf, @"SPKI-SHA256-BASE64");
      if (Value)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFStringGetTypeID())
        {
          CFDataFromBase64CFString = CreateCFDataFromBase64CFString(v6);
          if (CFDataFromBase64CFString)
          {
            v9 = CFDataFromBase64CFString;
            CFArrayAppendValue(*(a1 + 32), CFDataFromBase64CFString);

            CFRelease(v9);
          }
        }
      }
    }
  }
}

uint64_t CreateCFDataFromBase64CFString(const __CFString *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  if (a1)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 0x40000000;
    v3[2] = __CreateCFDataFromBase64CFString_block_invoke;
    v3[3] = &unk_1E70E20A8;
    v3[4] = &v4;
    CFStringPerformWithCStringAndLength(a1, v3);
    v1 = v5[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v4, 8);
  return v1;
}

void __CreateCFDataFromBase64CFString_block_invoke(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    v5 = a3 >> 2;
    if ((a3 & 3) != 0)
    {
      ++v5;
    }

    if (v5)
    {
      v8 = 3 * v5;
      v3 = malloc_type_malloc(3 * v5, 0xA7E2B8BEuLL);
      if (v3)
      {
        v9 = SecBase64Decode_(a2, a3, v3, v8, 0, &v11, &v10);
        if ((v9 - 0x7FFFFFFFFFFFFFFFLL) >= 0x8000000000000002)
        {
          *(*(*(a1 + 32) + 8) + 24) = CFDataCreate(*MEMORY[0x1E695E480], v3, v9);
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  free(v3);
}

CFDictionaryRef SecPolicyCopyProperties(SecPolicyRef policyRef)
{
  if (!policyRef)
  {
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = CFRetain(*(policyRef + 2));
    v4 = *(policyRef + 4);
    if (v4)
    {
      v5 = @"SSLHostname";
      if (CFDictionaryContainsKey(v4, @"SSLHostname") || (v5 = @"EAPTrustedServerNames", CFDictionaryContainsKey(*(policyRef + 4), @"EAPTrustedServerNames")) || (v5 = @"Email", CFDictionaryContainsKey(*(policyRef + 4), @"Email")))
      {
        v6 = 0;
      }

      else
      {
        v5 = @"URI";
        v11 = CFDictionaryContainsKey(*(policyRef + 4), @"URI");
        v6 = v11 == 0;
        if (!v11)
        {
          v5 = 0;
        }
      }
    }

    else
    {
      v5 = 0;
      v6 = 1;
    }

    if (CFEqual(v3, @"1.2.840.113635.100.1.3.2") || CFEqual(v3, @"1.2.840.113635.100.1.3.1"))
    {
      v3 = @"1.2.840.113635.100.1.3";
    }

    else if (CFEqual(v3, @"1.2.840.113635.100.1.9.2") || CFEqual(v3, @"1.2.840.113635.100.1.9.1"))
    {
      v3 = @"1.2.840.113635.100.1.9";
    }

    else if (CFEqual(v3, @"1.2.840.113635.100.1.11.2") || CFEqual(v3, @"1.2.840.113635.100.1.11.1"))
    {
      v3 = @"1.2.840.113635.100.1.11";
    }

    CFDictionarySetValue(Mutable, @"SecPolicyOid", v3);
    if (!v6)
    {
      v7 = *(policyRef + 4);
      if (v7)
      {
        Value = CFDictionaryGetValue(v7, v5);
        if (Value)
        {
          CFDictionarySetValue(Mutable, @"SecPolicyName", Value);
        }
      }
    }

    v9 = *(policyRef + 3);
    if (v9)
    {
      CFRetain(v9);
      if (CFEqual(v9, @"sslClient") || CFEqual(v9, @"ipsecClient") || CFEqual(v9, @"eapClient"))
      {
        CFDictionarySetValue(Mutable, @"SecPolicyClient", *MEMORY[0x1E695E4D0]);
      }

      CFRelease(v9);
    }

    CFRelease(v3);
  }

  return Mutable;
}

__CFString *SecPolicyGetCompatibilityOidString(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = @"1.2.840.113635.100.1.3";
  if (!CFEqual(v1, @"1.2.840.113635.100.1.3") && !CFEqual(v1, @"1.2.840.113635.100.1.3.1") && !CFEqual(v1, @"1.2.840.113635.100.1.3.2"))
  {
    v2 = @"1.2.840.113635.100.1.11";
    if (!CFEqual(v1, @"1.2.840.113635.100.1.11") && !CFEqual(v1, @"1.2.840.113635.100.1.11.1") && !CFEqual(v1, @"1.2.840.113635.100.1.11.2"))
    {
      v2 = @"1.2.840.113635.100.1.9";
      if (!CFEqual(v1, @"1.2.840.113635.100.1.9") && !CFEqual(v1, @"1.2.840.113635.100.1.9.1") && !CFEqual(v1, @"1.2.840.113635.100.1.9.2"))
      {
        return v1;
      }
    }
  }

  return v2;
}

void deserializePolicy(const void *a1, __CFArray *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(a1, @"SecPolicyOid");
      if (Value)
      {
        v6 = Value;
        v7 = CFGetTypeID(Value);
        if (v7 == CFStringGetTypeID())
        {
          v8 = CFDictionaryGetValue(a1, @"policyOptions");
          if (v8)
          {
            v9 = v8;
            v10 = CFGetTypeID(v8);
            if (v10 == CFDictionaryGetTypeID())
            {
              v11 = CFDictionaryGetValue(a1, @"SecPolicyPolicyName");
              v12 = SecPolicyCreate(v6, v11, v9);
              if (v12)
              {
                v13 = v12;
                CFArrayAppendValue(a2, v12);

                CFRelease(v13);
              }
            }
          }
        }
      }
    }
  }
}

void SecPolicySetSHA256Pins(uint64_t a1, const void *a2, const void *a3)
{
  if (a1)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!Mutable)
      {
        return;
      }

      v6 = Mutable;
      *(a1 + 32) = Mutable;
    }

    CFDictionaryRemoveValue(v6, @"LeafSPKISHA256");
    if (a2)
    {
      add_element(v6, @"LeafSPKISHA256", a2);
    }

    CFDictionaryRemoveValue(v6, @"CAspkiSHA256");
    if (a3)
    {

      add_element(v6, @"CAspkiSHA256", a3);
    }
  }
}

uint64_t SecPolicyCheckCertCriticalExtensions(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 296) ^ 1;
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

uint64_t SecDNSIsTLD(CFStringRef theString)
{
  if (SecDNSIsTLD_onceToken != -1)
  {
    dispatch_once(&SecDNSIsTLD_onceToken, &__block_literal_global_14005);
  }

  if (!SecDNSIsTLD_CFNIsDomainTopLevelFunctionPtr)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if (Length < 3)
  {
    return 1;
  }

  v6.length = Length - 2;
  v6.location = 2;
  result = CFStringCreateWithSubstring(0, theString, v6);
  if (result)
  {
    v4 = result;
    v5 = SecDNSIsTLD_CFNIsDomainTopLevelFunctionPtr();
    CFRelease(v4);
    return v5;
  }

  return result;
}

void *__SecDNSIsTLD_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CFNetwork.framework/CFNetwork", 1);
  if (result)
  {
    result = dlsym(result, "_CFHostIsDomainTopLevelForCertificatePolicy");
    SecDNSIsTLD_CFNIsDomainTopLevelFunctionPtr = result;
  }

  return result;
}

BOOL SecPolicyCheckCertEmailSAN(uint64_t a1, const __CFString *cf, int a3)
{
  if (cf && (v6 = CFGetTypeID(cf), v6 == CFStringGetTypeID()) && (!a3 ? (v7 = SecCertificateCopyRFC822Names(a1)) : (v7 = SecCertificateCopyRFC822NamesFromSAN(a1)), (v8 = v7) != 0))
  {
    Count = CFArrayGetCount(v7);
    if (Count < 1)
    {
      v12 = 0;
    }

    else
    {
      v10 = Count;
      v11 = 0;
      v12 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
        if (CFStringCompare(cf, ValueAtIndex, 1uLL) == kCFCompareEqualTo)
        {
          break;
        }

        v12 = ++v11 < v10;
      }

      while (v10 != v11);
    }

    CFRelease(v8);
  }

  else
  {
    return 0;
  }

  return v12;
}

const __CFString *SecPolicyCheckCertSubjectCommonNamePrefix(uint64_t a1, const __CFString *cf)
{
  v2 = cf;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID() && (v5 = SecCertificateCopyCommonNames(a1)) != 0)
    {
      v6 = v5;
      v2 = (CFArrayGetCount(v5) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v6, 0), CFStringHasPrefix(ValueAtIndex, v2)));
      CFRelease(v6);
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

BOOL SecPolicyCheckCertNotValidBefore(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  return v4 == CFDateGetTypeID() && *(a1 + 168) > MEMORY[0x18CFD8B20](cf);
}

uint64_t SecPolicyCheckCertEAPTrustedServerNames(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 1;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(cf);
  v6 = SecCertificateCopyDNSNames(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFArrayGetCount(v6);
  if (v8 >= 1)
  {
    v9 = v8;
    v10 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
      if (Count >= 1)
      {
        break;
      }

LABEL_12:
      if (++v10 == v9)
      {
        goto LABEL_13;
      }
    }

    v12 = ValueAtIndex;
    v13 = 0;
    while (1)
    {
      v14 = CFArrayGetValueAtIndex(cf, v13);
      if (!v14)
      {
        break;
      }

      v15 = v14;
      v16 = CFGetTypeID(v14);
      if (v16 != CFStringGetTypeID())
      {
        break;
      }

      if (SecDNSMatch(v12, v15))
      {
        v17 = 1;
        goto LABEL_14;
      }

      if (Count == ++v13)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  v17 = 0;
LABEL_14:
  CFRelease(v7);
  return v17;
}

uint64_t SecPolicyCheckCertLeafMarkersProdAndQA(const __CFData *a1, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"ProdMarker");
  if (Value && SecCertificateHasMarkerExtension(a1, Value))
  {
    return 1;
  }

  result = os_variant_allows_internal_security_policies();
  if (!result)
  {
    return result;
  }

  v6 = CFDictionaryGetValue(theDict, @"QAMarker");
  return v6 && SecCertificateHasMarkerExtension(a1, v6);
}

BOOL SecPolicyCheckCertCertificatePolicy(uint64_t a1, const __CFString *cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CFDataGetTypeID())
  {

    return checkPolicyOidData(a1, cf);
  }

  else
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID() && (OidDataFromString = SecCertificateCreateOidDataFromString(0, cf)) != 0)
    {
      v8 = OidDataFromString;
      v9 = checkPolicyOidData(a1, OidDataFromString);
      CFRelease(v8);
      return v9;
    }

    else
    {
      return 0;
    }
  }
}

BOOL checkPolicyOidData(uint64_t a1, const void *a2)
{
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  if (!Mutable)
  {
    return 0;
  }

  v5 = Mutable;
  if (*(a1 + 352))
  {
    v6 = a1 + 352;
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 352))
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      v8 = 0;
      v9 = *MEMORY[0x1E695E480];
      do
      {
        v10 = *(v6 + 16) + v8;
        v11 = *(v10 + 8);
        if ((v11 & 0x8000000000000000) == 0)
        {
          v12 = CFDataCreate(v9, *v10, v11);
          CFSetAddValue(v5, v12);
          if (v12)
          {
            CFRelease(v12);
          }
        }

        v8 += 32;
        --v7;
      }

      while (v7);
    }
  }

  v13 = CFSetContainsValue(v5, a2) != 0;
  CFRelease(v5);
  return v13;
}

BOOL SecPolicyCheckCertURI(uint64_t a1, const __CFString *cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFStringGetTypeID()) && (v5 = SecCertificateCopyURIs(a1)) != 0)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count < 1)
    {
      v10 = 0;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      v10 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
        if (CFStringCompare(cf, ValueAtIndex, 1uLL) == kCFCompareEqualTo)
        {
          break;
        }

        v10 = ++v9 < v8;
      }

      while (v8 != v9);
    }

    CFRelease(v6);
  }

  else
  {
    return 0;
  }

  return v10;
}

void SecLeafPVCValidateKey(void *key, uint64_t a2, CFAbsoluteTime *a3)
{
  if ((a3[7] & 1) != 0 || *(a3 + 3))
  {
    Value = CFDictionaryGetValue(*(a3 + 5), key);
    if (Value)
    {
      v6 = Value;
      if (CFEqual(key, @"TemporalValidity") || CFEqual(key, @"ValidLeaf"))
      {
        v7 = CFDateCreate(0, a3[2]);
        if ((v6(*a3, v7) & 1) == 0)
        {
          SecLeafPVCSetResult(a3, key, *MEMORY[0x1E695E4C0]);
        }

        if (v7)
        {

          CFRelease(v7);
        }
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a3 + 1), *(a3 + 6));
        if (ValueAtIndex)
        {
          v9 = CFDictionaryGetValue(ValueAtIndex[4], key);
          if ((v6(*a3, v9) & 1) == 0)
          {
            v10 = *MEMORY[0x1E695E4C0];

            SecLeafPVCSetResult(a3, key, v10);
          }
        }

        else
        {
          *(a3 + 56) = 0;
        }
      }
    }
  }
}

void SecLeafPVCSetResult(uint64_t a1, const void *a2, const void *a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), *(a1 + 48));
  if (!ValueAtIndex || CFDictionaryContainsKey(ValueAtIndex[4], a2))
  {
    *(a1 + 56) = 0;
    v7 = *(a1 + 24);
    if (v7)
    {
      v8 = CFArrayGetValueAtIndex(v7, 0);

      CFDictionarySetValue(v8, a2, a3);
    }
  }
}

CFStringRef SecRSAPublicKeyCopyDescription(void *a1)
{
  v2 = SecKeyCopyModulus(a1);
  v3 = a1[3];
  v4 = *MEMORY[0x1E695E480];
  Length = CFDataGetLength(v2);
  Mutable = CFStringCreateMutable(v4, 2 * Length);
  BytePtr = CFDataGetBytePtr(v2);
  v8 = CFDataGetLength(v2);
  if (v8 >= 1)
  {
    v9 = v8;
    do
    {
      v10 = *BytePtr++;
      CFStringAppendFormat(Mutable, 0, @"%02X", v10);
      --v9;
    }

    while (v9);
  }

  if (Mutable)
  {
    AlgorithmId = SecKeyGetAlgorithmId(a1);
    v12 = a1[2];
    v13 = *(v12 + 1);
    v14 = *v12;
    v15 = cczp_bitlen();
    _SecKeyCheck(a1, "SecKeyGetBlockSize");
    v16 = *(a1[2] + 80);
    if (v16)
    {
      v17 = v16(a1);
    }

    else
    {
      v17 = 0;
    }

    v18 = CFStringCreateWithFormat(v4, 0, @"<SecKeyRef algorithm id: %lu, key type: %s, version: %d, %d bits (block size: %zu), exponent: {hex: %llx, decimal: %lld}, modulus: %@, addr: %p>", AlgorithmId, v13, v14, v15, v17, v3[2 * *v3 + 4], v3[2 * *v3 + 4], Mutable, a1);
    if (v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = 0;
    if (v2)
    {
LABEL_9:
      CFRelease(v2);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v18)
  {
    return v18;
  }

  v20 = SecKeyGetAlgorithmId(a1);
  v21 = a1[2];
  v22 = *(v21 + 1);
  v23 = *v21;
  _SecKeyCheck(a1, "SecKeyGetBlockSize");
  v24 = *(a1[2] + 80);
  if (v24)
  {
    v24 = (8 * v24(a1));
  }

  return CFStringCreateWithFormat(v4, 0, @"<SecKeyRef algorithm id: %lu, key type: %s, version: %d, block size: %zu bits, addr: %p>", v20, v22, v23, v24, a1);
}

__CFData *SecKeyCopyModulus(void *a1)
{
  v2 = a1[2];
  if (v2 == &kSecRSAPublicKeyDescriptor)
  {
    v8 = a1[3];
    v9 = *v8;
    v10 = ccn_write_uint_size();
    v11 = CFGetAllocator(a1);
    Mutable = CFDataCreateMutable(v11, v10);
    v7 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, v10);
      v13 = *v8;
      CFDataGetMutableBytePtr(v7);
      ccn_write_uint();
    }
  }

  else
  {
    v3 = *(v2 + 88);
    if (v3 && (v4 = v3(a1)) != 0)
    {
      v5 = v4;
      Value = CFDictionaryGetValue(v4, @"_rsam");
      v7 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

__CFDictionary *SecRSAPublicKeyCopyAttributeDictionary(void *a1)
{
  v2 = SecKeyCopyAttributeDictionaryWithLocalKey(a1, @"42", 0);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v2);
  CFDictionarySetValue(MutableCopy, @"decr", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(MutableCopy, @"drve", *MEMORY[0x1E695E4C0]);
  v4 = a1[3];
  valuePtr = cczp_bitlen();
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  CFDictionarySetValue(MutableCopy, @"bsiz", v5);
  CFDictionarySetValue(MutableCopy, @"esiz", v5);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return MutableCopy;
}

uint64_t ccrsa_pub_init(unint64_t *a1, uint64_t a2, _BYTE *a3)
{
  for (i = a2; i; --i)
  {
    if (*a3)
    {
      break;
    }

    ++a3;
  }

  v5 = (i + 7) >> 3;
  if (v5 > *a1)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = v5;
  return MEMORY[0x1EEE6FB00]();
}

CFStringRef SecRSAPrivateKeyCopyDescription(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *MEMORY[0x1E695E480];
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  v5 = *(a1 + 16);
  v6 = *(v5 + 1);
  v7 = *v5;
  v8 = cczp_bitlen();
  _SecKeyCheck(a1, "SecKeyGetBlockSize");
  v9 = *(*(a1 + 16) + 80);
  if (v9)
  {
    v10 = v9(a1);
  }

  else
  {
    v10 = 0;
  }

  return CFStringCreateWithFormat(v3, 0, @"<SecKeyRef algorithm id: %lu, key type: %s, version: %d, %d bits (block size: %zu), addr: %p>", AlgorithmId, v6, v7, v8, v10, a1);
}

__CFData *SecKeyCopyExponent(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == &kSecRSAPublicKeyDescriptor)
  {
    v7 = *(a1 + 24);
    v8 = *v7;
    v9 = ccn_write_uint_size();
    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, v9);
    v6 = Mutable;
    if (Mutable)
    {
      CFDataSetLength(Mutable, v9);
      v11 = *v7;
      CFDataGetMutableBytePtr(v6);
      ccn_write_uint();
    }
  }

  else
  {
    v2 = *(v1 + 88);
    if (v2 && (v3 = v2()) != 0)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(v3, @"_rsae");
      v6 = Value;
      if (Value)
      {
        CFRetain(Value);
      }

      CFRelease(v4);
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t SecSCEPCreateTemporaryIdentity(uint64_t a1, __SecKey *a2)
{
  keys[1] = *MEMORY[0x1E69E9840];
  valuePtr = 5;
  cf = 0;
  v18 = 0;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    v9 = 0;
    v14 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  values = v4;
  keys[0] = @"keyUsage";
  v6 = CFDictionaryCreate(v3, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v6)
  {
    v9 = 0;
    v14 = 0;
    v12 = v5;
LABEL_12:
    CFRelease(v12);
    goto LABEL_13;
  }

  v7 = v6;
  memset(cStr, 0, 37);
  memset(out, 170, sizeof(out));
  uuid_generate_random(out);
  uuid_unparse(out, cStr);
  v8 = CFStringCreateWithCString(v3, cStr, 0x600u);
  v9 = v8;
  if (!v8 || (v20[0] = @"CN", v20[1] = v8, (v18 = CFArrayCreate(v3, v20, 2, 0)) == 0) || (cf = CFArrayCreate(v3, &v18, 1, 0)) == 0)
  {
    v12 = 0;
    goto LABEL_21;
  }

  v10 = CFArrayCreate(v3, &cf, 1, 0);
  v12 = v10;
  if (!v10)
  {
LABEL_21:
    v14 = 0;
    SelfSignedCertificateWithError = 0;
    goto LABEL_9;
  }

  SelfSignedCertificateWithError = SecGenerateSelfSignedCertificateWithError(v10, v7, v11, a2, 0);
  if (SelfSignedCertificateWithError)
  {
    v14 = SecIdentityCreate(v3, SelfSignedCertificateWithError, a2);
  }

  else
  {
    v14 = 0;
  }

LABEL_9:
  CFRelease(v5);
  CFRelease(v7);
  if (SelfSignedCertificateWithError)
  {
    CFRelease(SelfSignedCertificateWithError);
  }

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

CFDictionaryRef SecSCEPGenerateCertificateRequest(const __CFArray *a1, const __CFDictionary *a2, CFMutableDataRef Mutable, __SecKey *a4, void *a5, const void *a6)
{
  v54 = *MEMORY[0x1E69E9840];
  values = 0;
  v11 = filterRecipients(a6);
  v12 = CFGetTypeID(v11);
  ValueAtIndex = v11;
  if (v12 != SecCertificateGetTypeID())
  {
    v14 = CFGetTypeID(v11);
    if (v14 != CFArrayGetTypeID())
    {
LABEL_39:
      v16 = 0;
      v43 = 0;
      CertificateRequest = 0;
      v15 = 0;
LABEL_40:
      Mutable = 0;
      goto LABEL_54;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
  }

  if (!ValueAtIndex)
  {
    goto LABEL_39;
  }

  v15 = SecCertificateCopyKey(ValueAtIndex);
  if (SecKeyGetAlgorithmId(v15) != 1)
  {
    v16 = 0;
    v43 = 0;
    CertificateRequest = 0;
    goto LABEL_40;
  }

  v16 = SecKeyCopyPublicKey(a4);
  if (!v16)
  {
    if (!Mutable)
    {
      v16 = 0;
      v43 = 0;
LABEL_53:
      CertificateRequest = 0;
      goto LABEL_54;
    }

    CFRetain(Mutable);
    v16 = Mutable;
  }

  CertificateRequest = SecGenerateCertificateRequest(a1, a2, v16, a4);
  if (!CertificateRequest)
  {
    v43 = 0;
    goto LABEL_40;
  }

  allocator = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable && !SecCMSCreateEnvelopedData(ValueAtIndex, a2, CertificateRequest, Mutable))
  {
    CFRelease(CertificateRequest);
    v18 = CFDictionaryCreateMutable(allocator, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    memset(bytes, 170, 20);
    v19 = SecKeyCopyAttributes(v16);
    v50 = v15;
    theDict = a2;
    v48 = a4;
    if (v19)
    {
      v20 = v19;
      Value = CFDictionaryGetValue(v19, @"kcls");
      if (Value && CFEqual(Value, @"0") && (v22 = CFDictionaryGetValue(v20, @"v_Data")) != 0 && (v23 = v22, !(CFDataGetLength(v22) >> 32)))
      {
        CFDataGetBytePtr(v23);
        CFDataGetLength(v23);
        CCDigest();
        v24 = CFDataCreate(allocator, bytes, 20);
      }

      else
      {
        v24 = 0;
      }

      CFRelease(v20);
    }

    else
    {
      v24 = 0;
    }

    Length = CFDataGetLength(v24);
    BytePtr = CFDataGetBytePtr(v24);
    v27 = malloc_type_calloc(1uLL, (2 * Length) | 1, 0x8C1D876BuLL);
    v28 = v27;
    v49 = v16;
    if (Length && BytePtr && v27)
    {
      v47 = a5;
      v29 = v18;
      v30 = Mutable;
      v31 = v11;
      v32 = 2 * Length;
      if (Length >= 1)
      {
        v33 = v27;
        do
        {
          v34 = *BytePtr++;
          snprintf(v33, 3uLL, "%02X", v34);
          v33 += 2;
          --Length;
        }

        while (Length);
      }

      v35 = CFDataCreateWithBytesNoCopy(allocator, v28, v32, *MEMORY[0x1E695E488]);
      v11 = v31;
      Mutable = v30;
      v18 = v29;
      a5 = v47;
    }

    else
    {
      if (v27)
      {
        free(v27);
      }

      v35 = 0;
    }

    v15 = v50;
    if (v24)
    {
      CFRelease(v24);
    }

    *bytes = 0x145F88601488660;
    *&bytes[8] = 1801;
    v36 = CFDataCreate(allocator, bytes, 10);
    v37 = CFDataGetLength(v35);
    v38 = CFDataGetBytePtr(v35);
    v39 = printable_string_data(v37, v38);
    if (v35)
    {
      CFRelease(v35);
    }

    CFDictionarySetValue(v18, v36, v39);
    if (v36)
    {
      CFRelease(v36);
    }

    if (v39)
    {
      CFRelease(v39);
    }

    *bytes = 0x145F88601488660;
    *&bytes[8] = 521;
    CertificateRequest = CFDataCreate(allocator, bytes, 10);
    v16 = v49;
    if (!CertificateRequest || (v40 = printable_string_data(2uLL, &PKCSReq)) == 0)
    {
      v43 = 0;
      if (!v18)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }

    v41 = v40;
    CFDictionarySetValue(v18, CertificateRequest, v40);
    CFRelease(CertificateRequest);
    CFRelease(v41);
    sender_nonce = generate_sender_nonce(v18);
    if (sender_nonce)
    {
      goto LABEL_46;
    }

    if (a5)
    {
      values = a5;
      CFRetain(a5);
    }

    else
    {
      values = SecSCEPCreateTemporaryIdentity(sender_nonce, v48);
      if (!values)
      {
        goto LABEL_46;
      }

      v43 = CFDictionaryCreate(0, &kSecValueRef, &values, 1, 0, 0);
      if (SecItemAdd(v43, 0))
      {
LABEL_71:
        if (!v43)
        {
LABEL_48:
          CertificateRequest = 0;
          if (!v18)
          {
LABEL_50:
            if (!CertificateRequest)
            {
              goto LABEL_54;
            }

            CFRelease(CertificateRequest);
            goto LABEL_53;
          }

LABEL_49:
          CFRelease(v18);
          goto LABEL_50;
        }

        CFRelease(v43);
LABEL_46:
        v43 = 0;
        goto LABEL_48;
      }

      if (v43)
      {
        CFRelease(v43);
      }

      if (!values)
      {
        goto LABEL_46;
      }
    }

    v43 = CFDataCreateMutable(allocator, 0);
    if (!SecCMSCreateSignedData(values, Mutable, theDict, v18, v43))
    {
      goto LABEL_48;
    }

    goto LABEL_71;
  }

  v43 = 0;
LABEL_54:
  if (values)
  {
    CFRelease(values);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (CertificateRequest)
  {
    CFRelease(CertificateRequest);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

const __CFArray *filterRecipients(const void *a1)
{
  v1 = a1;
  if (a1)
  {
    TypeID = SecCertificateGetTypeID();
    if (TypeID != CFGetTypeID(v1))
    {
      v3 = CFGetTypeID(v1);
      if (v3 != CFArrayGetTypeID())
      {
        return 0;
      }

      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = __filterRecipients_block_invoke;
      context[3] = &__block_descriptor_tmp_14068;
      context[4] = Mutable;
      v7.length = CFArrayGetCount(v1);
      v7.location = 0;
      CFArrayApplyFunction(v1, v7, apply_block_1_14070, context);
      if (CFArrayGetCount(Mutable))
      {
        return Mutable;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    CFRetain(v1);
  }

  return v1;
}

__CFData *printable_string_data(unint64_t a1, const void *a2)
{
  v8 = DERLengthOfLength(a1);
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], a1 + v8 + 1);
  CFDataSetLength(Mutable, a1 + v8 + 1);
  BytePtr = CFDataGetBytePtr(Mutable);
  *BytePtr = 19;
  v6 = BytePtr + 1;
  DEREncodeLength(a1, (BytePtr + 1), &v8);
  memcpy(&v6[v8], a2, a1);
  return Mutable;
}

uint64_t generate_sender_nonce(__CFDictionary *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *v11 = 0x145F88601488660;
  *&v11[8] = 1289;
  v2 = *MEMORY[0x1E695E480];
  v3 = CFDataCreate(*MEMORY[0x1E695E480], v11, 10);
  *v11 = 4100;
  v12 = 0;
  *&v11[2] = 0;
  v4 = *MEMORY[0x1E69E94D8];
  v5 = CCRandomCopyBytes();
  v6 = CFDataCreate(v2, v11, 18);
  v7 = v6;
  if (v3)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    CFDictionarySetValue(a1, v3, v6);
    goto LABEL_10;
  }

  if (v3)
  {
LABEL_10:
    CFRelease(v3);
    if (!v7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v6)
  {
LABEL_8:
    CFRelease(v7);
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

void __filterRecipients_block_invoke(uint64_t a1, _DWORD *a2)
{
  TypeID = SecCertificateGetTypeID();
  if (TypeID == CFGetTypeID(a2) && (!a2 || (v5 = a2[96]) == 0 || (v5 & 4) != 0))
  {
    v6 = *(a1 + 32);

    CFArrayAppendValue(v6, a2);
  }
}

CFMutableDataRef SecSCEPCertifyRequestWithAlgorithms(const __CFData *a1, uint64_t a2, const __CFData *a3, char a4, const void *a5, void *a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v48 = 0;
  values = a6;
  v46 = 0;
  v47 = 0;
  v44 = 0;
  v45 = 0;
  v42 = 0;
  cf = 0;
  v41 = 0;
  v10 = *(a2 + 16);
  CFRetain(v10);
  v36 = v10;
  v11 = SecCertificateCopyKey(v10);
  BasicX509 = SecPolicyCreateBasicX509();
  v35 = v11;
  if (SecCMSVerifySignedData_internal(a1, 0, BasicX509, &v48, 0, &v47, &v46) || (v40 = -1431655766, SecTrustEvaluateInternal(v48, &v40)))
  {
    v20 = 0;
    v24 = 0;
    v23 = 0;
    Mutable = 0;
    v30 = 0;
    v34 = 0;
    v16 = 0;
    v39 = 0;
LABEL_96:
    v13 = 0;
    goto LABEL_104;
  }

  v12 = copySignerCert(v48);
  v13 = v12;
  if (!v12)
  {
    v20 = 0;
    v24 = 0;
    v23 = 0;
    Mutable = 0;
    v30 = 0;
    v34 = 0;
    v16 = 0;
    v39 = 0;
LABEL_104:
    v17 = 0;
    goto LABEL_44;
  }

  IsSignedBy = SecCertificateIsSignedBy(v12, v11);
  v39 = v13;
  if (!scep_attr_has_val(v46, "19"))
  {
    v20 = 0;
    v24 = 0;
    v23 = 0;
    Mutable = 0;
    v30 = 0;
    v34 = 0;
    v16 = 0;
    goto LABEL_96;
  }

  *bytes = 0x145F88601488660;
  v53 = 1801;
  v15 = *MEMORY[0x1E695E480];
  v16 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 10);
  if (!v16)
  {
    goto LABEL_88;
  }

  v17 = dictionary_array_value_1(v46, v16);
  if (!v17)
  {
    v20 = 0;
    v24 = 0;
    v23 = 0;
    Mutable = 0;
    v30 = 0;
    v34 = 0;
    v13 = 0;
    goto LABEL_44;
  }

  *bytes = 0x145F88601488660;
  v53 = 1289;
  v18 = CFDataCreate(v15, bytes, 10);
  if (!v18)
  {
LABEL_88:
    v20 = 0;
    v24 = 0;
    v23 = 0;
    Mutable = 0;
    v30 = 0;
    v34 = 0;
    goto LABEL_96;
  }

  v34 = v18;
  if (!dictionary_array_value_1(v46, v18))
  {
    goto LABEL_86;
  }

  Mutable = CFDataCreateMutable(v15, 0);
  v20 = 0;
  if (SecCMSDecryptEnvelopedData(v47, Mutable, &v41) || !v41)
  {
    v24 = 0;
    v23 = 0;
    v30 = 0;
    v13 = 0;
    v17 = 0;
    goto LABEL_44;
  }

  if (!SecVerifyCertificateRequest(Mutable, &v42, &cf, &v45, &v44))
  {
    v20 = 0;
    v24 = 0;
    v23 = 0;
    goto LABEL_95;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (IsSignedBy)
  {
    if (!cf || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(cf)) || !CFEqual(@"magic", cf))
    {
LABEL_86:
      v20 = 0;
      v24 = 0;
      v23 = 0;
      Mutable = 0;
LABEL_95:
      v30 = 0;
      goto LABEL_96;
    }
  }

  v13 = CFDataCreateMutable(v15, 0);
  if (!v13)
  {
    goto LABEL_90;
  }

  if (a4)
  {
    v22 = &PKIStatusPENDING;
    goto LABEL_32;
  }

  if (SecKeyGetAlgorithmId(v42) != 1)
  {
LABEL_90:
    v20 = 0;
    v24 = 0;
LABEL_102:
    v23 = 0;
    goto LABEL_103;
  }

  v23 = SecIdentitySignCertificateWithAlgorithm(a2, a3, v42, v45, v44, a5);
  v24 = SecCMSCreateCertificatesOnlyMessage(v23);
  if (!v24)
  {
    v20 = 0;
LABEL_103:
    Mutable = 0;
    v30 = 0;
    goto LABEL_104;
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (values)
  {
    v25 = CFDictionaryCreate(0, &kSecCMSBulkEncryptionAlgorithm, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  else
  {
    v25 = 0;
  }

  if (SecCMSCreateEnvelopedData(v39, v25, v24, v13))
  {
    v20 = 0;
    goto LABEL_102;
  }

  CFRelease(v24);
  if (v25)
  {
    CFRelease(v25);
  }

  v22 = &PKIStatusSUCCESS;
LABEL_32:
  *bytes = 0x145F88601488660;
  v53 = 777;
  v26 = CFDataCreate(v15, bytes, 10);
  v27 = printable_string_data(1uLL, v22);
  *bytes = 0x145F88601488660;
  v53 = 521;
  v28 = CFDataCreate(v15, bytes, 10);
  v29 = printable_string_data(1uLL, &CertRep);
  keys[0] = v16;
  keys[1] = v26;
  keys[2] = v28;
  v50[0] = v17;
  v50[1] = v27;
  v50[2] = v29;
  v17 = CFDictionaryCreate(v15, keys, v50, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  v20 = CFDataCreateMutable(v15, 0);
  v30 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v30, kSecCMSCertChainMode, kSecCMSCertChainModeNone);
  if (a5)
  {
    CFDictionaryAddValue(v30, kSecCMSSignHashAlgorithm, a5);
  }

  if (!SecCMSCreateSignedData(a2, v13, v30, v17, v20))
  {
    v24 = 0;
    v23 = 0;
    Mutable = 0;
LABEL_44:
    v31 = BasicX509;
    goto LABEL_45;
  }

  v31 = BasicX509;
  if (v20)
  {
    CFRelease(v20);
    v20 = 0;
  }

  v24 = 0;
  v23 = 0;
  Mutable = 0;
LABEL_45:
  if (v36)
  {
    CFRelease(v36);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v23)
  {
    CFRelease(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v48)
  {
    CFRelease(v48);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (v46)
  {
    CFRelease(v46);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  v32 = *MEMORY[0x1E69E9840];
  return v20;
}

const void *copySignerCert(__SecTrust *a1)
{
  v1 = SecTrustCopyCertificateChain(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  ValueAtIndex = CFArrayGetValueAtIndex(v1, 0);
  v4 = ValueAtIndex;
  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  CFRelease(v2);
  return v4;
}

unint64_t scep_attr_has_val(const __CFDictionary *a1, char *__s)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = strlen(__s);
  cf = printable_string_data(v4, __s);
  v5 = *MEMORY[0x1E695E480];
  v6 = CFArrayCreate(*MEMORY[0x1E695E480], &cf, 1, MEMORY[0x1E695E9C0]);
  CFRelease(cf);
  *bytes = 0x145F88601488660;
  v13 = 521;
  v7 = CFDataCreate(v5, bytes, 10);
  Value = CFDictionaryGetValue(a1, v7);
  CFRelease(v7);
  if (Value)
  {
    Value = CFEqual(v6, Value) != 0;
  }

  CFRelease(v6);
  v9 = *MEMORY[0x1E69E9840];
  return Value;
}

const void *dictionary_array_value_1(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value)
  {
    return 0;
  }

  v3 = Value;
  if (CFArrayGetCount(Value) != 1)
  {
    return 0;
  }

  return CFArrayGetValueAtIndex(v3, 0);
}

BOOL SecSCEPVerifyGetCertInitial(const __CFData *a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0;
  cf = 0;
  v13 = 0;
  v14 = 0;
  v3 = *(a2 + 16);
  CFRetain(v3);
  v4 = SecCertificateCopyKey(v3);
  BasicX509 = SecPolicyCreateBasicX509();
  if (SecCMSVerifySignedData_internal(a1, 0, BasicX509, &cf, 0, &v15, &v14) || !scep_attr_has_val(v14, "20"))
  {
    v10 = 0;
    Mutable = 0;
    v8 = 0;
    v7 = 0;
  }

  else
  {
    *bytes = 0x145F88601488660;
    v18 = 1801;
    v6 = *MEMORY[0x1E695E480];
    v7 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 10);
    if (v7 && dictionary_array_value_1(v14, v7))
    {
      *bytes = 0x145F88601488660;
      v18 = 1289;
      v8 = CFDataCreate(v6, bytes, 10);
      if (v8 && dictionary_array_value_1(v14, v8))
      {
        Mutable = CFDataCreateMutable(v6, 0);
        v10 = 0;
        if (!SecCMSDecryptEnvelopedData(v15, Mutable, &v13) && v13)
        {
          v10 = CFDataGetLength(Mutable) > 0;
        }
      }

      else
      {
        v10 = 0;
        Mutable = 0;
      }
    }

    else
    {
      v10 = 0;
      Mutable = 0;
      v8 = 0;
    }
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (BasicX509)
  {
    CFRelease(BasicX509);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

const __CFData *SecSCEPVerifyReply(int a1, const __CFData *a2, CFTypeRef cf, CFErrorRef *a4)
{
  ValueAtIndex = cf;
  v34 = *MEMORY[0x1E69E9840];
  v30 = 0;
  cfa = 0;
  v28 = 0;
  theDict = 0;
  values = 0;
  v7 = CFGetTypeID(cf);
  if (v7 == SecCertificateGetTypeID())
  {
    values = ValueAtIndex;
    if (!ValueAtIndex)
    {
      goto LABEL_61;
    }

    goto LABEL_10;
  }

  v8 = CFGetTypeID(ValueAtIndex);
  if (v8 != CFArrayGetTypeID())
  {
    goto LABEL_15;
  }

  Count = CFArrayGetCount(ValueAtIndex);
  if (Count >= 2)
  {
    v10 = ValueAtIndex;
    v11 = 1;
    goto LABEL_9;
  }

  if (Count != 1)
  {
LABEL_15:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    Mutable = 0;
    v19 = 0;
    ValueAtIndex = 0;
    goto LABEL_42;
  }

  v10 = ValueAtIndex;
  v11 = 0;
LABEL_9:
  ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
  values = ValueAtIndex;
  if (!ValueAtIndex)
  {
LABEL_61:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    Mutable = 0;
    v19 = 0;
    goto LABEL_42;
  }

LABEL_10:
  ValueAtIndex = SecPolicyCreateBasicX509();
  v12 = *MEMORY[0x1E695E480];
  v13 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  if (SecCMSVerifySignedData(a2, 0, ValueAtIndex, &cfa, v13, &v30, &theDict))
  {
    goto LABEL_61;
  }

  if (v13)
  {
    CFRelease(v13);
  }

  v14 = theDict ? CFDictionaryGetValue(theDict, kSecCMSSignedAttributes) : 0;
  v26 = -1431655766;
  if (SecTrustEvaluateInternal(cfa, &v26))
  {
    goto LABEL_61;
  }

  v19 = copySignerCert(cfa);
  if (!v19)
  {
    v15 = 0;
    v16 = 0;
    goto LABEL_26;
  }

  v15 = 0;
  if (!CFEqual(values, v19) || !v14)
  {
    v16 = 0;
    v17 = 0;
    Mutable = 0;
    goto LABEL_42;
  }

  v16 = copy_signed_attr_printable_string_value(v14, 2);
  v15 = copy_signed_attr_printable_string_value(v14, 3);
  if (v16 | v15)
  {
    if (!v16 || !CFEqual(v16, @"3") || !v15 || CFEqual(v15, @"2"))
    {
      goto LABEL_26;
    }

    if (CFEqual(v15, @"3"))
    {
      *bytes = 0x145F88601488660;
      v33 = 1801;
      v20 = CFDataCreate(v12, bytes, 10);
      *bytes = v20;
      if (v20)
      {
        v25 = dictionary_array_value_1(v14, v20);
        if (v25)
        {
          v21 = CFDictionaryCreate(v12, bytes, &v25, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (a4)
          {
            *a4 = CFErrorCreate(v12, @"PENDING", 3, v21);
          }

          if (v21)
          {
            CFRelease(v21);
          }
        }

        if (*bytes)
        {
          CFRelease(*bytes);
        }
      }

      goto LABEL_26;
    }

    if (!CFEqual(v15, @"0"))
    {
LABEL_26:
      v17 = 0;
      Mutable = 0;
      goto LABEL_42;
    }
  }

  Mutable = CFDataCreateMutable(v12, 0);
  v17 = 0;
  if (!SecCMSDecryptEnvelopedData(v30, Mutable, &v28))
  {
    if (v28)
    {
      v17 = SecCMSCertificatesOnlyMessageCopyCertificates(Mutable);
      if (v17)
      {
        v22 = CFDictionaryCreate(0, &kSecValueRef, &v28, 1, 0, 0);
        SecItemDelete(v22);
        if (v22)
        {
          CFRelease(v22);
        }
      }
    }
  }

LABEL_42:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (theDict)
  {
    CFRelease(theDict);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

const __CFArray *copy_signed_attr_printable_string_value(const __CFDictionary *a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  *bytes = 0x145F88601488660;
  v16 = 9;
  v17 = a2;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 10);
  if (v4)
  {
    v5 = v4;
    Value = CFDictionaryGetValue(a1, v4);
    v7 = Value;
    if (Value)
    {
      v8 = CFGetTypeID(Value);
      if (v8 == CFArrayGetTypeID() && CFArrayGetCount(v7) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v7, 0), BytePtr = CFDataGetBytePtr(ValueAtIndex), Length = CFDataGetLength(ValueAtIndex), Length >= 2) && *BytePtr == 19)
      {
        v7 = 0;
        v12 = *(BytePtr + 1);
        if ((v12 & 0x8000000000000000) == 0 && Length - 2 == v12)
        {
          v7 = CFStringCreateWithBytes(v3, BytePtr + 2, v12, 0x600u, 0);
        }
      }

      else
      {
        v7 = 0;
      }
    }

    CFRelease(v5);
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t SecSCEPValidateCACertMessage(CFArrayRef theArray, CFDataRef theData, void *a3, void *a4, void *a5)
{
  v79 = *MEMORY[0x1E69E9840];
  if (!theData)
  {
    ValueAtIndex = 0;
    goto LABEL_51;
  }

  v7 = 0;
  theArraya = CFDataGetLength(theData);
  v8 = __ROR8__(theArraya - 16, 2);
  while (1)
  {
    if (v7 >= CFArrayGetCount(theArray))
    {
      v30 = 4294899453;
      goto LABEL_46;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
    if (v8 > 3)
    {
      switch(v8)
      {
        case 4:
          v22 = secLogObjForScope("scep");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            *md = 0;
            _os_log_debug_impl(&dword_1887D2000, v22, OS_LOG_TYPE_DEBUG, "SHA256 fingerprint digest", md, 2u);
          }

          v23 = SecCertificateCopySHA256Digest(ValueAtIndex);
          goto LABEL_39;
        case 8:
          v26 = secLogObjForScope("scep");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            *md = 0;
            _os_log_debug_impl(&dword_1887D2000, v26, OS_LOG_TYPE_DEBUG, "SHA384 fingerprint digest", md, 2u);
          }

          v11 = 0;
          v27 = ValueAtIndex[3];
          if ((v27 - 0xFFFFFFFFLL) < 0xFFFFFFFF00000002)
          {
            goto LABEL_40;
          }

          v28 = ValueAtIndex[2];
          if (!v28)
          {
            goto LABEL_40;
          }

          *&v29 = 0xAAAAAAAAAAAAAAAALL;
          *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&md[16] = v29;
          v77 = v29;
          *md = v29;
          CC_SHA384(v28, v27, md);
          v14 = 48;
          goto LABEL_38;
        case 12:
          v15 = secLogObjForScope("scep");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            *md = 0;
            _os_log_debug_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEBUG, "SHA512 fingerprint digest", md, 2u);
          }

          v11 = 0;
          v16 = ValueAtIndex[3];
          if ((v16 - 0xFFFFFFFFLL) < 0xFFFFFFFF00000002)
          {
            goto LABEL_40;
          }

          v17 = ValueAtIndex[2];
          if (!v17)
          {
            goto LABEL_40;
          }

          *&v18 = 0xAAAAAAAAAAAAAAAALL;
          *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v77 = v18;
          v78 = v18;
          *md = v18;
          *&md[16] = v18;
          CC_SHA512(v17, v16, md);
          v14 = 64;
          goto LABEL_38;
      }

LABEL_92:
      v57 = secLogObjForScope("SecError");
      v30 = 4294899481;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *md = 134217984;
        *&md[4] = theArraya;
        _os_log_impl(&dword_1887D2000, v57, OS_LOG_TYPE_DEFAULT, "SCEP failed to find algorithm to match CA fingerprint length: %ld", md, 0xCu);
      }

LABEL_46:
      v31 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *md = 138412290;
        *&md[4] = theData;
        _os_log_impl(&dword_1887D2000, v31, OS_LOG_TYPE_DEFAULT, "SCEP failed to find certificate matching CA fingerprint: %@", md, 0xCu);
      }

      goto LABEL_149;
    }

    if (!v8)
    {
      v19 = secLogObjForScope("scep");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *md = 0;
        _os_log_debug_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEBUG, "MD5 fingerprint digest", md, 2u);
      }

      v11 = 0;
      memset(md, 170, 16);
      v20 = ValueAtIndex[3];
      if ((v20 - 0xFFFFFFFFLL) < 0xFFFFFFFF00000002)
      {
        goto LABEL_40;
      }

      v21 = ValueAtIndex[2];
      if (!v21)
      {
        goto LABEL_40;
      }

      CC_MD5(v21, v20, md);
      v14 = 16;
LABEL_38:
      v23 = CFDataCreate(0, md, v14);
LABEL_39:
      v11 = v23;
      goto LABEL_40;
    }

    if (v8 != 1)
    {
      break;
    }

    v24 = secLogObjForScope("scep");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *md = 0;
      _os_log_debug_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEBUG, "SHA1 fingerprint digest", md, 2u);
    }

    SHA1Digest = SecCertificateGetSHA1Digest(ValueAtIndex);
    if (SHA1Digest)
    {
      v11 = SHA1Digest;
      CFRetain(SHA1Digest);
      goto LABEL_41;
    }

LABEL_43:
    ++v7;
  }

  if (v8 != 3)
  {
    goto LABEL_92;
  }

  v10 = secLogObjForScope("scep");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *md = 0;
    _os_log_debug_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEBUG, "SHA224 fingerprint digest", md, 2u);
  }

  v11 = 0;
  memset(md, 170, 28);
  v12 = ValueAtIndex[3];
  if ((v12 - 0xFFFFFFFFLL) >= 0xFFFFFFFF00000002)
  {
    v13 = ValueAtIndex[2];
    if (v13)
    {
      CC_SHA224(v13, v12, md);
      v14 = 28;
      goto LABEL_38;
    }
  }

LABEL_40:
  if (!v11)
  {
    goto LABEL_43;
  }

LABEL_41:
  if (!CFEqual(v11, theData))
  {
    CFRelease(v11);
    goto LABEL_43;
  }

  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  CFRelease(v11);
LABEL_51:
  Count = CFArrayGetCount(theArray);
  v33 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
  v35 = CFArrayGetCount(theArray);
  v36 = CFArrayCreateMutable(0, v35, v33);
  v37 = CFArrayGetCount(theArray);
  v38 = CFArrayCreateMutable(0, v37, v33);
  v39 = v38;
  if (Mutable)
  {
    v40 = v36 == 0;
  }

  else
  {
    v40 = 1;
  }

  if (v40 || v38 == 0)
  {
    v30 = 4294899624;
    goto LABEL_60;
  }

  v44 = 0;
  while (2)
  {
    if (v44 < CFArrayGetCount(theArray))
    {
      v45 = CFArrayGetValueAtIndex(theArray, v44);
      if (v45)
      {
        v46 = v45;
        v47 = *(v45 + 96) & 5;
        if (v47 > 3)
        {
          if (v47 == 5)
          {
            v48 = Mutable;
          }

          else
          {
            v48 = v39;
          }

LABEL_78:
          CFArrayAppendValue(v48, v46);
        }

        else if (v47)
        {
          v48 = v36;
          goto LABEL_78;
        }
      }

      ++v44;
      continue;
    }

    break;
  }

  if (!CFArrayGetCount(Mutable))
  {
    v30 = 4294899565;
    if (!CFArrayGetCount(v36) || !CFArrayGetCount(v39))
    {
LABEL_60:
      v42 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *md = 0;
        _os_log_impl(&dword_1887D2000, v42, OS_LOG_TYPE_DEFAULT, "SCEP failed to find candidate RA certificates", md, 2u);
      }

      if (ValueAtIndex)
      {
        CFRelease(ValueAtIndex);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      if (v39)
      {
        v43 = v39;
        goto LABEL_148;
      }

      goto LABEL_149;
    }
  }

  ra_chain = scep_find_ra_chain(v36, theArray, ValueAtIndex);
  v50 = scep_find_ra_chain(v39, theArray, ValueAtIndex);
  v51 = 0;
  v30 = 4294941020;
  theArrayb = v50;
  if (!ra_chain)
  {
    v53 = 0;
    goto LABEL_103;
  }

  v52 = v50;
  v53 = 0;
  if (!v50)
  {
    goto LABEL_103;
  }

  v54 = CFArrayGetValueAtIndex(ra_chain, 0);
  v53 = v54;
  if (v54)
  {
    CFRetain(v54);
  }

  v55 = CFArrayGetValueAtIndex(v52, 0);
  v51 = v55;
  if (v55)
  {
    CFRetain(v55);
  }

  if (ValueAtIndex)
  {
    v56 = ValueAtIndex;
    goto LABEL_125;
  }

  v58 = CFArrayGetCount(ra_chain);
  v56 = CFArrayGetValueAtIndex(ra_chain, v58 - 1);
  v59 = CFArrayGetCount(theArrayb);
  v60 = CFArrayGetValueAtIndex(theArrayb, v59 - 1);
  if (!v56 || !v60)
  {
    if (v56 != v60)
    {
      goto LABEL_100;
    }

    if (!v56)
    {
      if (!a3)
      {
        goto LABEL_128;
      }

      goto LABEL_127;
    }

LABEL_124:
    CFRetain(v56);
LABEL_125:
    if (!a3)
    {
      goto LABEL_128;
    }

    CFRetain(v56);
LABEL_127:
    *a3 = v56;
LABEL_128:
    if (a4)
    {
      if (v53)
      {
        CFRetain(v53);
      }

      *a4 = v53;
    }

    if (a5)
    {
      if (v51)
      {
        CFRetain(v51);
      }

      v30 = 0;
      v68 = 0;
      *a5 = v51;
    }

    else
    {
      v30 = 0;
      v68 = 0;
    }

LABEL_137:
    CFRelease(ra_chain);
    ValueAtIndex = v56;
    goto LABEL_138;
  }

  if (CFEqual(v56, v60))
  {
    goto LABEL_124;
  }

LABEL_100:
  v61 = secLogObjForScope("scep");
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
  {
    *md = 0;
    _os_log_impl(&dword_1887D2000, v61, OS_LOG_TYPE_DEFAULT, "signing/encryption CAs do not match", md, 2u);
  }

  v30 = 4294899453;
LABEL_103:
  v62 = secLogObjForScope("scep");
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    *md = 0;
    _os_log_debug_impl(&dword_1887D2000, v62, OS_LOG_TYPE_DEBUG, "SCEP did not find different RA certificates for signing/encryption; looking for one cert", md, 2u);
  }

  v63 = scep_find_ra_chain(Mutable, theArray, ValueAtIndex);
  if (v63)
  {
    v64 = v63;
    if (!ValueAtIndex)
    {
      v65 = CFArrayGetCount(v63);
      v66 = CFArrayGetValueAtIndex(v64, v65 - 1);
      ValueAtIndex = v66;
      if (v66)
      {
        CFRetain(v66);
      }
    }

    v67 = CFArrayGetValueAtIndex(v64, 0);
    v68 = v67;
    if (v67)
    {
      CFRetain(v67);
    }

    CFRelease(v64);
    if (a3)
    {
      if (ValueAtIndex)
      {
        CFRetain(ValueAtIndex);
      }

      *a3 = ValueAtIndex;
    }

    if (a4)
    {
      if (v68)
      {
        CFRetain(v68);
      }

      v30 = 0;
      *a4 = v68;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v68 = 0;
  }

  v56 = ValueAtIndex;
  if (ra_chain)
  {
    goto LABEL_137;
  }

LABEL_138:
  if (theArrayb)
  {
    CFRelease(theArrayb);
  }

  CFRelease(Mutable);
  CFRelease(v36);
  CFRelease(v39);
  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v51)
  {
    v43 = v51;
LABEL_148:
    CFRelease(v43);
  }

LABEL_149:
  v69 = *MEMORY[0x1E69E9840];
  return v30;
}

__CFArray *scep_find_ra_chain(CFArrayRef theArray, const __CFArray *a2, void *a3)
{
  v5 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695E9C0];
  values = a3;
  while (v5 < CFArrayGetCount(theArray))
  {
    Count = CFArrayGetCount(a2);
    Mutable = CFArrayCreateMutable(0, Count + 1, v6);
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v5);
    CFArrayAppendValue(Mutable, ValueAtIndex);
    v27.length = CFArrayGetCount(a2);
    v27.location = 0;
    CFArrayAppendArray(Mutable, a2, v27);
    trust = 0;
    if (SecTrustCreateWithCertificates(Mutable, 0, &trust))
    {
      v10 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = ValueAtIndex;
        _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "SCEP failed to create trust for %@", buf, 0xCu);
      }

      if (Mutable)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (values)
      {
        v11 = CFArrayCreate(0, &values, 1, v6);
        SecTrustSetAnchorCertificates(trust, v11);
        if (v11)
        {
          CFRelease(v11);
        }
      }

      v12 = SecTrustCopyCertificateChain(trust);
      if (v12)
      {
        Mutable = v12;
        v13 = values;
        if (!values)
        {
          goto LABEL_24;
        }

        v14 = CFArrayGetCount(v12);
        v15 = CFArrayGetValueAtIndex(Mutable, v14 - 1);
        if (v15)
        {
          if (CFEqual(v13, v15))
          {
            goto LABEL_24;
          }
        }

        v16 = secLogObjForScope("scep");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v23 = ValueAtIndex;
          v24 = 2112;
          v25 = values;
          _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, "failed to create chain from %@ to ca cert %@", buf, 0x16u);
        }

LABEL_19:
        CFRelease(Mutable);
        goto LABEL_20;
      }

      v17 = secLogObjForScope("scep");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = ValueAtIndex;
        _os_log_impl(&dword_1887D2000, v17, OS_LOG_TYPE_DEFAULT, "failed to create chain %@", buf, 0xCu);
      }
    }

LABEL_20:
    ++v5;
  }

  Mutable = 0;
LABEL_24:
  v18 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFMutableDataRef SecSCEPGetCertInitial(uint64_t a1, const __CFArray *a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5, const void *a6)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    goto LABEL_18;
  }

  CertificateRequestSubject = SecGenerateCertificateRequestSubject(a1, a2);
  if (!CertificateRequestSubject)
  {
    goto LABEL_18;
  }

  v11 = CertificateRequestSubject;
  v12 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (!Mutable)
  {
    CFRelease(v11);
LABEL_18:
    v20 = 0;
    goto LABEL_14;
  }

  v14 = Mutable;
  v15 = filterRecipients(a6);
  if (SecCMSCreateEnvelopedData(v15, a3, v11, v14))
  {
    v20 = 0;
    v17 = 0;
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v12, 3, a4);
    *bytes = 0x145F88601488660;
    v24 = 521;
    v17 = CFDataCreate(v12, bytes, 10);
    if (v17 && (v18 = printable_string_data(2uLL, "20")) != 0)
    {
      v19 = v18;
      CFDictionarySetValue(MutableCopy, v17, v18);
      CFRelease(v17);
      CFRelease(v19);
      generate_sender_nonce(MutableCopy);
      v20 = CFDataCreateMutable(v12, 0);
      if (SecCMSCreateSignedData(a5, v14, a3, MutableCopy, v20) && v20)
      {
        CFRelease(v20);
        v20 = 0;
      }

      v17 = 0;
      if (!MutableCopy)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v20 = 0;
      if (!MutableCopy)
      {
        goto LABEL_10;
      }
    }

    CFRelease(MutableCopy);
  }

LABEL_10:
  CFRelease(v11);
  CFRelease(v14);
  if (v17)
  {
    CFRelease(v17);
  }

  if (v15)
  {
    CFRelease(v15);
  }

LABEL_14:
  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t SecCopyEncryptedToServerKey(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SecCopyEncryptedToServerKey_block_invoke;
  v5[3] = &unk_1E70E21D0;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = &v6;
  if (*(a1 + 16) == &kSecECPublicKeyDescriptor)
  {
    __SecCopyEncryptedToServerKey_block_invoke(v5, *(a1 + 24));
  }

  else
  {
    SecError(-50, a3, @"Not an EC Public Key object, sorry can't do.");
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __SecCopyEncryptedToServerKey_block_invoke(uint64_t a1, uint64_t *a2)
{
  v27 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26[0] = v4;
  v26[1] = v4;
  v5 = ccaes_gcm_encrypt_mode();
  InitServerECIES(v26, v5);
  Length = CFDataGetLength(*(a1 + 40));
  v25 = ccecies_encrypt_gcm_ciphertext_size();
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  CFDataSetLength(Mutable, v25);
  if (!Mutable)
  {
    SecError(-108, *(a1 + 48), @"failed to create data");
    return;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  CFDataGetBytePtr(*(a1 + 40));
  v10 = ccecies_encrypt_gcm();
  v11 = *a2;
  v12 = ((cczp_bitlen() + 7) >> 2) | 1;
  v13 = *(a1 + 48);
  if (Length + v12 + 16 == v25)
  {
    ccder_sizeof();
    ccder_sizeof();
    ccder_sizeof();
    v14 = ccder_sizeof();
    v15 = CFDataCreateMutable(v7, 0);
    CFDataSetLength(v15, v14);
    if (v15)
    {
      v23 = v10;
      cf = Mutable;
      CFDataGetMutableBytePtr(v15);
      CFDataGetLength(v15);
      v16 = ccder_encode_body_nocopy();
      ccder_encode_tl();
      v17 = ccder_encode_body_nocopy();
      ccder_encode_tl();
      v18 = ccder_encode_body_nocopy();
      ccder_encode_tl();
      if (ccder_encode_constructed_tl())
      {
        CFRetain(v15);
        CFRelease(v15);
        memcpy(v18, MutableBytePtr, v12);
        memcpy(v17, &MutableBytePtr[v12], Length);
        *v16 = *&MutableBytePtr[v12 + Length];
        if (v23)
        {
          SecError(-909, *(a1 + 48), @"ccecies_encrypt_gcm failed %d", v23);
          v20 = Mutable;
        }

        else
        {
          v19 = *(*(a1 + 32) + 8);
          v20 = cf;
          if (*(v19 + 24) != v15)
          {
            CFRetain(v15);
            v21 = *(v19 + 24);
            if (v21)
            {
              CFRelease(v21);
            }

            *(v19 + 24) = v15;
          }
        }

        CFRelease(v20);
        v22 = v15;
        goto LABEL_11;
      }

      SecError(-50, v13, @"Encoding failed");
      CFRelease(v15);
    }

    else
    {
      SecError(-108, v13, @"failed to create data", &v25, MutableBytePtr);
    }
  }

  else
  {
    SecError(-26276, v13, @"Allocation mismatch", &v25, MutableBytePtr);
  }

  v22 = Mutable;
LABEL_11:
  CFRelease(v22);
}

uint64_t InitServerECIES(uint64_t a1, uint64_t a2)
{
  v4 = ccsha256_di();
  v5 = ccrng();

  return MEMORY[0x1EEE6F540](a1, v4, v5, a2, 16, 16, 19);
}

uint64_t SecCopyDecryptedForServer(uint64_t a1, uint64_t a2, __CFString **a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SecCopyDecryptedForServer_block_invoke;
  v6[3] = &unk_1E70E21F8;
  v6[5] = a2;
  v6[6] = a3;
  v6[4] = &v7;
  if (*(a1 + 16) == &kSecECPrivateKeyDescriptor)
  {
    v3 = *(a1 + 24);
    __SecCopyDecryptedForServer_block_invoke(v6);
  }

  else
  {
    SecError(-50, a3, @"Not an EC Full Key object, sorry can't do.");
  }

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __SecCopyDecryptedForServer_block_invoke(uint64_t a1)
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[0] = v2;
  v24[1] = v2;
  v3 = ccaes_gcm_decrypt_mode();
  InitServerECIES(v24, v3);
  memset(v23, 170, sizeof(v23));
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  BytePtr = CFDataGetBytePtr(v5);
  v7 = &BytePtr[CFDataGetLength(v5)];
  v27 = 0xAAAAAAAAAAAAAAAALL;
  ccder_decode_sequence_tl();
  v8 = ccder_decode_tl();
  v9 = ccder_decode_tl();
  v10 = ccder_decode_tl();
  v11 = v10 + v23[0];
  if (!v10)
  {
    v11 = 0;
  }

  if (v11 != v7)
  {
    SecError(-50, v4, @"Blob failed to decode");
    return;
  }

  if (v8)
  {
    v12 = v10;
    if (v9 && v10 != 0)
    {
      v14 = *MEMORY[0x1E695E480];
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
      CFDataSetLength(Mutable, v23[1] + v23[2] + v23[0]);
      if (!Mutable)
      {
        SecError(-108, *(a1 + 48), @"failed to create data");
        return;
      }

      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      memcpy(MutableBytePtr, v8, v23[2]);
      memcpy(&MutableBytePtr[v23[2]], v9, v23[1]);
      memcpy(&MutableBytePtr[v23[2] + v23[1]], v12, v23[0]);
      v17 = ccecies_decrypt_gcm_plaintext_size();
      v26 = v17;
      v18 = CFDataCreateMutable(v14, 0);
      CFDataSetLength(v18, v17);
      v22 = CFDataGetMutableBytePtr(v18);
      v19 = ccecies_decrypt_gcm();
      if (v19)
      {
        SecError(-909, *(a1 + 48), @"ccecies_decrypt_gcm failed %d", v19, v22);
        if (!v18)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v20 = *(*(a1 + 32) + 8);
        v21 = *(v20 + 24);
        if (v21 != v18)
        {
          if (!v18 || (CFRetain(v18), (v21 = *(v20 + 24)) != 0))
          {
            CFRelease(v21);
          }

          *(v20 + 24) = v18;
        }

        if (!v18)
        {
          goto LABEL_18;
        }
      }

      CFRelease(v18);
LABEL_18:
      CFRelease(Mutable);
    }
  }
}

uint64_t SecCopyEncryptedToServer(__SecTrust *a1, uint64_t a2, __CFString **a3)
{
  v5 = SecTrustCopyKey(a1);
  if (v5)
  {
    v6 = v5;
    v7 = SecCopyEncryptedToServerKey(v5, a2, a3);
    CFRelease(v6);
    return v7;
  }

  else
  {
    SecError(-25308, a3, @"Failed to get key out of trust ref, was it evaluated?");
    return 0;
  }
}

uint64_t __SecAddSharedWebCredentialSync_block_invoke(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  SecSecurityClientGet();
  v5 = cftype_to_BOOL_cftype_error_request(0x1Eu, v4, &cf, a2);
  v6 = *(*(*(a1 + 32) + 8) + 24);
  if (v6)
  {
    CFRelease(v6);
  }

  if ((v5 & 1) == 0 && !*a2)
  {
    SecError(-26276, a2, @"Internal error (XPC failure)");
  }

  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (v7)
  {
    if (a2)
    {
      v8 = *a2;
    }

    else
    {
      v8 = 0;
    }

    *v7 = v8;
    v10 = **(*(*(a1 + 40) + 8) + 24);
    if (v10)
    {
      CFRetain(v10);
    }
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      *a2 = 0;
      CFRelease(v9);
    }
  }

  v11 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v11);
  }

  return v5;
}

void SecAddSharedWebCredential(CFStringRef fqdn, CFStringRef account, CFStringRef password, void *completionHandler)
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  global_queue = dispatch_get_global_queue(0, 0);
  if (!fqdn)
  {
    goto LABEL_12;
  }

  v8 = CFGetTypeID(fqdn);
  if (v8 != CFStringGetTypeID())
  {
    goto LABEL_12;
  }

  Length = CFStringGetLength(fqdn);
  v10 = @"fqdn or account was not of type CFString, or not provided";
  if (!account || !Length)
  {
    goto LABEL_13;
  }

  v11 = CFGetTypeID(account);
  if (v11 != CFStringGetTypeID() || !CFStringGetLength(account))
  {
LABEL_12:
    v10 = @"fqdn or account was not of type CFString, or not provided";
LABEL_13:
    SecError(-50, v25 + 3, @"%@", v10);
    v14 = v21[3];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 0x40000000;
    v19[2] = __SecAddSharedWebCredential_block_invoke;
    v19[3] = &unk_1E70E2260;
    v19[4] = completionHandler;
    v19[5] = &v24;
    dispatch_async(v14, v19);
    goto LABEL_14;
  }

  if (password)
  {
    v12 = CFGetTypeID(password);
    if (v12 != CFStringGetTypeID())
    {
      v10 = @"non-nil password was not of type CFString";
      goto LABEL_13;
    }
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  CFRetain(fqdn);
  v18[3] = fqdn;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2000000000;
  CFRetain(account);
  v17[3] = account;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  if (password)
  {
    CFRetain(password);
  }

  v16[3] = password;
  v13 = v21[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecAddSharedWebCredential_block_invoke_2;
  block[3] = &unk_1E70E22B0;
  block[6] = v17;
  block[7] = v16;
  block[8] = &v24;
  block[9] = &v20;
  block[4] = completionHandler;
  block[5] = v18;
  dispatch_async(v13, block);
  _Block_object_dispose(v16, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v18, 8);
LABEL_14:
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __SecAddSharedWebCredential_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(*(a1 + 40) + 8) + 24));
  }

  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

void __SecAddSharedWebCredential_block_invoke_2(void *a1)
{
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(*(a1[6] + 8) + 24);
  v4 = *(*(a1[7] + 8) + 24);
  v5 = *(a1[8] + 8) + 24;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2000000000;
  v21[3] = v5;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v2)
  {
    CFDictionaryAddValue(v18[3], @"srvr", v2);
  }

  if (v3)
  {
    CFDictionaryAddValue(v18[3], @"acct", v3);
  }

  if (v4)
  {
    CFDictionaryAddValue(v18[3], @"spwd", v4);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 0x40000000;
  v16[2] = __SecAddSharedWebCredentialSync_block_invoke;
  v16[3] = &unk_1E70E2238;
  v16[4] = &v17;
  v16[5] = v21;
  v6 = SecOSStatusWith(v16);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(v21, 8);
  v7 = *(*(a1[5] + 8) + 24);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(*(a1[6] + 8) + 24);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(*(a1[7] + 8) + 24);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[8];
  if (v6)
  {
    v11 = *(v10 + 8);
    v13 = *(v11 + 24);
    v12 = (v11 + 24);
    if (!v13)
    {
      SecError(v6, v12, @"Error adding shared password");
      v10 = a1[8];
    }
  }

  v14 = *(*(a1[9] + 8) + 24);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = __SecAddSharedWebCredential_block_invoke_3;
  v15[3] = &unk_1E70E2288;
  v15[4] = a1[4];
  v15[5] = v10;
  dispatch_async(v14, v15);
}

void __SecAddSharedWebCredential_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(*(a1 + 40) + 8) + 24));
  }

  v3 = *(*(*(a1 + 40) + 8) + 24);
  if (v3)
  {

    CFRelease(v3);
  }
}

void SecRequestSharedWebCredential(CFStringRef fqdn, CFStringRef account, void *completionHandler)
{
  v42 = 0;
  v43 = &v42;
  v44 = 0x2000000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2000000000;
  global_queue = dispatch_get_global_queue(0, 0);
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2000000000;
  v37[3] = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  if (fqdn)
  {
    CFRetain(fqdn);
  }

  v36 = fqdn;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  if (account)
  {
    CFRetain(account);
  }

  v32 = account;
  if (fqdn)
  {
    v6 = CFGetTypeID(fqdn);
    if (v6 != CFStringGetTypeID() || !CFStringGetLength(fqdn))
    {
LABEL_31:
      v24 = @"fqdn was empty or not a CFString";
      goto LABEL_33;
    }
  }

  else
  {
    v7 = SecTaskCreateFromSelf(0);
    if (v7)
    {
      v8 = v7;
      v9 = SecTaskCopyValueForEntitlement(v7, @"com.apple.developer.associated-domains", 0);
      if (v9)
      {
        v10 = v9;
        Count = CFArrayGetCount(v9);
        v12 = Count - 1;
        if (Count >= 1)
        {
          v13 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
            if ([ValueAtIndex hasPrefix:@"webcredentials:"])
            {
              v15 = [ValueAtIndex substringFromIndex:{objc_msgSend(@"webcredentials:", "length")}];
              if ([v15 length])
              {
                v16 = v15;
              }

              else
              {
                v16 = 0;
              }
            }

            else
            {
              v16 = 0;
            }

            v34[3] = v16;
            if (v16)
            {
              break;
            }
          }

          while (v12 != v13++);
        }

        CFRelease(v10);
      }

      CFRelease(v8);
    }
  }

  v18 = v34[3];
  if (!v18)
  {
    v24 = @"fqdn was NULL, and no associated domains found";
    goto LABEL_33;
  }

  v19 = CFGetTypeID(v18);
  if (v19 != CFStringGetTypeID() || !CFStringGetLength(v34[3]))
  {
    goto LABEL_31;
  }

  v20 = v30[3];
  if (!v20 || (v21 = CFGetTypeID(v20), v21 == CFStringGetTypeID()) && CFStringGetLength(v30[3]))
  {
    v22 = v39[3];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 0x40000000;
    v27[2] = __SecRequestSharedWebCredential_block_invoke_2;
    v27[3] = &unk_1E70E2328;
    v27[6] = &v29;
    v27[7] = v37;
    v27[8] = &v42;
    v27[9] = &v38;
    v27[4] = completionHandler;
    v27[5] = &v33;
    v23 = v27;
    goto LABEL_38;
  }

  v24 = @"account was empty or not a CFString";
LABEL_33:
  v25 = v34[3];
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = v30[3];
  if (v26)
  {
    CFRelease(v26);
  }

  SecError(-50, v43 + 3, @"%@", v24);
  v22 = v39[3];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecRequestSharedWebCredential_block_invoke;
  block[3] = &unk_1E70E22D8;
  block[4] = completionHandler;
  block[5] = v37;
  block[6] = &v42;
  v23 = block;
LABEL_38:
  dispatch_async(v22, v23);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
}

void __SecRequestSharedWebCredential_block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24));
  }

  v3 = *(*(a1[6] + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(*(a1[5] + 8) + 24);
  if (v4)
  {

    CFRelease(v4);
  }
}

void __SecRequestSharedWebCredential_block_invoke_2(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1[5] + 8) + 24);
  v3 = *(a1[7] + 8);
  v4 = *(a1[8] + 8);
  v5 = objc_alloc_init(SharedCredentialController);
  v6 = [(SharedCredentialController *)v5 passwordCredential];
  v7 = [(SharedCredentialController *)v5 result];
  if (v7)
  {
    v8 = v7;
    v9 = secLogObjForScope("swcagent");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_debug_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEBUG, "SecCopySharedWebCredentialSync received result %d", buf, 8u);
    }

    *(v4 + 24) = [(SharedCredentialController *)v5 error];
LABEL_5:
    v10 = MEMORY[0x1E695E0F0];
    goto LABEL_8;
  }

  if (!v6)
  {
    v24 = secLogObjForScope("swcagent");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEBUG, "SecCopySharedWebCredentialSync found no credential", buf, 2u);
    }

    v8 = -25300;
    goto LABEL_5;
  }

  *buf = v2;
  v27[0] = @"srvr";
  v27[1] = @"acct";
  v11 = [v6 user];
  v29 = v11;
  v27[2] = @"spwd";
  v12 = [v6 password];
  v30 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v27 count:3];

  v26 = v13;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];

  v8 = 0;
LABEL_8:
  v14 = v10;
  *(v3 + 24) = v14;

  v15 = *(*(a1[5] + 8) + 24);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(*(a1[6] + 8) + 24);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = a1[8];
  if (v8)
  {
    v18 = *(v17 + 8);
    v20 = *(v18 + 24);
    v19 = (v18 + 24);
    if (!v20)
    {
      SecError(v8, v19, @"Error copying shared password");
      v17 = a1[8];
    }
  }

  v21 = *(*(a1[9] + 8) + 24);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecRequestSharedWebCredential_block_invoke_3;
  block[3] = &unk_1E70E2300;
  v22 = a1[7];
  block[4] = a1[4];
  block[5] = v22;
  block[6] = v17;
  dispatch_async(v21, block);
  v23 = *MEMORY[0x1E69E9840];
}

void __SecRequestSharedWebCredential_block_invoke_3(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    (*(v2 + 16))(v2, *(*(a1[5] + 8) + 24), *(*(a1[6] + 8) + 24));
  }

  v3 = *(*(a1[6] + 8) + 24);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(*(a1[5] + 8) + 24);
  if (v4)
  {

    CFRelease(v4);
  }
}

CFStringRef SecCreateSharedWebCredentialPassword(void)
{
  v15 = 0;
  v0 = CFCharacterSetCreateWithCharactersInString(0, @"abcdefghkmnopqrstuvwxyz");
  v1 = CFCharacterSetCreateWithCharactersInString(0, @"ABCDEFGHJKLMNPQRSTUVWXYZ");
  v2 = CFCharacterSetCreateWithCharactersInString(0, @"3456789");
  v13 = 4;
  valuePtr = 3;
  v12 = 12;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v4 = CFNumberCreate(0, kCFNumberIntType, &v13);
  v5 = CFNumberCreate(0, kCFNumberIntType, &v12);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, v0);
  CFArrayAppendValue(Mutable, v1);
  CFArrayAppendValue(Mutable, v2);
  v7 = CFDictionaryCreateMutable(0, 0, 0, 0);
  CFDictionaryAddValue(v7, kSecPasswordAllowedCharactersKey, @"abcdefghkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789");
  CFDictionaryAddValue(v7, kSecPasswordRequiredCharactersKey, Mutable);
  CFDictionaryAddValue(v7, kSecPasswordGroupSize, v3);
  CFDictionaryAddValue(v7, kSecPasswordNumberOfGroups, v4);
  CFDictionaryAddValue(v7, kSecPasswordSeparator, @"-");
  CFDictionaryAddValue(v7, kSecPasswordMaxLengthKey, v5);
  CFDictionaryAddValue(v7, kSecPasswordMinLengthKey, v5);
  CFDictionaryAddValue(v7, kSecPasswordDefaultForType, @"false");
  CFRelease(v0);
  CFRelease(v1);
  CFRelease(v2);
  CFRelease(v3);
  CFRelease(v4);
  CFRelease(v5);
  v8 = SecPasswordGenerate(0, &v15, v7);
  CFRelease(Mutable);
  CFRelease(v7);
  if (v15 || !v8)
  {
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "SecPasswordGenerate failed to generate a password for SecCreateSharedWebCredentialPassword.", v11, 2u);
    }

    return 0;
  }

  return v8;
}

uint64_t SecMLDSAPublicKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, const void *a6, const void *a7, __CFString **a8)
{
  if (a2 != 1 || !CFEqual(cf1, @"algid:sign:ML-DSA:message"))
  {
    goto LABEL_10;
  }

  if (a5 == 1)
  {
LABEL_12:
    v18 = MEMORY[0x1E695E4D0];
    return *v18;
  }

  if (a5)
  {
LABEL_10:
    v18 = MEMORY[0x1E695E738];
    return *v18;
  }

  v13 = CFGetTypeID(a6);
  if (v13 != CFDataGetTypeID() || (v14 = CFGetTypeID(a7), v14 != CFDataGetTypeID()))
  {
    SecError(-67808, a8, @"ML-DSA signature verification failed (invalid data inputs)");
    return 0;
  }

  Length = CFDataGetLength(a7);
  CFDataGetBytePtr(a7);
  CFDataGetLength(a6);
  CFDataGetBytePtr(a6);
  v16 = *(a1 + 24);
  if (Length != ccmldsa_signature_nbytes_ctx())
  {
    SecError(-67808, a8, @"ML-DSA signature verification failed (invalid signature length)");
    return 0;
  }

  v17 = ccmldsa_verify();
  if (!v17)
  {
    goto LABEL_12;
  }

  SecError(-67808, a8, @"Signature verification failed, err=%d for key %@", v17, a1);
  return 0;
}

__CFData *SecMLDSAPublicKeyCopyData(uint64_t a1, __CFString **a2)
{
  v3 = *MEMORY[0x1E695E480];
  v4 = ccmldsa_pubkey_nbytes_ctx();
  Mutable = CFDataCreateMutable(v3, 0);
  CFDataSetLength(Mutable, v4);
  [(__CFData *)Mutable length];
  [(__CFData *)Mutable mutableBytes];
  if (ccmldsa_export_pubkey())
  {
    SecError(-26275, a2, @"Failed to export ML-DSA pubkey");
    v6 = 0;
  }

  else
  {
    v6 = Mutable;
  }

  return v6;
}

uint64_t SecMLDSAPublicKeyCopyPublicOctets(uint64_t a1, __CFData **a2)
{
  v3 = SecMLDSAPublicKeyCopyData(*(a1 + 24), 0);
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

uint64_t SecMLDSAPublicKeyCopyKeyDescription(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = ccmldsa_pubkey_nbytes_ctx();
  v4 = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v3];
  v5 = *MEMORY[0x1E695E480];
  v6 = ccmldsa_pubkey_nbytes_ctx();
  Mutable = CFDataCreateMutable(v5, 0);
  CFDataSetLength(Mutable, v6);
  [(__CFData *)Mutable length];
  [(__CFData *)Mutable mutableBytes];
  if (ccmldsa_export_pubkey())
  {
    v8 = 1;
  }

  else
  {
    v8 = v3 == 0;
  }

  if (!v8)
  {
    v9 = 0;
    do
    {
      [v4 appendFormat:@"%02X", *(-[__CFData bytes](Mutable, "bytes") + v9++)];
    }

    while (v3 != v9);
  }

  v10 = ccmldsa_pubkey_nbytes_ctx();
  ccmldsa65();
  if (v10 == ccmldsa_pubkey_nbytes_params())
  {
    v11 = @"ML-DSA-65-pubKey";
  }

  else
  {
    v12 = ccmldsa_pubkey_nbytes_ctx();
    ccmldsa87();
    v13 = ccmldsa_pubkey_nbytes_params();
    v11 = @"ML-DSA";
    if (v12 == v13)
    {
      v11 = @"ML-DSA-87-pubKey";
    }
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SecKeyRef %@ algorithm id: %lu, key type: %s, version: %d, bytes: %@, addr: %p>", v11, 10, *(*(a1 + 16) + 8), **(a1 + 16), v4, a1];

  return v14;
}

uint64_t SecMLDSAPublicKeyCopyAttributeDictionary(uint64_t a1)
{
  v14[23] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24);
  v2 = ccmldsa_pubkey_nbytes_ctx();
  ccmldsa65();
  if (v2 == ccmldsa_pubkey_nbytes_params())
  {
    v3 = @"65";
LABEL_5:
    v5 = v3;
    goto LABEL_9;
  }

  v4 = ccmldsa_pubkey_nbytes_ctx();
  ccmldsa87();
  if (v4 == ccmldsa_pubkey_nbytes_params())
  {
    v3 = @"87";
    goto LABEL_5;
  }

  v6 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "unknown ML-DSA type detected", v12, 2u);
  }

  v3 = &unk_1EFAAC790;
LABEL_9:
  v7 = SecMLDSAPublicKeyCopyData(v1, 0);
  v8 = SecSHA1DigestCreate(*MEMORY[0x1E695E480], [(__CFData *)v7 bytes], [(__CFData *)v7 length]);
  v13[0] = @"class";
  v13[1] = @"type";
  v14[0] = @"keys";
  v14[1] = @"111";
  v13[2] = @"bsiz";
  v13[3] = @"esiz";
  v14[2] = v3;
  v14[3] = v3;
  v13[4] = @"kcls";
  v13[5] = @"klbl";
  v14[4] = @"0";
  v14[5] = v8;
  v13[6] = @"perm";
  v13[7] = @"priv";
  v14[6] = MEMORY[0x1E695E118];
  v14[7] = MEMORY[0x1E695E118];
  v13[8] = @"modi";
  v13[9] = @"sens";
  v14[8] = MEMORY[0x1E695E118];
  v14[9] = MEMORY[0x1E695E110];
  v13[10] = @"asen";
  v13[11] = @"extr";
  v14[10] = MEMORY[0x1E695E110];
  v14[11] = MEMORY[0x1E695E118];
  v13[12] = @"next";
  v13[13] = @"encr";
  v14[12] = MEMORY[0x1E695E110];
  v14[13] = MEMORY[0x1E695E110];
  v13[14] = @"decr";
  v13[15] = @"drve";
  v14[14] = MEMORY[0x1E695E110];
  v14[15] = MEMORY[0x1E695E110];
  v13[16] = @"sign";
  v13[17] = @"vrfy";
  v14[16] = MEMORY[0x1E695E110];
  v14[17] = MEMORY[0x1E695E118];
  v13[18] = @"snrc";
  v13[19] = @"vyrc";
  v14[18] = MEMORY[0x1E695E110];
  v14[19] = MEMORY[0x1E695E110];
  v13[20] = @"wrap";
  v13[21] = @"unwp";
  v14[20] = MEMORY[0x1E695E110];
  v14[21] = MEMORY[0x1E695E110];
  v13[22] = @"v_Data";
  v14[22] = v7;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:23];

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void SecMLDSAKeyPublicKeyDestroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *v1;
    ccmldsa_sizeof_pub_ctx();

    free(v1);
  }
}

uint64_t SecMLDSAPublicKeyInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    ccmldsa65();
    if (ccmldsa_pubkey_nbytes_params() == a3)
    {
      ccmldsa65();
    }

    else
    {
      ccmldsa87();
      if (ccmldsa_pubkey_nbytes_params() != a3)
      {
        v8 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 67109120;
          v14 = a3;
          v9 = "ML-DSA pubkey size=%dbytes is invalid";
          v10 = v8;
          v11 = 8;
          goto LABEL_13;
        }

LABEL_14:

        goto LABEL_15;
      }

      ccmldsa87();
    }

    v6 = ccmldsa_sizeof_pub_ctx();
    *(a1 + 24) = malloc_type_calloc(1uLL, v6, 0x57C77B92uLL);
    result = ccmldsa_import_pubkey();
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
        v9 = "ML-DSA pubkey size=%dbytes import failed: %d";
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

__CFData *SecMLDSAPrivateKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, void *a6, id a7, __CFString **a8)
{
  if (a2 || !CFEqual(cf1, @"algid:sign:ML-DSA:message"))
  {
    goto LABEL_2;
  }

  if (a5 == 1)
  {
    v8 = MEMORY[0x1E695E4D0];
    return *v8;
  }

  if (a5)
  {
LABEL_2:
    v8 = MEMORY[0x1E695E738];
    return *v8;
  }

  v16 = *(a1 + 24);
  v17 = a6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [a7 objectForKeyedSubscript:@"signatureContext"];
        if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          a7 = v18;
        }

        else
        {
          a7 = 0;
        }
      }

      else
      {
        a7 = 0;
      }
    }

    [v17 bytes];
    [v17 length];
    v19 = *v16;
    v20 = ccmldsa_signature_nbytes_params();
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    CFDataSetLength(Mutable, v20);
    [(__CFData *)Mutable mutableBytes];
    if (a7 && [a7 length])
    {
      [a7 bytes];
      [a7 length];
      ccrng();
      v22 = ccmldsa_sign_with_context();
    }

    else
    {
      ccrng();
      v22 = ccmldsa_sign();
    }

    if (v22)
    {
      SecError(-50, a8, @"Signing failed, err=%d", v22);
      v9 = 0;
    }

    else
    {
      v9 = Mutable;
    }
  }

  else
  {
    SecError(-50, a8, @"Expected input data of type NSData for signing operation");
    v9 = 0;
  }

  return v9;
}

__CFData *SecMLDSAPrivateKeyCopyExternalRepresentation(uint64_t a1, __CFString **a2)
{
  v4 = *(a1 + 24);
  ccmldsa_public_ctx();
  v5 = ccmldsa_pubkey_nbytes_ctx();
  ccmldsa_public_ctx();
  v6 = ccmldsa_privkey_nbytes_ctx();
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  CFDataSetLength(Mutable, v6 + v5);
  if (Mutable)
  {
    ccmldsa_public_ctx();
    [(__CFData *)Mutable mutableBytes];
    v8 = ccmldsa_export_pubkey();
    if (v8)
    {
      SecError(-26275, a2, @"Failed to export public part of %@, err=%d", a1, v8);
    }

    else
    {
      [(__CFData *)Mutable mutableBytes];
      v9 = ccmldsa_export_privkey();
      if (!v9)
      {
        v10 = Mutable;
        goto LABEL_10;
      }

      SecError(-26275, a2, @"Failed to export private part of %@, err=%d", a1, v9);
    }
  }

  else
  {
    SecError(-108, a2, @"Failed to allocate key data");
  }

  v10 = 0;
LABEL_10:

  return v10;
}

uint64_t SecMLDSAPrivateKeyCopyPublicOctets(uint64_t a1, __CFData **a2)
{
  v3 = *(a1 + 24);
  v4 = ccmldsa_public_ctx();
  v5 = SecMLDSAPublicKeyCopyData(v4, 0);
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

uint64_t SecMLDSAPrivateKeyCopyKeyDescription(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = ccmldsa_privkey_nbytes_ctx();
  ccmldsa65();
  if (v3 == ccmldsa_privkey_nbytes_params())
  {
    v4 = @"ML-DSA-65-privKey";
  }

  else
  {
    v5 = ccmldsa_privkey_nbytes_ctx();
    ccmldsa87();
    v6 = ccmldsa_privkey_nbytes_params();
    v4 = @"ML-DSA";
    if (v5 == v6)
    {
      v4 = @"ML-DSA-87-privKey";
    }
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"<SecKeyRef %@ algorithm id: %lu, key type: %s, version: %d, addr: %p>", v4, 10, *(*(a1 + 16) + 8), **(a1 + 16), a1];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t SecMLDSAPrivateKeyCopyAttributeDictionary(uint64_t a1)
{
  v22[23] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 24);
  v3 = ccmldsa_privkey_nbytes_ctx();
  ccmldsa65();
  if (v3 == ccmldsa_privkey_nbytes_params())
  {
    v4 = @"65";
LABEL_5:
    v6 = v4;
    goto LABEL_9;
  }

  v5 = ccmldsa_privkey_nbytes_ctx();
  ccmldsa87();
  if (v5 == ccmldsa_privkey_nbytes_params())
  {
    v4 = @"87";
    goto LABEL_5;
  }

  v7 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Unknown ML-DSA type detected", v20, 2u);
  }

  v4 = &unk_1EFAAC790;
LABEL_9:
  v8 = *(a1 + 24);
  v9 = ccmldsa_public_ctx();
  v10 = SecMLDSAPublicKeyCopyData(v9, 0);
  if (v10)
  {
    v11 = v10;
    v12 = SecSHA1DigestCreate(*MEMORY[0x1E695E480], [(__CFData *)v10 bytes], [(__CFData *)v10 length]);
  }

  else
  {
    v12 = 0;
  }

  v13 = SecMLDSAPrivateKeyCopyExternalRepresentation(a1, 0);
  v21[0] = @"class";
  v21[1] = @"type";
  v22[0] = @"keys";
  v22[1] = @"111";
  v21[2] = @"bsiz";
  v21[3] = @"esiz";
  v22[3] = v4;
  v22[4] = @"1";
  v21[4] = @"kcls";
  v21[5] = @"klbl";
  v14 = v12;
  v22[2] = v4;
  if (!v12)
  {
    v14 = [MEMORY[0x1E695DEF0] data];
  }

  v15 = MEMORY[0x1E695E118];
  v22[5] = v14;
  v22[6] = MEMORY[0x1E695E118];
  v21[6] = @"perm";
  v21[7] = @"priv";
  v22[7] = MEMORY[0x1E695E118];
  v22[8] = MEMORY[0x1E695E118];
  v21[8] = @"modi";
  v21[9] = @"sens";
  v22[9] = MEMORY[0x1E695E110];
  v22[10] = MEMORY[0x1E695E110];
  v21[10] = @"asen";
  v21[11] = @"extr";
  v22[11] = MEMORY[0x1E695E118];
  v22[12] = MEMORY[0x1E695E110];
  v21[12] = @"next";
  v21[13] = @"encr";
  v22[13] = MEMORY[0x1E695E110];
  v22[14] = MEMORY[0x1E695E110];
  v21[14] = @"decr";
  v21[15] = @"drve";
  if (!v13)
  {
    v15 = MEMORY[0x1E695E110];
  }

  v22[15] = MEMORY[0x1E695E110];
  v22[16] = v15;
  v21[16] = @"sign";
  v21[17] = @"vrfy";
  v22[17] = MEMORY[0x1E695E110];
  v22[18] = MEMORY[0x1E695E110];
  v21[18] = @"snrc";
  v21[19] = @"vyrc";
  v22[19] = MEMORY[0x1E695E110];
  v22[20] = MEMORY[0x1E695E110];
  v21[20] = @"wrap";
  v21[21] = @"unwp";
  v22[21] = MEMORY[0x1E695E110];
  v16 = v13;
  v21[22] = @"v_Data";
  if (!v13)
  {
    v16 = [MEMORY[0x1E695DF88] data];
  }

  v22[22] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:23];
  if (!v13)
  {
  }

  if (!v12)
  {
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

uint64_t SecMLDSAPrivateKeyBlockSize(uint64_t a1)
{
  v1 = *(a1 + 24);
  ccmldsa_public_ctx();

  return ccmldsa_privkey_nbytes_ctx();
}

void SecMLDSAPrivateKeyDestroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *v1;
    ccmldsa_sizeof_full_ctx();

    free(v1);
  }
}

uint64_t SecMLDSAPrivateKeyInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    ccmldsa65();
    v5 = ccmldsa_pubkey_nbytes_params();
    ccmldsa65();
    if (ccmldsa_privkey_nbytes_params() + v5 == a3)
    {
      ccmldsa65();
    }

    else
    {
      ccmldsa87();
      v7 = ccmldsa_pubkey_nbytes_params();
      ccmldsa87();
      if (ccmldsa_privkey_nbytes_params() + v7 != a3)
      {
        v11 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 67109120;
          v18 = a3;
          v12 = "ML-DSA priv size=%dbytes is invalid";
          v14 = v11;
          v15 = 8;
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      ccmldsa87();
    }

    v8 = ccmldsa_sizeof_full_ctx();
    *(a1 + 24) = malloc_type_calloc(1uLL, v8, 0xB1AEBED6uLL);
    ccmldsa_pubkey_nbytes_params();
    v9 = ccmldsa_import_privkey();
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
        v12 = "ML-DSA privkey size=%dbytes import of priv part failed: %d";
LABEL_14:
        v14 = v11;
        v15 = 14;
LABEL_17:
        _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, v12, &v17, v15);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    ccmldsa_public_ctx();
    result = ccmldsa_import_pubkey();
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
        v12 = "ML-DSA privkey size=%dbytes import of pub part failed: %d";
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

uint64_t SecMLDSAKeyGeneratePair(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  ccmldsa65();
  v6 = [a1 objectForKeyedSubscript:@"bsiz"];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
    if (v8 == [@"65" integerValue])
    {
      ccmldsa65();
    }

    else
    {
      v9 = [v7 integerValue];
      if (v9 != [@"87" integerValue])
      {
        v24 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138412290;
          v28 = v7;
          _os_log_impl(&dword_1887D2000, v24, OS_LOG_TYPE_DEFAULT, "Invalid ML-DSA type %@ requested for ML-DSA key generation", &v27, 0xCu);
        }

        goto LABEL_23;
      }

      ccmldsa87();
    }
  }

  v10 = ccmldsa_sizeof_full_ctx();
  v11 = malloc_type_calloc(1uLL, v10, 0xBEA916F0uLL);
  if (!v11)
  {
    v16 = 4294967188;
    goto LABEL_26;
  }

  v12 = v11;
  ccmldsa_full_ctx_init();
  ccrng();
  key = ccmldsa_generate_key();
  if (key)
  {
    v14 = key;
    free(v12);
    v15 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 67109120;
      LODWORD(v28) = v14;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "Failed to generate ML-DSA key: err %d", &v27, 8u);
    }

    v16 = 4294941021;
    goto LABEL_26;
  }

  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v17 = SecKeyCreate(SecCFAllocatorZeroize_sAllocator, &kSecMLDSAPrivateKeyDescriptor, v12, 0, 0);
  if (!v17)
  {
LABEL_23:
    v16 = 4294967246;
    goto LABEL_26;
  }

  v18 = v17;
  v19 = ccmldsa_sizeof_pub_ctx();
  v20 = malloc_type_calloc(1uLL, v19, 0xB13371BBuLL);
  v21 = ccmldsa_public_ctx();
  v22 = ccmldsa_sizeof_pub_ctx();
  memcpy(v20, v21, v22);
  v23 = SecKeyCreate(*MEMORY[0x1E695E480], &kSecMLDSAPublicKeyDescriptor, v20, 0, 0);
  if (v23)
  {
    if (a2)
    {
      *a2 = v23;
      v23 = 0;
    }

    v16 = 0;
    if (a3)
    {
      *a3 = v18;
      v18 = 0;
    }
  }

  else
  {
    v16 = 4294967246;
  }

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return v16;
}

__CFData *SecRecreateSignatureWithDERAlgorithmId(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  Mutable = 0;
  v21 = *MEMORY[0x1E69E9840];
  if (a1 && a2)
  {
    if (SecKeyGetAlgorithmId(a1) == 3)
    {
      v7 = MEMORY[0x18CFD9EA0]();
      v8 = *v7;
      v9 = 8 * *v7;
      MEMORY[0x1EEE9AC00](v7);
      v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
      if (v8)
      {
        v11 = memset(&v19 - v10, 170, v9);
        MEMORY[0x1EEE9AC00](v11);
        memset(&v19 - v10, 170, v9);
      }

      v20 = a3 + a4;
      ccder_decode_sequence_tl();
      mp_decode_forced_uint();
      v12 = mp_decode_forced_uint();
      if (v12)
      {
        v13 = v20 == v12;
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        goto LABEL_17;
      }

      ccder_sizeof_integer();
      ccder_sizeof_integer();
      v14 = ccder_sizeof();
      if (v14 < a4 || v14 > a4 + 5)
      {
        goto LABEL_17;
      }

      v18 = v14;
      Mutable = CFDataCreateMutable(0, v14);
      CFDataSetLength(Mutable, v18);
      CFDataGetMutableBytePtr(Mutable);
      ccder_encode_integer();
      ccder_encode_integer();
      if (!ccder_encode_constructed_tl() && Mutable)
      {
        CFRelease(Mutable);
LABEL_17:
        Mutable = 0;
      }
    }

    else
    {
      Mutable = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t SecTrustCopyInputCertificates(uint64_t a1, void *a2)
{
  v2 = 4294967246;
  if (a1 && a2)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v4 = *(a1 + 136);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __SecTrustCopyInputCertificates_block_invoke;
    v7[3] = &unk_1E70E2570;
    v7[4] = &v8;
    v7[5] = a1;
    dispatch_sync(v4, v7);
    v5 = v9[3];
    if (v5)
    {
      v2 = 0;
      *a2 = v5;
    }

    else
    {
      v2 = 4294967188;
    }

    _Block_object_dispose(&v8, 8);
  }

  return v2;
}

CFArrayRef __SecTrustCopyInputCertificates_block_invoke(uint64_t a1)
{
  result = CFArrayCreateCopy(0, *(*(a1 + 40) + 16));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t SecTrustAddToInputCertificates(uint64_t a1, const void *a2)
{
  v2 = 4294967246;
  if (a1 && a2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v5 = *(a1 + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustAddToInputCertificates_block_invoke;
    block[3] = &unk_1E70E2598;
    block[4] = &v18;
    block[5] = a1;
    dispatch_sync(v5, block);
    v6 = CFGetTypeID(a2);
    if (v6 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v19[3]);
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = __SecTrustAddToInputCertificates_block_invoke_2;
      context[3] = &unk_1E70E25C0;
      context[4] = &v18;
      v27.length = CFArrayGetCount(a2);
      v27.location = 0;
      CFArrayApplyFunction(a2, v27, apply_block_1_14599, context);
      v8 = CFArrayGetCount(v19[3]);
      if (v8 != CFArrayGetCount(a2) + Count)
      {
LABEL_11:
        v13 = v19[3];
        if (v13)
        {
          v19[3] = 0;
          CFRelease(v13);
        }

        v2 = 4294967246;
        goto LABEL_14;
      }
    }

    else
    {
      v9 = CFGetTypeID(a2);
      if (v9 != SecCertificateGetTypeID())
      {
        v12 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, "BUG IN SECURITY CLIENT: certificates contains unsupported value type", buf, 2u);
        }

        goto LABEL_11;
      }

      CFArrayAppendValue(v19[3], a2);
    }

    v10 = *(a1 + 136);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __SecTrustAddToInputCertificates_block_invoke_78;
    v15[3] = &unk_1E70E25E8;
    v15[4] = &v18;
    v15[5] = a1;
    dispatch_sync(v10, v15);
    v11 = *(a1 + 136);
    *buf = MEMORY[0x1E69E9820];
    v23 = 0x40000000;
    v24 = __SecTrustSetNeedsEvaluation_block_invoke;
    v25 = &__block_descriptor_tmp_80_14598;
    v26 = a1;
    dispatch_sync(v11, buf);
    v2 = 0;
LABEL_14:
    _Block_object_dispose(&v18, 8);
  }

  return v2;
}

CFMutableArrayRef __SecTrustAddToInputCertificates_block_invoke(uint64_t a1)
{
  result = CFArrayCreateMutableCopy(0, 0, *(*(a1 + 40) + 16));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __SecTrustAddToInputCertificates_block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == SecCertificateGetTypeID())
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);

    CFArrayAppendValue(v5, cf);
  }

  else
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "BUG IN SECURITY CLIENT: certificates array contains non-certificate value", v7, 2u);
    }
  }
}

void __SecTrustAddToInputCertificates_block_invoke_78(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  if (v3)
  {
    *(v2 + 16) = 0;
    CFRelease(v3);
    v2 = *(a1 + 40);
  }

  *(v2 + 16) = *(*(*(a1 + 32) + 8) + 24);
}

void SecTrustSetNeedsEvaluation(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 136);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustSetNeedsEvaluation_block_invoke;
    block[3] = &__block_descriptor_tmp_80_14598;
    block[4] = a1;
    dispatch_sync(v1, block);
  }
}

OSStatus SecTrustSetAnchorCertificatesOnly(SecTrustRef trust, Boolean anchorCertificatesOnly)
{
  if (!trust)
  {
    return -50;
  }

  v4 = *(trust + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecTrustSetNeedsEvaluation_block_invoke;
  block[3] = &__block_descriptor_tmp_80_14598;
  block[4] = trust;
  dispatch_sync(v4, block);
  v5 = *(trust + 17);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __SecTrustSetAnchorCertificatesOnly_block_invoke;
  v7[3] = &__block_descriptor_tmp_81_14604;
  v7[4] = trust;
  v8 = anchorCertificatesOnly;
  dispatch_sync(v5, v7);
  return 0;
}

OSStatus SecTrustCopyCustomAnchorCertificates(SecTrustRef trust, CFArrayRef *anchors)
{
  v2 = -50;
  if (trust && anchors)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v4 = *(trust + 17);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecTrustCopyCustomAnchorCertificates_block_invoke;
    v6[3] = &unk_1E70E2678;
    v6[4] = &v7;
    v6[5] = trust;
    dispatch_sync(v4, v6);
    *anchors = v8[3];
    _Block_object_dispose(&v7, 8);
    return 0;
  }

  return v2;
}

CFArrayRef __SecTrustCopyCustomAnchorCertificates_block_invoke(CFArrayRef result)
{
  v1 = *(*(result + 5) + 24);
  if (v1)
  {
    v2 = result;
    result = CFArrayCreateCopy(*MEMORY[0x1E695E480], v1);
    *(*(*(v2 + 4) + 8) + 24) = result;
  }

  return result;
}

uint64_t SecTrustResetSettings(uint64_t a1, CFTypeRef *a2)
{
  cf = 0;
  v4 = _os_activity_create(&dword_1887D2000, "SecTrustResetSettings", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  if (gTrustd && (v5 = *(gTrustd + 240)) != 0)
  {
    v6 = v5(a1, &cf);
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = __int_to_BOOL_error_request_block_invoke;
    v11[3] = &__block_descriptor_tmp_631;
    v12 = a1;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 0x40000000;
    v10[2] = __int_to_BOOL_error_request_block_invoke_2;
    v10[3] = &unk_1E70E3AA0;
    v10[4] = &v13;
    securityd_send_sync_and_do(0x82u, &cf, v11, v10);
    v6 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  os_release(v4);
  if (a2)
  {
    *a2 = cf;
  }

  else if (cf)
  {
    CFRelease(cf);
  }

  os_activity_scope_leave(&state);
  return v6 & 1;
}

OSStatus SecTrustSetSignedCertificateTimestamps(SecTrustRef trust, CFArrayRef sctArray)
{
  if (!trust)
  {
    return -50;
  }

  v4 = *(trust + 17);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecTrustSetNeedsEvaluation_block_invoke;
  block[3] = &__block_descriptor_tmp_80_14598;
  block[4] = trust;
  dispatch_sync(v4, block);
  v5 = *(trust + 17);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __SecTrustSetSignedCertificateTimestamps_block_invoke;
  v7[3] = &__block_descriptor_tmp_85_14614;
  v7[4] = trust;
  v7[5] = sctArray;
  dispatch_sync(v5, v7);
  return 0;
}

void __SecTrustSetSignedCertificateTimestamps_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 48);
  if (v3 != v1)
  {
    if (!v1 || (CFRetain(v1), (v3 = *(v2 + 48)) != 0))
    {
      CFRelease(v3);
    }

    *(v2 + 48) = v1;
  }
}

uint64_t SecTrustSetTrustedLogs(uint64_t a1, uint64_t a2)
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
  v7[2] = __SecTrustSetTrustedLogs_block_invoke;
  v7[3] = &__block_descriptor_tmp_86_14615;
  v7[4] = a1;
  v7[5] = a2;
  dispatch_sync(v5, v7);
  return 0;
}

void __SecTrustSetTrustedLogs_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 56);
  if (v3 != v1)
  {
    if (!v1 || (CFRetain(v1), (v3 = *(v2 + 56)) != 0))
    {
      CFRelease(v3);
    }

    *(v2 + 56) = v1;
  }
}

OSStatus SecTrustSetPolicies(SecTrustRef trust, CFTypeRef policies)
{
  values = policies;
  v2 = -50;
  if (trust && policies)
  {
    v5 = *(trust + 17);
    block = MEMORY[0x1E69E9820];
    p_block = 0x40000000;
    v26 = __SecTrustSetNeedsEvaluation_block_invoke;
    v27 = &__block_descriptor_tmp_80_14598;
    v28 = trust;
    dispatch_sync(v5, &block);
    block = 0;
    p_block = &block;
    v26 = 0x2000000000;
    v27 = 0;
    v6 = CFGetTypeID(policies);
    if (v6 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(policies);
      if (Count < 1)
      {
LABEL_21:
        v2 = -50;
        goto LABEL_22;
      }

      v8 = Count;
      Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
      *(p_block + 24) = Mutable;
      if (!Mutable)
      {
        v2 = -108;
        goto LABEL_22;
      }

      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(policies, i);
        if (ValueAtIndex && (v12 = ValueAtIndex, v13 = CFGetTypeID(ValueAtIndex), v13 == SecPolicyGetTypeID()))
        {
          CFArrayAppendValue(*(p_block + 24), v12);
        }

        else
        {
          v14 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "BUG IN SECURITY CLIENT: newPolicies array contains non-policy value", buf, 2u);
          }
        }
      }

      if (v8 != CFArrayGetCount(*(p_block + 24)))
      {
        v15 = *(p_block + 24);
        if (v15)
        {
          CFRelease(v15);
        }

        goto LABEL_21;
      }
    }

    else
    {
      v16 = CFGetTypeID(policies);
      if (v16 != SecPolicyGetTypeID())
      {
        v19 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "BUG IN SECURITY CLIENT: newPolicies contains unsupported value type", buf, 2u);
        }

        goto LABEL_21;
      }

      v17 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
      *(p_block + 24) = v17;
    }

    v18 = *(trust + 17);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = __SecTrustSetPolicies_block_invoke;
    v21[3] = &unk_1E70E2728;
    v21[4] = &block;
    v21[5] = trust;
    dispatch_sync(v18, v21);
    v2 = 0;
LABEL_22:
    _Block_object_dispose(&block, 8);
  }

  return v2;
}

void __SecTrustSetPolicies_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 32);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 40);
  }

  *(v2 + 32) = *(*(*(a1 + 32) + 8) + 24);
}

uint64_t SecTrustSetKeychainsAllowed(uint64_t a1, char a2)
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
  v7[2] = __SecTrustSetKeychainsAllowed_block_invoke;
  v7[3] = &__block_descriptor_tmp_92_14626;
  v7[4] = a1;
  v8 = a2;
  dispatch_sync(v5, v7);
  return 0;
}

uint64_t SecTrustGetKeychainsAllowed(uint64_t a1, _BYTE *a2)
{
  result = 4294967246;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 117);
    }
  }

  return result;
}

uint64_t SecTrustRemoveOptionInPolicies(const void *a1, const void *a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 != CFArrayGetTypeID())
    {
      return 4294941020;
    }

    for (i = 0; ; ++i)
    {
      if (CFArrayGetCount(a1) <= i)
      {
        return 0;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      if (!ValueAtIndex)
      {
        return 4294941020;
      }

      v7 = ValueAtIndex;
      if (CFDictionaryGetValue(ValueAtIndex[4], a2))
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7[4]);
        if (!MutableCopy)
        {
          return 4294967188;
        }

        v9 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, a2);
        v10 = v7[4];
        if (v10)
        {
          v7[4] = 0;
          CFRelease(v10);
        }

        v7[4] = v9;
      }
    }
  }

  return 4294941020;
}

OSStatus SecTrustGetNetworkFetchAllowed(SecTrustRef trust, Boolean *allowFetch)
{
  v2 = -50;
  if (trust && allowFetch)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v4 = *(trust + 17);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecTrustGetNetworkFetchAllowed_block_invoke;
    block[3] = &unk_1E70E2808;
    block[4] = &v11;
    block[5] = trust;
    dispatch_sync(v4, block);
    v5 = v12;
    v6 = v12[3];
    if (v6)
    {
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 0x40000000;
      context[2] = __SecTrustGetNetworkFetchAllowed_block_invoke_2;
      context[3] = &__block_descriptor_tmp_97_14632;
      context[4] = allowFetch;
      v15.length = CFArrayGetCount(v6);
      v15.location = 0;
      CFArrayApplyFunction(v6, v15, apply_block_1_14599, context);
      v5 = v12;
    }

    else
    {
      *allowFetch = 1;
    }

    v7 = v5[3];
    if (v7)
    {
      v5[3] = 0;
      CFRelease(v7);
    }

    _Block_object_dispose(&v11, 8);
    return 0;
  }

  return v2;
}

uint64_t __SecTrustGetNetworkFetchAllowed_block_invoke_2(uint64_t result, CFTypeRef cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = CFBooleanGetTypeID();
    if (v4 == result)
    {
      result = CFBooleanGetValue(cf);
      **(v3 + 32) = result == 0;
    }
  }

  return result;
}

uint64_t SecTrustSetPinningException(uint64_t a1)
{
  if (!a1)
  {
    return 4294967246;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(a1 + 136);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecTrustSetPinningException_block_invoke;
  v4[3] = &unk_1E70E2858;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}