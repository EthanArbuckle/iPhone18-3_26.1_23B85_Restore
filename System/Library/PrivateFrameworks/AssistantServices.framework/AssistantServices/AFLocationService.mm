@interface AFLocationService
- (AFLocationService)serviceWithErrorHandler:(id)a3;
- (NSXPCConnection)connection;
- (id)service;
- (void)currentAuthorizationStyle:(id)a3;
- (void)currentLocationWithAccuracy:(double)a3 timeout:(double)a4 completion:(id)a5;
- (void)currentLocationWithFetchRequest:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)dismissTCCDialogIfNeeded:(id)a3;
- (void)requestAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5;
- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 completion:(id)a4;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 timeout:(double)a4 completion:(id)a5;
@end

@implementation AFLocationService

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = AFLocationService;
  [(AFLocationService *)&v4 dealloc];
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.siri.location" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F05BEC60];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  return connection;
}

- (void)dismissTCCDialogIfNeeded:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__AFLocationService_dismissTCCDialogIfNeeded___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
  v11 = v5;
  v6 = [(AFLocationService *)self serviceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__AFLocationService_dismissTCCDialogIfNeeded___block_invoke_2;
  v8[3] = &unk_1E73494D8;
  v9 = v5;
  v7 = v5;
  [v6 dismissTCCDialogIfNeeded:v8];
}

void __46__AFLocationService_dismissTCCDialogIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)currentLocationWithFetchRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFLocationService_currentLocationWithFetchRequest_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = v6;
  v7 = v6;
  v8 = a3;
  v9 = [(AFLocationService *)self serviceWithErrorHandler:v10];
  [v9 currentLocationWithFetchRequest:v8 completion:v7];
}

void __64__AFLocationService_currentLocationWithFetchRequest_completion___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)currentLocationWithAccuracy:(double)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__AFLocationService_currentLocationWithAccuracy_timeout_completion___block_invoke;
  v11[3] = &unk_1E7348AA8;
  v12 = v8;
  v9 = v8;
  v10 = [(AFLocationService *)self serviceWithErrorHandler:v11];
  [v10 currentLocationWithAccuracy:v9 timeout:a3 completion:a4];
}

void __68__AFLocationService_currentLocationWithAccuracy_timeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

void __88__AFLocationService_updateTemporaryAuthorizationForAccurateLocation_timeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

void __80__AFLocationService_updateTemporaryAuthorizationForAccurateLocation_completion___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__AFLocationService_updateAuthorizationStyleWithUserSelection_timeout_completion___block_invoke;
  v11[3] = &unk_1E7348AA8;
  v12 = v8;
  v9 = v8;
  v10 = [(AFLocationService *)self serviceWithErrorHandler:v11];
  [v10 updateAuthorizationStyleWithUserSelection:a3 timeout:v9 completion:a4];
}

void __82__AFLocationService_updateAuthorizationStyleWithUserSelection_timeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__AFLocationService_updateAuthorizationStyleWithUserSelection_completion___block_invoke;
  v12[3] = &unk_1E7348AA8;
  v7 = v6;
  v13 = v7;
  v8 = [(AFLocationService *)self serviceWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__AFLocationService_updateAuthorizationStyleWithUserSelection_completion___block_invoke_2;
  v10[3] = &unk_1E73494D8;
  v11 = v7;
  v9 = v7;
  [v8 updateAuthorizationStyleWithUserSelection:a3 completion:v10];
}

void __74__AFLocationService_updateAuthorizationStyleWithUserSelection_completion___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__AFLocationService_requestTemporaryAccuracyAuthorizationWithStyle_timeout_completion___block_invoke;
  v11[3] = &unk_1E7348AA8;
  v12 = v8;
  v9 = v8;
  v10 = [(AFLocationService *)self serviceWithErrorHandler:v11];
  [v10 requestTemporaryAccuracyAuthorizationWithStyle:a3 timeout:v9 completion:a4];
}

void __87__AFLocationService_requestTemporaryAccuracyAuthorizationWithStyle_timeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)requestAuthorizationWithStyle:(unint64_t)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__AFLocationService_requestAuthorizationWithStyle_timeout_completion___block_invoke;
  v11[3] = &unk_1E7348AA8;
  v12 = v8;
  v9 = v8;
  v10 = [(AFLocationService *)self serviceWithErrorHandler:v11];
  [v10 requestAuthorizationWithStyle:a3 timeout:v9 completion:a4];
}

void __70__AFLocationService_requestAuthorizationWithStyle_timeout_completion___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)currentAuthorizationStyle:(id)a3
{
  v4 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__AFLocationService_currentAuthorizationStyle___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = v4;
  v11 = v5;
  v6 = [(AFLocationService *)self serviceWithErrorHandler:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__AFLocationService_currentAuthorizationStyle___block_invoke_2;
  v8[3] = &unk_1E73429A8;
  v9 = v5;
  v7 = v5;
  [v6 currentAuthorizationStyle:v8];
}

void __47__AFLocationService_currentAuthorizationStyle___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.siri.location" code:0 userInfo:v5];

  (*(v4 + 16))(v4, 0, 0, v6);
  v7 = *MEMORY[0x1E69E9840];
}

- (AFLocationService)serviceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(AFLocationService *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)service
{
  v2 = [(AFLocationService *)self connection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

@end