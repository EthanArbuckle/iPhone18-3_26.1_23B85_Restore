@interface PCSAccountNotificationPlugin
- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
- (BOOL)careAboutAccount:(id)account;
- (id)escrowURL:(id)l;
- (id)iCloudEnvironmentForAccount:(id)account;
- (void)setupAccount:(id)account reason:(id)reason optional:(BOOL)optional;
@end

@implementation PCSAccountNotificationPlugin

- (id)escrowURL:(id)l
{
  v3 = objc_msgSend_dataclassProperties(l, a2, l);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"com.apple.Dataclass.KeychainSync");

  return objc_msgSend_objectForKey_(v5, v6, @"escrowProxyUrl");
}

- (id)iCloudEnvironmentForAccount:(id)account
{
  v3 = objc_msgSend_dataclassProperties(account, a2, account);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"com.apple.Dataclass.Account");

  return objc_msgSend_objectForKeyedSubscript_(v5, v6, @"iCloudEnv");
}

- (void)setupAccount:(id)account reason:(id)reason optional:(BOOL)optional
{
  v48 = *MEMORY[0x29EDCA608];
  v8 = objc_msgSend_escrowURL_(self, a2, account);
  v10 = objc_msgSend_iCloudEnvironmentForAccount_(self, v9, account);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    reasonCopy7 = reason;
    _os_log_impl(&dword_29C8FA000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "PCSAccountNotificationPlugin: %@", buf, 0xCu);
  }

  v13 = objc_msgSend_pcs_appleID(account, v11, v12);
  if (!v13)
  {
    v13 = objc_msgSend_username(account, v14, v15);
    if (!v13)
    {
      if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      *buf = 138412290;
      reasonCopy7 = reason;
      v41 = MEMORY[0x29EDCA988];
      v42 = "PCSAccountNotificationPlugin: %@ Error! iCloud account with no username?";
      goto LABEL_23;
    }
  }

  v16 = v13;
  v17 = objc_msgSend_credential(account, v14, v15);
  if (!objc_msgSend_password(v17, v18, v19))
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    reasonCopy7 = reason;
    v41 = MEMORY[0x29EDCA988];
    v42 = "PCSAccountNotificationPlugin: %@ Error! iCloud account with no password?";
LABEL_23:
    _os_log_impl(&dword_29C8FA000, v41, OS_LOG_TYPE_DEFAULT, v42, buf, 0xCu);
    goto LABEL_24;
  }

  if (!objc_msgSend_pcs_personID(account, v20, v21))
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    reasonCopy7 = reason;
    v41 = MEMORY[0x29EDCA988];
    v42 = "PCSAccountNotificationPlugin: %@ Error! iCloud account with no DSID?";
    goto LABEL_23;
  }

  if (!v8)
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    reasonCopy7 = reason;
    v41 = MEMORY[0x29EDCA988];
    v42 = "PCSAccountNotificationPlugin: %@ Error! iCloud account with no escrowURL?";
    goto LABEL_23;
  }

  if (!objc_msgSend_pcs_authToken(account, v22, v23))
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    reasonCopy7 = reason;
    v41 = MEMORY[0x29EDCA988];
    v42 = "PCSAccountNotificationPlugin: %@ Error! iCloud account with no authToken?";
    goto LABEL_23;
  }

  if (!v10)
  {
    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    *buf = 138412290;
    reasonCopy7 = reason;
    v41 = MEMORY[0x29EDCA988];
    v42 = "PCSAccountNotificationPlugin: %@ Error! iCloud account with no iCloudEnvironment?";
    goto LABEL_23;
  }

  v26 = *MEMORY[0x29EDC6390];
  v45[0] = v16;
  v27 = objc_msgSend_credential(account, v24, v25, v26, *MEMORY[0x29EDC6388]);
  v45[1] = objc_msgSend_password(v27, v28, v29);
  v44[2] = *MEMORY[0x29EDC6378];
  v32 = objc_msgSend_pcs_personID(account, v30, v31);
  v33 = *MEMORY[0x29EDC6380];
  v45[2] = v32;
  v45[3] = v8;
  v34 = *MEMORY[0x29EDC6370];
  v44[3] = v33;
  v44[4] = v34;
  v37 = objc_msgSend_pcs_authToken(account, v35, v36);
  v44[5] = *MEMORY[0x29EDC6398];
  v45[4] = v37;
  v45[5] = v10;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v38, v45, v44, 6);
  objc_msgSend_identifier(account, v39, v40);
  PCSAccountOldSetupIdentities();
LABEL_24:
  v43 = *MEMORY[0x29EDCA608];
}

- (BOOL)careAboutAccount:(id)account
{
  v4 = objc_msgSend_accountType(account, a2, account);
  v7 = objc_msgSend_identifier(v4, v5, v6);
  isEqualToString = objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x29EDB81C8]);
  if (isEqualToString)
  {
    if (objc_msgSend_pcs_isFullAccount(account, v10, v11))
    {
      LOBYTE(isEqualToString) = 1;
    }

    else
    {
      v13 = *MEMORY[0x29EDB8150];

      LOBYTE(isEqualToString) = objc_msgSend_isProvisionedForDataclass_(account, v12, v13);
    }
  }

  return isEqualToString;
}

- (BOOL)account:(id)account willChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v39 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_credential(account, v9, v10);
    if (objc_msgSend_password(v11, v12, v13))
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    isProvisionedForDataclass = objc_msgSend_isProvisionedForDataclass_(account, v14, *MEMORY[0x29EDB8150]);
    LODWORD(v32) = 67109890;
    if (isProvisionedForDataclass)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    HIDWORD(v32) = type;
    v33 = 2112;
    accountCopy4 = account;
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = v17;
    _os_log_impl(&dword_29C8FA000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "account:willChangeWithType: update %d: for account %@ (password: %@, pcs dataclass: %@)", &v32, 0x26u);
  }

  if (objc_msgSend_careAboutAccount_(self, v9, account, v32))
  {
    if (type == 1)
    {
      v27 = 0;
      v28 = @"Added";
    }

    else
    {
      if (type != 2 || (v20 = objc_msgSend_credential(account, v18, v19), !objc_msgSend_password(v20, v21, v22)) || (objc_msgSend_pcs_personID(account, v23, v24), (PCSIdentityHaveiCloudIdentityLocally() & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(v32) = 67109378;
          HIDWORD(v32) = type;
          v33 = 2112;
          accountCopy4 = account;
          v25 = MEMORY[0x29EDCA988];
          v26 = "account:willChangeWithType: %d: no update on %@";
LABEL_18:
          _os_log_impl(&dword_29C8FA000, v25, OS_LOG_TYPE_DEFAULT, v26, &v32, 0x12u);
          goto LABEL_24;
        }

        goto LABEL_24;
      }

      v27 = 1;
      v28 = @"missingIdentity";
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v32) = 67109378;
      HIDWORD(v32) = type;
      v33 = 2112;
      accountCopy4 = account;
      _os_log_impl(&dword_29C8FA000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "account:willChangeWithType: %d: care about %@", &v32, 0x12u);
    }

    objc_msgSend_setupAccount_reason_optional_(self, v29, account, v28, v27);
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v32) = 67109378;
    HIDWORD(v32) = type;
    v33 = 2112;
    accountCopy4 = account;
    v25 = MEMORY[0x29EDCA988];
    v26 = "account:willChangeWithType: %d: ignoring %@";
    goto LABEL_18;
  }

LABEL_24:
  v30 = *MEMORY[0x29EDCA608];
  return 0;
}

@end