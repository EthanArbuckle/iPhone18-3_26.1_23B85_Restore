@interface NEDNSProxyProvider
- (BOOL)handleNewUDPFlow:(id)a3 initialRemoteFlowEndpoint:(id)a4;
- (void)cancelProxyWithError:(NSError *)error;
- (void)startProxyWithOptions:(NSDictionary *)options completionHandler:(void *)completionHandler;
@end

@implementation NEDNSProxyProvider

- (BOOL)handleNewUDPFlow:(id)a3 initialRemoteFlowEndpoint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NEProvider *)self _callSwiftHandleNewUDPFlow:v6 initialRemoteFlowEndpoint:v7];
  if (v8 == -1)
  {
    v10 = [MEMORY[0x1E6977E20] endpointWithCEndpoint:v7];
    v9 = [(NEDNSProxyProvider *)self handleNewUDPFlow:v6 initialRemoteEndpoint:v10];
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
  v9 = [v5 errorWithDomain:@"NEDNSProxyProviderDefaultErrorDomain" code:1 userInfo:v8];
  (*(completionHandler + 2))(v7, v9);

  v10 = *MEMORY[0x1E69E9840];
}

@end