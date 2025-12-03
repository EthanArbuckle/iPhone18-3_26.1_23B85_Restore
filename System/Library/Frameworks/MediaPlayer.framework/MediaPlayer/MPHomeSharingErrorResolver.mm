@interface MPHomeSharingErrorResolver
- (BOOL)_errorIsFairPlayError:(id)error;
- (MPHomeSharingErrorResolver)initWithKeybagURL:(id)l accountID:(unint64_t)d accountTokenData:(id)data downloaderAccountID:(unint64_t)iD downloaderAccountTokenData:(id)tokenData familyAccountID:(unint64_t)accountID;
- (void)_performMachineAuthorization;
- (void)_processNextAuthorizationRequest;
- (void)authorizationRequest:(id)request didReceiveResponse:(id)response;
- (void)dealloc;
- (void)request:(id)request didFailWithError:(id)error;
- (void)requestDidFinish:(id)finish;
- (void)resolveError:(id)error;
@end

@implementation MPHomeSharingErrorResolver

- (void)_processNextAuthorizationRequest
{
  if ([(NSMutableArray *)self->_requests count])
  {
    v3 = [(NSMutableArray *)self->_requests objectAtIndex:0];
    [(NSMutableArray *)self->_requests removeObjectAtIndex:0];
    [v3 setDelegate:self];
    [v3 start];
    activeRequest = self->_activeRequest;
    self->_activeRequest = v3;
  }

  else
  {
    if (self->_atLeastOneAuthorizationRequestSuccessful)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    [(MPAVErrorResolver *)self sendDidResolveError:self->_error withResolution:v5];
    activeRequest = self->_error;
    self->_error = 0;
  }
}

- (void)_performMachineAuthorization
{
  v3 = objc_alloc(getSSAuthorizationRequestClass());
  accountTokenData = self->_accountTokenData;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_accountID];
  v12 = [v3 initWithAuthorizationToken:accountTokenData accountIdentifier:v5];

  path = [(NSURL *)self->_keybagURL path];
  [v12 setKeybagPath:path];

  [(NSMutableArray *)self->_requests addObject:v12];
  if (self->_downloaderAccountID)
  {
    [v12 setReason:@"family"];
    v7 = objc_alloc(getSSAuthorizationRequestClass());
    downloaderAccountTokenData = self->_downloaderAccountTokenData;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_downloaderAccountID];
    v10 = [v7 initWithAuthorizationToken:downloaderAccountTokenData accountIdentifier:v9];

    path2 = [(NSURL *)self->_keybagURL path];
    [v10 setKeybagPath:path2];

    [(NSMutableArray *)self->_requests addObject:v10];
  }

  [(MPHomeSharingErrorResolver *)self _processNextAuthorizationRequest];
}

- (BOOL)_errorIsFairPlayError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  v5 = code + 49999;
  v6 = code + 12169;
  if (code == -11835)
  {
    domain = [errorCopy domain];
    v8 = [domain isEqualToString:*MEMORY[0x1E69874D8]];
  }

  else
  {
    v8 = 0;
  }

  if (v5 >> 6 < 0x7D || v6 <= 0x13)
  {
    domain2 = [errorCopy domain];
    v8 |= [domain2 isEqualToString:*MEMORY[0x1E696A768]];
  }

  return v8 & 1;
}

- (void)requestDidFinish:(id)finish
{
  [(SSAuthorizationRequest *)self->_activeRequest setDelegate:0];
  activeRequest = self->_activeRequest;
  self->_activeRequest = 0;

  [(MPHomeSharingErrorResolver *)self _processNextAuthorizationRequest];
}

- (void)request:(id)request didFailWithError:(id)error
{
  [(SSAuthorizationRequest *)self->_activeRequest setDelegate:0, error];
  activeRequest = self->_activeRequest;
  self->_activeRequest = 0;

  [(MPAVErrorResolver *)self sendDidResolveError:self->_error withResolution:0];
  error = self->_error;
  self->_error = 0;
}

- (void)authorizationRequest:(id)request didReceiveResponse:(id)response
{
  v35 = *MEMORY[0x1E69E9840];
  bodyData = [response bodyData];
  if ([bodyData length])
  {
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:bodyData options:0 format:0 error:0];
    v7 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Token response: %{public}@", &buf, 0xCu);
    }

    v8 = [v6 objectForKey:@"keybag"];
    v9 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v8 length];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Got keybag data of length: %lu", &buf, 0xCu);
    }

    if ([v8 length])
    {
      buf = 0uLL;
      v34 = 0;
      if (ICFairPlayGetHardwareInfo())
      {
        uniqueIdentifier = [(MPHomeSharingML3DataProvider *)self->_dataProvider uniqueIdentifier];
        v12 = HSLibraryCacheDirectoryForIdentifier();
        v13 = [v12 stringByAppendingPathComponent:@"Tokens"];

        v14 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 138543362;
          v32 = v13;
          _os_log_impl(&dword_1A238D000, v14, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Key storage directory: %{public}@", v31, 0xCu);
        }

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v16 = [defaultManager fileExistsAtPath:v13];

        if ((v16 & 1) == 0)
        {
          v17 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *v31 = 0;
            _os_log_impl(&dword_1A238D000, v17, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Creating key storage directory...", v31, 2u);
          }

          defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
          [defaultManager2 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:0];
        }

        v30 = 0;
        v19 = XtCqEf5X(0, &buf, [v13 UTF8String], &v30);
        if (v19)
        {
          v20 = v19;
          v21 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *v31 = 67109120;
            LODWORD(v32) = v20;
            _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Unable to create fp context: %d", v31, 8u);
          }
        }

        else
        {
          if ([v8 length])
          {
            [v8 bytes];
            [v8 length];
            lCUad();
            v23 = v22;
            v24 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
            v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
            if (v23)
            {
              if (v25)
              {
                *v31 = 67109120;
                LODWORD(v32) = v23;
                _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Unable to import keybag: %d", v31, 8u);
              }
            }

            else
            {
              if (v25)
              {
                accountID = self->_accountID;
                *v31 = 134217984;
                v32 = accountID;
                _os_log_impl(&dword_1A238D000, v24, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Keybag and token for account ID %llu imported.", v31, 0xCu);
              }

              self->_atLeastOneAuthorizationRequestSuccessful = 1;
            }
          }

          VLxCLgDpiF(v30);
        }
      }

      else
      {
        v13 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v31 = 0;
          _os_log_impl(&dword_1A238D000, v13, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Unable to get hw info", v31, 2u);
        }
      }
    }

    v27 = [v6 objectForKey:@"token"];
    v28 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = [v27 length];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v29;
      _os_log_impl(&dword_1A238D000, v28, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Got token data of length: %lu", &buf, 0xCu);
    }

    if ([v27 length])
    {
      [(MPHomeSharingML3DataProvider *)self->_dataProvider setTokenData:v27 forAuthorizedDSID:self->_accountID];
    }
  }
}

- (void)resolveError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x1E696AA08]];

  if ([(MPHomeSharingErrorResolver *)self _errorIsFairPlayError:errorCopy])
  {
    objc_storeStrong(&self->_error, error);
    [(MPHomeSharingErrorResolver *)self _performMachineAuthorization];
  }

  else if ([v7 code] == -16550)
  {
    v8 = os_log_create("com.apple.amp.mediaplayer", "HomeSharing");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_1A238D000, v8, OS_LOG_TYPE_DEFAULT, "[MPHomeSharingErrorResolver] Reconnecting to HomeSharing Library for error: %{public}@", buf, 0xCu);
    }

    objc_storeStrong(&self->_error, error);
    homeSharingLibrary = [(MPHomeSharingML3DataProvider *)self->_dataProvider homeSharingLibrary];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __43__MPHomeSharingErrorResolver_resolveError___block_invoke;
    v10[3] = &unk_1E767B220;
    v10[4] = self;
    [homeSharingLibrary connectWithCompletionHandler:v10];
  }

  else
  {
    [(MPAVErrorResolver *)self sendDidResolveError:errorCopy withResolution:0];
  }
}

void __43__MPHomeSharingErrorResolver_resolveError___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  [v3 sendDidResolveError:v3[8] withResolution:v4];
  v5 = *(a1 + 32);
  v6 = *(v5 + 64);
  *(v5 + 64) = 0;
}

- (void)dealloc
{
  [(SSAuthorizationRequest *)self->_activeRequest cancel];
  [(SSAuthorizationRequest *)self->_activeRequest setDelegate:0];
  v3.receiver = self;
  v3.super_class = MPHomeSharingErrorResolver;
  [(MPHomeSharingErrorResolver *)&v3 dealloc];
}

- (MPHomeSharingErrorResolver)initWithKeybagURL:(id)l accountID:(unint64_t)d accountTokenData:(id)data downloaderAccountID:(unint64_t)iD downloaderAccountTokenData:(id)tokenData familyAccountID:(unint64_t)accountID
{
  lCopy = l;
  dataCopy = data;
  tokenDataCopy = tokenData;
  if (!d || ![dataCopy length])
  {
    goto LABEL_9;
  }

  if (iD)
  {
    if (!accountID)
    {
      goto LABEL_10;
    }

    if (![tokenDataCopy length])
    {
LABEL_9:
      accountID = 0;
      goto LABEL_10;
    }
  }

  v23.receiver = self;
  v23.super_class = MPHomeSharingErrorResolver;
  v17 = [(MPHomeSharingErrorResolver *)&v23 init];
  if (v17)
  {
    v18 = [lCopy copy];
    keybagURL = v17->_keybagURL;
    v17->_keybagURL = v18;

    v17->_accountID = d;
    objc_storeStrong(&v17->_accountTokenData, data);
    v17->_downloaderAccountID = iD;
    objc_storeStrong(&v17->_downloaderAccountTokenData, tokenData);
    v17->_familyAccountID = accountID;
    v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    requests = v17->_requests;
    v17->_requests = v20;
  }

  self = v17;
  accountID = self;
LABEL_10:

  return accountID;
}

@end