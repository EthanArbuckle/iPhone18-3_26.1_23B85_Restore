@interface NEAppProxyUDPFlow
- (NEAppProxyUDPFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue;
- (NWEndpoint)localEndpoint;
- (id)description;
- (void)openWithLocalEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)openWithLocalFlowEndpoint:(id)endpoint completionHandler:(id)handler;
- (void)readDatagramsAndFlowEndpointsWithCompletionHandler:(id)handler;
- (void)readDatagramsWithCompletionHandler:(void *)completionHandler;
- (void)resetLocalEndpoint;
- (void)writeDatagrams:(NSArray *)datagrams sentByEndpoints:(NSArray *)remoteEndpoints completionHandler:(void *)completionHandler;
- (void)writeDatagrams:(id)datagrams sentByFlowEndpoints:(id)endpoints completionHandler:(id)handler;
@end

@implementation NEAppProxyUDPFlow

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  metaData = [(NEAppProxyFlow *)self metaData];
  localFlowEndpoint = [(NEAppProxyUDPFlow *)self localFlowEndpoint];
  if (localFlowEndpoint)
  {
    localFlowEndpoint2 = [(NEAppProxyUDPFlow *)self localFlowEndpoint];
    port = nw_endpoint_get_port(localFlowEndpoint2);
  }

  else
  {
    port = 0;
  }

  networkInterface = [(NEAppProxyFlow *)self networkInterface];
  isBound = [(NEAppProxyFlow *)self isBound];
  v10 = &stru_1F3880810;
  if (isBound)
  {
    v10 = @"(bound)";
  }

  v11 = [v4 stringWithFormat:@"UDP %@ local port %u interface %@%@", metaData, port, networkInterface, v10];

  if (localFlowEndpoint)
  {
  }

  return v11;
}

- (NWEndpoint)localEndpoint
{
  localFlowEndpoint = [(NEAppProxyUDPFlow *)self localFlowEndpoint];
  if (localFlowEndpoint)
  {
    v4 = MEMORY[0x1E6977E20];
    localFlowEndpoint2 = [(NEAppProxyUDPFlow *)self localFlowEndpoint];
    v6 = [v4 endpointWithCEndpoint:localFlowEndpoint2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeDatagrams:(NSArray *)datagrams sentByEndpoints:(NSArray *)remoteEndpoints completionHandler:(void *)completionHandler
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = datagrams;
  v9 = remoteEndpoints;
  v51 = completionHandler;
  v10 = [(NSArray *)v8 count];
  v49 = v9;
  v50 = v8;
  if (v10 == [(NSArray *)v9 count])
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v11 = v8;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v68 objects:v75 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v69;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v69 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ((isa_nsdata(*(*(&v68 + 1) + 8 * i)) & 1) == 0)
          {
            v39 = ne_log_obj();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v77 = "[NEAppProxyUDPFlow writeDatagrams:sentByEndpoints:completionHandler:]";
              _os_log_error_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_ERROR, "%s: Datagrams array contains a non-NSData object", buf, 0xCu);
            }

            if (self)
            {
              Property = objc_getProperty(self, v40, 40, 1);
            }

            else
            {
              Property = 0;
            }

            v42 = Property;
            v66[0] = MEMORY[0x1E69E9820];
            v66[1] = 3221225472;
            v66[2] = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_14;
            v66[3] = &unk_1E7F0B600;
            v67 = v51;
            dispatch_async(v42, v66);

            goto LABEL_51;
          }
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v68 objects:v75 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v16 = v9;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v62 objects:v74 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v63;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v63 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v62 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v43 = ne_log_obj();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v77 = "[NEAppProxyUDPFlow writeDatagrams:sentByEndpoints:completionHandler:]";
              _os_log_error_impl(&dword_1BA83C000, v43, OS_LOG_TYPE_ERROR, "%s: Remote endpoints array contains a non-NWEndpoint object", buf, 0xCu);
            }

            if (self)
            {
              v45 = objc_getProperty(self, v44, 40, 1);
            }

            else
            {
              v45 = 0;
            }

            v46 = v45;
            v60[0] = MEMORY[0x1E69E9820];
            v60[1] = 3221225472;
            v60[2] = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_15;
            v60[3] = &unk_1E7F0B600;
            v61 = v51;
            dispatch_async(v46, v60);

            v11 = v16;
            goto LABEL_51;
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v62 objects:v74 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    if ([(NSArray *)v11 count])
    {
      v23 = 0;
      *&v22 = 136315138;
      v48 = v22;
      do
      {
        v24 = [(NSArray *)v11 objectAtIndexedSubscript:v23, v48];
        v25 = [(NSArray *)v16 objectAtIndexedSubscript:v23];
        v26 = v25;
        if (self)
        {
          flow = self->super._flow;
        }

        [v25 address];
        v28 = [(NSArray *)v11 count]- 1;
        if (v23 >= v28)
        {
          v55 = MEMORY[0x1E69E9820];
          v56 = 3221225472;
          v57 = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_2;
          v58 = &unk_1E7F06AB0;
          v59 = v51;
        }

        v29 = NEFlowWrite();
        if (v29)
        {
          v30 = v29;
          v31 = ne_log_obj();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            *buf = v48;
            v77 = "[NEAppProxyUDPFlow writeDatagrams:sentByEndpoints:completionHandler:]";
            _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "%s: Failed to write flow Data", buf, 0xCu);
          }

          if (self)
          {
            v33 = objc_getProperty(self, v32, 40, 1);
          }

          else
          {
            v33 = 0;
          }

          v34 = v33;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_16;
          block[3] = &unk_1E7F0AB18;
          v53 = v51;
          v54 = v30;
          dispatch_async(v34, block);
        }

        if (v23 >= v28)
        {
        }

        ++v23;
      }

      while (v23 < [(NSArray *)v11 count]);
    }
  }

  else
  {
    v35 = ne_log_obj();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v77 = "[NEAppProxyUDPFlow writeDatagrams:sentByEndpoints:completionHandler:]";
      v78 = 2048;
      v79 = [(NSArray *)v8 count];
      v80 = 2048;
      v81 = [(NSArray *)v9 count];
      _os_log_error_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_ERROR, "%s: Size of datagrams array (%lu) does not match size of remoteEndpoints array (%lu)", buf, 0x20u);
    }

    if (self)
    {
      v37 = objc_getProperty(self, v36, 40, 1);
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke;
    v72[3] = &unk_1E7F0B600;
    v73 = v51;
    dispatch_async(v38, v72);

    v11 = v73;
LABEL_51:
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_14(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NEAppProxyFlow errorForFlowError:a2];
  (*(v2 + 16))(v2, v3);
}

void __70__NEAppProxyUDPFlow_writeDatagrams_sentByEndpoints_completionHandler___block_invoke_16(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

- (void)writeDatagrams:(id)datagrams sentByFlowEndpoints:(id)endpoints completionHandler:(id)handler
{
  v81 = *MEMORY[0x1E69E9840];
  datagramsCopy = datagrams;
  endpointsCopy = endpoints;
  handlerCopy = handler;
  v10 = [datagramsCopy count];
  v48 = endpointsCopy;
  v49 = datagramsCopy;
  if (v10 == [endpointsCopy count])
  {
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v11 = datagramsCopy;
    v12 = [v11 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v68;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v68 != v14)
          {
            objc_enumerationMutation(v11);
          }

          if ((isa_nsdata(*(*(&v67 + 1) + 8 * i)) & 1) == 0)
          {
            v38 = ne_log_obj();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v76 = "[NEAppProxyUDPFlow writeDatagrams:sentByFlowEndpoints:completionHandler:]";
              _os_log_error_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_ERROR, "%s: Datagrams array contains a non-NSData object", buf, 0xCu);
            }

            if (self)
            {
              Property = objc_getProperty(self, v39, 40, 1);
            }

            else
            {
              Property = 0;
            }

            v41 = Property;
            v65[0] = MEMORY[0x1E69E9820];
            v65[1] = 3221225472;
            v65[2] = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_10;
            v65[3] = &unk_1E7F0B600;
            v66 = handlerCopy;
            dispatch_async(v41, v65);

            goto LABEL_51;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v67 objects:v74 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v16 = endpointsCopy;
    v17 = [v16 countByEnumeratingWithState:&v61 objects:v73 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v62;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v62 != v19)
          {
            objc_enumerationMutation(v16);
          }

          if (nw_endpoint_get_type(*(*(&v61 + 1) + 8 * j)) != nw_endpoint_type_address)
          {
            v42 = ne_log_obj();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315138;
              v76 = "[NEAppProxyUDPFlow writeDatagrams:sentByFlowEndpoints:completionHandler:]";
              _os_log_error_impl(&dword_1BA83C000, v42, OS_LOG_TYPE_ERROR, "%s: Remote endpoints array contains a non-NWEndpoint object", buf, 0xCu);
            }

            if (self)
            {
              v44 = objc_getProperty(self, v43, 40, 1);
            }

            else
            {
              v44 = 0;
            }

            v45 = v44;
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_11;
            v59[3] = &unk_1E7F0B600;
            v60 = handlerCopy;
            dispatch_async(v45, v59);

            v11 = v16;
            goto LABEL_51;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v61 objects:v73 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    if ([v11 count])
    {
      v22 = 0;
      *&v21 = 136315138;
      v47 = v21;
      do
      {
        v23 = [v11 objectAtIndexedSubscript:{v22, v47}];
        v24 = [v16 objectAtIndexedSubscript:v22];
        v25 = v24;
        if (self)
        {
          flow = self->super._flow;
        }

        nw_endpoint_get_address(v24);
        v27 = [v11 count] - 1;
        if (v22 >= v27)
        {
          v54 = MEMORY[0x1E69E9820];
          v55 = 3221225472;
          v56 = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_2;
          v57 = &unk_1E7F06AB0;
          v58 = handlerCopy;
        }

        v28 = NEFlowWrite();
        if (v28)
        {
          v29 = v28;
          v30 = ne_log_obj();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = v47;
            v76 = "[NEAppProxyUDPFlow writeDatagrams:sentByFlowEndpoints:completionHandler:]";
            _os_log_error_impl(&dword_1BA83C000, v30, OS_LOG_TYPE_ERROR, "%s: Failed to write flow Data", buf, 0xCu);
          }

          if (self)
          {
            v32 = objc_getProperty(self, v31, 40, 1);
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_13;
          block[3] = &unk_1E7F0AB18;
          v52 = handlerCopy;
          v53 = v29;
          dispatch_async(v33, block);
        }

        if (v22 >= v27)
        {
        }

        ++v22;
      }

      while (v22 < [v11 count]);
    }
  }

  else
  {
    v34 = ne_log_obj();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v76 = "[NEAppProxyUDPFlow writeDatagrams:sentByFlowEndpoints:completionHandler:]";
      v77 = 2048;
      v78 = [datagramsCopy count];
      v79 = 2048;
      v80 = [endpointsCopy count];
      _os_log_error_impl(&dword_1BA83C000, v34, OS_LOG_TYPE_ERROR, "%s: Size of datagrams array (%lu) does not match size of remoteEndpoints array (%lu)", buf, 0x20u);
    }

    if (self)
    {
      v36 = objc_getProperty(self, v35, 40, 1);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke;
    v71[3] = &unk_1E7F0B600;
    v72 = handlerCopy;
    dispatch_async(v37, v71);

    v11 = v72;
LABEL_51:
  }

  v46 = *MEMORY[0x1E69E9840];
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NEAppProxyFlow errorForFlowError:a2];
  (*(v2 + 16))(v2, v3);
}

void __74__NEAppProxyUDPFlow_writeDatagrams_sentByFlowEndpoints_completionHandler___block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, v2);
}

- (void)readDatagramsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (self)
  {
    flow = self->super._flow;
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __56__NEAppProxyUDPFlow_readDatagramsWithCompletionHandler___block_invoke;
  v18 = &unk_1E7F06A88;
  v6 = v4;
  v19 = v6;
  v7 = NEFlowAsyncDatagramsCopyNext();
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
    block[2] = __56__NEAppProxyUDPFlow_readDatagramsWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0AB18;
    v13 = v6;
    v14 = v9;
    dispatch_async(v11, block);
  }
}

void __56__NEAppProxyUDPFlow_readDatagramsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32];
  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32]; a2; a2 = *(a2 + 144))
  {
    [v10 addObject:*(a2 + 128)];
    v8 = [MEMORY[0x1E6977E08] endpointWithAddress:a2];
    [i addObject:v8];
  }

  v9 = [NEAppProxyFlow errorForFlowError:a4];
  (*(*(a1 + 32) + 16))();
}

void __56__NEAppProxyUDPFlow_readDatagramsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (void)readDatagramsAndFlowEndpointsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    flow = self->super._flow;
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72__NEAppProxyUDPFlow_readDatagramsAndFlowEndpointsWithCompletionHandler___block_invoke;
  v18 = &unk_1E7F06A88;
  v6 = handlerCopy;
  v19 = v6;
  v7 = NEFlowAsyncDatagramsCopyNext();
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
    block[2] = __72__NEAppProxyUDPFlow_readDatagramsAndFlowEndpointsWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E7F0AB18;
    v13 = v6;
    v14 = v9;
    dispatch_async(v11, block);
  }
}

void __72__NEAppProxyUDPFlow_readDatagramsAndFlowEndpointsWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32];
  for (i = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:32]; a2; a2 = *(a2 + 144))
  {
    [v13 addObject:*(a2 + 128)];
    address = nw_endpoint_create_address(a2);
    [i addObject:address];
  }

  v9 = [NEAppProxyFlow errorForFlowError:a4];
  v10 = *(a1 + 32);
  v11 = [v13 copy];
  v12 = [i copy];
  (*(v10 + 16))(v10, v11, v12, v9);
}

void __72__NEAppProxyUDPFlow_readDatagramsAndFlowEndpointsWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [NEAppProxyFlow errorForFlowError:?];
  (*(v1 + 16))(v1, 0, 0, v2);
}

- (void)openWithLocalEndpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__NEAppProxyUDPFlow_openWithLocalEndpoint_completionHandler___block_invoke;
  v9[3] = &unk_1E7F0B628;
  v9[4] = self;
  v10 = handlerCopy;
  v8.receiver = self;
  v8.super_class = NEAppProxyUDPFlow;
  v7 = handlerCopy;
  [(NEAppProxyFlow *)&v8 openWithLocalEndpoint:endpoint completionHandler:v9];
}

void __61__NEAppProxyUDPFlow_openWithLocalEndpoint_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [(NEAppProxyUDPFlow *)v3 resetLocalEndpoint];
  (*(*(a1 + 40) + 16))();
}

- (void)resetLocalEndpoint
{
  if (self)
  {
    v2 = *(self + 32);
    v5 = NEFlowCopyProperty();
    if (isa_nsdata(v5))
    {
      address = nw_endpoint_create_address([v5 bytes]);
      v4 = *(self + 56);
      *(self + 56) = address;
    }
  }
}

- (void)openWithLocalFlowEndpoint:(id)endpoint completionHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__NEAppProxyUDPFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke;
  v9[3] = &unk_1E7F0B628;
  v9[4] = self;
  v10 = handlerCopy;
  v8.receiver = self;
  v8.super_class = NEAppProxyUDPFlow;
  v7 = handlerCopy;
  [(NEAppProxyFlow *)&v8 openWithLocalFlowEndpoint:endpoint completionHandler:v9];
}

void __65__NEAppProxyUDPFlow_openWithLocalFlowEndpoint_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [(NEAppProxyUDPFlow *)v3 resetLocalEndpoint];
  (*(*(a1 + 40) + 16))();
}

- (NEAppProxyUDPFlow)initWithNEFlow:(_NEFlow *)flow queue:(id)queue
{
  v7.receiver = self;
  v7.super_class = NEAppProxyUDPFlow;
  v4 = [(NEAppProxyFlow *)&v7 initWithNEFlow:flow queue:queue];
  v5 = v4;
  if (v4)
  {
    [(NEAppProxyUDPFlow *)v4 resetLocalEndpoint];
  }

  return v5;
}

@end