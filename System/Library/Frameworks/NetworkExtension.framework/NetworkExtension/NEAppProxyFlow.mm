@interface NEAppProxyFlow
+ (CFErrorRef)convertFlowErrorToCFError:(uint64_t)error;
+ (NSObject)copyRemoteEndpointFromFlow:;
+ (id)errorForFlowError:(uint64_t)error;
- (NEAppProxyFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue;
- (NSData)applicationData;
- (id)description;
- (nw_interface_t)networkInterface;
- (uint64_t)clearEventHandlers;
- (unint64_t)hash;
- (void)closeReadWithError:(NSError *)error;
- (void)closeWriteWithError:(NSError *)error;
- (void)dealloc;
- (void)openWithLocalEndpoint:(NWHostEndpoint *)localEndpoint completionHandler:(void *)completionHandler;
- (void)openWithLocalFlowEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)setApplicationData:(id)data;
- (void)setMetadata:(nw_parameters_t)parameters;
- (void)setNetworkInterface:(nw_interface_t)networkInterface;
@end

@implementation NEAppProxyFlow

- (void)setMetadata:(nw_parameters_t)parameters
{
  v4 = MEMORY[0x1E696ACC8];
  v5 = parameters;
  v9 = [[v4 alloc] initRequiringSecureCoding:1];
  metaData = [(NEAppProxyFlow *)self metaData];
  [v9 encodeObject:metaData forKey:@"MetaData"];

  [v9 finishEncoding];
  encodedData = [v9 encodedData];
  v8 = xpc_data_create([encodedData bytes], objc_msgSend(encodedData, "length"));
  nw_parameters_set_metadata();
}

- (void)setNetworkInterface:(nw_interface_t)networkInterface
{
  if (networkInterface)
  {
    v4 = networkInterface;
    nw_interface_get_index(v4);
    v5 = nw_interface_create_with_index();
    v7 = v5;
    if (self)
    {
      objc_setProperty_atomic(self, v6, v5, 48);

      Property = objc_getProperty(self, v8, 48, 1);
    }

    else
    {

      Property = 0;
    }

    v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:nw_interface_get_index(Property)];
    if (self)
    {
      flow = self->_flow;
    }

    v12 = v10;
    NEFlowSetProperty();
  }
}

- (nw_interface_t)networkInterface
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return self;
}

- (void)setApplicationData:(id)data
{
  if (self)
  {
    flow = self->_flow;
  }

  NEFlowSetProperty();
}

- (NSData)applicationData
{
  if (self)
  {
    flow = self->_flow;
  }

  v3 = NEFlowCopyProperty();

  return v3;
}

- (void)closeWriteWithError:(NSError *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = error;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "closing write on flow %@ with error %@", &v9, 0x16u);
  }

  if (v4)
  {
    v6 = [NEAppProxyFlow convertFlowErrorToCFError:v4];
    if (self)
    {
LABEL_5:
      flow = self->_flow;
    }
  }

  else
  {
    v6 = 0;
    if (self)
    {
      goto LABEL_5;
    }
  }

  NEFlowWriteClose();
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

+ (CFErrorRef)convertFlowErrorToCFError:(uint64_t)error
{
  v2 = a2;
  objc_opt_self();
  code = [v2 code];
  v4 = *MEMORY[0x1E695E480];
  if (code <= 4)
  {
    if (code <= 2)
    {
      if (code == 1)
      {
        v5 = @"NEAppProxyFlowErrorDomain";
        v6 = *MEMORY[0x1E695E480];
        code2 = 1;
        goto LABEL_21;
      }

      if (code == 2)
      {
        v5 = @"NEAppProxyFlowErrorDomain";
        v6 = *MEMORY[0x1E695E480];
        code2 = 2;
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v5 = @"NEAppProxyFlowErrorDomain";
    if (code == 3)
    {
      v6 = *MEMORY[0x1E695E480];
      code2 = 3;
    }

    else
    {
      v6 = *MEMORY[0x1E695E480];
      code2 = 4;
    }
  }

  else
  {
    if (code > 6)
    {
      switch(code)
      {
        case 7:
          v5 = @"NEAppProxyFlowErrorDomain";
          v6 = *MEMORY[0x1E695E480];
          code2 = 7;
          goto LABEL_21;
        case 9:
          v5 = @"NEAppProxyFlowErrorDomain";
          v6 = *MEMORY[0x1E695E480];
          code2 = 100;
          goto LABEL_21;
        case 10:
          v5 = @"NEAppProxyFlowErrorDomain";
          v6 = *MEMORY[0x1E695E480];
          code2 = 101;
          goto LABEL_21;
      }

LABEL_20:
      v8 = *MEMORY[0x1E695E640];
      code2 = [v2 code];
      v6 = v4;
      v5 = v8;
      goto LABEL_21;
    }

    v5 = @"NEAppProxyFlowErrorDomain";
    if (code == 5)
    {
      v6 = *MEMORY[0x1E695E480];
      code2 = 5;
    }

    else
    {
      v6 = *MEMORY[0x1E695E480];
      code2 = 6;
    }
  }

LABEL_21:
  v9 = CFErrorCreate(v6, v5, code2, 0);

  return v9;
}

- (void)closeReadWithError:(NSError *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = error;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = v4;
    _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "closing read on flow %@ with error %@", &v9, 0x16u);
  }

  if (v4)
  {
    v6 = [NEAppProxyFlow convertFlowErrorToCFError:v4];
    if (self)
    {
LABEL_5:
      flow = self->_flow;
    }
  }

  else
  {
    v6 = 0;
    if (self)
    {
      goto LABEL_5;
    }
  }

  NEFlowReadClose();
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)openWithLocalEndpoint:(NWHostEndpoint *)localEndpoint completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  copyCEndpoint = [(NWHostEndpoint *)localEndpoint copyCEndpoint];
  [(NEAppProxyFlow *)self openWithLocalFlowEndpoint:copyCEndpoint completionHandler:v6];
}

- (void)openWithLocalFlowEndpoint:(id)endpoint completionHandler:(id)handler
{
  v58 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  handlerCopy = handler;
  v8 = ne_log_obj();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy = self;
    v56 = 2112;
    v57 = endpointCopy;
    _os_log_debug_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_DEBUG, "opening flow %@ with local %@", buf, 0x16u);
  }

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (!endpointCopy)
  {
    goto LABEL_15;
  }

  address = nw_endpoint_get_address(endpointCopy);
  if (address)
  {
    v11 = [MEMORY[0x1E695DEF0] dataWithBytes:address length:address->sa_len];
    if (!selfCopy2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!selfCopy2)
    {
      goto LABEL_7;
    }
  }

  flow = selfCopy2->_flow;
LABEL_7:
  if (!NEFlowSetProperty())
  {

    goto LABEL_31;
  }

  if (selfCopy2)
  {
    v13 = selfCopy2->_flow;
  }

  v14 = NEFlowCopyProperty();
  if (isa_nsnumber(v14))
  {
    [v14 unsignedIntValue];
    v16 = nw_interface_create_with_index();
    if (selfCopy2)
    {
      objc_setProperty_atomic(selfCopy2, v15, v16, 48);
    }
  }

LABEL_15:
  if (selfCopy2)
  {
    v17 = selfCopy2->_flow;
  }

  v48 = MEMORY[0x1E69E9820];
  v49 = 3221225472;
  v50 = __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke;
  v51 = &unk_1E7F06A38;
  v18 = handlerCopy;
  v52 = selfCopy2;
  v53 = v18;
  v19 = NEFlowSetEventHandler() == 0;

  if (v19)
  {
    goto LABEL_31;
  }

  if (selfCopy2)
  {
    v20 = selfCopy2->_flow;
  }

  v42 = MEMORY[0x1E69E9820];
  v43 = 3221225472;
  v44 = __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_2;
  v45 = &unk_1E7F06A38;
  v21 = v18;
  v46 = selfCopy2;
  v47 = v21;
  v22 = NEFlowSetEventHandler() == 0;

  if (v22)
  {
    goto LABEL_31;
  }

  if (selfCopy2)
  {
    v23 = selfCopy2->_flow;
  }

  v36 = MEMORY[0x1E69E9820];
  v37 = 3221225472;
  v38 = __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_3;
  v39 = &unk_1E7F06A38;
  v40 = selfCopy2;
  v41 = v21;
  v24 = NEFlowSetEventHandler() == 0;

  if (v24)
  {
    goto LABEL_31;
  }

  if (selfCopy2)
  {
    v25 = selfCopy2->_flow;
  }

  if (!NEFlowOpen())
  {
LABEL_31:
    [(NEAppProxyFlow *)selfCopy2 clearEventHandlers];
    if (selfCopy2)
    {
      v26 = selfCopy2->_flow;
    }

    v27 = NEFlowCopyError();
    v29 = v27;
    if (v27)
    {
      code = [v27 code];
      if (selfCopy2)
      {
LABEL_35:
        Property = objc_getProperty(selfCopy2, v28, 40, 1);
LABEL_36:
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_4;
        v33[3] = &unk_1E7F0AB18;
        v34 = handlerCopy;
        v35 = code;
        dispatch_async(Property, v33);

        goto LABEL_37;
      }
    }

    else
    {
      code = 0;
      if (selfCopy2)
      {
        goto LABEL_35;
      }
    }

    Property = 0;
    goto LABEL_36;
  }

LABEL_37:
  objc_sync_exit(selfCopy2);

  v32 = *MEMORY[0x1E69E9840];
}

uint64_t __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [(NEAppProxyFlow *)v2 clearEventHandlers];
}

uint64_t __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [NEAppProxyFlow errorForFlowError:?];
  (*(v2 + 16))(v2, v3);

  v4 = *(a1 + 32);

  return [(NEAppProxyFlow *)v4 clearEventHandlers];
}

uint64_t __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [NEAppProxyFlow errorForFlowError:?];
  (*(v2 + 16))(v2, v3);

  v4 = *(a1 + 32);

  return [(NEAppProxyFlow *)v4 clearEventHandlers];
}

- (uint64_t)clearEventHandlers
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 32);
    NEFlowSetEventHandler();
    v3 = *(v1 + 32);
    NEFlowSetEventHandler();
    v4 = *(v1 + 32);

    return NEFlowSetEventHandler();
  }

  return result;
}

void __62__NEAppProxyFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

+ (id)errorForFlowError:(uint64_t)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = 0;
  if (a2 <= 4)
  {
    if (a2 > 2)
    {
      v9 = MEMORY[0x1E696ABC0];
      if (a2 == 3)
      {
        v26 = *MEMORY[0x1E696A578];
        v27 = @"The destination could host could not be reached";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        v6 = v9;
        v7 = 3;
      }

      else
      {
        v28 = *MEMORY[0x1E696A578];
        v29 = @"An invalid argument was passed";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v6 = v9;
        v7 = 4;
      }
    }

    else if (a2 == 1)
    {
      v11 = MEMORY[0x1E696ABC0];
      v32 = *MEMORY[0x1E696A578];
      v33[0] = @"The operation could not be completed because the flow is not connected";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v6 = v11;
      v7 = 1;
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_21;
      }

      v8 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E696A578];
      v31 = @"The peer closed the flow";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v6 = v8;
      v7 = 2;
    }
  }

  else if (a2 <= 6)
  {
    v10 = MEMORY[0x1E696ABC0];
    if (a2 == 5)
    {
      v20 = *MEMORY[0x1E696A578];
      v21 = @"The flow was aborted";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v6 = v10;
      v7 = 5;
    }

    else
    {
      v22 = *MEMORY[0x1E696A578];
      v23 = @"The flow was refused";
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v6 = v10;
      v7 = 6;
    }
  }

  else
  {
    switch(a2)
    {
      case 7:
        v12 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A578];
        v25 = @"The flow timed out";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v6 = v12;
        v7 = 7;
        break;
      case 100:
        v13 = MEMORY[0x1E696ABC0];
        v18 = *MEMORY[0x1E696A578];
        v19 = @"The datagram was too large";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v6 = v13;
        v7 = 9;
        break;
      case 101:
        v4 = MEMORY[0x1E696ABC0];
        v16 = *MEMORY[0x1E696A578];
        v17 = @"A read operation is already pending";
        v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        v6 = v4;
        v7 = 10;
        break;
      default:
        goto LABEL_21;
    }
  }

  v3 = [v6 errorWithDomain:@"NEAppProxyFlowErrorDomain" code:v7 userInfo:v5];

LABEL_21:
  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v2 = CFCopyDescription(self->_flow);

  return v2;
}

- (unint64_t)hash
{
  if (self)
  {
    self = self->_flow;
  }

  return CFHash(self);
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_flow;
  }

  CFRelease(self);
  v3.receiver = selfCopy;
  v3.super_class = NEAppProxyFlow;
  [(NEAppProxyFlow *)&v3 dealloc];
}

- (NEAppProxyFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue
{
  v45 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v43.receiver = self;
  v43.super_class = NEAppProxyFlow;
  v8 = [(NEAppProxyFlow *)&v43 init];
  if (!v8)
  {
    goto LABEL_23;
  }

  v8->_flow = CFRetain(flow);
  objc_storeStrong(&v8->_queue, queue);
  applicationData = [(NEAppProxyFlow *)v8 applicationData];
  if (!isa_nsdata(applicationData))
  {
    goto LABEL_6;
  }

  v42 = 0;
  v10 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:applicationData error:&v42];
  v11 = v42;
  if (v11)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
LABEL_5:

LABEL_6:
      v13 = [NEFlowMetaData alloc];
      if (v13)
      {
        v44.receiver = v13;
        v44.super_class = NEFlowMetaData;
        v14 = [(NEAppProxyFlow *)&v44 init];
        if (v14)
        {
          v15 = *MEMORY[0x1E69E5880];
          v16 = NEFlowCopyProperty();
          remoteHostname = v14->_remoteHostname;
          v14->_remoteHostname = v16;

          v18 = *MEMORY[0x1E69E5888];
          v19 = NEFlowCopyProperty();
          metaData = v14->_metaData;
          v14->_metaData = v19;

          v21 = NEFlowCopyProperty();
          flow = v14->_flow;
          v14->_flow = v21;

          v23 = NEFlowCopyProperty();
          if (isa_nsnumber(v23))
          {
            v14->_isBound = ([v23 unsignedIntValue] & 2) != 0;
            *(&v14->_isBound + 1) = ([v23 unsignedIntValue] & 4) != 0;
          }

          v24 = NEFlowCopyProperty();
          if (isa_nsdata(v24) && [v24 length] == 16)
          {
            v25 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{objc_msgSend(v24, "bytes")}];
            queue = v14->_queue;
            v14->_queue = v25;
          }
        }
      }

      else
      {
        v14 = 0;
      }

      v27 = 0;
      v28 = v8->_metaData;
      v8->_metaData = v14;
      goto LABEL_15;
    }

    LODWORD(v44.receiver) = 138412290;
    *(&v44.receiver + 4) = v11;
    v39 = "Failed to decode the application data: %@";
    v40 = v12;
    v41 = 12;
LABEL_29:
    _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, v39, &v44, v41);
    goto LABEL_5;
  }

  v37 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"MetaData"];
  if (!v37)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    LOWORD(v44.receiver) = 0;
    v39 = "Failed to decode the meta data from the application data";
    v40 = v12;
    v41 = 2;
    goto LABEL_29;
  }

  v38 = v37;

  v27 = v38;
  v28 = v8->_metaData;
  v8->_metaData = v27;
LABEL_15:

  NEFlowSetDispatchQueue();
  v29 = NEFlowCopyProperty();
  if (isa_nsnumber(v29) && ([v29 unsignedIntValue] & 8) != 0)
  {
    [(NEAppProxyFlow *)v8 setIsBound:1];
  }

  v30 = NEFlowCopyProperty();
  if (isa_nsnumber(v30))
  {
    [v30 unsignedIntValue];
    v31 = nw_interface_create_with_index();
    objc_setProperty_atomic(v8, v32, v31, 48);
  }

  v33 = *MEMORY[0x1E69E5898];
  v34 = NEFlowCopyProperty();
  if (isa_nsstring(v34))
  {
    objc_storeStrong(&v8->_remoteHostname, v34);
  }

LABEL_23:
  v35 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (NSObject)copyRemoteEndpointFromFlow:
{
  objc_opt_self();
  v0 = *MEMORY[0x1E69E5890];
  v1 = NEFlowCopyProperty();
  if (isa_nsdata(v1))
  {
    address = nw_endpoint_create_address([v1 bytes]);
    v3 = nw_endpoint_get_address(address);
    if (NEIsWildcardAddress(&v3->sa_len))
    {
      nw_endpoint_get_port(address);
    }

    else if (address)
    {
      goto LABEL_9;
    }
  }

  v4 = *MEMORY[0x1E69E5898];
  v5 = NEFlowCopyProperty();
  if (isa_nsstring(v5))
  {
    [v5 UTF8String];
    address = nw_endpoint_create_host_with_numeric_port();
  }

  else
  {
    address = 0;
  }

LABEL_9:
  return address;
}

@end