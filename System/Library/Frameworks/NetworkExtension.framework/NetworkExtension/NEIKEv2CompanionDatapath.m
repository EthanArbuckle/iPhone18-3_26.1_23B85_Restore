@interface NEIKEv2CompanionDatapath
- (BOOL)connected;
- (id)description;
- (uint64_t)getStopReasonFromConnectionError:(uint64_t)a1;
- (void)cancelLocked;
- (void)dealloc;
- (void)resetConnectionLocked;
- (void)setupConnectionLocked;
- (void)signalCompletionSemaphoreLocked;
@end

@implementation NEIKEv2CompanionDatapath

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (self && self->_state == 3)
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = self;
      _os_log_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_DEFAULT, "%@: dealloc", buf, 0xCu);
    }
  }

  else
  {
    v3 = ne_log_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v7 = self;
      _os_log_fault_impl(&dword_1BA83C000, v3, OS_LOG_TYPE_FAULT, "%@: dealloc without cancellation", buf, 0xCu);
    }
  }

  v5.receiver = self;
  v5.super_class = NEIKEv2CompanionDatapath;
  [(NEIKEv2CompanionDatapath *)&v5 dealloc];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = v4;
  if (self)
  {
    identifier = self->_identifier;
    v7 = self->_remoteEndpoint;
    v8 = self->_connectedEndpointString;
    v9 = "";
    if (v8)
    {
      v10 = " vpn-server ";
    }

    else
    {
      v10 = "";
    }

    v11 = self->_connectedEndpointString;
    if (v11)
    {
      v2 = self->_connectedEndpointString;
      v9 = [(NSString *)v2 UTF8String];
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    state = self->_state;
    if (state >= 4)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%u)", self->_state];
    }

    else
    {
      v14 = off_1E7F088E8[state];
    }

    v15 = [v5 initWithFormat:@"Cmpn[%llu %@%s%s %@]", identifier, v7, v10, v9, v14];

    if (!v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = [v4 initWithFormat:@"Cmpn[%llu %@%s%s %@]", 0, 0, ", ", 0];
    v2 = 0;
    v12 = 0;
    v7 = 0;
    v8 = 0;
  }

LABEL_13:

  return v15;
}

- (void)cancelLocked
{
  os_unfair_lock_assert_owner((a1 + 12));
  *(a1 + 9) = 3;
  [(NEIKEv2CompanionDatapath *)a1 resetConnectionLocked];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  if (WeakRetained)
  {
    v3 = [(NEIKEv2CompanionDatapath *)a1 getStopReasonFromConnectionError:?];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __40__NEIKEv2CompanionDatapath_cancelLocked__block_invoke;
    v4[3] = &unk_1E7F086C0;
    v5 = WeakRetained;
    v6 = v3;
    [v5 stopTunnelWithReason:14 completionHandler:v4];
    [(NEIKEv2CompanionDatapath *)a1 signalCompletionSemaphoreLocked];
  }
}

- (void)resetConnectionLocked
{
  v8 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 12));
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a1;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: reset-connection", &v6, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    nw_connection_cancel(v3);
    v4 = *(a1 + 32);
    *(a1 + 32) = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (uint64_t)getStopReasonFromConnectionError:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    if (nw_error_get_error_domain(v3) == nw_error_domain_dns)
    {
      a1 = 17;
      goto LABEL_10;
    }

    if (nw_error_get_error_domain(v4) != nw_error_domain_posix)
    {
LABEL_9:
      a1 = 7;
      goto LABEL_10;
    }

    a1 = 7;
    v5 = (nw_error_get_error_code(v4) - 32);
    if (v5 <= 0x21)
    {
      if (((1 << v5) & 0x2026C0001) != 0)
      {
        a1 = 4;
      }

      else if (v5 == 28)
      {
        a1 = 12;
      }
    }
  }

LABEL_10:

  return a1;
}

- (void)signalCompletionSemaphoreLocked
{
  os_unfair_lock_assert_owner((a1 + 12));
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_semaphore_signal(v2);
    v3 = *(a1 + 80);
    *(a1 + 80) = 0;
  }
}

- (BOOL)connected
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 12));
  v2 = *(a1 + 9) == 2;
  os_unfair_lock_unlock((a1 + 12));
  return v2;
}

- (void)setupConnectionLocked
{
  v22 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner((a1 + 12));
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = a1;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "%@: starting", buf, 0xCu);
  }

  v3 = *MEMORY[0x1E6977EB8];
  legacy_tcp_socket = nw_parameters_create_legacy_tcp_socket();
  v5 = nw_parameters_copy_default_protocol_stack(legacy_tcp_socket);
  v6 = MEMORY[0x1BFAFB680]();
  nw_protocol_stack_set_transport_protocol(v5, v6);

  nw_parameters_set_required_interface_subtype();
  nw_parameters_set_effective_bundle_id();
  v7 = [*(a1 + 64) copyCEndpoint];
  nw_parameters_set_local_endpoint(legacy_tcp_socket, v7);

  nw_parameters_set_reuse_local_address(legacy_tcp_socket, 1);
  v8 = [*(a1 + 56) copyCEndpoint];
  v9 = nw_connection_create(v8, legacy_tcp_socket);

  nw_connection_set_queue(v9, *(a1 + 72));
  objc_initWeak(buf, a1);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke;
  v17[3] = &unk_1E7F08710;
  objc_copyWeak(&v19, buf);
  v10 = v9;
  v18 = v10;
  MEMORY[0x1BFAFAEA0](v10, v17, v11, v12);
  nw_connection_start(v10);
  v13 = *(a1 + 32);
  *(a1 + 32) = v10;
  v14 = v10;

  ++*(a1 + 10);
  v15 = *(a1 + 96);
  *(a1 + 96) = 0;

  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x1E69E9840];
}

void __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke(uint64_t a1, int a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 3);
    if (*(v8 + 9) == 3 || *(v8 + 32) != *(a1 + 32))
    {
      goto LABEL_4;
    }

    if (v6 || (a2 & 0xFFFFFFFE) == 4)
    {
      objc_storeStrong((v8 + 96), a3);
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v8;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        *&buf[22] = 2080;
        v35 = nw_connection_state_to_string();
        _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEFAULT, "%@: connection error %@ state %s", buf, 0x20u);
      }

      if (nw_error_get_error_code(v6) == 48)
      {
        [(NEIKEv2CompanionDatapath *)v8 resetConnectionLocked];
        if (*(v8 + 10) <= 5u)
        {
          objc_initWeak(buf, v8);
          v19 = dispatch_time(0x8000000000000000, 1000000000 * *(v8 + 10));
          v20 = *(v8 + 72);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke_26;
          block[3] = &unk_1E7F0A020;
          v21 = v20;
          objc_copyWeak(&v29, buf);
          v28 = *(a1 + 32);
          dispatch_after(v19, v21, block);

          os_unfair_lock_unlock((v8 + 12));
          objc_destroyWeak(&v29);
          objc_destroyWeak(buf);
          goto LABEL_5;
        }
      }

      else if (a2 == 4 && *(v8 + 8) == 1)
      {
        v22 = objc_loadWeakRetained((v8 + 88));
        v23 = v22;
        if (v22)
        {
          [(NEIKEv2PacketTunnelProvider *)v22 handleCompanionProxyDatapathFailure:?];
          os_unfair_lock_unlock((v8 + 12));

          goto LABEL_5;
        }
      }

      [(NEIKEv2CompanionDatapath *)v8 cancelLocked];
      goto LABEL_4;
    }

    if (a2 != 3)
    {
LABEL_4:
      os_unfair_lock_unlock((v8 + 12));
      goto LABEL_5;
    }

    objc_storeStrong((v8 + 96), 0);
    *(v8 + 8) = 513;
    v10 = *(a1 + 32);
    v11 = nw_proxy_copy_shoes_definition();
    v12 = nw_connection_copy_protocol_metadata(v10, v11);

    if (!v12)
    {
      v24 = ne_log_obj();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_fault_impl(&dword_1BA83C000, v24, OS_LOG_TYPE_FAULT, "%@: no connection metadata found", buf, 0xCu);
      }

      [(NEIKEv2CompanionDatapath *)v8 cancelLocked];
      goto LABEL_33;
    }

    v13 = nw_shoes_metadata_copy_remote_endpoint();
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(v13)];
    objc_storeStrong((v8 + 40), v14);

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v35 = __Block_byref_object_copy__12503;
    v36 = __Block_byref_object_dispose__12504;
    v37 = 0;
    v15 = v8;
    nw_shoes_metadata_enumerate_resolved_endpoints();
    objc_storeStrong(v15 + 6, *(*&buf[8] + 40));
    v16 = nw_connection_copy_current_path(*(a1 + 32));
    if (MEMORY[0x1BFAFB430](v16, 1))
    {
      v17 = 1;
    }

    else
    {
      if (!MEMORY[0x1BFAFB430](v16, 2))
      {
LABEL_28:
        if (MEMORY[0x1BFAFB430](v16, 3))
        {
          v15[3] = 3;
        }

        v25 = ne_log_obj();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v15[6];
          *v30 = 138412546;
          v31 = v15;
          v32 = 2112;
          v33 = v26;
          _os_log_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEFAULT, "%@: connected w/resolved endpoints %@", v30, 0x16u);
        }

        _Block_object_dispose(buf, 8);
LABEL_33:
        [(NEIKEv2CompanionDatapath *)v8 signalCompletionSemaphoreLocked];

        goto LABEL_4;
      }

      v17 = 2;
    }

    v15[3] = v17;
    goto LABEL_28;
  }

LABEL_5:

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 3);
    v4 = v9;
    if (BYTE1(v9[2]._os_unfair_lock_opaque) != 3)
    {
      v5 = *&v9[8]._os_unfair_lock_opaque;
      v4 = v9;
      if (!v5 || (v6 = *&v9[8]._os_unfair_lock_opaque, v7 = *(a1 + 32), v5, v4 = v9, v6 == v7))
      {
        [(NEIKEv2CompanionDatapath *)v4 setupConnectionLocked];
        v4 = v9;
      }
    }

    os_unfair_lock_unlock(v4 + 3);
    v3 = v9;
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v3);
}

uint64_t __49__NEIKEv2CompanionDatapath_setupConnectionLocked__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  if (nw_endpoint_get_type(v3) == nw_endpoint_type_address)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_endpoint_get_hostname(v3)];
    v5 = v4;
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 40);
    }

    else
    {
      v7 = 0;
    }

    if (([v4 isEqualToString:v7] & 1) == 0)
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      if (!v8)
      {
        v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = *(*(*(a1 + 40) + 8) + 40);
      }

      [v8 addObject:v5];
    }
  }

  return 1;
}

@end