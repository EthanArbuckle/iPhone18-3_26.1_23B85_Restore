@interface CNContactPosterDataXPCAccess
+ (id)log;
- (BOOL)executeCreateRequest:(id)request error:(id *)error;
- (BOOL)executeDeleteRequest:(id)request error:(id *)error;
- (BOOL)executeUpdateRequest:(id)request error:(id *)error;
- (CNContactPosterDataXPCAccess)init;
- (CNContactPosterDataXPCAccess)initWithConnectionFactory:(id)factory;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (int64_t)countForFetchRequest:(id)request error:(id *)error;
- (void)performWithService:(id)service;
@end

@implementation CNContactPosterDataXPCAccess

- (CNContactPosterDataXPCAccess)init
{
  v3 = objc_opt_new();
  v4 = [(CNContactPosterDataXPCAccess *)self initWithConnectionFactory:v3];

  return v4;
}

+ (id)log
{
  if (log_cn_once_token_0_22 != -1)
  {
    +[CNContactPosterDataXPCAccess log];
  }

  v3 = log_cn_once_object_0_22;

  return v3;
}

uint64_t __35__CNContactPosterDataXPCAccess_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "posters-xpc");
  v1 = log_cn_once_object_0_22;
  log_cn_once_object_0_22 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNContactPosterDataXPCAccess)initWithConnectionFactory:(id)factory
{
  factoryCopy = factory;
  v10.receiver = self;
  v10.super_class = CNContactPosterDataXPCAccess;
  v6 = [(CNContactPosterDataXPCAccess *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connectionFactory, factory);
    v8 = v7;
  }

  return v7;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__40;
  v27 = __Block_byref_object_dispose__40;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__40;
  v21 = __Block_byref_object_dispose__40;
  v22 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__CNContactPosterDataXPCAccess_executeFetchRequest_error___block_invoke;
  v13[3] = &unk_1E7417D00;
  v7 = requestCopy;
  v14 = v7;
  v15 = &v23;
  v16 = &v17;
  [(CNContactPosterDataXPCAccess *)self performWithService:v13];
  v8 = v18[5];
  v9 = v24[5];
  v10 = v9;
  if (error && !v9)
  {
    v11 = v8;
    *error = v8;
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v23, 8);

  return v10;
}

uint64_t __58__CNContactPosterDataXPCAccess_executeFetchRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__CNContactPosterDataXPCAccess_executeFetchRequest_error___block_invoke_2;
  v4[3] = &unk_1E7412E88;
  v5 = *(a1 + 40);
  return [a2 executeFetchRequest:v2 reply:v4];
}

void __58__CNContactPosterDataXPCAccess_executeFetchRequest_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (int64_t)countForFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__40;
  v19 = __Block_byref_object_dispose__40;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CNContactPosterDataXPCAccess_countForFetchRequest_error___block_invoke;
  v11[3] = &unk_1E7417D00;
  v7 = requestCopy;
  v12 = v7;
  v13 = &v21;
  v14 = &v15;
  [(CNContactPosterDataXPCAccess *)self performWithService:v11];
  if (error)
  {
    v8 = v16[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = v22[3];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

uint64_t __59__CNContactPosterDataXPCAccess_countForFetchRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CNContactPosterDataXPCAccess_countForFetchRequest_error___block_invoke_2;
  v4[3] = &unk_1E7417D28;
  v5 = *(a1 + 40);
  return [a2 countForFetchRequest:v2 reply:v4];
}

- (BOOL)executeCreateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__40;
  v19[3] = __Block_byref_object_dispose__40;
  v20 = 0;
  v7 = [objc_opt_class() log];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1954A0000, v7, OS_LOG_TYPE_DEFAULT, "Will initiate XPC poster/image create request", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__CNContactPosterDataXPCAccess_executeCreateRequest_error___block_invoke;
  v13[3] = &unk_1E7417D00;
  v8 = requestCopy;
  v14 = v8;
  v15 = &v21;
  v16 = &v18;
  [(CNContactPosterDataXPCAccess *)self performWithService:v13];
  if (error && (v9 = *(v19[0] + 40)) != 0)
  {
    *error = v9;
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CNContactPosterDataXPCAccess executeCreateRequest:v19 error:v10];
    }
  }

  else
  {
    v10 = [objc_opt_class() log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1954A0000, v10, OS_LOG_TYPE_DEFAULT, "Did send XPC poster/image create request", buf, 2u);
    }
  }

  v11 = *(v22 + 24);
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v21, 8);
  return v11;
}

uint64_t __59__CNContactPosterDataXPCAccess_executeCreateRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CNContactPosterDataXPCAccess_executeCreateRequest_error___block_invoke_2;
  v4[3] = &unk_1E7417D50;
  v5 = *(a1 + 40);
  return [a2 executeCreateRequest:v2 reply:v4];
}

- (BOOL)executeDeleteRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__40;
  v19 = __Block_byref_object_dispose__40;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CNContactPosterDataXPCAccess_executeDeleteRequest_error___block_invoke;
  v11[3] = &unk_1E7417D00;
  v7 = requestCopy;
  v12 = v7;
  v13 = &v21;
  v14 = &v15;
  [(CNContactPosterDataXPCAccess *)self performWithService:v11];
  if (error)
  {
    v8 = v16[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

uint64_t __59__CNContactPosterDataXPCAccess_executeDeleteRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CNContactPosterDataXPCAccess_executeDeleteRequest_error___block_invoke_2;
  v4[3] = &unk_1E7417D50;
  v5 = *(a1 + 40);
  return [a2 executeDeleteRequest:v2 reply:v4];
}

- (BOOL)executeUpdateRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__40;
  v19 = __Block_byref_object_dispose__40;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__CNContactPosterDataXPCAccess_executeUpdateRequest_error___block_invoke;
  v11[3] = &unk_1E7417D00;
  v7 = requestCopy;
  v12 = v7;
  v13 = &v21;
  v14 = &v15;
  [(CNContactPosterDataXPCAccess *)self performWithService:v11];
  if (error)
  {
    v8 = v16[5];
    if (v8)
    {
      *error = v8;
    }
  }

  v9 = *(v22 + 24);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

uint64_t __59__CNContactPosterDataXPCAccess_executeUpdateRequest_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__CNContactPosterDataXPCAccess_executeUpdateRequest_error___block_invoke_2;
  v4[3] = &unk_1E7417D50;
  v5 = *(a1 + 40);
  return [a2 executeUpdateRequest:v2 reply:v4];
}

- (void)performWithService:(id)service
{
  serviceCopy = service;
  connectionFactory = [(CNContactPosterDataXPCAccess *)self connectionFactory];
  makeConnection = [connectionFactory makeConnection];

  v7 = +[CNContactPosterDataXPCService interface];
  [makeConnection setRemoteObjectInterface:v7];

  [makeConnection activate];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __51__CNContactPosterDataXPCAccess_performWithService___block_invoke;
  v20[3] = &unk_1E7412FA0;
  v20[4] = self;
  v8 = [makeConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v9 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CNContactPosterDataXPCAccess performWithService:v9];
  }

  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  timeProvider = [currentEnvironment timeProvider];
  [timeProvider timestamp];
  v13 = v12;

  serviceCopy[2](serviceCopy, v8);
  currentEnvironment2 = [MEMORY[0x1E69966E8] currentEnvironment];
  timeProvider2 = [currentEnvironment2 timeProvider];
  [timeProvider2 timestamp];
  v17 = v16;

  v18 = [MEMORY[0x1E6996858] stringForTimeInterval:v17 - v13];
  v19 = +[CNContactPosterDataStore log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    [(CNContactPosterDataXPCAccess *)v18 performWithService:v19];
  }

  [makeConnection invalidate];
}

void __51__CNContactPosterDataXPCAccess_performWithService___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __51__CNContactPosterDataXPCAccess_performWithService___block_invoke_cold_1(v2, v3);
  }
}

- (void)executeCreateRequest:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Failed to send XPC poster/image create request, error: %@", &v3, 0xCu);
}

- (void)performWithService:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1954A0000, a2, OS_LOG_TYPE_DEBUG, "Did send remote request (%@)", &v2, 0xCu);
}

void __51__CNContactPosterDataXPCAccess_performWithService___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1954A0000, a2, OS_LOG_TYPE_ERROR, "Could not obtain poster data API service proxy: %@", &v2, 0xCu);
}

@end