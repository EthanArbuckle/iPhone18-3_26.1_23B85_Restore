@interface AASigningSession
+ (id)establishedSessionWithCertURL:(id)a3 sessionURL:(id)a4 error:(id *)a5;
- (AASigningSession)initWithCertURL:(id)a3 sessionURL:(id)a4;
- (id)signatureForData:(id)a3;
- (void)dealloc;
- (void)establishSession;
@end

@implementation AASigningSession

+ (id)establishedSessionWithCertURL:(id)a3 sessionURL:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [[AASigningSession alloc] initWithCertURL:v7 sessionURL:v8];
    [(AASigningSession *)v10 establishSession];
  }

  else if (a5)
  {
    [objc_opt_class() _badURLError];
    *a5 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AASigningSession)initWithCertURL:(id)a3 sessionURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AASigningSession;
  v8 = [(AASigningSession *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    certURL = v8->_certURL;
    v8->_certURL = v9;

    v11 = [v7 copy];
    sessionURL = v8->_sessionURL;
    v8->_sessionURL = v11;
  }

  return v8;
}

- (void)establishSession
{
  v3 = _AALogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B6F6A000, v3, OS_LOG_TYPE_DEFAULT, "Fetching absinthe cert", buf, 2u);
  }

  v4 = [MEMORY[0x1E695DFF8] URLWithString:self->_certURL];
  v5 = dispatch_semaphore_create(0);
  v6 = +[AAURLSession sharedSession];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __36__AASigningSession_establishSession__block_invoke;
  v12 = &unk_1E7C9BD90;
  v13 = self;
  v14 = v5;
  v7 = v5;
  v8 = [v6 dataTaskWithURL:v4 completion:&v9];
  [v8 resume];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void __36__AASigningSession_establishSession__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    if (v9)
    {
      v12 = _AALogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [v10 localizedDescription];
        *buf = 138412290;
        *&buf[4] = v13;
        _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }
    }

    *buf = 0;
    v28 = 0;
    if (!v7)
    {
      v19 = -1;
LABEL_19:
      *(*(a1 + 32) + 32) = v19;
      dispatch_semaphore_signal(*(a1 + 40));
      goto LABEL_20;
    }
  }

  else
  {
    v11 = _AALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = [v7 length];
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Got Absinthe cert: %lu bytes", buf, 0xCu);
    }

    *buf = 0;
    v28 = 0;
  }

  v14 = _AALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 0;
    _os_log_impl(&dword_1B6F6A000, v14, OS_LOG_TYPE_DEFAULT, "Initializing absinthe session", v27, 2u);
  }

  v15 = [v7 bytes];
  v16 = [v7 length];
  v17 = *(a1 + 32);
  KxmB0CKvgWt(v15, v16);
  if (v18)
  {
    v19 = v18;
    v20 = _AALogSystem();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __36__AASigningSession_establishSession__block_invoke_cold_1();
    }

    goto LABEL_19;
  }

  v21 = [MEMORY[0x1E695DEF0] dataWithBytes:*buf length:v28];
  Be81a395Bf0(*buf);
  v22 = [[AASigningSessionRequest alloc] initWithURLString:*(*(a1 + 32) + 24) sessionInfoRequestData:v21];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __36__AASigningSession_establishSession__block_invoke_66;
  v25[3] = &unk_1E7C9BD68;
  v23 = *(a1 + 40);
  v25[4] = *(a1 + 32);
  v26 = v23;
  [(AARequest *)v22 performRequestWithHandler:v25];

LABEL_20:
  v24 = *MEMORY[0x1E69E9840];
}

void __36__AASigningSession_establishSession__block_invoke_66(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v15 = _AALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __36__AASigningSession_establishSession__block_invoke_66_cold_1();
    }

    *(*(a1 + 32) + 32) = -1;
  }

  else
  {
    v10 = [v8 sessionData];
    if (v10)
    {
      v11 = _AALogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "Initialized absinthe session, establishing key", v16, 2u);
      }

      nDYmeMqvWb(*(*(a1 + 32) + 8), [v10 bytes], objc_msgSend(v10, "length"));
      if (v12)
      {
        v13 = v12;
        v14 = _AALogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __36__AASigningSession_establishSession__block_invoke_cold_1();
        }

        *(*(a1 + 32) + 32) = v13;
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)signatureForData:(id)a3
{
  if (self->_context)
  {
    v16 = 0;
    v15 = 0;
    v4 = a3;
    v5 = _AALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Absinthe signing data", v14, 2u);
    }

    context = self->_context;
    v7 = [v4 bytes];
    v8 = [v4 length];

    t1BoNctgaUu66(context, v7, v8, &v16);
    if (v9)
    {
      v10 = v9;
      v11 = _AALogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __36__AASigningSession_establishSession__block_invoke_cold_1();
      }

      self->_error = v10;
    }

    v12 = 0;
    if (v16 && v15)
    {
      v12 = [MEMORY[0x1E695DEF0] dataWithBytes:? length:?];
      Be81a395Bf0(v16);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)dealloc
{
  IW1PcFszqNK(self->_context);
  v3.receiver = self;
  v3.super_class = AASigningSession;
  [(AASigningSession *)&v3 dealloc];
}

void __36__AASigningSession_establishSession__block_invoke_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

void __36__AASigningSession_establishSession__block_invoke_66_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end