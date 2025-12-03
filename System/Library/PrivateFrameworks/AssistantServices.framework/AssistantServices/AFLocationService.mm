@interface AFLocationService
- (AFLocationService)serviceWithErrorHandler:(id)handler;
- (NSXPCConnection)connection;
- (id)service;
- (void)currentAuthorizationStyle:(id)style;
- (void)currentLocationWithAccuracy:(double)accuracy timeout:(double)timeout completion:(id)completion;
- (void)currentLocationWithFetchRequest:(id)request completion:(id)completion;
- (void)dealloc;
- (void)dismissTCCDialogIfNeeded:(id)needed;
- (void)requestAuthorizationWithStyle:(unint64_t)style timeout:(double)timeout completion:(id)completion;
- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)style timeout:(double)timeout completion:(id)completion;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)selection completion:(id)completion;
- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)selection timeout:(double)timeout completion:(id)completion;
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

- (void)dismissTCCDialogIfNeeded:(id)needed
{
  neededCopy = needed;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__AFLocationService_dismissTCCDialogIfNeeded___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = neededCopy;
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

- (void)currentLocationWithFetchRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__AFLocationService_currentLocationWithFetchRequest_completion___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v11 = completionCopy;
  v7 = completionCopy;
  requestCopy = request;
  v9 = [(AFLocationService *)self serviceWithErrorHandler:v10];
  [v9 currentLocationWithFetchRequest:requestCopy completion:v7];
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

- (void)currentLocationWithAccuracy:(double)accuracy timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__AFLocationService_currentLocationWithAccuracy_timeout_completion___block_invoke;
  v11[3] = &unk_1E7348AA8;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [(AFLocationService *)self serviceWithErrorHandler:v11];
  [v10 currentLocationWithAccuracy:v9 timeout:accuracy completion:timeout];
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

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)selection timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__AFLocationService_updateAuthorizationStyleWithUserSelection_timeout_completion___block_invoke;
  v11[3] = &unk_1E7348AA8;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [(AFLocationService *)self serviceWithErrorHandler:v11];
  [v10 updateAuthorizationStyleWithUserSelection:selection timeout:v9 completion:timeout];
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

- (void)updateAuthorizationStyleWithUserSelection:(unint64_t)selection completion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __74__AFLocationService_updateAuthorizationStyleWithUserSelection_completion___block_invoke;
  v12[3] = &unk_1E7348AA8;
  v7 = completionCopy;
  v13 = v7;
  v8 = [(AFLocationService *)self serviceWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__AFLocationService_updateAuthorizationStyleWithUserSelection_completion___block_invoke_2;
  v10[3] = &unk_1E73494D8;
  v11 = v7;
  v9 = v7;
  [v8 updateAuthorizationStyleWithUserSelection:selection completion:v10];
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

- (void)requestTemporaryAccuracyAuthorizationWithStyle:(unint64_t)style timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__AFLocationService_requestTemporaryAccuracyAuthorizationWithStyle_timeout_completion___block_invoke;
  v11[3] = &unk_1E7348AA8;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [(AFLocationService *)self serviceWithErrorHandler:v11];
  [v10 requestTemporaryAccuracyAuthorizationWithStyle:style timeout:v9 completion:timeout];
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

- (void)requestAuthorizationWithStyle:(unint64_t)style timeout:(double)timeout completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__AFLocationService_requestAuthorizationWithStyle_timeout_completion___block_invoke;
  v11[3] = &unk_1E7348AA8;
  v12 = completionCopy;
  v9 = completionCopy;
  v10 = [(AFLocationService *)self serviceWithErrorHandler:v11];
  [v10 requestAuthorizationWithStyle:style timeout:v9 completion:timeout];
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

- (void)currentAuthorizationStyle:(id)style
{
  styleCopy = style;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__AFLocationService_currentAuthorizationStyle___block_invoke;
  v10[3] = &unk_1E7348AA8;
  v5 = styleCopy;
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

- (AFLocationService)serviceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(AFLocationService *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)service
{
  connection = [(AFLocationService *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

@end