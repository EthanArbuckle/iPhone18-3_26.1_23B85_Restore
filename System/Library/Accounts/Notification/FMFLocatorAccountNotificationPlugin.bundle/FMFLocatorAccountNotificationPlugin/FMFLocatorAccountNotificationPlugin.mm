void sub_29C8C4088(uint64_t a1)
{
  v2 = [*(a1 + 32) xpcConnection];

  if (!v2)
  {
    v3 = LogCategory_Unspecified();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_29C8C3000, v3, OS_LOG_TYPE_INFO, "Creating XPC Connection...", buf, 2u);
    }

    v4 = objc_alloc(MEMORY[0x29EDBA170]);
    v5 = [v4 initWithMachServiceName:NSXPC_SERVICE_NAME options:4096];
    v6 = [MEMORY[0x29EDBA178] interfaceWithProtocol:&unk_2A23D7C88];
    [v5 setRemoteObjectInterface:v6];

    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = sub_29C8C4224;
    v8[3] = &unk_29F32ECB8;
    v8[4] = *(a1 + 32);
    [v5 setInterruptionHandler:v8];
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = sub_29C8C4298;
    v7[3] = &unk_29F32ECB8;
    v7[4] = *(a1 + 32);
    [v5 setInvalidationHandler:v7];
    [v5 resume];
    [*(a1 + 32) setXpcConnection:v5];
  }
}

uint64_t sub_29C8C4224(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_29C8C3000, v2, OS_LOG_TYPE_INFO, "XPC Connection interrupted. Setting the xpcConnection to nil, so that it can be recreated the next time its needed.", v4, 2u);
  }

  return [*(a1 + 32) _destroyXPCConnection];
}

uint64_t sub_29C8C4298(uint64_t a1)
{
  v2 = LogCategory_Unspecified();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_29C8C3000, v2, OS_LOG_TYPE_INFO, "XPC Connection invalidated. Setting the xpcConnection to nil, so that it can be recreated the next time its needed.", v4, 2u);
  }

  return [*(a1 + 32) _destroyXPCConnection];
}

void sub_29C8C4648(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_29C8C5360(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_29C8C4880(uint64_t a1)
{
  v1 = *(a1 + 56);
  if ((v1 - 1) > 2)
  {
    return;
  }

  if (v1 == 3)
  {
    v19 = [*(a1 + 32) accountType];
    v3 = [v19 identifier];
    if ([v3 isEqual:*MEMORY[0x29EDB81C8]])
    {
      v4 = [*(a1 + 32) aa_isPrimaryAccount];

      if (!v4)
      {
        return;
      }

      v19 = LogCategory_Unspecified();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_29C8C5504();
        v10 = v19;
        v5 = @"iCloud-delete";
        goto LABEL_12;
      }

      v5 = @"iCloud-delete";
LABEL_11:
      v10 = v19;
LABEL_12:

      v11 = [*(a1 + 48) _currentXPCConnection];
      v12 = [v11 remoteObjectProxyWithErrorHandler:&unk_2A23D5008];

      [v12 didChangeFMFAccountInfo:v5 usingCallback:&unk_2A23D5028];
      return;
    }

    goto LABEL_41;
  }

  v6 = [*(a1 + 40) accountType];
  v7 = [v6 identifier];
  v8 = [v7 isEqual:*MEMORY[0x29EDB8220]];

  v9 = *(a1 + 40);
  if (v8)
  {
    if (![v9 isPropertyDirty:@"credential"])
    {
      return;
    }

    v19 = LogCategory_Unspecified();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      sub_29C8C54D0();
      v10 = v19;
      v5 = @"FMF-auth-token";
      goto LABEL_12;
    }

    v5 = @"FMF-auth-token";
    goto LABEL_11;
  }

  v19 = [v9 accountType];
  v3 = [v19 identifier];
  if (![v3 isEqual:*MEMORY[0x29EDB81C8]])
  {
LABEL_41:

    return;
  }

  v13 = [*(a1 + 40) aa_isPrimaryAccount];

  if (v13)
  {
    if (*(a1 + 56) == 1)
    {
      v19 = LogCategory_Unspecified();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_29C8C549C();
        v10 = v19;
        v5 = @"iCloud-add";
        goto LABEL_12;
      }

      v5 = @"iCloud-add";
      goto LABEL_11;
    }

    v14 = [*(a1 + 32) isProvisionedForDataclass:@"com.apple.Dataclass.ShareLocation"];
    v15 = [*(a1 + 40) isProvisionedForDataclass:@"com.apple.Dataclass.ShareLocation"];
    if ((v15 & 1) == 0 && v14)
    {
      v19 = LogCategory_Unspecified();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_29C8C53CC();
        v10 = v19;
        v5 = @"FMF-deprovisioned";
        goto LABEL_12;
      }

      v5 = @"FMF-deprovisioned";
      goto LABEL_11;
    }

    if (!(v14 & 1 | ((v15 & 1) == 0)))
    {
      v19 = LogCategory_Unspecified();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_29C8C5400();
        v10 = v19;
        v5 = @"FMF-provisioned";
        goto LABEL_12;
      }

      v5 = @"FMF-provisioned";
      goto LABEL_11;
    }

    if (v15)
    {
      if ([*(a1 + 40) isPropertyDirty:@"credential"])
      {
        v19 = LogCategory_Unspecified();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          sub_29C8C5468();
          v10 = v19;
          v5 = @"iCloud-auth-token";
          goto LABEL_12;
        }

        v5 = @"iCloud-auth-token";
        goto LABEL_11;
      }

      v16 = *(a1 + 32);
      if (v16)
      {
        [v16 fmfAccountInfoForProactiveChanges];
      }

      else
      {
        [MEMORY[0x29EDB8DC0] dictionary];
      }
      v19 = ;
      v17 = *(a1 + 40);
      if (v17)
      {
        [v17 fmfAccountInfoForProactiveChanges];
      }

      else
      {
        [MEMORY[0x29EDB8DC0] dictionary];
      }
      v3 = ;
      if (([v19 isEqual:v3]& 1) == 0)
      {
        v18 = LogCategory_Unspecified();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_29C8C5434();
        }

        v5 = @"FMF-info";
        goto LABEL_11;
      }

      goto LABEL_41;
    }
  }
}

void sub_29C8C4C78(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_29C8C5360(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_29C8C4CCC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = LogCategory_Unspecified();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_29C8C5538(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void sub_29C8C4D90(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void sub_29C8C4DB8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

id LogCategory_Unspecified()
{
  if (qword_2A1A11818 != -1)
  {
    sub_29C8C55A4();
  }

  v1 = qword_2A1A11820;

  return v1;
}

uint64_t sub_29C8C4E18()
{
  qword_2A1A11820 = os_log_create("com.apple.icloud.fmflocatord", "_");

  return MEMORY[0x2A1C71028]();
}

id LogCategory_Locations()
{
  if (qword_2A1796450 != -1)
  {
    sub_29C8C55B8();
  }

  v1 = qword_2A1796458;

  return v1;
}

uint64_t sub_29C8C4EA0()
{
  qword_2A1796458 = os_log_create("com.apple.icloud.fmflocatord", "Locations");

  return MEMORY[0x2A1C71028]();
}

id LogCategory_Traffic()
{
  if (qword_2A1796460 != -1)
  {
    sub_29C8C55CC();
  }

  v1 = qword_2A1796468;

  return v1;
}

uint64_t sub_29C8C4F28()
{
  qword_2A1796468 = os_log_create("com.apple.icloud.fmflocatord", "Traffic");

  return MEMORY[0x2A1C71028]();
}

id LogCategory_SecureLocations()
{
  if (qword_2A1796470 != -1)
  {
    sub_29C8C55E0();
  }

  v1 = qword_2A1796478;

  return v1;
}

uint64_t sub_29C8C4FB0()
{
  qword_2A1796478 = os_log_create("com.apple.icloud.fmflocatord", "secureLocations");

  return MEMORY[0x2A1C71028]();
}

id LogCategory_Fences()
{
  if (qword_2A1796480 != -1)
  {
    sub_29C8C55F4();
  }

  v1 = qword_2A1796488;

  return v1;
}

uint64_t sub_29C8C5038()
{
  qword_2A1796488 = os_log_create("com.apple.icloud.fmflocatord", "Fences");

  return MEMORY[0x2A1C71028]();
}

id sub_29C8C507C(void *a1, uint64_t a2, int a3)
{
  v5 = [MEMORY[0x29EDB8E00] dictionary];
  v6 = [a1 username];
  [v5 fm_safelyMapKey:@"username" toObject:v6];

  v7 = [a1 aa_personID];
  [v5 fm_safelyMapKey:@"dsid" toObject:v7];

  if (a3)
  {
    v8 = objc_alloc_init(MEMORY[0x29EDB83C8]);
    v9 = [a1 aa_fmfAccount];
    v21 = 0;
    v10 = [v8 credentialForAccount:v9 error:&v21];
    v11 = v21;

    if (!v10)
    {
      v12 = LogCategory_Unspecified();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_29C8C5608(v11, v12);
      }
    }

    v13 = [v10 credentialItemForKey:*MEMORY[0x29EDB8308]];
    [v5 fm_safelyMapKey:@"appToken" toObject:v13];

    v14 = [v10 credentialItemForKey:*MEMORY[0x29EDB8310]];
    [v5 fm_safelyMapKey:@"internalToken" toObject:v14];
  }

  v15 = [a1 propertiesForDataclass:@"com.apple.Dataclass.ShareLocation"];
  v16 = [v15 objectForKeyedSubscript:@"appHostname"];
  [v5 fm_safelyMapKey:@"appHostname" toObject:v16];

  v17 = [v15 objectForKeyedSubscript:@"hostname"];
  [v5 fm_safelyMapKey:@"hostname" toObject:v17];

  [v5 fm_safelyMapKey:@"scheme" toObject:@"https"];
  v18 = [v15 objectForKeyedSubscript:@"apsEnv"];
  [v5 fm_safelyMapKey:@"apsEnv" toObject:v18];

  v19 = [v5 copy];

  return v19;
}

id sub_29C8C5304(void *a1)
{
  v1 = [a1 fmfAccountInfoWithTokens:0];
  v2 = [v1 mutableCopy];

  v3 = [v2 copy];

  return v3;
}

void sub_29C8C5360(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29C8C4DB8(&dword_29C8C3000, a2, a3, "XPC error for willDeleteiCloudAccountUsingCallback: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C8C5538(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x29EDCA608];
  sub_29C8C4DB8(&dword_29C8C3000, a2, a3, "didChangeFMFAccountInfo failed with error %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x29EDCA608];
}

void sub_29C8C5608(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x29EDCA608];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_29C8C3000, a2, OS_LOG_TYPE_ERROR, "No credential found for aa_fmfAccount : %@", &v3, 0xCu);
  v2 = *MEMORY[0x29EDCA608];
}