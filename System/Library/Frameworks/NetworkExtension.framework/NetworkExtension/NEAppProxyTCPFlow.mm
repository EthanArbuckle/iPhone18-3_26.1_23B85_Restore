@interface NEAppProxyTCPFlow
- (NEAppProxyTCPFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue;
- (NWEndpoint)remoteEndpoint;
- (id)description;
- (void)readDataWithCompletionHandler:(void *)completionHandler;
- (void)writeData:(NSData *)data withCompletionHandler:(void *)completionHandler;
@end

@implementation NEAppProxyTCPFlow

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  metaData = [(NEAppProxyFlow *)self metaData];
  remoteFlowEndpoint = [(NEAppProxyTCPFlow *)self remoteFlowEndpoint];
  networkInterface = [(NEAppProxyFlow *)self networkInterface];
  isBound = [(NEAppProxyFlow *)self isBound];
  v8 = &stru_1F3880810;
  if (isBound)
  {
    v8 = @"(bound)";
  }

  v9 = [v3 stringWithFormat:@"TCP %@ remote: %@ interface %@%@", metaData, remoteFlowEndpoint, networkInterface, v8];

  return v9;
}

- (NWEndpoint)remoteEndpoint
{
  v2 = MEMORY[0x1E6977E20];
  remoteFlowEndpoint = [(NEAppProxyTCPFlow *)self remoteFlowEndpoint];
  v4 = [v2 endpointWithCEndpoint:remoteFlowEndpoint];

  return v4;
}

- (void)writeData:(NSData *)data withCompletionHandler:(void *)completionHandler
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = completionHandler;
  v7 = data;
  if ((isa_nsdata(v7) & 1) == 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        flow = self->super._flow;
      }

      else
      {
        flow = 0;
      }

      *buf = 134217984;
      v34 = CFHash(flow);
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%lu: Data object passed is not an NSData", buf, 0xCu);
    }

    if (self)
    {
      Property = objc_getProperty(self, v9, 40, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = Property;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke;
    block[3] = &unk_1E7F0B600;
    v32 = v6;
    dispatch_async(v11, block);
  }

  if (self)
  {
    v12 = self->super._flow;
  }

  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke_2;
  v29 = &unk_1E7F06AB0;
  v13 = v6;
  v30 = v13;
  v14 = NEFlowWrite();

  if (v14)
  {
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (self)
      {
        v20 = self->super._flow;
      }

      else
      {
        v20 = 0;
      }

      v21 = CFHash(v20);
      *buf = 134217984;
      v34 = v21;
      _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "%lu: Failed to write flow Data", buf, 0xCu);
    }

    if (self)
    {
      v17 = objc_getProperty(self, v16, 40, 1);
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke_5;
    v23[3] = &unk_1E7F0AB18;
    v24 = v13;
    v25 = v14;
    dispatch_async(v18, v23);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NEAppProxyFlow errorForFlowError:a2];
  (*(v2 + 16))(v2, v3);
}

void __53__NEAppProxyTCPFlow_writeData_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

- (void)readDataWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (self)
  {
    flow = self->super._flow;
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __51__NEAppProxyTCPFlow_readDataWithCompletionHandler___block_invoke;
  v18 = &unk_1E7F06A60;
  v6 = v4;
  v19 = v6;
  v7 = NEFlowAsyncRead();
  if (v7)
  {
    v9 = v7;
    if (self)
    {
      Property = objc_getProperty(self, v8, 40, 1);
    }

    else
    {
      Property = 0;
    }

    v11 = Property;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__NEAppProxyTCPFlow_readDataWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0AB18;
    v13 = v6;
    v14 = v9;
    dispatch_async(v11, block);
  }
}

void __51__NEAppProxyTCPFlow_readDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (v8)
  {
    v5 = v8;
  }

  v6 = *(a1 + 32);
  v7 = [NEAppProxyFlow errorForFlowError:a3];
  (*(v6 + 16))(v6, v8, v7);
}

void __51__NEAppProxyTCPFlow_readDataWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, 0, v2);
}

- (NEAppProxyTCPFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = NEAppProxyTCPFlow;
  v7 = [(NEAppProxyFlow *)&v11 initWithNEFlow:flow queue:queueCopy];
  if (v7)
  {
    v8 = +[NEAppProxyFlow copyRemoteEndpointFromFlow:];
    remoteFlowEndpoint = v7->_remoteFlowEndpoint;
    v7->_remoteFlowEndpoint = v8;

    if (!v7->_remoteFlowEndpoint)
    {
      __assert_rtn("[NEAppProxyTCPFlow initWithNEFlow:queue:]", "NEAppProxyTCPFlow.m", 20, "_remoteFlowEndpoint != nil");
    }
  }

  return v7;
}

@end