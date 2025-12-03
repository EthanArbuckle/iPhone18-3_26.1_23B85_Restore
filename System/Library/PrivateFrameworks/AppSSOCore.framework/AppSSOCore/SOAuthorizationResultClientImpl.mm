@interface SOAuthorizationResultClientImpl
- (void)authorization:(id)authorization didCompleteWithError:(id)error;
- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers;
- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body;
- (void)authorizationDidCancel:(id)cancel;
- (void)authorizationDidComplete:(id)complete;
- (void)authorizationDidNotHandle:(id)handle;
@end

@implementation SOAuthorizationResultClientImpl

- (void)authorizationDidNotHandle:(id)handle
{
  v12 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOAuthorizationResultClientImpl authorizationDidNotHandle:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = [SOErrorHelper errorWithCode:-5];
  [(SOAuthorizationResultClientImpl *)self authorization:handleCopy didCompleteWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)authorizationDidCancel:(id)cancel
{
  v12 = *MEMORY[0x1E69E9840];
  cancelCopy = cancel;
  v5 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOAuthorizationResultClientImpl authorizationDidCancel:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = [SOErrorHelper errorWithCode:-2];
  [(SOAuthorizationResultClientImpl *)self authorization:cancelCopy didCompleteWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)authorizationDidComplete:(id)complete
{
  v12 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  v5 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOAuthorizationResultClientImpl authorizationDidComplete:]";
    v10 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = [SOErrorHelper errorWithCode:-3];
  [(SOAuthorizationResultClientImpl *)self authorization:completeCopy didCompleteWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)authorization:(id)authorization didCompleteWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  errorCopy = error;
  v8 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SOAuthorizationResultClientImpl authorization:didCompleteWithError:]";
    v16 = 2114;
    v17 = errorCopy;
    v18 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s error=%{public}@ on %@", &v14, 0x20u);
  }

  authorizationHandleCredentialCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];

  if (authorizationHandleCredentialCompletion)
  {
    authorizationHandleCredentialCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];
    (authorizationHandleCredentialCompletion2)[2](authorizationHandleCredentialCompletion2, 0, errorCopy);

    [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleCredentialCompletion:0];
  }

  else
  {
    authorizationHandleResponseCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];

    if (authorizationHandleResponseCompletion)
    {
      authorizationHandleResponseCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];
      (authorizationHandleResponseCompletion2)[2](authorizationHandleResponseCompletion2, 0, 0, errorCopy);

      [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleResponseCompletion:0];
    }
  }

  [_authorizationPool removeAuthorization:authorizationCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)authorization:(id)authorization didCompleteWithHTTPResponse:(id)response httpBody:(id)body
{
  v30 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  responseCopy = response;
  bodyCopy = body;
  v11 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136316419;
    v19 = "[SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPResponse:httpBody:]";
    v20 = 2160;
    v21 = 1752392040;
    v22 = 2117;
    v23 = responseCopy;
    v24 = 2160;
    v25 = 1752392040;
    v26 = 2117;
    v27 = bodyCopy;
    v28 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v11, OS_LOG_TYPE_DEFAULT, "%s httpResponse = %{sensitive, mask.hash}@, httpBody = %{sensitive, mask.hash}@ on %@", &v18, 0x3Eu);
  }

  authorizationHandleCredentialCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];

  if (authorizationHandleCredentialCompletion)
  {
    v13 = SO_LOG_SOClientImpl();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPResponse:httpBody:];
    }

    authorizationHandleCredentialCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];
    authorizationHandleCredentialCompletion2[2](authorizationHandleCredentialCompletion2, 0, _unexpectedResponseError);

    [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleCredentialCompletion:0];
  }

  else
  {
    authorizationHandleResponseCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];

    if (authorizationHandleResponseCompletion)
    {
      authorizationHandleResponseCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];
      (authorizationHandleResponseCompletion2)[2](authorizationHandleResponseCompletion2, [responseCopy _CFURLResponse], bodyCopy, 0);

      [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleResponseCompletion:0];
    }
  }

  [_authorizationPool removeAuthorization:authorizationCopy];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)authorization:(id)authorization didCompleteWithHTTPAuthorizationHeaders:(id)headers
{
  v23 = *MEMORY[0x1E69E9840];
  authorizationCopy = authorization;
  headersCopy = headers;
  v8 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315907;
    v16 = "[SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPAuthorizationHeaders:]";
    v17 = 2160;
    v18 = 1752392040;
    v19 = 2117;
    v20 = headersCopy;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s httpAuthorizationHeaders = %{sensitive, mask.hash}@ on %@", &v15, 0x2Au);
  }

  authorizationHandleCredentialCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];

  if (authorizationHandleCredentialCompletion)
  {
    authorizationHandleCredentialCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];
    (authorizationHandleCredentialCompletion2)[2](authorizationHandleCredentialCompletion2, headersCopy, 0);

    [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleCredentialCompletion:0];
  }

  else
  {
    authorizationHandleResponseCompletion = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];

    if (authorizationHandleResponseCompletion)
    {
      v12 = SO_LOG_SOClientImpl();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPResponse:httpBody:];
      }

      authorizationHandleResponseCompletion2 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];
      authorizationHandleResponseCompletion2[2](authorizationHandleResponseCompletion2, 0, 0, _unexpectedResponseError);

      [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleResponseCompletion:0];
    }
  }

  [_authorizationPool removeAuthorization:authorizationCopy];

  v14 = *MEMORY[0x1E69E9840];
}

@end