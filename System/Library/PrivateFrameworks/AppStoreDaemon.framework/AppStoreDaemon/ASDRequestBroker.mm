@interface ASDRequestBroker
+ (id)interface;
- (ASDRequestBroker)init;
- (id)activeRequests;
- (id)description;
- (void)cancelAllRequestsWithErrorHandler:(id)handler;
- (void)markRequestAsActive:(void *)active;
- (void)markRequestAsComplete:(void *)complete;
- (void)submitRequest:(id)request withReplyHandler:(id)handler;
@end

@implementation ASDRequestBroker

- (ASDRequestBroker)init
{
  v7.receiver = self;
  v7.super_class = ASDRequestBroker;
  v2 = [(ASDRequestBroker *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.appstored.xpc.request" options:4096];
    [v3 setInvalidationHandler:&__block_literal_global_25];
    [v3 setInterruptionHandler:&__block_literal_global_42];
    v4 = +[ASDRequestBroker interface];
    [v3 setRemoteObjectInterface:v4];

    [v3 resume];
    objc_setProperty_atomic(v2, v5, v3, 16);
  }

  return v2;
}

+ (id)interface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A778];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F304A7D8];
  [v2 setInterface:v3 forSelector:sel_submitRequest_delegate_withReplyHandler_ argumentIndex:0 ofReply:1];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3035950];
  [v2 setInterface:v4 forSelector:sel_submitRequest_delegate_withReplyHandler_ argumentIndex:1 ofReply:0];

  return v2;
}

- (id)activeRequests
{
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = selfCopy[1];
    if (!v2)
    {
      v3 = objc_opt_new();
      v4 = selfCopy[1];
      selfCopy[1] = v3;

      v2 = selfCopy[1];
    }

    v5 = v2;
    objc_sync_exit(selfCopy);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = ASDRequestBroker;
  v3 = [(ASDRequestBroker *)&v17 description];
  v4 = [v3 mutableCopy];

  [v4 appendString:@" {"];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  activeRequests = [(ASDRequestBroker *)self activeRequests];
  v6 = [activeRequests countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(activeRequests);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) description];
        [v4 appendFormat:@"\n\t%@", v10];
      }

      v7 = [activeRequests countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v7);
  }

  [v4 appendString:@"\n}"];
  v11 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)cancelAllRequestsWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    self = objc_getProperty(self, v4, 16, 1);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__ASDRequestBroker_cancelAllRequestsWithErrorHandler___block_invoke;
  v11[3] = &unk_1E7CDB730;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [(ASDRequestBroker *)self remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__ASDRequestBroker_cancelAllRequestsWithErrorHandler___block_invoke_2;
  v9[3] = &unk_1E7CDB730;
  v10 = v6;
  v8 = v6;
  [v7 cancelAllRequestsWithErrorHandler:v9];
}

uint64_t __54__ASDRequestBroker_cancelAllRequestsWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __54__ASDRequestBroker_cancelAllRequestsWithErrorHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)markRequestAsActive:(void *)active
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (active)
  {
    activeCopy = active;
    objc_sync_enter(activeCopy);
    activeRequests = [(ASDRequestBroker *)activeCopy activeRequests];
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v3;
      v9 = v11;
      _os_log_debug_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@]: Marking request active: %{public}@", &v10, 0x16u);
    }

    requestID = [v3 requestID];
    [activeRequests setObject:v3 forKeyedSubscript:requestID];

    objc_sync_exit(activeCopy);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)markRequestAsComplete:(void *)complete
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (complete)
  {
    completeCopy = complete;
    objc_sync_enter(completeCopy);
    activeRequests = [(ASDRequestBroker *)completeCopy activeRequests];
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138543618;
      v11 = objc_opt_class();
      v12 = 2114;
      v13 = v3;
      v9 = v11;
      _os_log_debug_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEBUG, "[%{public}@]: Marking request completed: %{public}@", &v10, 0x16u);
    }

    requestID = [v3 requestID];
    [activeRequests setObject:0 forKeyedSubscript:requestID];

    objc_sync_exit(completeCopy);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)submitRequest:(id)request withReplyHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (([requestCopy conformsToProtocol:&unk_1F3035950] & 1) == 0)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"Request %@ is expected to be a ASDRequestDelegate", requestCopy}];
  }

  if (self)
  {
    self = objc_getProperty(self, v8, 16, 1);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__ASDRequestBroker_submitRequest_withReplyHandler___block_invoke;
  v14[3] = &unk_1E7CDB730;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [(ASDRequestBroker *)self remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__ASDRequestBroker_submitRequest_withReplyHandler___block_invoke_2;
  v12[3] = &unk_1E7CDD748;
  v13 = v9;
  v11 = v9;
  [v10 submitRequest:requestCopy delegate:requestCopy withReplyHandler:v12];
}

uint64_t __51__ASDRequestBroker_submitRequest_withReplyHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

uint64_t __51__ASDRequestBroker_submitRequest_withReplyHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end