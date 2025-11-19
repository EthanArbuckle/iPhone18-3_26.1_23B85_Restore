@interface NEAppProxyProvider
- (BOOL)handleNewUDPFlow:(id)a3 initialRemoteFlowEndpoint:(id)a4;
- (unint64_t)maxWriteSize;
- (void)cancelProxyWithError:(NSError *)error;
- (void)fetchFlowStatesWithCompletionHandler:(id)a3;
- (void)setMaxWriteSize:(unint64_t)a3;
- (void)startProxyWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler;
@end

@implementation NEAppProxyProvider

- (void)fetchFlowStatesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7 = [(NEProvider *)self context];
  v5 = v4;
  if (v7)
  {
    if (v7[15])
    {
      v8 = v5;
      NEFlowDirectorFetchFlowStates();
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
      (*(v5 + 2))(v5, v6);
    }
  }
}

- (unint64_t)maxWriteSize
{
  v2 = [(NEProvider *)self context];
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 120);
    MaxSendSize = NEFlowDirectorGetMaxSendSize();
  }

  else
  {
    MaxSendSize = 0;
  }

  return MaxSendSize;
}

- (void)setMaxWriteSize:(unint64_t)a3
{
  v3 = [(NEProvider *)self context];
  if (v3)
  {
    v5 = v3;
    v4 = v3[15];
    NEFlowDirectorSetMaxSendSize();
    v3 = v5;
  }
}

- (BOOL)handleNewUDPFlow:(id)a3 initialRemoteFlowEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NEProvider *)self _callSwiftHandleNewUDPFlow:v6 initialRemoteFlowEndpoint:v7];
  if (v8 == -1)
  {
    v10 = [MEMORY[0x1E6977E20] endpointWithCEndpoint:v7];
    v9 = [(NEAppProxyProvider *)self handleNewUDPFlow:v6 initialRemoteEndpoint:v10];
  }

  else
  {
    v9 = v8 != 0;
  }

  return v9;
}

- (void)cancelProxyWithError:(NSError *)error
{
  v4 = error;
  v5 = [(NEProvider *)self context];
  [v5 cancelWithError:v4];
}

- (void)startProxyWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696ABC0];
  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"startProxyWithOptions:completionHandler: not implemented";
  v6 = MEMORY[0x1E695DF20];
  v7 = completionHandler;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"NEAppProxyProviderDefaultErrorDomain" code:1 userInfo:v8];
  (*(completionHandler + 2))(v7, v9);

  v10 = *MEMORY[0x1E69E9840];
}

@end