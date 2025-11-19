@interface SLExternalServiceGatekeeper
- (id)initForPermissionToAccessURL:(id)a3 fromURLString:(id)a4 completion:(id)a5;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7;
- (void)_completeWithURLToLoad:(id)a3 error:(id)a4;
@end

@implementation SLExternalServiceGatekeeper

- (id)initForPermissionToAccessURL:(id)a3 fromURLString:(id)a4 completion:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v35.receiver = self;
  v35.super_class = SLExternalServiceGatekeeper;
  v13 = [(SLExternalServiceGatekeeper *)&v35 init];
  if (v13)
  {
    v14 = [MEMORY[0x1E695DFF8] URLWithString:v11];
    v15 = [v14 host];
    redirectHost = v13->_redirectHost;
    v13->_redirectHost = v15;

    objc_storeStrong(&v13->_url, a3);
    v17 = MEMORY[0x1C6917BF0](v12);
    completion = v13->_completion;
    v13->_completion = v17;

    if ([(SLExternalServiceGatekeeper *)v13 _gatekeepingIsNotAvailable])
    {
      v19 = 0;
LABEL_12:
      v25 = [MEMORY[0x1E696AF68] requestWithURL:v19 cachePolicy:1 timeoutInterval:{30.0, v33}];
      _SLLog(v5, 7, @"SLExternalServiceGatekeeper loading modified URL: %{private}@");
      v26 = MEMORY[0x1E696AF78];
      v27 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
      v28 = [MEMORY[0x1E696ADC8] mainQueue];
      v29 = [v26 sessionWithConfiguration:v27 delegate:v13 delegateQueue:v28];

      v30 = [v29 dataTaskWithRequest:v25];
      [v30 resume];

      v31 = v13;
      goto LABEL_13;
    }

    v20 = [MEMORY[0x1E696AF20] componentsWithURL:v10 resolvingAgainstBaseURL:1];
    v21 = [MEMORY[0x1E696AF20] componentsWithString:v11];
    v22 = [v20 host];
    v23 = [v20 path];
    if ([v22 length] && objc_msgSend(v23, "length"))
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@%@", v22, v23];
    }

    else
    {
      if (![v22 length])
      {
        _SLLog(v5, 3, @"Failed to parse hostname from loginURL, this can't be good...");
        goto LABEL_11;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"/%@", v22, v34];
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

- (void)_completeWithURLToLoad:(id)a3 error:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  completion = v7->_completion;
  if (completion)
  {
    completion[2](completion, v10, v6);
    v9 = v7->_completion;
    v7->_completion = 0;
  }

  objc_sync_exit(v7);
}

- (void)URLSession:(id)a3 task:(id)a4 willPerformHTTPRedirection:(id)a5 newRequest:(id)a6 completionHandler:(id)a7
{
  v33[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a7;
  v14 = [v12 URL];
  v29 = [v14 host];
  _SLLog(v7, 7, @"SLExternalServiceGatekeeper willSendRequest called for host: %@");

  v15 = [v12 URL];
  v16 = [v15 host];
  v17 = [(NSURL *)self->_url host];
  v18 = [v16 isEqualToString:v17];

  if (v18)
  {
    [v11 invalidateAndCancel];
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:self->_url error:0];
LABEL_6:
    v13[2](v13, 0);
    goto LABEL_7;
  }

  v19 = [v12 URL];
  v20 = [v19 host];
  v21 = [v20 isEqualToString:self->_redirectHost];

  v22 = [v12 URL];
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

  v30 = [v22 host];
  _SLLog(v7, 7, @"SLExternalServiceGatekeeper continuing to load original URL with host: %@");

  (v13)[2](v13, v12);
LABEL_7:
}

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v8 = a6;
  v9 = a5;
  _SLLog(v6, 7, @"SLExternalServiceGatekeeper received authentication challenge");
  v10 = [v9 protectionSpace];
  v11 = [v10 serverTrust];

  v12 = [v9 protectionSpace];

  v13 = [v12 authenticationMethod];
  v14 = [v13 isEqualToString:*MEMORY[0x1E696A968]];

  if (v14)
  {
    v20 = 0;
    if (!MEMORY[0x1C6917600](v11, &v20) && (v20 == 4 || v20 == 1))
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

          v19 = [MEMORY[0x1E696AF30] credentialForTrust:v11];
          v8[2](v8, 0, v19);

          goto LABEL_4;
        }
      }
    }
  }

  _SLLog(v6, 7, @"SLExternalServiceGatekeeper failed to identify Apple's EV certificate. Cancelling.");
  v8[2](v8, 2, 0);
LABEL_4:
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  if (self->_completion)
  {
    v6 = a4;
    _SLLog(v4, 7, @"SLExternalServiceGatekeeper failed with error - %@");
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:0 error:v6, v6];
  }
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  if (self->_completion)
  {
    v7 = a5;
    _SLLog(v5, 7, @"SLExternalServiceGatekeeper completed with error - %@");
    [(SLExternalServiceGatekeeper *)self _completeWithURLToLoad:0 error:v7, v7];
  }
}

@end