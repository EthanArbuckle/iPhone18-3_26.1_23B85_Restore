@interface CloudKitAuthenticationPlugin
+ (BOOL)supportsAccountType:(id)a3;
- (BOOL)_accountAccessIsAllowedForAccount:(id)a3 client:(id)a4;
- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6;
- (void)renewCredentialsForAccount:(id)a3 accountStore:(id)a4 reason:(id)a5 completion:(id)a6;
- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 completion:(id)a5;
@end

@implementation CloudKitAuthenticationPlugin

+ (BOOL)supportsAccountType:(id)a3
{
  v3 = [a3 identifier];
  v4 = [v3 isEqualToString:*MEMORY[0x29EDB81F8]];

  return v4;
}

- (BOOL)_accountAccessIsAllowedForAccount:(id)a3 client:(id)a4
{
  v4 = [a3 parentAccount];
  v5 = v4;
  if (v4)
  {
    if (![v4 aa_isSuspended])
    {
      v8 = 1;
      goto LABEL_13;
    }

    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v6 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_29C816000, v6, OS_LOG_TYPE_INFO, "Cannot return the CloudKit app token, since you need to verify your iCloud T&Cs or your account is in suspended mode.", v10, 2u);
    }
  }

  else
  {
    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v7 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29C816000, v7, OS_LOG_TYPE_ERROR, "CloudKit account has no parent!", buf, 2u);
    }
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)credentialForAccount:(id)a3 client:(id)a4 store:(id)a5 error:(id *)a6
{
  v25 = *MEMORY[0x29EDCA608];
  v8 = a3;
  v9 = a4;
  if (([v9 hasEntitlement:*MEMORY[0x29EDB83E0]] & 1) == 0 && (objc_msgSend(v9, "hasEntitlement:", *MEMORY[0x29EDB83E8]) & 1) == 0)
  {
    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v20 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = v9;
      _os_log_impl(&dword_29C816000, v20, OS_LOG_TYPE_INFO, "Cannot return the CloudKit app token, since %@ is a non-entitled client.", &v23, 0xCu);
    }

    goto LABEL_15;
  }

  if (![(CloudKitAuthenticationPlugin *)self _accountAccessIsAllowedForAccount:v8 client:v9])
  {
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v10 = MEMORY[0x29EDBE350];
  v11 = [v8 parentAccount];
  v12 = [v11 username];
  v13 = [v10 passwordForServiceName:@"com.apple.appleaccount.cloudkit.token" username:v12 accessGroup:@"appleaccount"];

  if (v13)
  {
    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v14 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_29C816000, v14, OS_LOG_TYPE_INFO, "Found stashed cloudKitToken.", &v23, 2u);
    }

    v15 = objc_alloc_init(MEMORY[0x29EDB83C0]);
    [v15 setToken:v13];
    [v8 setCredential:v15];
    [MEMORY[0x29EDBDFF8] setCredentialForAccount:v8 error:0];
    v16 = MEMORY[0x29EDBE350];
    v17 = [v8 parentAccount];
    v18 = [v17 username];
    [v16 removePasswordForService:@"com.apple.appleaccount.cloudkit.token" username:v18 accessGroup:@"appleaccount"];
  }

  v19 = [MEMORY[0x29EDBDFF8] credentialForAccount:v8 clientID:0 error:0];

LABEL_16:
  v21 = *MEMORY[0x29EDCA608];

  return v19;
}

- (void)verifyCredentialsForAccount:(id)a3 accountStore:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (*MEMORY[0x29EDB8850] != -1)
  {
    dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
  }

  v10 = *MEMORY[0x29EDB8840];
  if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_error_impl(&dword_29C816000, v10, OS_LOG_TYPE_ERROR, "verifyCredentialsForAccount: is not supported for CloudKit Accounts", v11, 2u);
  }

  (*(v9 + 2))(v9, 0, 0);
}

- (void)renewCredentialsForAccount:(id)a3 accountStore:(id)a4 reason:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (*MEMORY[0x29EDB8850] != -1)
  {
    dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
  }

  v13 = *MEMORY[0x29EDB8840];
  if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_29C816000, v13, OS_LOG_TYPE_ERROR, "renewCredentialsForAccount: is not supported for CloudKit Accounts", v15, 2u);
  }

  v14 = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB8300] code:4 userInfo:0];
  v12[2](v12, 2, v14);
}

@end