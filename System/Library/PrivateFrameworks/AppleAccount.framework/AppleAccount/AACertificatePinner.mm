@interface AACertificatePinner
+ (AACertificatePinner)sharedPinner;
+ (BOOL)isSetupServiceHost:(id)a3;
+ (BOOL)isValidCertificateTrust:(__SecTrust *)a3;
- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5;
- (void)connection:(id)a3 willSendRequestForAuthenticationChallenge:(id)a4;
@end

@implementation AACertificatePinner

+ (AACertificatePinner)sharedPinner
{
  if (sharedPinner_onceToken != -1)
  {
    +[AACertificatePinner sharedPinner];
  }

  v3 = sharedPinner_sharedPinner;

  return v3;
}

uint64_t __35__AACertificatePinner_sharedPinner__block_invoke()
{
  sharedPinner_sharedPinner = objc_alloc_init(AACertificatePinner);

  return MEMORY[0x1EEE66BB8]();
}

+ (BOOL)isSetupServiceHost:(id)a3
{
  v3 = a3;
  v4 = ([v3 isEqualToString:@"setup.icloud.com"] & 1) != 0 || objc_msgSend(v3, "rangeOfString:options:", @"^p(0[1-9]|[1-9][0-9]|[1-9][0-9]{2})-setup\\.icloud\\.com\\z", 1024) != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)connection:(id)a3 willSendRequestForAuthenticationChallenge:(id)a4
{
  v4 = a4;
  v5 = [v4 protectionSpace];
  v6 = [v5 authenticationMethod];
  v7 = [v6 isEqualToString:*MEMORY[0x1E695AB80]];

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = objc_opt_class();
  v9 = [v4 protectionSpace];
  v10 = [v9 host];
  LOBYTE(v8) = [v8 isSetupServiceHost:v10];

  if ((v8 & 1) == 0)
  {
LABEL_6:
    v13 = [v4 sender];
    [v13 performDefaultHandlingForAuthenticationChallenge:v4];
    goto LABEL_7;
  }

  v11 = [v4 protectionSpace];
  v12 = [v11 serverTrust];

  if (!v12)
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

    goto LABEL_12;
  }

  if (([objc_opt_class() isValidCertificateTrust:v12] & 1) == 0)
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

LABEL_12:

    v13 = [v4 sender];
    [v13 cancelAuthenticationChallenge:v4];
    goto LABEL_7;
  }

  v13 = [v4 sender];
  v14 = [MEMORY[0x1E695AC48] credentialForTrust:v12];
  [v13 useCredential:v14 forAuthenticationChallenge:v4];

LABEL_7:
}

- (void)URLSession:(id)a3 didReceiveChallenge:(id)a4 completionHandler:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [v6 protectionSpace];
  v9 = [v8 authenticationMethod];
  v10 = [v9 isEqualToString:*MEMORY[0x1E695AB80]];

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = objc_opt_class();
  v12 = [v6 protectionSpace];
  v13 = [v12 host];
  LOBYTE(v11) = [v11 isSetupServiceHost:v13];

  if ((v11 & 1) == 0)
  {
LABEL_6:
    v7[2](v7, 1, 0);
    goto LABEL_7;
  }

  v14 = [v6 protectionSpace];
  v15 = [v14 serverTrust];

  if (!v15)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

    goto LABEL_12;
  }

  if (([objc_opt_class() isValidCertificateTrust:v15] & 1) == 0)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

LABEL_12:

    v7[2](v7, 2, 0);
    goto LABEL_7;
  }

  v16 = [MEMORY[0x1E695AC48] credentialForTrust:v15];
  (v7)[2](v7, 0, v16);

LABEL_7:
}

+ (BOOL)isValidCertificateTrust:(__SecTrust *)a3
{
  if (!a3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"AACertificatePinner.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"trustRef"}];
  }

  v4 = *MEMORY[0x1E697B2B8];
  if (SecTrustSetPinningPolicyName())
  {
    return 0;
  }

  v10 = 0;
  if (MEMORY[0x1B8C9F960](a3, &v10))
  {
    return 0;
  }

  return v10 == 4 || v10 == 1;
}

@end