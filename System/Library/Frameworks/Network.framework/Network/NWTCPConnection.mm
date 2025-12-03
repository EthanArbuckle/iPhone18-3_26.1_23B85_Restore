@interface NWTCPConnection
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)stringFromNWTCPConnectionState:(int64_t)state;
- (BOOL)TFOSucceeded;
- (BOOL)fillOutTCPConnectionInfo:(tcp_connection_info *)info;
- (BOOL)isMultipath;
- (BOOL)startInternal;
- (NSData)metadata;
- (NSData)txtRecord;
- (NSDictionary)TCPInfo;
- (NSDictionary)multipathSubflowSwitchCounts;
- (NSString)privateDescription;
- (NWEndpoint)localAddress;
- (NWEndpoint)remoteAddress;
- (NWPath)connectedPath;
- (NWTCPConnection)initWithAcceptedInternalConnection:(id)connection;
- (NWTCPConnection)initWithEndpoint:(id)endpoint parameters:(id)parameters delegate:(id)delegate;
- (NWTCPConnection)initWithUpgradeForConnection:(NWTCPConnection *)connection;
- (NWTCPConnectionAuthenticationDelegate)delegate;
- (id)description;
- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content;
- (int)multipathPrimarySubflowInterfaceIndex;
- (unint64_t)multipathConnectedSubflowCount;
- (unint64_t)multipathSubflowCount;
- (void)cancel;
- (void)dealloc;
- (void)handleIdentityRequestWithMetadata:(id)metadata completionHandler:(id)handler;
- (void)handlePeerCertificateTrustEvaluationWithMetadata:(id)metadata trust:(id)trust completionHandler:(id)handler;
- (void)readMinimumLength:(NSUInteger)minimum maximumLength:(NSUInteger)maximum completionHandler:(void *)completion;
- (void)setupEventHandler;
- (void)write:(NSData *)data completionHandler:(void *)completion;
- (void)writeClose;
@end

@implementation NWTCPConnection

+ (id)stringFromNWTCPConnectionState:(int64_t)state
{
  if (state >= 6)
  {
    state = [MEMORY[0x1E696AEC0] stringWithFormat:@"INVALID(%ld)", state];
  }

  else
  {
    state = off_1E6A2BBB0[state];
  }

  return state;
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"state"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"hasBetterPath") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"viable"))
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___NWTCPConnection;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

- (NWTCPConnectionAuthenticationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSData)metadata
{
  internalConnection = [(NWTCPConnection *)self internalConnection];
  v3 = nw_connection_copy_metadata(internalConnection);

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DEF0]);
    bytes_ptr = xpc_data_get_bytes_ptr(v3);
    v6 = [v4 initWithBytes:bytes_ptr length:xpc_data_get_length(v3)];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)TCPInfo
{
  internalConnection = [(NWTCPConnection *)self internalConnection];
  v3 = nw_connection_copy_tcp_info(internalConnection);

  if (v3)
  {
    v4 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDictionary)multipathSubflowSwitchCounts
{
  internalConnection = [(NWTCPConnection *)self internalConnection];
  v3 = nw_connection_multipath_copy_subflow_counts(internalConnection);

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __47__NWTCPConnection_multipathSubflowSwitchCounts__block_invoke;
    applier[3] = &unk_1E6A39980;
    v5 = v4;
    v8 = v5;
    xpc_dictionary_apply(v3, applier);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __47__NWTCPConnection_multipathSubflowSwitchCounts__block_invoke(uint64_t a1, uint64_t a2, xpc_object_t xuint)
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:xpc_uint64_get_value(xuint)];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

- (int)multipathPrimarySubflowInterfaceIndex
{
  v10 = *MEMORY[0x1E69E9840];
  internalConnection = [(NWTCPConnection *)self internalConnection];
  v3 = nw_connection_copy_connected_path(internalConnection);

  if (v3)
  {
    v4 = v3;
    if (_nw_path_network_is_satisfied(v4))
    {
      routed_interface_index = _nw_path_get_routed_interface_index(v4);
    }

    else
    {
      routed_interface_index = 0;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446210;
      v9 = "[NWTCPConnection multipathPrimarySubflowInterfaceIndex]";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_ERROR, "%{public}s No connected path", &v8, 0xCu);
    }

    routed_interface_index = 0;
  }

  return routed_interface_index;
}

- (unint64_t)multipathConnectedSubflowCount
{
  internalConnection = [(NWTCPConnection *)self internalConnection];
  subflow_count = nw_connection_multipath_get_subflow_count(internalConnection);

  return subflow_count;
}

- (unint64_t)multipathSubflowCount
{
  internalConnection = [(NWTCPConnection *)self internalConnection];
  subflow_count = nw_connection_multipath_get_subflow_count(internalConnection);

  return subflow_count;
}

- (BOOL)isMultipath
{
  internalConnection = [(NWTCPConnection *)self internalConnection];
  v3 = nw_connection_uses_multipath(internalConnection);

  return v3;
}

- (BOOL)TFOSucceeded
{
  internalConnection = [(NWTCPConnection *)self internalConnection];
  v3 = nw_connection_used_tfo(internalConnection);

  return v3;
}

- (BOOL)fillOutTCPConnectionInfo:(tcp_connection_info *)info
{
  v19 = *MEMORY[0x1E69E9840];
  if (info)
  {
    infoCopy = info;
    internalConnection = [(NWTCPConnection *)self internalConnection];
    LOBYTE(infoCopy) = nw_connection_fillout_tcp_connection_info(internalConnection, infoCopy);

    return infoCopy;
  }

  v6 = __nwlog_obj();
  *buf = 136446210;
  v16 = "[NWTCPConnection fillOutTCPConnectionInfo:]";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v7, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "[NWTCPConnection fillOutTCPConnectionInfo:]";
        v10 = "%{public}s called with null tcp_conn_info";
LABEL_17:
        _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
      }
    }

    else
    {
      if (v13 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v8 = __nwlog_obj();
        v9 = type;
        v12 = os_log_type_enabled(v8, type);
        if (backtrace_string)
        {
          if (v12)
          {
            *buf = 136446466;
            v16 = "[NWTCPConnection fillOutTCPConnectionInfo:]";
            v17 = 2082;
            v18 = backtrace_string;
            _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null tcp_conn_info, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v12)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v16 = "[NWTCPConnection fillOutTCPConnectionInfo:]";
        v10 = "%{public}s called with null tcp_conn_info, no backtrace";
        goto LABEL_17;
      }

      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        v16 = "[NWTCPConnection fillOutTCPConnectionInfo:]";
        v10 = "%{public}s called with null tcp_conn_info, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v7)
  {
    free(v7);
  }

  return 0;
}

- (BOOL)startInternal
{
  objc_initWeak(&location, self);
  [(NWTCPConnection *)self setupEventHandler];
  parameters = [(NWTCPConnection *)self parameters];
  enableTLS = [parameters enableTLS];

  if (enableTLS)
  {
    internalConnection = [(NWTCPConnection *)self internalConnection];
    v6 = nw_connection_copy_parameters(internalConnection);

    v7 = nw_protocol_boringssl_copy_definition();
    v8 = nw_parameters_copy_protocol_options_for_definition(v6, v7);

    v9 = v8;
    delegate = [(NWTCPConnection *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && ((objc_opt_respondsToSelector() & 1) == 0 || [delegate shouldEvaluateTrustForConnection:self]))
    {
      verify_block[0] = MEMORY[0x1E69E9820];
      verify_block[1] = 3221225472;
      verify_block[2] = __32__NWTCPConnection_startInternal__block_invoke;
      verify_block[3] = &unk_1E6A2BB68;
      objc_copyWeak(&v18, &location);
      if (NWCopyInternalQueue_init_once != -1)
      {
        dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
      }

      v11 = NWCopyInternalQueue_nwQueue;
      sec_protocol_options_set_verify_block(v9, verify_block, v11);

      objc_destroyWeak(&v18);
    }

    if ((objc_opt_respondsToSelector() & 1) != 0 && ((objc_opt_respondsToSelector() & 1) == 0 || [delegate shouldProvideIdentityForConnection:self]))
    {
      challenge_block[0] = MEMORY[0x1E69E9820];
      challenge_block[1] = 3221225472;
      challenge_block[2] = __32__NWTCPConnection_startInternal__block_invoke_50;
      challenge_block[3] = &unk_1E6A2BB90;
      objc_copyWeak(&v16, &location);
      if (NWCopyInternalQueue_init_once != -1)
      {
        dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
      }

      v12 = NWCopyInternalQueue_nwQueue;
      sec_protocol_options_set_challenge_block(v9, challenge_block, v12);

      objc_destroyWeak(&v16);
    }
  }

  internalConnection2 = [(NWTCPConnection *)self internalConnection];
  nw_connection_start(internalConnection2);

  objc_destroyWeak(&location);
  return 1;
}

void __32__NWTCPConnection_startInternal__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handlePeerCertificateTrustEvaluationWithMetadata:v7 trust:v8 completionHandler:v9];
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446210;
      v14 = "[NWTCPConnection startInternal]_block_invoke";
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_ERROR, "%{public}s Connection went away while waiting for event", &v13, 0xCu);
    }
  }
}

void __32__NWTCPConnection_startInternal__block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleIdentityRequestWithMetadata:v5 completionHandler:v6];
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446210;
      v11 = "[NWTCPConnection startInternal]_block_invoke";
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_ERROR, "%{public}s Connection went away while waiting for event", &v10, 0xCu);
    }
  }
}

- (void)setupEventHandler
{
  objc_initWeak(&location, self);
  internalConnection = [(NWTCPConnection *)self internalConnection];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __36__NWTCPConnection_setupEventHandler__block_invoke;
  handler[3] = &unk_1E6A3D280;
  objc_copyWeak(&v11, &location);
  nw_connection_set_state_changed_handler(internalConnection, handler);

  internalConnection2 = [(NWTCPConnection *)self internalConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__NWTCPConnection_setupEventHandler__block_invoke_38;
  v8[3] = &unk_1E6A2D770;
  objc_copyWeak(&v9, &location);
  nw_connection_set_viability_changed_handler(internalConnection2, v8);

  internalConnection3 = [(NWTCPConnection *)self internalConnection];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__NWTCPConnection_setupEventHandler__block_invoke_40;
  v6[3] = &unk_1E6A2D770;
  objc_copyWeak(&v7, &location);
  nw_connection_set_better_path_available_handler(internalConnection3, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __36__NWTCPConnection_setupEventHandler__block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = nw_error_copy_cf_error(v5);
      [WeakRetained setInternalError:v7];
    }

    v8 = [WeakRetained state];
    if (a2 > 5)
    {
      v9 = v8;
    }

    else
    {
      v9 = qword_182B08F48[a2];
    }

    if ([WeakRetained state] != v9)
    {
      [WeakRetained willChangeValueForKey:@"state"];
      [WeakRetained setState:v9];
      [WeakRetained didChangeValueForKey:@"state"];
    }

    if (v9 == 5)
    {
      [WeakRetained setInternalConnection:0];
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446210;
      v12 = "[NWTCPConnection setupEventHandler]_block_invoke";
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s Connection went away while waiting for event", &v11, 0xCu);
    }
  }
}

void __36__NWTCPConnection_setupEventHandler__block_invoke_38(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained isViable] != a2)
    {
      [v4 willChangeValueForKey:@"viable"];
      [v4 setViable:a2];
      [v4 didChangeValueForKey:@"viable"];
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446210;
      v7 = "[NWTCPConnection setupEventHandler]_block_invoke";
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s Connection went away while waiting for event", &v6, 0xCu);
    }
  }
}

void __36__NWTCPConnection_setupEventHandler__block_invoke_40(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained hasBetterPath] != a2)
    {
      [v4 willChangeValueForKey:@"hasBetterPath"];
      [v4 setHasBetterPath:a2];
      [v4 didChangeValueForKey:@"hasBetterPath"];
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136446210;
      v7 = "[NWTCPConnection setupEventHandler]_block_invoke";
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s Connection went away while waiting for event", &v6, 0xCu);
    }
  }
}

- (void)handleIdentityRequestWithMetadata:(id)metadata completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  handlerCopy = handler;
  delegate = [(NWTCPConnection *)self delegate];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446210;
    v15 = "[NWTCPConnection handleIdentityRequestWithMetadata:completionHandler:]";
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s Peer asked for identity, asking delegate to provide identity", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__NWTCPConnection_handleIdentityRequestWithMetadata_completionHandler___block_invoke;
  v11[3] = &unk_1E6A2BB40;
  objc_copyWeak(&v13, buf);
  v10 = handlerCopy;
  v12 = v10;
  [delegate provideIdentityForConnection:self completionHandler:v11];

  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
}

void __71__NWTCPConnection_handleIdentityRequestWithMetadata_completionHandler___block_invoke(uint64_t a1, __SecIdentity *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = sec_identity_create_with_certificates(a2, v5);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v8 = gLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446210;
      v10 = "[NWTCPConnection handleIdentityRequestWithMetadata:completionHandler:]_block_invoke";
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "%{public}s Connection went away while waiting for event", &v9, 0xCu);
    }
  }
}

- (void)handlePeerCertificateTrustEvaluationWithMetadata:(id)metadata trust:(id)trust completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  trustCopy = trust;
  handlerCopy = handler;
  if (metadataCopy)
  {
    objc_initWeak(&location, self);
    delegate = [(NWTCPConnection *)self delegate];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __92__NWTCPConnection_handlePeerCertificateTrustEvaluationWithMetadata_trust_completionHandler___block_invoke;
    handler[3] = &unk_1E6A2BAF0;
    v13 = v12;
    v29 = v13;
    sec_protocol_metadata_access_peer_certificate_chain(metadataCopy, handler);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v13 count];
        *buf = 136446466;
        v33 = "[NWTCPConnection handlePeerCertificateTrustEvaluationWithMetadata:trust:completionHandler:]";
        v34 = 2048;
        v35 = v16;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s Evaluating trust for peer cert chain of length %lu", buf, 0x16u);
      }

      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __92__NWTCPConnection_handlePeerCertificateTrustEvaluationWithMetadata_trust_completionHandler___block_invoke_34;
      v25[3] = &unk_1E6A2BB18;
      objc_copyWeak(&v27, &location);
      v26 = handlerCopy;
      [delegate evaluateTrustForConnection:self peerCertificateChain:v13 completionHandler:v25];

      objc_destroyWeak(&v27);
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v33 = "[NWTCPConnection handlePeerCertificateTrustEvaluationWithMetadata:trust:completionHandler:]";
        v34 = 2048;
        v35 = 0;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s Can't create certificate chain %p for trust evaluation", buf, 0x16u);
      }
    }

    objc_destroyWeak(&location);
    goto LABEL_10;
  }

  v17 = __nwlog_obj();
  *buf = 136446210;
  v33 = "[NWTCPConnection handlePeerCertificateTrustEvaluationWithMetadata:trust:completionHandler:]";
  v18 = _os_log_send_and_compose_impl();

  LOBYTE(location) = 16;
  v31 = 0;
  if (__nwlog_fault(v18, &location, &v31))
  {
    if (location == 17)
    {
      v19 = __nwlog_obj();
      v20 = location;
      if (os_log_type_enabled(v19, location))
      {
        *buf = 136446210;
        v33 = "[NWTCPConnection handlePeerCertificateTrustEvaluationWithMetadata:trust:completionHandler:]";
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null metadata", buf, 0xCu);
      }
    }

    else if (v31 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v19 = __nwlog_obj();
      v22 = location;
      v23 = os_log_type_enabled(v19, location);
      if (backtrace_string)
      {
        if (v23)
        {
          *buf = 136446466;
          v33 = "[NWTCPConnection handlePeerCertificateTrustEvaluationWithMetadata:trust:completionHandler:]";
          v34 = 2082;
          v35 = backtrace_string;
          _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null metadata, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_27;
      }

      if (v23)
      {
        *buf = 136446210;
        v33 = "[NWTCPConnection handlePeerCertificateTrustEvaluationWithMetadata:trust:completionHandler:]";
        _os_log_impl(&dword_181A37000, v19, v22, "%{public}s called with null metadata, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v19 = __nwlog_obj();
      v24 = location;
      if (os_log_type_enabled(v19, location))
      {
        *buf = 136446210;
        v33 = "[NWTCPConnection handlePeerCertificateTrustEvaluationWithMetadata:trust:completionHandler:]";
        _os_log_impl(&dword_181A37000, v19, v24, "%{public}s called with null metadata, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_27:
  if (v18)
  {
    free(v18);
  }

LABEL_10:
}

void __92__NWTCPConnection_handlePeerCertificateTrustEvaluationWithMetadata_trust_completionHandler___block_invoke(uint64_t a1, sec_certificate_t certificate)
{
  v3 = sec_certificate_copy_ref(certificate);
  [*(a1 + 32) addObject:v3];
}

void __92__NWTCPConnection_handlePeerCertificateTrustEvaluationWithMetadata_trust_completionHandler___block_invoke_34(uint64_t a1, __SecTrust *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *cf = 0;
    SecTrustEvaluateWithError(a2, cf);
    if (*cf)
    {
      CFRelease(*cf);
      *cf = 0;
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *cf = 136446210;
      *&cf[4] = "[NWTCPConnection handlePeerCertificateTrustEvaluationWithMetadata:trust:completionHandler:]_block_invoke";
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_ERROR, "%{public}s Connection went away while waiting for event", cf, 0xCu);
    }
  }
}

- (void)writeClose
{
  internalConnection = [(NWTCPConnection *)self internalConnection];

  if (internalConnection)
  {
    internalConnection2 = [(NWTCPConnection *)self internalConnection];
    nw_connection_send(internalConnection2, 0, &__block_literal_global_6_44667, 1, &__block_literal_global_24512);
  }
}

- (void)write:(NSData *)data completionHandler:(void *)completion
{
  v6 = data;
  v7 = completion;
  internalConnection = [(NWTCPConnection *)self internalConnection];

  if (internalConnection)
  {
    if (v6)
    {
      _createDispatchData = [(NSData *)v6 _createDispatchData];
    }

    else
    {
      _createDispatchData = 0;
    }

    internalConnection2 = [(NWTCPConnection *)self internalConnection];
    completiona[0] = MEMORY[0x1E69E9820];
    completiona[1] = 3221225472;
    completiona[2] = __43__NWTCPConnection_write_completionHandler___block_invoke;
    completiona[3] = &unk_1E6A39D90;
    v16 = v7;
    v11 = v7;
    nw_connection_send(internalConnection2, _createDispatchData, &__block_literal_global_44658, 1, completiona);
  }

  else
  {
    if (NWCopyInternalQueue_init_once != -1)
    {
      dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
    }

    v10 = NWCopyInternalQueue_nwQueue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__NWTCPConnection_write_completionHandler___block_invoke_2;
    v13[3] = &unk_1E6A3CE48;
    v14 = v7;
    _createDispatchData = v7;
    dispatch_async(v10, v13);

    v11 = v14;
  }
}

void __43__NWTCPConnection_write_completionHandler___block_invoke(uint64_t a1, nw_error_t error)
{
  if (error)
  {
    error = nw_error_copy_cf_error(error);
  }

  v3 = error;
  (*(*(a1 + 32) + 16))();
}

void __43__NWTCPConnection_write_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (void)readMinimumLength:(NSUInteger)minimum maximumLength:(NSUInteger)maximum completionHandler:(void *)completion
{
  v5 = maximum;
  v6 = minimum;
  v8 = completion;
  internalConnection = [(NWTCPConnection *)self internalConnection];

  if (internalConnection)
  {
    internalConnection2 = [(NWTCPConnection *)self internalConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __69__NWTCPConnection_readMinimumLength_maximumLength_completionHandler___block_invoke;
    v16[3] = &unk_1E6A39D68;
    v11 = &v17;
    v17 = v8;
    v12 = v8;
    nw_connection_receive_internal(internalConnection2, 0, v6, v5, v16);
  }

  else
  {
    if (NWCopyInternalQueue_init_once != -1)
    {
      dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
    }

    internalConnection2 = NWCopyInternalQueue_nwQueue;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __69__NWTCPConnection_readMinimumLength_maximumLength_completionHandler___block_invoke_2;
    v14[3] = &unk_1E6A3CE48;
    v11 = &v15;
    v15 = v8;
    v13 = v8;
    dispatch_async(internalConnection2, v14);
  }
}

void __69__NWTCPConnection_readMinimumLength_maximumLength_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v16 = a2;
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = nw_error_copy_cf_error(v10);
    if (v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  if (!a4 || v12)
  {
LABEL_8:
    v14 = *(a1 + 32);
    v13 = v16;
    if (!v16)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:57 userInfo:0];
  v13 = 0;
  v14 = *(a1 + 32);
LABEL_9:
  v15 = v13;
LABEL_10:

  (*(v14 + 16))(v14, v16, v12);
}

void __69__NWTCPConnection_readMinimumLength_maximumLength_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)cancel
{
  if ([(NWTCPConnection *)self state]!= NWTCPConnectionStateCancelled)
  {
    internalConnection = [(NWTCPConnection *)self internalConnection];

    if (internalConnection)
    {
      internalConnection2 = [(NWTCPConnection *)self internalConnection];
      nw_connection_cancel(internalConnection2);
    }
  }
}

- (NSData)txtRecord
{
  internalConnection = [(NWTCPConnection *)self internalConnection];

  if (internalConnection)
  {
    internalConnection2 = [(NWTCPConnection *)self internalConnection];
    v5 = nw_connection_copy_host_endpoint(internalConnection2);

    if (v5)
    {
      v6 = v5;
      v7 = _nw_endpoint_copy_txt_record(v6);

      v8 = 0;
      if (v7)
      {
        v9 = v7[1];
        if (v9)
        {
          v10 = v7[2];
          if (v10)
          {
            v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v9 length:v10];
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NWEndpoint)remoteAddress
{
  internalConnection = [(NWTCPConnection *)self internalConnection];

  if (internalConnection)
  {
    internalConnection2 = [(NWTCPConnection *)self internalConnection];
    v5 = nw_connection_copy_connected_remote_endpoint(internalConnection2);

    if (v5)
    {
      internalConnection = [NWEndpoint endpointWithInternalEndpoint:v5];
    }

    else
    {
      internalConnection = 0;
    }
  }

  return internalConnection;
}

- (NWEndpoint)localAddress
{
  internalConnection = [(NWTCPConnection *)self internalConnection];

  if (internalConnection)
  {
    internalConnection2 = [(NWTCPConnection *)self internalConnection];
    v5 = nw_connection_copy_connected_local_endpoint(internalConnection2);

    if (v5)
    {
      internalConnection = [NWEndpoint endpointWithInternalEndpoint:v5];
    }

    else
    {
      internalConnection = 0;
    }
  }

  return internalConnection;
}

- (NWPath)connectedPath
{
  internalConnection = [(NWTCPConnection *)self internalConnection];

  if (internalConnection)
  {
    internalConnection2 = [(NWTCPConnection *)self internalConnection];
    v5 = nw_connection_copy_connected_path(internalConnection2);

    if (v5)
    {
      internalConnection = [[NWPath alloc] initWithPath:v5];
    }

    else
    {
      internalConnection = 0;
    }
  }

  return internalConnection;
}

- (NSString)privateDescription
{
  v2 = [(NWTCPConnection *)self descriptionWithIndent:0 showFullContent:1];

  return v2;
}

- (id)description
{
  v2 = [(NWTCPConnection *)self descriptionWithIndent:0 showFullContent:0];

  return v2;
}

- (id)descriptionWithIndent:(int)indent showFullContent:(BOOL)content
{
  contentCopy = content;
  v5 = *&indent;
  v7 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v7 appendString:@"{"];
  parameters = [(NWTCPConnection *)self parameters];
  [v7 appendPrettyObject:parameters withName:@"parameters" indent:v5 showFullContent:contentCopy];

  endpoint = [(NWTCPConnection *)self endpoint];
  [v7 appendPrettyObject:endpoint withName:@"endpoint" indent:v5 showFullContent:contentCopy];

  [v7 appendString:@"\n}"];
  return v7;
}

- (void)dealloc
{
  internalConnection = [(NWTCPConnection *)self internalConnection];

  if (internalConnection)
  {
    internalConnection2 = [(NWTCPConnection *)self internalConnection];
    nw_connection_cancel(internalConnection2);

    [(NWTCPConnection *)self setInternalConnection:0];
  }

  v5.receiver = self;
  v5.super_class = NWTCPConnection;
  [(NWTCPConnection *)&v5 dealloc];
}

- (NWTCPConnection)initWithUpgradeForConnection:(NWTCPConnection *)connection
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = connection;
  v5 = v4;
  if (!v4)
  {
    v33 = __nwlog_obj();
    *buf = 136446210;
    v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
    v34 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v34, &type, &v53))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type;
      if (!os_log_type_enabled(v35, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
      v37 = "%{public}s called with null connection";
LABEL_80:
      _os_log_impl(&dword_181A37000, v35, v36, v37, buf, 0xCu);
      goto LABEL_81;
    }

    if (v53 != 1)
    {
      v35 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v35, type))
      {
        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v37 = "%{public}s called with null connection, backtrace limit exceeded";
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v35 = __nwlog_obj();
    v36 = type;
    v46 = os_log_type_enabled(v35, type);
    if (!backtrace_string)
    {
      if (v46)
      {
        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v37 = "%{public}s called with null connection, no backtrace";
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if (!v46)
    {
      goto LABEL_60;
    }

    *buf = 136446466;
    v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
    v57 = 2082;
    v58 = backtrace_string;
    v47 = "%{public}s called with null connection, dumping backtrace:%{public}s";
LABEL_59:
    _os_log_impl(&dword_181A37000, v35, v36, v47, buf, 0x16u);
LABEL_60:

    free(backtrace_string);
    goto LABEL_82;
  }

  endpoint = [(NWTCPConnection *)v4 endpoint];

  if (!endpoint)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
    v34 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (!__nwlog_fault(v34, &type, &v53))
    {
      goto LABEL_82;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type;
      if (!os_log_type_enabled(v35, type))
      {
        goto LABEL_81;
      }

      *buf = 136446210;
      v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
      v37 = "%{public}s called with null connection.endpoint";
      goto LABEL_80;
    }

    if (v53 != 1)
    {
      v35 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v35, type))
      {
        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v37 = "%{public}s called with null connection.endpoint, backtrace limit exceeded";
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v35 = __nwlog_obj();
    v36 = type;
    v48 = os_log_type_enabled(v35, type);
    if (!backtrace_string)
    {
      if (v48)
      {
        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v37 = "%{public}s called with null connection.endpoint, no backtrace";
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if (!v48)
    {
      goto LABEL_60;
    }

    *buf = 136446466;
    v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
    v57 = 2082;
    v58 = backtrace_string;
    v47 = "%{public}s called with null connection.endpoint, dumping backtrace:%{public}s";
    goto LABEL_59;
  }

  parameters = [(NWTCPConnection *)v5 parameters];

  if (parameters)
  {
    endpoint2 = [(NWTCPConnection *)v5 endpoint];
    internalEndpoint = [endpoint2 internalEndpoint];
    parameters2 = [(NWTCPConnection *)v5 parameters];
    internalParameters = [parameters2 internalParameters];
    v12 = nw_connection_create(internalEndpoint, internalParameters);

    if (v12)
    {
      v52.receiver = self;
      v52.super_class = NWTCPConnection;
      v13 = [(NWTCPConnection *)&v52 init];
      if (v13)
      {
        v14 = v13;
        if (NWCopyInternalQueue_init_once != -1)
        {
          dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
        }

        v15 = NWCopyInternalQueue_nwQueue;
        nw_connection_set_queue(v12, v15);

        endpoint3 = [(NWTCPConnection *)v5 endpoint];
        endpoint = v14->_endpoint;
        v14->_endpoint = endpoint3;

        parameters3 = [(NWTCPConnection *)v5 parameters];
        parameters = v14->_parameters;
        v14->_parameters = parameters3;

        delegate = [(NWTCPConnection *)v5 delegate];
        objc_storeWeak(&v14->_delegate, delegate);

        objc_storeStrong(&v14->_internalConnection, v12);
        v14->_state = 1;
        [(NWTCPConnection *)v14 startInternal];
        self = v14;
        selfCopy = self;
        goto LABEL_27;
      }

      v40 = __nwlog_obj();
      *buf = 136446210;
      v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
      v41 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v53 = 0;
      if (!__nwlog_fault(v41, &type, &v53))
      {
        goto LABEL_89;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
          v44 = "%{public}s [super init] failed";
LABEL_87:
          _os_log_impl(&dword_181A37000, v42, v43, v44, buf, 0xCu);
        }
      }

      else if (v53 == 1)
      {
        v50 = __nw_create_backtrace_string();
        v42 = __nwlog_obj();
        v43 = type;
        v51 = os_log_type_enabled(v42, type);
        if (v50)
        {
          if (v51)
          {
            *buf = 136446466;
            v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
            v57 = 2082;
            v58 = v50;
            _os_log_impl(&dword_181A37000, v42, v43, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v50);
          goto LABEL_89;
        }

        if (v51)
        {
          *buf = 136446210;
          v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
          v44 = "%{public}s [super init] failed, no backtrace";
          goto LABEL_87;
        }
      }

      else
      {
        v42 = __nwlog_obj();
        v43 = type;
        if (os_log_type_enabled(v42, type))
        {
          *buf = 136446210;
          v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
          v44 = "%{public}s [super init] failed, backtrace limit exceeded";
          goto LABEL_87;
        }
      }

LABEL_89:
      if (v41)
      {
        free(v41);
      }

      self = 0;
      goto LABEL_26;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v22 = gLogObj;
    *buf = 136446210;
    v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
    v23 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v53 = 0;
    if (__nwlog_fault(v23, &type, &v53))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (!os_log_type_enabled(v24, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v26 = "%{public}s nw_connection_create failed";
LABEL_22:
        v30 = v24;
        v31 = v25;
        goto LABEL_23;
      }

      if (v53 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v24 = gLogObj;
        v25 = type;
        if (!os_log_type_enabled(v24, type))
        {
          goto LABEL_24;
        }

        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v26 = "%{public}s nw_connection_create failed, backtrace limit exceeded";
        goto LABEL_22;
      }

      v27 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v24 = gLogObj;
      v28 = type;
      v29 = os_log_type_enabled(v24, type);
      if (!v27)
      {
        if (!v29)
        {
LABEL_24:

          if (!v23)
          {
LABEL_26:
            selfCopy = 0;
LABEL_27:

            goto LABEL_28;
          }

LABEL_25:
          free(v23);
          goto LABEL_26;
        }

        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v26 = "%{public}s nw_connection_create failed, no backtrace";
        v30 = v24;
        v31 = v28;
LABEL_23:
        _os_log_impl(&dword_181A37000, v30, v31, v26, buf, 0xCu);
        goto LABEL_24;
      }

      if (v29)
      {
        *buf = 136446466;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v57 = 2082;
        v58 = v27;
        _os_log_impl(&dword_181A37000, v24, v28, "%{public}s nw_connection_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v27);
    }

    if (!v23)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v39 = __nwlog_obj();
  *buf = 136446210;
  v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
  v34 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v53 = 0;
  if (__nwlog_fault(v34, &type, &v53))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v35 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v35, type))
      {
        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v37 = "%{public}s called with null connection.parameters";
        goto LABEL_80;
      }

LABEL_81:

      goto LABEL_82;
    }

    if (v53 != 1)
    {
      v35 = __nwlog_obj();
      v36 = type;
      if (os_log_type_enabled(v35, type))
      {
        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v37 = "%{public}s called with null connection.parameters, backtrace limit exceeded";
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    backtrace_string = __nw_create_backtrace_string();
    v35 = __nwlog_obj();
    v36 = type;
    v49 = os_log_type_enabled(v35, type);
    if (!backtrace_string)
    {
      if (v49)
      {
        *buf = 136446210;
        v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
        v37 = "%{public}s called with null connection.parameters, no backtrace";
        goto LABEL_80;
      }

      goto LABEL_81;
    }

    if (!v49)
    {
      goto LABEL_60;
    }

    *buf = 136446466;
    v56 = "[NWTCPConnection initWithUpgradeForConnection:]";
    v57 = 2082;
    v58 = backtrace_string;
    v47 = "%{public}s called with null connection.parameters, dumping backtrace:%{public}s";
    goto LABEL_59;
  }

LABEL_82:
  if (v34)
  {
    free(v34);
  }

  selfCopy = 0;
LABEL_28:

  return selfCopy;
}

- (NWTCPConnection)initWithEndpoint:(id)endpoint parameters:(id)parameters delegate:(id)delegate
{
  v60 = *MEMORY[0x1E69E9840];
  endpointCopy = endpoint;
  parametersCopy = parameters;
  delegateCopy = delegate;
  if (!endpointCopy)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v36, &type, &v54))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v39 = "%{public}s called with null endpoint";
LABEL_70:
        _os_log_impl(&dword_181A37000, v37, v38, v39, buf, 0xCu);
      }
    }

    else if (v54 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v37 = __nwlog_obj();
      v38 = type;
      v47 = os_log_type_enabled(v37, type);
      if (backtrace_string)
      {
        if (v47)
        {
          *buf = 136446466;
          v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
          v58 = 2082;
          v59 = backtrace_string;
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null endpoint, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_72:
        if (!v36)
        {
LABEL_74:

          v23 = 0;
          goto LABEL_23;
        }

LABEL_73:
        free(v36);
        goto LABEL_74;
      }

      if (v47)
      {
        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v39 = "%{public}s called with null endpoint, no backtrace";
        goto LABEL_70;
      }
    }

    else
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v39 = "%{public}s called with null endpoint, backtrace limit exceeded";
        goto LABEL_70;
      }
    }

LABEL_71:

    goto LABEL_72;
  }

  if (!parametersCopy)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (!__nwlog_fault(v36, &type, &v54))
    {
      goto LABEL_72;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v39 = "%{public}s called with null parameters";
        goto LABEL_70;
      }
    }

    else
    {
      if (v54 == 1)
      {
        v48 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v38 = type;
        v49 = os_log_type_enabled(v37, type);
        if (v48)
        {
          if (v49)
          {
            *buf = 136446466;
            v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
            v58 = 2082;
            v59 = v48;
            _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
          if (!v36)
          {
            goto LABEL_74;
          }

          goto LABEL_73;
        }

        if (!v49)
        {
          goto LABEL_71;
        }

        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v39 = "%{public}s called with null parameters, no backtrace";
        goto LABEL_70;
      }

      v37 = __nwlog_obj();
      v38 = type;
      if (os_log_type_enabled(v37, type))
      {
        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v39 = "%{public}s called with null parameters, backtrace limit exceeded";
        goto LABEL_70;
      }
    }

    goto LABEL_71;
  }

  v53.receiver = self;
  v53.super_class = NWTCPConnection;
  v12 = [(NWTCPConnection *)&v53 init];
  if (v12)
  {
    v13 = v12;
    copyCParameters = [parametersCopy copyCParameters];
    v15 = nw_parameters_copy_default_protocol_stack(copyCParameters);
    v16 = nw_protocol_stack_copy_transport_protocol(v15);

    if (!v16)
    {
      options = _nw_tcp_create_options();
      nw_protocol_stack_set_transport_protocol(v15, options);
    }

    nw_parameters_set_indefinite(copyCParameters);
    nw_parameters_set_no_opaque_proxy(copyCParameters, 1);
    internalEndpoint = [endpointCopy internalEndpoint];
    v19 = nw_connection_create(internalEndpoint, copyCParameters);

    if (v19)
    {
      if (NWCopyInternalQueue_init_once != -1)
      {
        dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
      }

      v20 = NWCopyInternalQueue_nwQueue;
      nw_connection_set_queue(v19, v20);

      objc_storeStrong(&v13->_endpoint, endpoint);
      v21 = [[NWParameters alloc] initWithParameters:copyCParameters];
      parameters = v13->_parameters;
      v13->_parameters = v21;

      objc_storeStrong(&v13->_internalConnection, v19);
      objc_storeWeak(&v13->_delegate, delegateCopy);
      v13->_state = 1;
      [(NWTCPConnection *)v13 startInternal];
      v23 = v13;
      goto LABEL_22;
    }

    v52 = delegateCopy;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v24 = gLogObj;
    *buf = 136446210;
    v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v25, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v28 = "%{public}s nw_connection_create failed";
LABEL_26:
        v33 = v26;
        v34 = v27;
        goto LABEL_27;
      }

      if (v54 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v26 = gLogObj;
        v27 = type;
        if (!os_log_type_enabled(v26, type))
        {
          goto LABEL_28;
        }

        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v28 = "%{public}s nw_connection_create failed, backtrace limit exceeded";
        goto LABEL_26;
      }

      v29 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v30 = type;
      v31 = os_log_type_enabled(v26, type);
      if (!v29)
      {
        if (!v31)
        {
LABEL_28:

          if (!v25)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v28 = "%{public}s nw_connection_create failed, no backtrace";
        v33 = v26;
        v34 = v30;
LABEL_27:
        _os_log_impl(&dword_181A37000, v33, v34, v28, buf, 0xCu);
        goto LABEL_28;
      }

      if (v31)
      {
        *buf = 136446466;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v58 = 2082;
        v59 = v29;
        _os_log_impl(&dword_181A37000, v26, v30, "%{public}s nw_connection_create failed, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(v29);
    }

    if (!v25)
    {
LABEL_21:
      v23 = 0;
      delegateCopy = v52;
LABEL_22:

      goto LABEL_23;
    }

LABEL_20:
    free(v25);
    goto LABEL_21;
  }

  v41 = __nwlog_obj();
  *buf = 136446210;
  v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
  v42 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v54 = 0;
  if (__nwlog_fault(v42, &type, &v54))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v43 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v43, type))
      {
        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v45 = "%{public}s [super init] failed";
LABEL_77:
        _os_log_impl(&dword_181A37000, v43, v44, v45, buf, 0xCu);
      }
    }

    else
    {
      if (v54 == 1)
      {
        v50 = __nw_create_backtrace_string();
        v43 = __nwlog_obj();
        v44 = type;
        v51 = os_log_type_enabled(v43, type);
        if (v50)
        {
          if (v51)
          {
            *buf = 136446466;
            v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
            v58 = 2082;
            v59 = v50;
            _os_log_impl(&dword_181A37000, v43, v44, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v50);
          goto LABEL_79;
        }

        if (!v51)
        {
          goto LABEL_78;
        }

        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v45 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_77;
      }

      v43 = __nwlog_obj();
      v44 = type;
      if (os_log_type_enabled(v43, type))
      {
        *buf = 136446210;
        v57 = "[NWTCPConnection initWithEndpoint:parameters:delegate:]";
        v45 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_77;
      }
    }

LABEL_78:
  }

LABEL_79:
  if (v42)
  {
    free(v42);
  }

  v23 = 0;
LABEL_23:

  return v23;
}

- (NWTCPConnection)initWithAcceptedInternalConnection:(id)connection
{
  v43 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if (!connectionCopy)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v21, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
          _os_log_impl(&dword_181A37000, v22, v23, "%{public}s called with null internalConnection", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v22, type);
        if (backtrace_string)
        {
          if (v30)
          {
            *buf = 136446466;
            v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
            v41 = 2082;
            v42 = backtrace_string;
            _os_log_impl(&dword_181A37000, v22, v29, "%{public}s called with null internalConnection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_36;
        }

        if (v30)
        {
          *buf = 136446210;
          v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
          _os_log_impl(&dword_181A37000, v22, v29, "%{public}s called with null internalConnection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v22, type))
        {
          *buf = 136446210;
          v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
          _os_log_impl(&dword_181A37000, v22, v34, "%{public}s called with null internalConnection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_36:
    if (v21)
    {
      free(v21);
    }

    goto LABEL_44;
  }

  v36.receiver = self;
  v36.super_class = NWTCPConnection;
  v6 = [(NWTCPConnection *)&v36 init];
  v7 = v6;
  if (!v6)
  {
    v24 = __nwlog_obj();
    *buf = 136446210;
    v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
    v25 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v37 = 0;
    if (__nwlog_fault(v25, &type, &v37))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v26 = __nwlog_obj();
        v27 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
          _os_log_impl(&dword_181A37000, v26, v27, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v37 == 1)
      {
        v31 = __nw_create_backtrace_string();
        v26 = __nwlog_obj();
        v32 = type;
        v33 = os_log_type_enabled(v26, type);
        if (v31)
        {
          if (v33)
          {
            *buf = 136446466;
            v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
            v41 = 2082;
            v42 = v31;
            _os_log_impl(&dword_181A37000, v26, v32, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v31);
          goto LABEL_42;
        }

        if (v33)
        {
          *buf = 136446210;
          v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
          _os_log_impl(&dword_181A37000, v26, v32, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v26 = __nwlog_obj();
        v35 = type;
        if (os_log_type_enabled(v26, type))
        {
          *buf = 136446210;
          v40 = "[NWTCPConnection initWithAcceptedInternalConnection:]";
          _os_log_impl(&dword_181A37000, v26, v35, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_42:
    if (v25)
    {
      free(v25);
    }

LABEL_44:
    v7 = 0;
    goto LABEL_6;
  }

  objc_storeStrong(&v6->_internalConnection, connection);
  v8 = connectionCopy;
  v9 = v8[1];

  v10 = [NWEndpoint endpointWithInternalEndpoint:v9];
  endpoint = v7->_endpoint;
  v7->_endpoint = v10;

  v12 = [NWParameters alloc];
  v13 = v8;
  v14 = v13[2];

  v15 = [(NWParameters *)v12 initWithParameters:v14];
  parameters = v7->_parameters;
  v7->_parameters = v15;

  v7->_state = 1;
  [(NWTCPConnection *)v7 setupEventHandler];
  internalConnection = v7->_internalConnection;
  if (NWCopyInternalQueue_init_once != -1)
  {
    dispatch_once(&NWCopyInternalQueue_init_once, &__block_literal_global_66536);
  }

  v18 = NWCopyInternalQueue_nwQueue;
  nw_connection_set_queue(internalConnection, v18);

  nw_connection_start(v7->_internalConnection);
LABEL_6:

  return v7;
}

@end