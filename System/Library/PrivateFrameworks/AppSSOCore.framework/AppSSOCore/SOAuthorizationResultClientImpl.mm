@interface SOAuthorizationResultClientImpl
- (void)authorization:(id)a3 didCompleteWithError:(id)a4;
- (void)authorization:(id)a3 didCompleteWithHTTPAuthorizationHeaders:(id)a4;
- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5;
- (void)authorizationDidCancel:(id)a3;
- (void)authorizationDidComplete:(id)a3;
- (void)authorizationDidNotHandle:(id)a3;
@end

@implementation SOAuthorizationResultClientImpl

- (void)authorizationDidNotHandle:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOAuthorizationResultClientImpl authorizationDidNotHandle:]";
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = [SOErrorHelper errorWithCode:-5];
  [(SOAuthorizationResultClientImpl *)self authorization:v4 didCompleteWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)authorizationDidCancel:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOAuthorizationResultClientImpl authorizationDidCancel:]";
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = [SOErrorHelper errorWithCode:-2];
  [(SOAuthorizationResultClientImpl *)self authorization:v4 didCompleteWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)authorizationDidComplete:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[SOAuthorizationResultClientImpl authorizationDidComplete:]";
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_1CA238000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v8, 0x16u);
  }

  v6 = [SOErrorHelper errorWithCode:-3];
  [(SOAuthorizationResultClientImpl *)self authorization:v4 didCompleteWithError:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)authorization:(id)a3 didCompleteWithError:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315650;
    v15 = "[SOAuthorizationResultClientImpl authorization:didCompleteWithError:]";
    v16 = 2114;
    v17 = v7;
    v18 = 2112;
    v19 = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s error=%{public}@ on %@", &v14, 0x20u);
  }

  v9 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];

  if (v9)
  {
    v10 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];
    (v10)[2](v10, 0, v7);

    [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleCredentialCompletion:0];
  }

  else
  {
    v11 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];

    if (v11)
    {
      v12 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];
      (v12)[2](v12, 0, 0, v7);

      [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleResponseCompletion:0];
    }
  }

  [_authorizationPool removeAuthorization:v6];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)authorization:(id)a3 didCompleteWithHTTPResponse:(id)a4 httpBody:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136316419;
    v19 = "[SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPResponse:httpBody:]";
    v20 = 2160;
    v21 = 1752392040;
    v22 = 2117;
    v23 = v9;
    v24 = 2160;
    v25 = 1752392040;
    v26 = 2117;
    v27 = v10;
    v28 = 2112;
    v29 = self;
    _os_log_impl(&dword_1CA238000, v11, OS_LOG_TYPE_DEFAULT, "%s httpResponse = %{sensitive, mask.hash}@, httpBody = %{sensitive, mask.hash}@ on %@", &v18, 0x3Eu);
  }

  v12 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];

  if (v12)
  {
    v13 = SO_LOG_SOClientImpl();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPResponse:httpBody:];
    }

    v14 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];
    v14[2](v14, 0, _unexpectedResponseError);

    [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleCredentialCompletion:0];
  }

  else
  {
    v15 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];

    if (v15)
    {
      v16 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];
      (v16)[2](v16, [v9 _CFURLResponse], v10, 0);

      [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleResponseCompletion:0];
    }
  }

  [_authorizationPool removeAuthorization:v8];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)authorization:(id)a3 didCompleteWithHTTPAuthorizationHeaders:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = SO_LOG_SOClientImpl();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315907;
    v16 = "[SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPAuthorizationHeaders:]";
    v17 = 2160;
    v18 = 1752392040;
    v19 = 2117;
    v20 = v7;
    v21 = 2112;
    v22 = self;
    _os_log_impl(&dword_1CA238000, v8, OS_LOG_TYPE_DEFAULT, "%s httpAuthorizationHeaders = %{sensitive, mask.hash}@ on %@", &v15, 0x2Au);
  }

  v9 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];

  if (v9)
  {
    v10 = [(SOAuthorizationResultClientImpl *)self authorizationHandleCredentialCompletion];
    (v10)[2](v10, v7, 0);

    [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleCredentialCompletion:0];
  }

  else
  {
    v11 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];

    if (v11)
    {
      v12 = SO_LOG_SOClientImpl();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [SOAuthorizationResultClientImpl authorization:didCompleteWithHTTPResponse:httpBody:];
      }

      v13 = [(SOAuthorizationResultClientImpl *)self authorizationHandleResponseCompletion];
      v13[2](v13, 0, 0, _unexpectedResponseError);

      [(SOAuthorizationResultClientImpl *)self setAuthorizationHandleResponseCompletion:0];
    }
  }

  [_authorizationPool removeAuthorization:v6];

  v14 = *MEMORY[0x1E69E9840];
}

@end