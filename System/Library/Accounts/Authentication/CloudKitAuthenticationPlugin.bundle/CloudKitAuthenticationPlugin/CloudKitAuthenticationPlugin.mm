@interface CloudKitAuthenticationPlugin
+ (BOOL)supportsAccountType:(id)type;
- (BOOL)_accountAccessIsAllowedForAccount:(id)account client:(id)client;
- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error;
- (void)renewCredentialsForAccount:(id)account accountStore:(id)store reason:(id)reason completion:(id)completion;
- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store completion:(id)completion;
@end

@implementation CloudKitAuthenticationPlugin

+ (BOOL)supportsAccountType:(id)type
{
  identifier = [type identifier];
  v4 = [identifier isEqualToString:*MEMORY[0x29EDB81F8]];

  return v4;
}

- (BOOL)_accountAccessIsAllowedForAccount:(id)account client:(id)client
{
  parentAccount = [account parentAccount];
  v5 = parentAccount;
  if (parentAccount)
  {
    if (![parentAccount aa_isSuspended])
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

- (id)credentialForAccount:(id)account client:(id)client store:(id)store error:(id *)error
{
  v25 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  clientCopy = client;
  if (([clientCopy hasEntitlement:*MEMORY[0x29EDB83E0]] & 1) == 0 && (objc_msgSend(clientCopy, "hasEntitlement:", *MEMORY[0x29EDB83E8]) & 1) == 0)
  {
    if (*MEMORY[0x29EDB8850] != -1)
    {
      dispatch_once(MEMORY[0x29EDB8850], *MEMORY[0x29EDB8848]);
    }

    v20 = *MEMORY[0x29EDB8840];
    if (os_log_type_enabled(*MEMORY[0x29EDB8840], OS_LOG_TYPE_INFO))
    {
      v23 = 138412290;
      v24 = clientCopy;
      _os_log_impl(&dword_29C816000, v20, OS_LOG_TYPE_INFO, "Cannot return the CloudKit app token, since %@ is a non-entitled client.", &v23, 0xCu);
    }

    goto LABEL_15;
  }

  if (![(CloudKitAuthenticationPlugin *)self _accountAccessIsAllowedForAccount:accountCopy client:clientCopy])
  {
LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v10 = MEMORY[0x29EDBE350];
  parentAccount = [accountCopy parentAccount];
  username = [parentAccount username];
  v13 = [v10 passwordForServiceName:@"com.apple.appleaccount.cloudkit.token" username:username accessGroup:@"appleaccount"];

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
    [accountCopy setCredential:v15];
    [MEMORY[0x29EDBDFF8] setCredentialForAccount:accountCopy error:0];
    v16 = MEMORY[0x29EDBE350];
    parentAccount2 = [accountCopy parentAccount];
    username2 = [parentAccount2 username];
    [v16 removePasswordForService:@"com.apple.appleaccount.cloudkit.token" username:username2 accessGroup:@"appleaccount"];
  }

  v19 = [MEMORY[0x29EDBDFF8] credentialForAccount:accountCopy clientID:0 error:0];

LABEL_16:
  v21 = *MEMORY[0x29EDCA608];

  return v19;
}

- (void)verifyCredentialsForAccount:(id)account accountStore:(id)store completion:(id)completion
{
  accountCopy = account;
  storeCopy = store;
  completionCopy = completion;
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

  (*(completionCopy + 2))(completionCopy, 0, 0);
}

- (void)renewCredentialsForAccount:(id)account accountStore:(id)store reason:(id)reason completion:(id)completion
{
  accountCopy = account;
  storeCopy = store;
  reasonCopy = reason;
  completionCopy = completion;
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
  completionCopy[2](completionCopy, 2, v14);
}

@end