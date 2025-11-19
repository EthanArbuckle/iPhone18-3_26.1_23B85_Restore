@interface SOKeychainHelper
- (BOOL)hasCredentialsInKeychainWithService:(id)a3;
- (__SecIdentity)identityForPersistentRef:(id)a3;
- (__SecIdentity)identityForUUIDString:(id)a3;
- (int)addCredentialsToKeychainWithService:(id)a3 withUsername:(id)a4 withPassword:(id)a5 requireUserPresence:(BOOL)a6;
- (int)removeCredentialsFromKeychainWithService:(id)a3;
- (int)retrieveCredentialsFromKeychainWithContext:(id)a3 service:(id)a4 returnedUsername:(id *)a5 returnedPassword:(id *)a6;
@end

@implementation SOKeychainHelper

- (__SecIdentity)identityForPersistentRef:(id)a3
{
  v3 = a3;
  v4 = SO_LOG_SOKeychainHelper();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(SOKeychainHelper *)v3 identityForPersistentRef:v4];
  }

  return 0;
}

- (__SecIdentity)identityForUUIDString:(id)a3
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = *MEMORY[0x277CDC240];
  v5 = *MEMORY[0x277CDC080];
  v16[0] = *MEMORY[0x277CDC228];
  v16[1] = v5;
  v17[0] = v4;
  v17[1] = v3;
  v6 = *MEMORY[0x277CDC428];
  v16[2] = *MEMORY[0x277CDC568];
  v16[3] = v6;
  v7 = *MEMORY[0x277CDC438];
  v17[2] = *MEMORY[0x277CBED28];
  v17[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];
  v15 = 0;
  v9 = SecItemCopyMatching(v8, &v15);
  if (v9)
  {
    v10 = v9;
    v11 = SO_LOG_SOKeychainHelper();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SOKeychainHelper *)v3 identityForUUIDString:v10, v11];
    }

    v12 = 0;
  }

  else
  {
    v12 = v15;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int)addCredentialsToKeychainWithService:(id)a3 withUsername:(id)a4 withPassword:(id)a5 requireUserPresence:(BOOL)a6
{
  v6 = a6;
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = SO_LOG_SOKeychainHelper();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v37 = "[SOKeychainHelper addCredentialsToKeychainWithService:withUsername:withPassword:requireUserPresence:]";
    v38 = 2112;
    v39 = v10;
    v40 = 2112;
    v41 = self;
    _os_log_impl(&dword_24006C000, v13, OS_LOG_TYPE_DEFAULT, "%s service %@ on %@", buf, 0x20u);
  }

  v14 = [v12 dataUsingEncoding:4];

  v15 = SO_LOG_SOKeychainHelper();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v16)
    {
      *buf = 136315394;
      v37 = "[SOKeychainHelper addCredentialsToKeychainWithService:withUsername:withPassword:requireUserPresence:]";
      v38 = 2112;
      v39 = self;
      _os_log_impl(&dword_24006C000, v15, OS_LOG_TYPE_DEFAULT, "%s requireUserPresence is enabled on %@", buf, 0x16u);
    }

    v17 = 1;
  }

  else
  {
    if (v16)
    {
      *buf = 136315394;
      v37 = "[SOKeychainHelper addCredentialsToKeychainWithService:withUsername:withPassword:requireUserPresence:]";
      v38 = 2112;
      v39 = self;
      _os_log_impl(&dword_24006C000, v15, OS_LOG_TYPE_DEFAULT, "%s requireUserPresence is disabled on %@", buf, 0x16u);
    }

    v17 = 0;
  }

  v18 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], v17, 0);
  if (!v18)
  {
    v27 = SO_LOG_SOKeychainHelper();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [SOKeychainHelper addCredentialsToKeychainWithService:v27 withUsername:? withPassword:? requireUserPresence:?];
    }

    v30 = -67702;
    goto LABEL_20;
  }

  v19 = v18;
  if (v10 && v11 && v14)
  {
    v20 = *MEMORY[0x277CDC5E8];
    v35[0] = v14;
    v21 = [v11 lowercaseString];
    v22 = *MEMORY[0x277CDC120];
    v35[1] = v21;
    v35[2] = v10;
    v23 = *MEMORY[0x277CDC228];
    v34[2] = v22;
    v34[3] = v23;
    v24 = *MEMORY[0x277CDC5C8];
    v25 = *MEMORY[0x277CBED28];
    v35[3] = *MEMORY[0x277CDC238];
    v35[4] = v25;
    v26 = *MEMORY[0x277CDBEC0];
    v34[4] = v24;
    v34[5] = v26;
    v35[5] = v19;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:6];

    v28 = SecItemDelete(v27);
    v29 = SO_LOG_SOKeychainHelper();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v37) = v28;
      _os_log_impl(&dword_24006C000, v29, OS_LOG_TYPE_DEFAULT, "Removing keychain entry returned %d", buf, 8u);
    }

    v30 = SecItemAdd(v27, 0);
    CFRelease(v19);
LABEL_20:

    goto LABEL_24;
  }

  v31 = SO_LOG_SOKeychainHelper();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v37 = "[SOKeychainHelper addCredentialsToKeychainWithService:withUsername:withPassword:requireUserPresence:]";
    v38 = 2112;
    v39 = self;
    _os_log_impl(&dword_24006C000, v31, OS_LOG_TYPE_DEFAULT, "%s Could not add credentials to keychain. Invalid parameters on %@", buf, 0x16u);
  }

  CFRelease(v19);
  v30 = -67693;
LABEL_24:

  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (int)retrieveCredentialsFromKeychainWithContext:(id)a3 service:(id)a4 returnedUsername:(id *)a5 returnedPassword:(id *)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  result = 0;
  v12 = SO_LOG_SOKeychainHelper();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = v11;
    _os_log_impl(&dword_24006C000, v12, OS_LOG_TYPE_DEFAULT, "Finding keychain entry for service %@", buf, 0xCu);
  }

  if (v11)
  {
    v13 = *MEMORY[0x277CBED28];
    v14 = *MEMORY[0x277CDC558];
    v28[0] = *MEMORY[0x277CDC550];
    v28[1] = v14;
    v15 = *MEMORY[0x277CDC228];
    v28[2] = *MEMORY[0x277CDC120];
    v28[3] = v15;
    v16 = *MEMORY[0x277CDC238];
    v29[2] = v11;
    v29[3] = v16;
    v29[0] = v13;
    v29[1] = v13;
    v28[4] = *MEMORY[0x277CDC5C8];
    v29[4] = v13;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:5];
    v18 = [v17 mutableCopy];

    if (v10)
    {
      [v18 setObject:v10 forKeyedSubscript:*MEMORY[0x277CDC5A0]];
    }

    v19 = SecItemCopyMatching(v18, &result);
    if (v19)
    {
      v20 = SO_LOG_SOKeychainHelper();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v31) = v19;
        _os_log_impl(&dword_24006C000, v20, OS_LOG_TYPE_DEFAULT, "Finding keychain entry failed with %d", buf, 8u);
      }
    }

    else
    {
      v20 = result;
      v21 = [v20 objectForKey:*MEMORY[0x277CDBF20]];
      v22 = [v20 objectForKey:*MEMORY[0x277CDC5E8]];
      v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v22 encoding:4];
      *a6 = v23;
      v24 = v21;
      *a5 = v21;
      if (result)
      {
        CFRelease(result);
        result = 0;
      }
    }
  }

  else
  {
    v19 = -67693;
    v18 = SO_LOG_SOKeychainHelper();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "[SOKeychainHelper retrieveCredentialsFromKeychainWithContext:service:returnedUsername:returnedPassword:]";
      v32 = 2112;
      v33 = self;
      _os_log_impl(&dword_24006C000, v18, OS_LOG_TYPE_DEFAULT, "%s Could not find credentials in keychain. Invalid parameters on %@", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)hasCredentialsInKeychainWithService:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  result = 0;
  v5 = SO_LOG_SOKeychainHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v4;
    _os_log_impl(&dword_24006C000, v5, OS_LOG_TYPE_DEFAULT, "Checking if keychain entry existis for service %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = objc_alloc_init(MEMORY[0x277CD4790]);
    [v6 setInteractionNotAllowed:1];
    v7 = *MEMORY[0x277CBED28];
    v8 = *MEMORY[0x277CDC558];
    v21[0] = *MEMORY[0x277CDC550];
    v21[1] = v8;
    v9 = *MEMORY[0x277CBED10];
    v22[0] = v7;
    v22[1] = v9;
    v10 = *MEMORY[0x277CDC228];
    v21[2] = *MEMORY[0x277CDC120];
    v21[3] = v10;
    v11 = *MEMORY[0x277CDC238];
    v22[2] = v4;
    v22[3] = v11;
    v12 = *MEMORY[0x277CDC5A0];
    v21[4] = *MEMORY[0x277CDC5C8];
    v21[5] = v12;
    v22[4] = v7;
    v22[5] = v6;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:6];
    v14 = SecItemCopyMatching(v13, &result);
    v15 = v14 == -25308 || v14 == 0;
    if (v14 != -25308 && (v16 = v14) != 0)
    {
      v17 = SO_LOG_SOKeychainHelper();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v24) = v16;
        _os_log_impl(&dword_24006C000, v17, OS_LOG_TYPE_DEFAULT, "Finding keychain entry failed with %d", buf, 8u);
      }
    }

    else if (result)
    {
      CFRelease(result);
      result = 0;
    }
  }

  else
  {
    v6 = SO_LOG_SOKeychainHelper();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[SOKeychainHelper hasCredentialsInKeychainWithService:]";
      v25 = 2112;
      v26 = self;
      _os_log_impl(&dword_24006C000, v6, OS_LOG_TYPE_DEFAULT, "%s Could not find credentials in keychain. Invalid parameters on %@", buf, 0x16u);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v15;
}

- (int)removeCredentialsFromKeychainWithService:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SO_LOG_SOKeychainHelper();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v4;
    _os_log_impl(&dword_24006C000, v5, OS_LOG_TYPE_DEFAULT, "Deleting keychain entry for service %@", buf, 0xCu);
  }

  if (v4)
  {
    v6 = *MEMORY[0x277CBED28];
    v7 = *MEMORY[0x277CDC558];
    v15[0] = *MEMORY[0x277CDC550];
    v15[1] = v7;
    v8 = *MEMORY[0x277CDC228];
    v15[2] = *MEMORY[0x277CDC120];
    v15[3] = v8;
    v9 = *MEMORY[0x277CDC238];
    v16[2] = v4;
    v16[3] = v9;
    v16[0] = v6;
    v16[1] = v6;
    v15[4] = *MEMORY[0x277CDC5C8];
    v16[4] = v6;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];
    v11 = SecItemDelete(v10);
    if (v11)
    {
      v12 = SO_LOG_SOKeychainHelper();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = v11;
        _os_log_impl(&dword_24006C000, v12, OS_LOG_TYPE_DEFAULT, "Deleting keychain entry failed with %d", buf, 8u);
      }
    }
  }

  else
  {
    v11 = -67693;
    v10 = SO_LOG_SOKeychainHelper();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[SOKeychainHelper removeCredentialsFromKeychainWithService:]";
      v19 = 2112;
      v20 = self;
      _os_log_impl(&dword_24006C000, v10, OS_LOG_TYPE_DEFAULT, "%s Could not delete credentials from keychain. Invalid parameters on %@", buf, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)identityForPersistentRef:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_24006C000, a2, OS_LOG_TYPE_ERROR, "Unable to resolve persistent reference %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)identityForUUIDString:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_24006C000, log, OS_LOG_TYPE_ERROR, "SecItemCopyMatching returned: %d for uuid: %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

@end