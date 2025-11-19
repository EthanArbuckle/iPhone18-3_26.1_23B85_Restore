@interface SOSmartcard
+ (BOOL)pollSmartcardForIdentityWithPersistentRef:(id)a3 tokenID:(id)a4;
+ (__SecIdentity)getLocalAuthIdentityForCert:(id)a3 withLAContext:(id)a4;
+ (id)availableSmartCards;
+ (id)searchForCachedIdentityPersistentRef:(id)a3 tokenID:(id)a4;
+ (id)searchForCachedIdentityWithSerial:(__CFData *)a3 withIssuer:(__CFData *)a4 withTokenID:(id)a5;
+ (int)getIdentityForPersistentRef:(__CFData *)a3 identityToReturn:(__SecIdentity *)a4;
+ (void)availableSmartCards;
@end

@implementation SOSmartcard

+ (__SecIdentity)getLocalAuthIdentityForCert:(id)a3 withLAContext:(id)a4
{
  v47[1] = *MEMORY[0x277D85DE8];
  v37 = a3;
  v36 = a4;
  result = 0;
  v6 = SO_LOG_SOSmartcard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v42 = 2112;
    *v43 = a1;
    _os_log_impl(&dword_24006C000, v6, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v7 = 0;
  v8 = 0;
  v9 = *MEMORY[0x277CDBEC0];
  v33 = *MEMORY[0x277CDC5F0];
  v35 = *MEMORY[0x277CDC5A0];
  v34 = *MEMORY[0x277CDC568];
  while (1)
  {
    v10 = v7;
    v11 = [MEMORY[0x277CCABB0] numberWithInt:2];
    v46 = v11;
    v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.AppSSOKerberos"];
    v13 = [v12 localizedStringForKey:@"SIGN_IN_LOWERCASE_TEXT" value:&stru_285206D08 table:0];
    v47[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];

    v15 = [v37 objectForKeyedSubscript:v9];
    v38 = v10;
    v16 = [v36 evaluateAccessControl:v15 operation:3 options:v14 error:&v38];
    v7 = v38;

    v17 = SO_LOG_SOSmartcard();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      v19 = a1;
      if (v18)
      {
        *buf = 136315394;
        v41 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
        v42 = 2112;
        *v43 = a1;
        _os_log_impl(&dword_24006C000, v17, OS_LOG_TYPE_DEFAULT, "%s evaluateAccessControl was successful on %@", buf, 0x16u);
      }

      v44[0] = v33;
      v25 = [v37 objectForKeyedSubscript:?];
      v45[0] = v25;
      v45[1] = v36;
      v44[1] = v35;
      v44[2] = v34;
      v45[2] = MEMORY[0x277CBEC38];
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];

      v26 = SecItemCopyMatching(v23, &result);
      if (v26)
      {
        v27 = v26;
        v28 = SO_LOG_SOSmartcard();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v41 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
          v42 = 1024;
          *v43 = v27;
          *&v43[4] = 2112;
          *&v43[6] = a1;
          _os_log_impl(&dword_24006C000, v28, OS_LOG_TYPE_DEFAULT, "%s retrieving identity failed with error %d on %@", buf, 0x1Cu);
        }
      }

      goto LABEL_28;
    }

    v19 = a1;
    if (v18)
    {
      v20 = [v7 code];
      *buf = 136315650;
      v41 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
      v42 = 2048;
      *v43 = v20;
      *&v43[8] = 2112;
      *&v43[10] = a1;
      _os_log_impl(&dword_24006C000, v17, OS_LOG_TYPE_DEFAULT, "%s evaluateAccessControl failed with error %ld on %@", buf, 0x20u);
    }

    v21 = [v7 code];
    if (v21 != -1004)
    {
      break;
    }

    v22 = SO_LOG_SOSmartcard();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v41 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
      v42 = 1026;
      *v43 = v8 + 1;
      *&v43[4] = 2112;
      *&v43[6] = a1;
      _os_log_impl(&dword_24006C000, v22, OS_LOG_TYPE_DEFAULT, "%s Screen may be locked, retry %{public}d on %@", buf, 0x1Cu);
    }

    if (v8 >= 4)
    {
      goto LABEL_29;
    }

    [MEMORY[0x277CCACC8] sleepForTimeInterval:2.0];

    ++v8;
  }

  if (v21 == -7 || v21 == -3)
  {
    v23 = SO_LOG_SOSmartcard();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v41 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v42 = 2112;
    *v43 = a1;
    v24 = "%s Problem reading the SmartCard on %@";
  }

  else if (v21 == -4)
  {
    v23 = SO_LOG_SOSmartcard();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v41 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v42 = 2112;
    *v43 = a1;
    v24 = "%s User cancelled PIN prompt on %@";
  }

  else
  {
    v23 = SO_LOG_SOSmartcard();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    *buf = 136315394;
    v41 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v42 = 2112;
    *v43 = a1;
    v24 = "%s Some other problem occurred on %@";
  }

  _os_log_impl(&dword_24006C000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 0x16u);
LABEL_28:

LABEL_29:
  v29 = SO_LOG_SOSmartcard();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v41 = "+[SOSmartcard getLocalAuthIdentityForCert:withLAContext:]";
    v42 = 2112;
    *v43 = v19;
    _os_log_impl(&dword_24006C000, v29, OS_LOG_TYPE_DEFAULT, "%s finished on %@", buf, 0x16u);
  }

  v30 = result;
  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

+ (int)getIdentityForPersistentRef:(__CFData *)a3 identityToReturn:(__SecIdentity *)a4
{
  v10[3] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CDC5F0];
  v9[0] = *MEMORY[0x277CDC228];
  v9[1] = v5;
  v10[0] = *MEMORY[0x277CDC240];
  v10[1] = a3;
  v9[2] = *MEMORY[0x277CDC568];
  v10[2] = *MEMORY[0x277CBED28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  LODWORD(a4) = SecItemCopyMatching(v6, a4);

  v7 = *MEMORY[0x277D85DE8];
  return a4;
}

+ (BOOL)pollSmartcardForIdentityWithPersistentRef:(id)a3 tokenID:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOSmartcard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[SOSmartcard pollSmartcardForIdentityWithPersistentRef:tokenID:]";
    v17 = 2112;
    v18 = a1;
    _os_log_impl(&dword_24006C000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v15, 0x16u);
  }

  if (v6)
  {
    v9 = [a1 searchForCachedIdentityPersistentRef:v6 tokenID:v7];
    v10 = [v9 objectForKey:@"labl"];
    v11 = [v10 length] != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = SO_LOG_SOSmartcard();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "+[SOSmartcard pollSmartcardForIdentityWithPersistentRef:tokenID:]";
    v17 = 2112;
    v18 = a1;
    _os_log_impl(&dword_24006C000, v12, OS_LOG_TYPE_DEFAULT, "%s finished on %@", &v15, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)searchForCachedIdentityWithSerial:(__CFData *)a3 withIssuer:(__CFData *)a4 withTokenID:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = SO_LOG_SOSmartcard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "+[SOSmartcard searchForCachedIdentityWithSerial:withIssuer:withTokenID:]";
    v35 = 2112;
    v36 = a1;
    _os_log_impl(&dword_24006C000, v9, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  result = 0;
  v10 = [v8 length];

  v11 = *MEMORY[0x277CDC228];
  v12 = *MEMORY[0x277CDC240];
  v13 = *MEMORY[0x277CDBEC8];
  if (v10)
  {
    v29[0] = *MEMORY[0x277CDC228];
    v29[1] = v13;
    v14 = *MEMORY[0x277CDBED0];
    v30[0] = v12;
    v30[1] = v14;
    v15 = *MEMORY[0x277CDBFD8];
    v29[2] = *MEMORY[0x277CDC110];
    v29[3] = v15;
    v30[2] = a3;
    v30[3] = a4;
    v16 = *MEMORY[0x277CDC560];
    v29[4] = *MEMORY[0x277CDC550];
    v29[5] = v16;
    v30[4] = MEMORY[0x277CBEC38];
    v30[5] = MEMORY[0x277CBEC38];
    v17 = MEMORY[0x277CBEAC0];
    v18 = v30;
    v19 = v29;
  }

  else
  {
    v31[0] = *MEMORY[0x277CDC228];
    v31[1] = v13;
    v32[0] = v12;
    v32[1] = &stru_285206D08;
    v20 = *MEMORY[0x277CDBFD8];
    v31[2] = *MEMORY[0x277CDC110];
    v31[3] = v20;
    v32[2] = a3;
    v32[3] = a4;
    v21 = *MEMORY[0x277CDC560];
    v31[4] = *MEMORY[0x277CDC550];
    v31[5] = v21;
    v32[4] = MEMORY[0x277CBEC38];
    v32[5] = MEMORY[0x277CBEC38];
    v17 = MEMORY[0x277CBEAC0];
    v18 = v32;
    v19 = v31;
  }

  v22 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:6];
  if (SecItemCopyMatching(v22, &result))
  {
    v23 = [MEMORY[0x277CBEAC0] dictionary];
  }

  else
  {
    v24 = SO_LOG_SOSmartcard();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "+[SOSmartcard searchForCachedIdentityWithSerial:withIssuer:withTokenID:]";
      v35 = 2112;
      v36 = a1;
      _os_log_impl(&dword_24006C000, v24, OS_LOG_TYPE_DEFAULT, "%s finished on %@", buf, 0x16u);
    }

    v23 = result;
  }

  v25 = v23;

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

+ (id)searchForCachedIdentityPersistentRef:(id)a3 tokenID:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOSmartcard();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v33 = "+[SOSmartcard searchForCachedIdentityPersistentRef:tokenID:]";
    v34 = 2112;
    v35 = a1;
    _os_log_impl(&dword_24006C000, v8, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  result = 0;
  v9 = [v7 length];
  v10 = *MEMORY[0x277CDC228];
  v11 = *MEMORY[0x277CDC240];
  if (v9)
  {
    v12 = *MEMORY[0x277CDBEC8];
    v28[0] = *MEMORY[0x277CDC228];
    v28[1] = v12;
    v13 = *MEMORY[0x277CDBED0];
    v29[0] = v11;
    v29[1] = v13;
    v14 = *MEMORY[0x277CDC550];
    v28[2] = *MEMORY[0x277CDC158];
    v28[3] = v14;
    v29[2] = v7;
    v29[3] = MEMORY[0x277CBEC38];
    v28[4] = *MEMORY[0x277CDC560];
    v29[4] = MEMORY[0x277CBEC38];
    v15 = MEMORY[0x277CBEAC0];
    v16 = v29;
    v17 = v28;
    v18 = 5;
  }

  else
  {
    v19 = *MEMORY[0x277CDC5F0];
    v30[0] = *MEMORY[0x277CDC228];
    v30[1] = v19;
    v31[0] = v11;
    v31[1] = v6;
    v20 = *MEMORY[0x277CDC560];
    v30[2] = *MEMORY[0x277CDC550];
    v30[3] = v20;
    v31[2] = MEMORY[0x277CBEC38];
    v31[3] = MEMORY[0x277CBEC38];
    v15 = MEMORY[0x277CBEAC0];
    v16 = v31;
    v17 = v30;
    v18 = 4;
  }

  v21 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
  if (SecItemCopyMatching(v21, &result))
  {
    v22 = [MEMORY[0x277CBEAC0] dictionary];
  }

  else
  {
    v23 = SO_LOG_SOSmartcard();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "+[SOSmartcard searchForCachedIdentityPersistentRef:tokenID:]";
      v34 = 2112;
      v35 = a1;
      _os_log_impl(&dword_24006C000, v23, OS_LOG_TYPE_DEFAULT, "%s finished on %@", buf, 0x16u);
    }

    v22 = result;
  }

  v24 = v22;

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

+ (id)availableSmartCards
{
  v60 = *MEMORY[0x277D85DE8];
  v34 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v32 = objc_alloc_init(MEMORY[0x277CC5638]);
  v2 = [v32 tokenIDs];
  v3 = [v2 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v51;
    v6 = *MEMORY[0x277CDC228];
    v7 = *MEMORY[0x277CDC240];
    v8 = *MEMORY[0x277CDBEC8];
    v44 = *MEMORY[0x277CDBED0];
    v43 = *MEMORY[0x277CDC560];
    v42 = *MEMORY[0x277CDC550];
    v41 = *MEMORY[0x277CDC440];
    v40 = *MEMORY[0x277CBEEE8];
    v45 = *MEMORY[0x277CDC158];
    v38 = *MEMORY[0x277CDC5F0];
    v33 = *MEMORY[0x277CDC080];
    v37 = v2;
    v39 = *MEMORY[0x277CDBEC8];
    do
    {
      v9 = 0;
      do
      {
        if (*v51 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        result = 0;
        v57[0] = v6;
        v57[1] = v8;
        v58[0] = v7;
        v58[1] = v44;
        v57[2] = v43;
        v57[3] = v42;
        v58[2] = MEMORY[0x277CBEC38];
        v58[3] = MEMORY[0x277CBEC38];
        v57[4] = v41;
        v57[5] = v45;
        v58[4] = v40;
        v58[5] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:6];
        v12 = SecItemCopyMatching(v11, &result);
        if (v12)
        {
          v13 = v12;
          v14 = SO_LOG_SOSmartcard();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            LODWORD(certificateRef[0]) = 67109120;
            HIDWORD(certificateRef[0]) = v13;
            _os_log_error_impl(&dword_24006C000, v14, OS_LOG_TYPE_ERROR, "Error querying SmartCards %d", certificateRef, 8u);
          }
        }

        else
        {
          certificateRef[0] = 0;
          identityRef = 0;
          v15 = CFGetTypeID(result);
          if (v15 == CFDictionaryGetTypeID())
          {
            v16 = result;
            v17 = [result objectForKeyedSubscript:v38];
            v18 = [SOSmartcard getIdentityForPersistentRef:v17 identityToReturn:&identityRef];

            if (v18)
            {
              v19 = SO_LOG_SOSmartcard();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                v55 = v18;
                _os_log_error_impl(&dword_24006C000, v19, OS_LOG_TYPE_ERROR, "Error getting persistentref %d", buf, 8u);
              }

              v2 = v37;
            }

            else
            {
              v20 = SecIdentityCopyCertificate(identityRef, certificateRef);
              v21 = SO_LOG_SOSmartcard();
              v22 = v21;
              if (v20)
              {
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  v55 = v20;
                  _os_log_error_impl(&dword_24006C000, v22, OS_LOG_TYPE_ERROR, "Error retrieving certificate %d", buf, 8u);
                }

                v2 = v37;
                if (identityRef)
                {
                  CFRelease(identityRef);
                  identityRef = 0;
                }
              }

              else
              {
                if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_24006C000, v22, OS_LOG_TYPE_INFO, "Retrieving Kerberos names from certificate", buf, 2u);
                }

                v23 = SecCertificateCopyNTPrincipalNames();
                v24 = [v23 objectAtIndex:0];
                v36 = SecCertificateCopyIssuerSummary();
                if ([v24 length])
                {
                  v35 = v23;
                  v25 = objc_opt_new();
                  [v25 setUpn:v24];
                  v26 = [v16 objectForKeyedSubscript:v33];
                  [v25 setCertName:v26];

                  [v25 setIdentity:identityRef];
                  [v25 setAttributes:v16];
                  v27 = [v16 objectForKeyedSubscript:v38];
                  [v25 setPersistentRef:v27];

                  v28 = [v16 objectForKeyedSubscript:v45];
                  [v25 setTokenID:v28];

                  [v25 setIssuer:v36];
                  [v34 addObject:v25];

                  v23 = v35;
                }

                if (certificateRef[0])
                {
                  CFRelease(certificateRef[0]);
                  certificateRef[0] = 0;
                }

                v2 = v37;
                if (identityRef)
                {
                  CFRelease(identityRef);
                  identityRef = 0;
                }
              }
            }
          }

          else
          {
            v16 = SO_LOG_SOSmartcard();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              +[(SOSmartcard *)&v46];
            }
          }

          v8 = v39;
        }

        ++v9;
      }

      while (v4 != v9);
      v29 = [v2 countByEnumeratingWithState:&v50 objects:v59 count:16];
      v4 = v29;
    }

    while (v29);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (void)availableSmartCards
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_24006C000, log, OS_LOG_TYPE_ERROR, "unexpected type for SmartCard query", buf, 2u);
}

@end