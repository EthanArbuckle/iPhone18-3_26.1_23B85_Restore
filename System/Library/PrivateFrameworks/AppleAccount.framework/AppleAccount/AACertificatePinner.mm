@interface AACertificatePinner
+ (AACertificatePinner)sharedPinner;
+ (BOOL)isSetupServiceHost:(id)host;
+ (BOOL)isValidCertificateTrust:(__SecTrust *)trust;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge;
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

+ (BOOL)isSetupServiceHost:(id)host
{
  hostCopy = host;
  v4 = ([hostCopy isEqualToString:@"setup.icloud.com"] & 1) != 0 || objc_msgSend(hostCopy, "rangeOfString:options:", @"^p(0[1-9]|[1-9][0-9]|[1-9][0-9]{2})-setup\\.icloud\\.com\\z", 1024) != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (void)connection:(id)connection willSendRequestForAuthenticationChallenge:(id)challenge
{
  challengeCopy = challenge;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v7 = [authenticationMethod isEqualToString:*MEMORY[0x1E695AB80]];

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = objc_opt_class();
  protectionSpace2 = [challengeCopy protectionSpace];
  host = [protectionSpace2 host];
  LOBYTE(v8) = [v8 isSetupServiceHost:host];

  if ((v8 & 1) == 0)
  {
LABEL_6:
    sender = [challengeCopy sender];
    [sender performDefaultHandlingForAuthenticationChallenge:challengeCopy];
    goto LABEL_7;
  }

  protectionSpace3 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace3 serverTrust];

  if (!serverTrust)
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

    goto LABEL_12;
  }

  if (([objc_opt_class() isValidCertificateTrust:serverTrust] & 1) == 0)
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

LABEL_12:

    sender = [challengeCopy sender];
    [sender cancelAuthenticationChallenge:challengeCopy];
    goto LABEL_7;
  }

  sender = [challengeCopy sender];
  v14 = [MEMORY[0x1E695AC48] credentialForTrust:serverTrust];
  [sender useCredential:v14 forAuthenticationChallenge:challengeCopy];

LABEL_7:
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v10 = [authenticationMethod isEqualToString:*MEMORY[0x1E695AB80]];

  if ((v10 & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = objc_opt_class();
  protectionSpace2 = [challengeCopy protectionSpace];
  host = [protectionSpace2 host];
  LOBYTE(v11) = [v11 isSetupServiceHost:host];

  if ((v11 & 1) == 0)
  {
LABEL_6:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_7;
  }

  protectionSpace3 = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace3 serverTrust];

  if (!serverTrust)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

    goto LABEL_12;
  }

  if (([objc_opt_class() isValidCertificateTrust:serverTrust] & 1) == 0)
  {
    v17 = _AALogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [AACertificatePinner(NSURLUtilities) connection:willSendRequestForAuthenticationChallenge:];
    }

LABEL_12:

    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_7;
  }

  v16 = [MEMORY[0x1E695AC48] credentialForTrust:serverTrust];
  (handlerCopy)[2](handlerCopy, 0, v16);

LABEL_7:
}

+ (BOOL)isValidCertificateTrust:(__SecTrust *)trust
{
  if (!trust)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"AACertificatePinner.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"trustRef"}];
  }

  v4 = *MEMORY[0x1E697B2B8];
  if (SecTrustSetPinningPolicyName())
  {
    return 0;
  }

  v10 = 0;
  if (MEMORY[0x1B8C9F960](trust, &v10))
  {
    return 0;
  }

  return v10 == 4 || v10 == 1;
}

@end