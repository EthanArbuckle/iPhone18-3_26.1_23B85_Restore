@interface _AAURLSessionConfigurationTask
- (NSString)description;
- (_AAURLSessionConfigurationTask)init;
- (_AAURLSessionConfigurationTask)initWithSession:(id)session request:(id)request completion:(id)completion;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_initiateSessionTaskWithConfiguration:(id)configuration;
- (void)_invokeCompletionWithData:(id)data response:(id)response error:(id)error;
- (void)_unfairLock_initiateConfigurationTask;
- (void)resume;
- (void)suspend;
@end

@implementation _AAURLSessionConfigurationTask

- (_AAURLSessionConfigurationTask)init
{
  [(_AAURLSessionConfigurationTask *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_AAURLSessionConfigurationTask)initWithSession:(id)session request:(id)request completion:(id)completion
{
  sessionCopy = session;
  requestCopy = request;
  completionCopy = completion;
  if (sessionCopy)
  {
    if (requestCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    [_AAURLSessionConfigurationTask initWithSession:request:completion:];
    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  [_AAURLSessionConfigurationTask initWithSession:request:completion:];
  if (!requestCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  [_AAURLSessionConfigurationTask initWithSession:request:completion:];
LABEL_4:
  v17.receiver = self;
  v17.super_class = _AAURLSessionConfigurationTask;
  v12 = [(_AAURLSessionConfigurationTask *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_session, session);
    objc_storeStrong(&v13->_originalRequest, request);
    v14 = _Block_copy(completionCopy);
    completion = v13->_completion;
    v13->_completion = v14;

    v13->_unfairLock._os_unfair_lock_opaque = 0;
    *&v13->_flags &= 0xFCu;
  }

  return v13;
}

- (void)_unfairLock_initiateConfigurationTask
{
  os_unfair_lock_assert_owner(&self->_unfairLock);
  if ((*&self->_flags & 2) == 0)
  {
    v3 = +[AARemoteServer sharedServer];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __71___AAURLSessionConfigurationTask__unfairLock_initiateConfigurationTask__block_invoke;
    v4[3] = &unk_1E7C9C208;
    v4[4] = self;
    [v3 configurationWithCompletion:v4];

    *&self->_flags |= 2u;
  }
}

- (void)_initiateSessionTaskWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    [_AAURLSessionConfigurationTask _initiateSessionTaskWithConfiguration:];
  }

  v5 = [(NSURLRequest *)self->_originalRequest URL];
  aa_endpoint = [v5 aa_endpoint];

  if (aa_endpoint)
  {
    v7 = [configurationCopy urlForEndpoint:aa_endpoint];
    if (v7)
    {
      v8 = [(NSURLRequest *)self->_originalRequest mutableCopy];
      [v8 setURL:v7];
      session = self->_session;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __72___AAURLSessionConfigurationTask__initiateSessionTaskWithConfiguration___block_invoke;
      v14[3] = &unk_1E7C9C230;
      v14[4] = self;
      v10 = [(AAURLSession *)session dataTaskWithRequest:v8 completion:v14];
      sessionTask = self->_sessionTask;
      self->_sessionTask = v10;

      [(AAURLSessionTaskProtocol *)self->_sessionTask resume];
    }

    else
    {
      v13 = _AALogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(_AAURLSessionConfigurationTask *)aa_endpoint _initiateSessionTaskWithConfiguration:v13];
      }

      v8 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4401];
      [(_AAURLSessionConfigurationTask *)self _invokeCompletionWithData:0 response:0 error:v8];
    }
  }

  else
  {
    v12 = _AALogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(_AAURLSessionConfigurationTask *)&self->_originalRequest _initiateSessionTaskWithConfiguration:v12];
    }

    v7 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-4401];
    [(_AAURLSessionConfigurationTask *)self _invokeCompletionWithData:0 response:0 error:v7];
  }
}

- (void)_invokeCompletionWithData:(id)data response:(id)response error:(id)error
{
  errorCopy = error;
  responseCopy = response;
  dataCopy = data;
  os_unfair_lock_lock(&self->_unfairLock);
  p_completion = &self->_completion;
  completion = self->_completion;
  if (!completion)
  {
    [(_AAURLSessionConfigurationTask *)a2 _invokeCompletionWithData:&self->_completion response:&v16 error:?];
    completion = v16;
  }

  v15 = _Block_copy(completion);
  v14 = *p_completion;
  *p_completion = 0;

  os_unfair_lock_unlock(&self->_unfairLock);
  v15[2](v15, dataCopy, responseCopy, errorCopy);
}

- (void)suspend
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41___AAURLSessionConfigurationTask_suspend__block_invoke;
  v3[3] = &unk_1E7C9C258;
  v3[4] = self;
  v3[5] = a2;
  os_unfair_lock_lock(&self->_unfairLock);
  __41___AAURLSessionConfigurationTask_suspend__block_invoke(v3);
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (void)resume
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40___AAURLSessionConfigurationTask_resume__block_invoke;
  v3[3] = &unk_1E7C9A868;
  v3[4] = self;
  os_unfair_lock_lock(&self->_unfairLock);
  __40___AAURLSessionConfigurationTask_resume__block_invoke(v3);
  os_unfair_lock_unlock(&self->_unfairLock);
}

- (NSString)description
{
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __45___AAURLSessionConfigurationTask_description__block_invoke;
  v12 = &unk_1E7C9C280;
  selfCopy = self;
  os_unfair_lock_lock(&self->_unfairLock);
  v3 = __45___AAURLSessionConfigurationTask_description__block_invoke(&v9);
  os_unfair_lock_unlock(&self->_unfairLock);
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@: %p {taskDescription: %@}>", v6, self, v3, v9, v10];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  session = self->_session;
  originalRequest = self->_originalRequest;
  completion = self->_completion;

  return [v4 initWithSession:session request:originalRequest completion:completion];
}

- (void)initWithSession:request:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"session" object:? file:? lineNumber:? description:?];
}

- (void)initWithSession:request:completion:.cold.2()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)initWithSession:request:completion:.cold.3()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)_initiateSessionTaskWithConfiguration:.cold.1()
{
  OUTLINED_FUNCTION_0_4();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"configuration" object:? file:? lineNumber:? description:?];
}

- (void)_initiateSessionTaskWithConfiguration:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138477827;
  v4 = a1;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Failed to find URL for endpoint: %{private}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_initiateSessionTaskWithConfiguration:(id *)a1 .cold.3(id *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [*a1 URL];
  v5 = 138477827;
  v6 = v3;
  _os_log_error_impl(&dword_1B6F6A000, a2, OS_LOG_TYPE_ERROR, "Failed to find endpoint in URL: %{private}@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_invokeCompletionWithData:(void *)a3 response:(void *)a4 error:.cold.1(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"AAURLSessionConfigurationTask.m" lineNumber:120 description:@"Attempted to call completion twice!"];

  *a4 = *a3;
}

@end