@interface SLExternalServiceGatekeeper
- (id)initForPermissionToAccessURL:(id)l fromURLString:(id)string completion:(id)completion;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler;
- (void)_completeWithURLToLoad:(id)load error:(id)error;
@end

@implementation SLExternalServiceGatekeeper

- (id)initForPermissionToAccessURL:(id)l fromURLString:(id)string completion:(id)completion
{
  lCopy = l;
  stringCopy = string;
  completionCopy = completion;
  v35.receiver = self;
  v35.super_class = SLExternalServiceGatekeeper;
  v13 = [(SLExternalServiceGatekeeper *)&v35 init];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
    host = [v14 host];
    redirectHost = v13->_redirectHost;
    v13->_redirectHost = host;

    objc_storeStrong(&v13->_url, l);
    v17 = MEMORY[0x1C6917BF0](completionCopy);
    completion = v13->_completion;
    v13->_completion = v17;

    if ([(SLExternalServiceGatekeeper *)v13 _gatekeepingIsNotAvailable])
    {
      v19 = 0;
LABEL_12:
      v25 = [MEMORY[0x1E696AF68] requestWithURL:v19 cachePolicy:1 timeoutInterval:{30.0, v33}];
      _SLLog(v5, 7, @"SLExternalServiceGatekeeper loading modified URL: %{private}@");
      v26 = MEMORY[0x1E696AF78];
      ephemeralSessionConfiguration = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
      mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
      v29 = [v26 sessionWithConfiguration:ephemeralSessionConfiguration delegate:v13 delegateQueue:mainQueue];

      v30 = [v29 dataTaskWithRequest:v25];
      [v30 resume];

      v31 = v13;
      goto LABEL_13;
    }

    v20 = [MEMORY[0x1E696AF20] componentsWithURL:lCopy resolvingAgainstBaseURL:1];
    v21 = [MEMORY[0x1E696AF20] componentsWithString:stringCopy];
    host2 = [v20 host];
    path = [v20 path];
    if ([host2 length] && objc_msgSend(path, "length"))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@%@", host2, path];
    }

    else
    {
      if (![host2 length])
      {
        _SLLog(v5, 3, @"Failed to parse hostname from loginURL, this can't be good...");
        goto LABEL_11;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", host2, v34];
    }
    v24 = ;
    [v21 setPath:v24];

LABEL_11:
    v19 = [v21 URL];
    v33 = v19;
    _SLLog(v5, 7, @"SLExternalServiceGatekeeper modified the URL: %{private}@");

    goto LABEL_12;
  }

LABEL_13:

  return v13;
}

- (void)_completeWithURLToLoad:(id)load error:(id)error
{
  loadCopy = load;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  completion = selfCopy->_completion;
  if (completion)
  {
    completion[2](completion, loadCopy, errorCopy);
    v9 = selfCopy->_completion;
    selfCopy->_completion = 0;
  }

  objc_sync_exit(selfCopy);
}

- (void)URLSession:(id)session task:(id)task willPerformHTTPRedirection:(id)redirection newRequest:(id)request completionHandler:(id)handler
{
  v33[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  requestCopy = request;
  handlerCopy = handler;
  v14 = [requestCopy URL];
  host = [v14 host];
  _SLLog(v7, 7, @"SLExternalServiceGatekeeper willSendRequest called for host: %@");

  v15 = [requestCopy URL];
  host2 = [v15 host];
  host3 = [(NSURL *)self->_url host];
  v18 = [host2 isEqualToString:host3];

  if (v18)
  {
    [sessionCopy invalidateAndCancel];
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:self->_url error:0];
LABEL_6:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_7;
  }

  v19 = [requestCopy URL];
  host4 = [v19 host];
  v21 = [host4 isEqualToString:self->_redirectHost];

  v22 = [requestCopy URL];
  v23 = v22;
  if ((v21 & 1) == 0)
  {
    v31 = v22;
    _SLLog(v7, 3, @"SLExternalServiceGatekeeper continuing to load unexpected URL: %{private}@");

    v24 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class(), v31, v32}];
    v26 = [v25 localizedStringForKey:@"BAD_REDIRECT_ERROR_DESCRIPTION" value:&stru_1F41EC300 table:@"Localizable"];
    v33[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v28 = [v24 errorWithDomain:@"SLErrorDomain" code:-2 userInfo:v27];
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:0 error:v28];

    goto LABEL_6;
  }

  host5 = [v22 host];
  _SLLog(v7, 7, @"SLExternalServiceGatekeeper continuing to load original URL with host: %@");

  (handlerCopy)[2](handlerCopy, requestCopy);
LABEL_7:
}

- (void)URLSession:(id)session task:(id)task didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  handlerCopy = handler;
  challengeCopy = challenge;
  _SLLog(v6, 7, @"SLExternalServiceGatekeeper received authentication challenge");
  protectionSpace = [challengeCopy protectionSpace];
  serverTrust = [protectionSpace serverTrust];

  protectionSpace2 = [challengeCopy protectionSpace];

  authenticationMethod = [protectionSpace2 authenticationMethod];
  v14 = [authenticationMethod isEqualToString:*MEMORY[0x1E696A968]];

  if (v14)
  {
    v20 = 0;
    if (!MEMORY[0x1C6917600](serverTrust, &v20) && (v20 == 4 || v20 == 1))
    {
      v15 = SecTrustCopyInfo();
      if (v15)
      {
        v16 = v15;
        v17 = [v15 objectForKeyedSubscript:*MEMORY[0x1E697B340]];
        v18 = v17;
        if (v17 && [v17 isEqualToString:@"Apple Inc."])
        {
          _SLLog(v6, 7, @"SLExternalServiceGatekeeper verified this challenge is Apple's EV SSL certificate");

          v19 = [MEMORY[0x1E696AF30] credentialForTrust:serverTrust];
          handlerCopy[2](handlerCopy, 0, v19);

          goto LABEL_4;
        }
      }
    }
  }

  _SLLog(v6, 7, @"SLExternalServiceGatekeeper failed to identify Apple's EV certificate. Cancelling.");
  handlerCopy[2](handlerCopy, 2, 0);
LABEL_4:
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  if (self->_completion)
  {
    errorCopy = error;
    _SLLog(v4, 7, @"SLExternalServiceGatekeeper failed with error - %@");
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:0 error:errorCopy, errorCopy];
  }
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  if (self->_completion)
  {
    errorCopy = error;
    _SLLog(v5, 7, @"SLExternalServiceGatekeeper completed with error - %@");
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:0 error:errorCopy, errorCopy];
  }
}

@end