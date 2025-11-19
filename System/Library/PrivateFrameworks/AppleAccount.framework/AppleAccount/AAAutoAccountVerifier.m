@interface AAAutoAccountVerifier
- (AAAutoAccountVerifier)init;
- (AAAutoAccountVerifier)initWithAccount:(id)a3;
- (BOOL)search:(id)a3 didFindResults:(id)a4;
- (void)_resendVerificationEmailForAccount:(id)a3 completion:(id)a4;
- (void)_validateToken:(id)a3;
- (void)_verify;
- (void)cancel;
- (void)search:(id)a3 didFinishWithError:(id)a4;
- (void)sendVerificationEmail;
- (void)verifyWithHandler:(id)a3;
@end

@implementation AAAutoAccountVerifier

- (AAAutoAccountVerifier)init
{
  v6.receiver = self;
  v6.super_class = AAAutoAccountVerifier;
  v2 = [(AAAutoAccountVerifier *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    requesterQueue = v2->_requesterQueue;
    v2->_requesterQueue = v3;

    v2->_attempts = 0;
    v2->_canceled = 0;
  }

  return v2;
}

- (AAAutoAccountVerifier)initWithAccount:(id)a3
{
  v5 = a3;
  v6 = [(AAAutoAccountVerifier *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, a3);
  }

  return v7;
}

- (void)sendVerificationEmail
{
  account = self->_account;
  if (account)
  {
    [(AAAutoAccountVerifier *)self _resendVerificationEmailForAccount:account completion:&__block_literal_global_21];
  }
}

void __46__AAAutoAccountVerifier_sendVerificationEmail__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _AALogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Sent verification email", &v9, 2u);
    }
  }

  else if (v6)
  {
    v7 = [v4 localizedDescription];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Error sending verification email: %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)verifyWithHandler:(id)a3
{
  if (self->_handler != a3)
  {
    v4 = [a3 copy];
    handler = self->_handler;
    self->_handler = v4;
  }

  v6 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__AAAutoAccountVerifier_verifyWithHandler___block_invoke;
  block[3] = &unk_1E7C9A868;
  block[4] = self;
  dispatch_after(v6, MEMORY[0x1E69E96A0], block);
}

- (void)cancel
{
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Verifier canceling all operations", v6, 2u);
  }

  self->_canceled = 1;
  [(NSOperationQueue *)self->_requesterQueue cancelAllOperations];
  [(MSSearch *)self->_search cancel];
  search = self->_search;
  self->_search = 0;

  handler = self->_handler;
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0);
  }
}

- (void)_verify
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getMSCriterionTypeSender(void)"];
  [v0 handleFailureInFunction:v1 file:@"AAAutoAccountVerifier.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_validateToken:(id)a3
{
  v4 = a3;
  v5 = _AALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Validating token", buf, 2u);
  }

  v6 = [[AACompleteEmailVettingRequest alloc] initWithAccount:self->_account token:v4];
  v7 = [AARequester alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__AAAutoAccountVerifier__validateToken___block_invoke;
  v9[3] = &unk_1E7C9C9E8;
  v9[4] = self;
  v8 = [(AARequester *)v7 initWithRequest:v6 handler:v9];
  [(NSOperationQueue *)self->_requesterQueue addOperation:v8];
}

void __40__AAAutoAccountVerifier__validateToken___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 error];
      v7 = [v6 description];
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Error vetting email address: %@", &v15, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v9 = v3;
    v8 = ![v9 vettingStatus] || objc_msgSend(v9, "vettingStatus") == 1;
  }

  v10 = _AALogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"Not validated";
    if (v8)
    {
      v11 = @"Validated";
    }

    v15 = 138412290;
    v16 = v11;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Calling handler with validation result: %@", &v15, 0xCu);
  }

  v12 = *(*(a1 + 32) + 32);
  v13 = [v3 error];
  (*(v12 + 16))(v12, v8, v13);

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_resendVerificationEmailForAccount:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(AAEmailVettingRequest *)[AAInitiateEmailVettingRequest alloc] initWithAccount:v6];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__AAAutoAccountVerifier__resendVerificationEmailForAccount_completion___block_invoke;
  v9[3] = &unk_1E7C9BDB8;
  v10 = v5;
  v8 = v5;
  [(AARequest *)v7 performRequestWithHandler:v9];
}

void __71__AAAutoAccountVerifier__resendVerificationEmailForAccount_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v6 = [a3 error];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

- (BOOL)search:(id)a3 didFindResults:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "search founds results", buf, 2u);
  }

  if ([v5 count])
  {
    v31 = self;
    v7 = _AALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v40 = v5;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Email search found results: %@", buf, 0xCu);
    }

    v8 = [MEMORY[0x1E695DF90] dictionary];
    v9 = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v33 = v5;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * i);
          v16 = getMSResultsKeyDateSent();
          v17 = [v15 objectForKey:v16];

          v18 = [v15 objectForKey:_AAVettingToken];
          v19 = [v18 lastObject];

          if (v19)
          {
            [v8 setValue:v19 forKey:v17];
            [v9 addObject:v19];
            v20 = _AALogSystem();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138739971;
              v40 = v19;
              _os_log_impl(&dword_1B6F6A000, v20, OS_LOG_TYPE_DEFAULT, "Found token: %{sensitive}@", buf, 0xCu);
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v12);
    }

    v21 = [v9 count];
    v22 = v21 == 0;
    if (v21)
    {
      v23 = [v8 allKeys];
      v24 = v23;
      if ([v23 count] >= 2)
      {
        v24 = [v23 sortedArrayUsingSelector:sel_compare_];
      }

      v25 = [v24 lastObject];
      v26 = [v8 objectForKey:v25];

      v27 = _AALogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138739971;
        v40 = v26;
        _os_log_impl(&dword_1B6F6A000, v27, OS_LOG_TYPE_DEFAULT, "Most recent token: %{sensitive}@", buf, 0xCu);
      }

      [v32 _validateToken:v26];
      [v32[1] cancel];
      v28 = v32[1];
      v32[1] = 0;
    }

    v5 = v33;
  }

  else
  {
    v22 = 1;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v22;
}

- (void)search:(id)a3 didFinishWithError:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = _AALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "Email search finished with error: %@", buf, 0xCu);
  }

  search = self->_search;
  if (search)
  {
    [(MSSearch *)search cancel];
    v8 = self->_search;
    self->_search = 0;

    if (v5 && [v5 code] != 1501)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __51__AAAutoAccountVerifier_search_didFinishWithError___block_invoke;
      v12[3] = &unk_1E7C9ADE8;
      v12[4] = self;
      v13 = v5;
      dispatch_async(MEMORY[0x1E69E96A0], v12);
    }

    else if (!self->_canceled)
    {
      v9 = dispatch_time(0, 5000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __51__AAAutoAccountVerifier_search_didFinishWithError___block_invoke_2;
      block[3] = &unk_1E7C9A868;
      block[4] = self;
      dispatch_after(v9, MEMORY[0x1E69E96A0], block);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __51__AAAutoAccountVerifier_search_didFinishWithError___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 40));
  }

  return result;
}

@end