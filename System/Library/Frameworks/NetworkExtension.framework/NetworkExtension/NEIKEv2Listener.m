@interface NEIKEv2Listener
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 kernelSASessionName:(id)a4 listenerUDPPort:(id)a5 listenerInterface:(id)a6 listenerQueue:(id)a7 delegate:(id)a8 delegateQueue:(id)a9;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 kernelSASessionName:(id)a4 listenerUDPPort:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 kernelSASessionName:(id)a4 listenerUDPPort:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8 includeP2P:(BOOL)a9;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 kernelSASessionName:(id)a4 packetDelegate:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 saSession:(id)a4 listenerUDPPort:(id)a5 listenerInterface:(id)a6 listenerQueue:(id)a7 delegate:(id)a8 delegateQueue:(id)a9;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 saSession:(id)a4 listenerUDPPort:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8;
- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 saSession:(id)a4 packetDelegate:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8;
- (NSObject)initWithListenerIKEConfig:(void *)a3 saSession:(void *)a4 kernelSASessionName:(void *)a5 listenerUDPPort:(void *)a6 listenerInterface:(void *)a7 listenerQueue:(void *)a8 delegate:(void *)a9 delegateQueue:(char)a10 includeP2P:;
- (NSObject)initWithListenerIKEConfig:(void *)a3 saSession:(void *)a4 kernelSASessionName:(void *)a5 packetDelegate:(void *)a6 listenerQueue:(void *)a7 delegate:(void *)a8 delegateQueue:;
- (void)cancel;
- (void)createListenerWithParameters:(unsigned int)a3 attempt:;
- (void)dealloc;
- (void)invalidatingTransport:(id)a3;
- (void)receivePacket:(id)a3 transport:(id)a4;
- (void)requestConfigurationForSession:(id)a3 sessionConfig:(id)a4 childConfig:(id)a5 validateAuthBlock:(id)a6 responseBlock:(id)a7;
- (void)sessionFailedBeforeRequestingConfiguration:(id)a3;
@end

@implementation NEIKEv2Listener

- (void)cancel
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = ne_log_obj();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "Cancelling IKE listener", buf, 2u);
  }

  if (self)
  {
    self->_cancelled = 1;
    listener = self->_listener;
    if (listener)
    {
      nw_listener_cancel(listener);
      objc_storeStrong(&self->_listener, 0);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    sessionsBeforeAuth = self->_sessionsBeforeAuth;
  }

  else
  {
    sessionsBeforeAuth = 0;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
  }

  v6 = sessionsBeforeAuth;
  v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v22 + 1) + 8 * v10++) invalidate];
      }

      while (v8 != v10);
      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v8);
  }

  if (self)
  {
    [(NSMutableSet *)self->_sessionsBeforeAuth removeAllObjects];
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    connectionTransports = self->_connectionTransports;
  }

  else
  {
    [0 removeAllObjects];
    connectionTransports = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
  }

  v12 = connectionTransports;
  v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(NEIKEv2Transport *)*(*(&v18 + 1) + 8 * v16++) setWildcardDelegate:0 preventsInvalidation:?];
      }

      while (v14 != v16);
      v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v18 objects:v27 count:16];
    }

    while (v14);
  }

  if (self)
  {
    [(NSMutableSet *)self->_connectionTransports removeAllObjects];
    [(NEIKEv2Transport *)self->_packetDelegateTransport setWildcardDelegate:0 preventsInvalidation:?];
    objc_storeStrong(&self->_packetDelegateTransport, 0);
  }

  else
  {
    [0 removeAllObjects];
    [(NEIKEv2Transport *)0 setWildcardDelegate:0 preventsInvalidation:?];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(NEIKEv2Listener *)self cancel];
  v3.receiver = self;
  v3.super_class = NEIKEv2Listener;
  [(NEIKEv2Listener *)&v3 dealloc];
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 kernelSASessionName:(id)a4 packetDelegate:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8
{
  v28 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v14)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v26 = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, v25, &v26, 0xCu);
    goto LABEL_16;
  }

  if (!v16)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v26 = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null packetDelegate";
    goto LABEL_15;
  }

  if (!v18)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v26 = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!v19)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v26 = 136315138;
      v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:packetDelegate:listenerQueue:delegate:delegateQueue:]";
      v25 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    v21 = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)self initWithListenerIKEConfig:v14 saSession:0 kernelSASessionName:v15 packetDelegate:v16 listenerQueue:v17 delegate:v18 delegateQueue:v19];
  v21 = self;
LABEL_6:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (NSObject)initWithListenerIKEConfig:(void *)a3 saSession:(void *)a4 kernelSASessionName:(void *)a5 packetDelegate:(void *)a6 listenerQueue:(void *)a7 delegate:(void *)a8 delegateQueue:
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v49 = a8;
  if (a1)
  {
    v51.receiver = a1;
    v51.super_class = NEIKEv2Listener;
    v21 = objc_msgSendSuper2(&v51, sel_init);
    if (v21)
    {
      v22 = v21;
      v48 = v17;
      v23 = v16;
      v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      isa = v22[7].isa;
      v22[7].isa = v24;

      v26 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v27 = v22[8].isa;
      v22[8].isa = v26;

      v28 = [v15 copy];
      v29 = v22[3].isa;
      v22[3].isa = v28;

      [(objc_class *)v22[3].isa setServerMode:1];
      objc_storeStrong(&v22[4].isa, a3);
      objc_storeStrong(&v22[5].isa, a4);
      if (v19)
      {
        v30 = v19;
        v31 = v22[2].isa;
        v22[2].isa = v30;
      }

      else
      {
        v31 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v32 = dispatch_queue_create("com.apple.networkextension.ikev2.listener", v31);
        v33 = v22[2].isa;
        v22[2].isa = v32;
      }

      objc_storeWeak(&v22[10].isa, v20);
      objc_storeStrong(&v22[11].isa, a8);
      objc_storeWeak(&v22[12].isa, v18);
      v34 = [v15 localEndpoint];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        [v15 localEndpoint];
      }

      else
      {
        [MEMORY[0x1E6977E08] endpointWithHostname:@"::" port:@"500"];
      }
      v36 = ;
      v37 = [v15 remoteEndpoint];
      objc_opt_class();
      v38 = objc_opt_isKindOfClass();

      if (v38)
      {
        [v15 remoteEndpoint];
      }

      else
      {
        [MEMORY[0x1E6977E08] endpointWithHostname:@"::1" port:@"500"];
      }
      v39 = ;
      v40 = [v22 listenerQueue];
      v41 = [NEIKEv2Transport createTransport:v39 remote:v36 local:0 localPort:0 boundInterface:v40 queue:0 socketGetBlock:v18 packetDelegate:?];
      v42 = v22[9].isa;
      v22[9].isa = v41;

      v43 = v22[9].isa;
      if (v43)
      {
        [(NEIKEv2Transport *)v43 setWildcardDelegate:v22 preventsInvalidation:1];
        v44 = v22;
        v16 = v23;
      }

      else
      {
        v45 = ne_log_obj();
        v16 = v23;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, v45, OS_LOG_TYPE_FAULT, "[NEIKEv2Transport createTransport] failed", buf, 2u);
        }

        v44 = 0;
      }

      v17 = v48;
    }

    else
    {
      v22 = ne_log_obj();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1BA83C000, v22, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
      }

      v44 = 0;
    }

    v46 = v49;
  }

  else
  {
    v44 = 0;
    v46 = v49;
  }

  return v44;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 kernelSASessionName:(id)a4 listenerUDPPort:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8 includeP2P:(BOOL)a9
{
  v29 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v20;
  if (!v15)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:includeP2P:]";
    v26 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_FAULT, v26, buf, 0xCu);
    goto LABEL_16;
  }

  if (!v17)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:includeP2P:]";
    v26 = "%s called with null listenerUDPPort";
    goto LABEL_15;
  }

  if (!v19)
  {
    v25 = ne_log_obj();
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v28 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:includeP2P:]";
    v26 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!v20)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v28 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:includeP2P:]";
      v26 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    v22 = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:v15 saSession:0 kernelSASessionName:v16 listenerUDPPort:v17 listenerInterface:0 listenerQueue:v18 delegate:v19 delegateQueue:v20 includeP2P:a9];
  v22 = self;
LABEL_6:

  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

- (NSObject)initWithListenerIKEConfig:(void *)a3 saSession:(void *)a4 kernelSASessionName:(void *)a5 listenerUDPPort:(void *)a6 listenerInterface:(void *)a7 listenerQueue:(void *)a8 delegate:(void *)a9 delegateQueue:(char)a10 includeP2P:
{
  v59 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  v55 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v54 = a9;
  if (!a1)
  {
    v24 = 0;
    v49 = v54;
    v25 = v55;
    goto LABEL_22;
  }

  if (([v19 longLongValue] - 0x10000) > 0xFFFFFFFFFFFF0000)
  {
    v56.receiver = a1;
    v56.super_class = NEIKEv2Listener;
    v26 = [&v56 init];
    if (v26)
    {
      v27 = v26;
      obj = v22;
      v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v29 = *(v27 + 56);
      *(v27 + 56) = v28;

      v30 = [v17 copy];
      v31 = *(v27 + 24);
      *(v27 + 24) = v30;

      [*(v27 + 24) setServerMode:1];
      objc_storeStrong((v27 + 32), a3);
      objc_storeStrong((v27 + 40), a4);
      if (v21)
      {
        v32 = v21;
        v33 = *(v27 + 16);
        *(v27 + 16) = v32;
      }

      else
      {
        v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v34 = dispatch_queue_create("com.apple.networkextension.ikev2.listener", v33);
        v35 = *(v27 + 16);
        *(v27 + 16) = v34;
      }

      objc_storeWeak((v27 + 80), v22);
      objc_storeStrong((v27 + 88), a9);
      v36 = *MEMORY[0x1E6977EB8];
      legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
      v38 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
      v39 = MEMORY[0x1BFAFB680]();
      nw_protocol_stack_set_transport_protocol(v38, v39);

      nw_parameters_set_data_mode();
      host = nw_endpoint_create_host("::", [v19 UTF8String]);
      nw_parameters_set_local_endpoint(legacy_tcp_socket, host);
      if (a10)
      {
        nw_parameters_set_use_awdl();
      }

      if (v20)
      {
        v41 = v18;
        [v20 UTF8String];
        v42 = nw_interface_create_with_name();
        if (v42)
        {
          nw_parameters_require_interface(legacy_tcp_socket, v42);
        }

        v18 = v41;
      }

      if ([v17 forceUDPEncapsulation] && v38)
      {
        v52 = v19;
        v43 = v21;
        v44 = v20;
        v45 = v17;
        v46 = v18;
        v47 = NEIKEv2TransportCopyNATTFramerDefinition();
        options = nw_framer_create_options(v47);
        nw_protocol_stack_prepend_application_protocol(v38, options);

        v18 = v46;
        v17 = v45;
        v20 = v44;
        v21 = v43;
        v19 = v52;
      }

      [(NEIKEv2Listener *)v27 createListenerWithParameters:0 attempt:?];
      a1 = v27;

      v24 = a1;
      v25 = v55;
      v22 = obj;
      goto LABEL_21;
    }

    a1 = ne_log_obj();
    if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1BA83C000, a1, OS_LOG_TYPE_FAULT, "[super init] failed", buf, 2u);
    }
  }

  else
  {
    v23 = ne_log_obj();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v58 = v19;
      _os_log_fault_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_FAULT, "Invalid listenerUDPPort %@", buf, 0xCu);
    }
  }

  v24 = 0;
  v25 = v55;
LABEL_21:
  v49 = v54;

LABEL_22:
  v50 = *MEMORY[0x1E69E9840];
  return v24;
}

- (void)createListenerWithParameters:(unsigned int)a3 attempt:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ((*(a1 + 8) & 1) == 0)
  {
    if (a3 >= 5)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        LODWORD(location) = 67109378;
        HIDWORD(location) = a3;
        v31 = 2112;
        v32 = v5;
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "failed to create a listener after %u retries (parameters %@)", &location, 0x12u);
      }

LABEL_14:

      goto LABEL_15;
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      nw_listener_cancel(v7);
    }

    v8 = nw_listener_create(v5);
    v9 = *(a1 + 48);
    *(a1 + 48) = v8;

    v10 = *(a1 + 48);
    if (!v10)
    {
      v6 = ne_log_obj();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        LOWORD(location) = 0;
        _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "nw_listener_create failed", &location, 2u);
      }

      goto LABEL_14;
    }

    v11 = v10;
    v12 = [a1 listenerQueue];
    nw_listener_set_queue(v11, v12);

    objc_initWeak(&location, a1);
    v13 = *(a1 + 48);
    v14 = *(a1 + 48);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke;
    handler[3] = &unk_1E7F08620;
    objc_copyWeak(&v28, &location);
    v15 = v13;
    v26 = v15;
    v29 = a3;
    v27 = v5;
    nw_listener_set_state_changed_handler(v14, handler);

    v16 = *(a1 + 48);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke_4;
    v22[3] = &unk_1E7F08648;
    objc_copyWeak(&v24, &location);
    v17 = v15;
    v23 = v17;
    nw_listener_set_new_connection_handler(v16, v22);

    v18 = *(a1 + 48);
    nw_listener_start(v18);

    v19 = ne_log_large_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEFAULT, "Created IKE listener", v21, 2u);
    }

    objc_destroyWeak(&v24);
    objc_destroyWeak(&v28);

    objc_destroyWeak(&location);
  }

LABEL_15:

  v20 = *MEMORY[0x1E69E9840];
}

void __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke(uint64_t a1, int a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[6] == *(a1 + 32) && (WeakRetained[1] & 1) == 0)
    {
      if (a2 == 3 && nw_error_get_error_code(v5) == 48)
      {
        v11 = dispatch_time(0x8000000000000000, 200000000 * *(a1 + 56) + 200000000);
        v12 = [v7 listenerQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke_2;
        block[3] = &unk_1E7F085F8;
        objc_copyWeak(&v17, (a1 + 48));
        v16 = *(a1 + 40);
        v18 = *(a1 + 56);
        dispatch_after(v11, v12, block);

        objc_destroyWeak(&v17);
      }
    }

    else
    {
      v8 = ne_log_obj();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = v7[6];
        v14 = *(a1 + 32);
        *buf = 134218240;
        v20 = v13;
        v21 = 2048;
        v22 = v14;
        _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "ignoring update for a stale listener %p != %p", buf, 0x16u);
      }

      nw_listener_cancel(*(a1 + 32));
    }
  }

  else
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v20) = a2;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "IKE listener released, ignoring state change to %d", buf, 8u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke_4(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained)
  {
    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 138412290;
    *&buf[4] = v3;
    v12 = "IKE listener released, cancelling connection %@";
LABEL_12:
    v13 = v9;
    v14 = 12;
    goto LABEL_13;
  }

  v6 = WeakRetained[6];
  v7 = *(a1 + 32);
  v8 = ne_log_obj();
  v9 = v8;
  if (v6 != v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(v5 + 6);
      v11 = *(a1 + 32);
      *buf = 134218240;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      v12 = "ignoring new connection for a stale listener %p != %p";
      v13 = v9;
      v14 = 22;
LABEL_13:
      _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }

LABEL_14:

    nw_connection_cancel(v3);
    goto LABEL_15;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v3;
    _os_log_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEFAULT, "Received incoming IKE connection %@", buf, 0xCu);
  }

  v15 = v3;
  v16 = v15;
  v17 = v15;
  if (*(v5 + 8))
  {
LABEL_10:

    v9 = ne_log_obj();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    *buf = 138412290;
    *&buf[4] = v16;
    v12 = "IKE listener failed to handle new connection, cancelling %@";
    goto LABEL_12;
  }

  if (!v15)
  {
    v54 = ne_log_obj();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Listener handleNewConnection:]";
      _os_log_fault_impl(&dword_1BA83C000, v54, OS_LOG_TYPE_FAULT, "%s called with null connection", buf, 0xCu);
    }

    v17 = 0;
    goto LABEL_54;
  }

  v19 = nw_connection_copy_endpoint(v15);
  v20 = v19;
  if (!v19)
  {
    v54 = 0;
    v55 = ne_log_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Listener handleNewConnection:]";
      _os_log_fault_impl(&dword_1BA83C000, v55, OS_LOG_TYPE_FAULT, "%s called with null remoteEndpoint", buf, 0xCu);
    }

    goto LABEL_53;
  }

  type = nw_endpoint_get_type(v19);
  if (type != nw_endpoint_type_address)
  {
    v56 = type;
    v55 = ne_log_obj();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      *&buf[4] = v56;
      _os_log_fault_impl(&dword_1BA83C000, v55, OS_LOG_TYPE_FAULT, "Unexpected endpoint type %d", buf, 8u);
    }

    goto LABEL_52;
  }

  v22 = [v5 listenerQueue];
  v23 = v16;
  v24 = v22;
  objc_opt_self();
  if (!v24)
  {
    v25 = ne_log_obj();
    if (os_log_type_enabled(&v25->super, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "+[NEIKEv2Transport createTransportWithConnection:queue:]";
      _os_log_fault_impl(&dword_1BA83C000, &v25->super, OS_LOG_TYPE_FAULT, "%s called with null queue", buf, 0xCu);
    }

    goto LABEL_44;
  }

  v25 = objc_alloc_init(NEIKEv2Transport);
  if (!v25)
  {
LABEL_44:
    v53 = 0;
    goto LABEL_45;
  }

  v26 = nw_connection_copy_parameters(v23);
  ip_protocol = nw_parameters_get_ip_protocol();
  v59 = v20;
  if (ip_protocol == 6)
  {
    if (nw_parameters_get_tls())
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    v25->_transportType = v32;
  }

  else if (ip_protocol == 17)
  {
    v28 = nw_parameters_copy_default_protocol_stack(v26);
    v31 = 0;
    if (v28)
    {
      v29 = NEIKEv2TransportCopyNATTFramerDefinition();
      v30 = nw_protocol_stack_includes_protocol();

      if (v30)
      {
        v31 = 1;
      }
    }

    v25->_transportType = v31;
  }

  v33 = MEMORY[0x1E6977E20];
  v34 = nw_connection_copy_endpoint(v23);
  v35 = [v33 endpointWithCEndpoint:v34];
  objc_setProperty_atomic(v25, v36, v35, 24);

  v37 = MEMORY[0x1E6977E20];
  v38 = MEMORY[0x1BFAFB2D0](v26);
  v39 = [v37 endpointWithCEndpoint:v38];
  objc_setProperty_atomic(v25, v40, v39, 16);

  objc_setProperty_atomic(v25, v41, v24, 72);
  objc_setProperty_atomic(v25, v42, v23, 56);
  Property = objc_getProperty(v25, v43, 56, 1);
  nw_connection_set_queue(Property, v24);
  v46 = objc_getProperty(v25, v45, 56, 1);
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __56__NEIKEv2Transport_createTransportWithConnection_queue___block_invoke;
  v61 = &unk_1E7F08D88;
  v47 = v25;
  v62 = v47;
  MEMORY[0x1BFAFAEA0](v46, buf);
  v49 = objc_getProperty(v47, v48, 56, 1);
  nw_connection_start(v49);
  os_unfair_lock_lock(&g_transport_lock);
  v50 = g_transports;
  if (!g_transports)
  {
    v51 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v52 = g_transports;
    g_transports = v51;

    v50 = g_transports;
  }

  [v50 addObject:v47];
  os_unfair_lock_unlock(&g_transport_lock);
  v25 = v47;

  v53 = v25;
  v20 = v59;
LABEL_45:

  v57 = ne_log_obj();
  v58 = v57;
  if (!v53)
  {
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[NEIKEv2Listener handleNewConnection:]";
      _os_log_fault_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_FAULT, "%s called with null transport", buf, 0xCu);
    }

    v55 = 0;
LABEL_52:
    v54 = v20;
LABEL_53:

    v17 = v16;
LABEL_54:

    goto LABEL_10;
  }

  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v53;
    *&buf[12] = 2112;
    *&buf[14] = v23;
    _os_log_impl(&dword_1BA83C000, v58, OS_LOG_TYPE_DEFAULT, "Created %@ with connection %@", buf, 0x16u);
  }

  [*(v5 + 8) addObject:v53];
  [(NEIKEv2Transport *)v53 setWildcardDelegate:v5 preventsInvalidation:0];

LABEL_15:
  v18 = *MEMORY[0x1E69E9840];
}

void __56__NEIKEv2Listener_createListenerWithParameters_attempt___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [(NEIKEv2Listener *)WeakRetained createListenerWithParameters:(*(a1 + 48) + 1) attempt:?];
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "IKE listener released, not setting up listener", v5, 2u);
    }
  }
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 kernelSASessionName:(id)a4 listenerUDPPort:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8
{
  v28 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v14)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, v25, buf, 0xCu);
    goto LABEL_16;
  }

  if (!v16)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null listenerUDPPort";
    goto LABEL_15;
  }

  if (!v18)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!v19)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v27 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
      v25 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    v21 = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:v14 saSession:0 kernelSASessionName:v15 listenerUDPPort:v16 listenerInterface:0 listenerQueue:v17 delegate:v18 delegateQueue:v19 includeP2P:0];
  v21 = self;
LABEL_6:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 kernelSASessionName:(id)a4 listenerUDPPort:(id)a5 listenerInterface:(id)a6 listenerQueue:(id)a7 delegate:(id)a8 delegateQueue:(id)a9
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v15)
  {
    v26 = ne_log_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v29 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v27 = "%s called with null ikeConfig";
LABEL_18:
    _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, v27, buf, 0xCu);
    goto LABEL_19;
  }

  if (!v17)
  {
    v26 = ne_log_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v29 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v27 = "%s called with null listenerUDPPort";
    goto LABEL_18;
  }

  if (!v20)
  {
    v26 = ne_log_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v29 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v27 = "%s called with null delegate";
    goto LABEL_18;
  }

  if (!v21)
  {
    v26 = ne_log_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v29 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v27 = "%s called with null delegateQueue";
    goto LABEL_18;
  }

  if (!v18)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v29 = "[NEIKEv2Listener initWithListenerIKEConfig:kernelSASessionName:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
      v27 = "%s called with null listenerInterface";
      goto LABEL_18;
    }

LABEL_19:

    v23 = 0;
    goto LABEL_7;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:v15 saSession:0 kernelSASessionName:v16 listenerUDPPort:v17 listenerInterface:v18 listenerQueue:v19 delegate:v20 delegateQueue:v21 includeP2P:0];
  v23 = self;
LABEL_7:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 saSession:(id)a4 packetDelegate:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8
{
  v28 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v14)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v26 = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, v25, &v26, 0xCu);
    goto LABEL_16;
  }

  if (!v16)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v26 = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null packetDelegate";
    goto LABEL_15;
  }

  if (!v18)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    v26 = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:packetDelegate:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!v19)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      v26 = 136315138;
      v27 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:packetDelegate:listenerQueue:delegate:delegateQueue:]";
      v25 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    v21 = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)self initWithListenerIKEConfig:v14 saSession:v15 kernelSASessionName:0 packetDelegate:v16 listenerQueue:v17 delegate:v18 delegateQueue:v19];
  v21 = self;
LABEL_6:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 saSession:(id)a4 listenerUDPPort:(id)a5 listenerQueue:(id)a6 delegate:(id)a7 delegateQueue:(id)a8
{
  v28 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v14)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null ikeConfig";
LABEL_15:
    _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, v25, buf, 0xCu);
    goto LABEL_16;
  }

  if (!v16)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null listenerUDPPort";
    goto LABEL_15;
  }

  if (!v18)
  {
    v24 = ne_log_obj();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    *buf = 136315138;
    v27 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
    v25 = "%s called with null delegate";
    goto LABEL_15;
  }

  if (!v19)
  {
    v24 = ne_log_obj();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v27 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerQueue:delegate:delegateQueue:]";
      v25 = "%s called with null delegateQueue";
      goto LABEL_15;
    }

LABEL_16:

    v21 = 0;
    goto LABEL_6;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:v14 saSession:v15 kernelSASessionName:0 listenerUDPPort:v16 listenerInterface:0 listenerQueue:v17 delegate:v18 delegateQueue:v19 includeP2P:0];
  v21 = self;
LABEL_6:

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

- (NEIKEv2Listener)initWithListenerIKEConfig:(id)a3 saSession:(id)a4 listenerUDPPort:(id)a5 listenerInterface:(id)a6 listenerQueue:(id)a7 delegate:(id)a8 delegateQueue:(id)a9
{
  v30 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v15)
  {
    v26 = ne_log_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v29 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v27 = "%s called with null ikeConfig";
LABEL_18:
    _os_log_fault_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_FAULT, v27, buf, 0xCu);
    goto LABEL_19;
  }

  if (!v17)
  {
    v26 = ne_log_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v29 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v27 = "%s called with null listenerUDPPort";
    goto LABEL_18;
  }

  if (!v20)
  {
    v26 = ne_log_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v29 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v27 = "%s called with null delegate";
    goto LABEL_18;
  }

  if (!v21)
  {
    v26 = ne_log_obj();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    v29 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
    v27 = "%s called with null delegateQueue";
    goto LABEL_18;
  }

  if (!v18)
  {
    v26 = ne_log_obj();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v29 = "[NEIKEv2Listener initWithListenerIKEConfig:saSession:listenerUDPPort:listenerInterface:listenerQueue:delegate:delegateQueue:]";
      v27 = "%s called with null listenerInterface";
      goto LABEL_18;
    }

LABEL_19:

    v23 = 0;
    goto LABEL_7;
  }

  self = [(NEIKEv2Listener *)&self->super initWithListenerIKEConfig:v15 saSession:v16 kernelSASessionName:0 listenerUDPPort:v17 listenerInterface:v18 listenerQueue:v19 delegate:v20 delegateQueue:v21 includeP2P:0];
  v23 = self;
LABEL_7:

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (void)invalidatingTransport:(id)a3
{
  if (self)
  {
    self = self->_connectionTransports;
  }

  [(NEIKEv2Listener *)self removeObject:a3];
}

- (void)receivePacket:(id)a3 transport:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(NEIKEv2Listener *)self listenerQueue];
  dispatch_assert_queue_V2(v8);

  if (!self || !self->_cancelled)
  {
    if ([v6 exchangeType] != 34 || !v6 || (v6[11] & 1) == 0 || (v6[10] & 1) != 0 || (v10 = objc_getProperty(v6, v9, 40, 1), v11 = objc_msgSend(v10, "value"), v10, v11))
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = [(NEIKEv2Packet *)v6 copyShortDescription];
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "Listener can't handle packet %@", buf, 0xCu);
      }

LABEL_10:

      goto LABEL_11;
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_packetDelegate);
      v16 = self->_ikeConfig;
      if (WeakRetained)
      {
        goto LABEL_18;
      }

      ikeConfig = self->_ikeConfig;
    }

    else
    {
      v16 = 0;
      ikeConfig = 0;
    }

    v18 = v16;
    v19 = ikeConfig;
    v16 = [(NEIKEv2IKESAConfiguration *)v19 copy];

    if (v7)
    {
      Property = objc_getProperty(v7, v20, 24, 1);
    }

    else
    {
      Property = 0;
    }

    v22 = Property;
    v23 = [v22 copy];
    [(NEIKEv2IKESAConfiguration *)v16 setRemoteEndpoint:v23];

    WeakRetained = 0;
    v12 = 0;
    v24 = 0;
    if (!self)
    {
LABEL_19:
      v25 = v24 == 0;
      v26 = [NEIKEv2Session alloc];
      v27 = [(NEIKEv2Listener *)self listenerQueue];
      if (v25)
      {
        if (self)
        {
          kernelSASessionName = self->_kernelSASessionName;
          p_super = &v26->super;
          v36 = v16;
          v37 = self;
          v38 = v27;
        }

        else
        {
          p_super = &v26->super;
          v36 = v16;
          v37 = 0;
          v38 = v27;
          kernelSASessionName = 0;
        }

        v33 = [(NEIKEv2Session *)p_super initWithIKEConfig:v36 configurationDelegate:v37 queue:v38 kernelSASessionName:kernelSASessionName transport:v7 packetDelegate:v12];
      }

      else
      {
        if (self)
        {
          saSession = self->_saSession;
          v29 = &v26->super;
          v30 = v16;
          v31 = self;
          v32 = v27;
        }

        else
        {
          v29 = &v26->super;
          v30 = v16;
          v31 = 0;
          v32 = v27;
          saSession = 0;
        }

        v33 = [NEIKEv2Session initWithIKEConfig:v29 configurationDelegate:v30 queue:v31 saSession:v32 shouldCopySASession:saSession transport:v7 packetDelegate:v12];
      }

      v39 = v33;

      if (v39)
      {
        if (self)
        {
          sessionsBeforeAuth = self->_sessionsBeforeAuth;
        }

        else
        {
          sessionsBeforeAuth = 0;
        }

        [(NSMutableSet *)sessionsBeforeAuth addObject:v39];
        v41 = ne_log_obj();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          v42 = [(NEIKEv2Packet *)v6 copyShortDescription];
          *buf = 138412546;
          *&buf[4] = v39;
          v51 = 2112;
          v52 = v42;
          _os_log_impl(&dword_1BA83C000, v41, OS_LOG_TYPE_DEFAULT, "Created new session %@ to handle %@", buf, 0x16u);
        }

        [v39 receivePacket:v6];
        if (self)
        {
          v43 = objc_loadWeakRetained(&self->_delegate);
          objc_initWeak(buf, v43);

          delegateQueue = self->_delegateQueue;
        }

        else
        {
          delegateQueue = 0;
          *buf = 0;
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__NEIKEv2Listener_receivePacket_transport___block_invoke;
        block[3] = &unk_1E7F08670;
        v45 = delegateQueue;
        objc_copyWeak(&v49, buf);
        block[4] = self;
        v48 = v39;
        dispatch_async(v45, block);

        objc_destroyWeak(&v49);
        objc_destroyWeak(buf);
      }

      else
      {
        v46 = ne_log_obj();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[NEIKEv2Listener receivePacket:transport:]";
          _os_log_fault_impl(&dword_1BA83C000, v46, OS_LOG_TYPE_FAULT, "%s called with null newSession", buf, 0xCu);
        }
      }

      goto LABEL_10;
    }

LABEL_18:
    v24 = self->_saSession;
    v12 = WeakRetained;
    goto LABEL_19;
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __43__NEIKEv2Listener_receivePacket_transport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (objc_opt_respondsToSelector())
    {
      [v4 listener:*(a1 + 32) receivedNewSession:*(a1 + 40)];
    }
  }

  return MEMORY[0x1EEE66C38]();
}

- (void)sessionFailedBeforeRequestingConfiguration:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = ne_log_obj();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEFAULT, "Session %@ failed before requesting configuration", &v9, 0xCu);
    }

    if (self)
    {
      sessionsBeforeAuth = self->_sessionsBeforeAuth;
    }

    else
    {
      sessionsBeforeAuth = 0;
    }

    [(NSMutableSet *)sessionsBeforeAuth removeObject:v4];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v9 = 136315138;
      v10 = "[NEIKEv2Listener sessionFailedBeforeRequestingConfiguration:]";
      _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, "%s called with null session", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)requestConfigurationForSession:(id)a3 sessionConfig:(id)a4 childConfig:(id)a5 validateAuthBlock:(id)a6 responseBlock:(id)a7
{
  v38 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = ne_log_obj();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v37 = v12;
    _os_log_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_DEFAULT, "Session %@ requesting configuration", buf, 0xCu);
  }

  if (self)
  {
    [(NSMutableSet *)self->_sessionsBeforeAuth removeObject:v12];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v19 = WeakRetained;
      v20 = [v13 copy];
      v21 = [v14 copy];
      delegateQueue = self->_delegateQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __108__NEIKEv2Listener_requestConfigurationForSession_sessionConfig_childConfig_validateAuthBlock_responseBlock___block_invoke;
      block[3] = &unk_1E7F085D0;
      v29 = v19;
      v30 = self;
      v31 = v12;
      v32 = v20;
      v33 = v21;
      v34 = v15;
      v35 = v16;
      v23 = v21;
      v24 = v20;
      v25 = v19;
      dispatch_async(delegateQueue, block);

      goto LABEL_6;
    }
  }

  else
  {
    [0 removeObject:v12];
  }

  v27 = ne_log_obj();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_ERROR, "Listener delegate is nil, returning failure", buf, 2u);
  }

  (*(v16 + 2))(v16, 0, 0, 0);
LABEL_6:

  v26 = *MEMORY[0x1E69E9840];
}

void __108__NEIKEv2Listener_requestConfigurationForSession_sessionConfig_childConfig_validateAuthBlock_responseBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __108__NEIKEv2Listener_requestConfigurationForSession_sessionConfig_childConfig_validateAuthBlock_responseBlock___block_invoke_2;
  v8[3] = &unk_1E7F085A8;
  v8[4] = v3;
  v10 = *(a1 + 80);
  v9 = *(a1 + 48);
  [v2 requestConfigurationForListener:v3 session:v4 sessionConfig:v5 childConfig:v6 validateAuthBlock:v7 responseBlock:v8];
}

void __108__NEIKEv2Listener_requestConfigurationForSession_sessionConfig_childConfig_validateAuthBlock_responseBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 listenerQueue];
  dispatch_assert_queue_V2(v10);

  v11 = *(a1 + 48);
  v13 = [v9 copy];

  v12 = [v8 copy];
  (*(v11 + 16))(v11, v13, v12, a4);
}

@end