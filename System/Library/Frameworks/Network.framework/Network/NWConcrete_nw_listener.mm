@interface NWConcrete_nw_listener
- (BOOL)canHandleNewConnection:(id)connection;
- (NSString)description;
- (char)copyPeerDeviceID;
- (char)initWithParameters:(void *)parameters multicastDescriptor:;
- (id)copyPeerTXTRecord;
- (id)getIDSInformation;
- (void)dealloc;
- (void)handleInbound:(id)inbound addProtocolInbox:(BOOL)inbox;
- (void)handleInboundPacket:(const char *)packet length:(unsigned __int16)length from:(id)from to:(id)to interface:(id)interface socket:(id)socket;
- (void)handleInboxCancelComplete:(id)complete;
- (void)handleInboxFailed:(id)failed error:(id)error;
- (void)updateParametersForNewConnection:(id)connection;
@end

@implementation NWConcrete_nw_listener

- (char)copyPeerDeviceID
{
  nw_context_assert_queue(*(self + 3));
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__NWConcrete_nw_listener_copyPeerDeviceID__block_invoke;
  v6[3] = &unk_1E6A3D738;
  v6[4] = self;
  v6[5] = &v7;
  v3 = _Block_copy(v6);
  os_unfair_lock_lock(self + 2);
  v3[2](v3);
  os_unfair_lock_unlock(self + 2);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)copyPeerTXTRecord
{
  nw_context_assert_queue(*(self + 3));
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18668;
  v11 = __Block_byref_object_dispose__18669;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__NWConcrete_nw_listener_copyPeerTXTRecord__block_invoke;
  v6[3] = &unk_1E6A3D738;
  v6[4] = self;
  v6[5] = &v7;
  v3 = _Block_copy(v6);
  os_unfair_lock_lock(self + 2);
  v3[2](v3);
  os_unfair_lock_unlock(self + 2);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)dealloc
{
  v30 = *MEMORY[0x1E69E9840];
  if (*(self + 33))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v3 = gLogObj;
    *buf = 136446210;
    v27 = "[NWConcrete_nw_listener dealloc]";
    v22 = 12;
    v21 = buf;
    v4 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v24 = 0;
    if (!__nwlog_fault(v4, &type, &v24))
    {
      goto LABEL_7;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v27 = "[NWConcrete_nw_listener dealloc]";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s over-release of nw_listener_t! Object should not be internally retained and deallocating", buf, 0xCu);
      }

LABEL_6:

LABEL_7:
      if (!v4)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (v24 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v19 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v27 = "[NWConcrete_nw_listener dealloc]";
        _os_log_impl(&dword_181A37000, v5, v19, "%{public}s over-release of nw_listener_t! Object should not be internally retained and deallocating, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_6;
    }

    backtrace_string = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    v14 = type;
    v15 = os_log_type_enabled(v5, type);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        v27 = "[NWConcrete_nw_listener dealloc]";
        _os_log_impl(&dword_181A37000, v5, v14, "%{public}s over-release of nw_listener_t! Object should not be internally retained and deallocating, no backtrace", buf, 0xCu);
      }

      goto LABEL_6;
    }

    if (v15)
    {
      *buf = 136446466;
      v27 = "[NWConcrete_nw_listener dealloc]";
      v28 = 2082;
      v29 = backtrace_string;
      _os_log_impl(&dword_181A37000, v5, v14, "%{public}s over-release of nw_listener_t! Object should not be internally retained and deallocating, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
    if (v4)
    {
LABEL_8:
      free(v4);
    }
  }

LABEL_9:
  if (!*(self + 35))
  {
    goto LABEL_17;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  *buf = 136446210;
  v27 = "[NWConcrete_nw_listener dealloc]";
  v22 = 12;
  v21 = buf;
  v8 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (!__nwlog_fault(v8, &type, &v24))
  {
LABEL_15:
    if (!v8)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v27 = "[NWConcrete_nw_listener dealloc]";
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s listener advertisers were not cleaned up prior to dealloc", buf, 0xCu);
    }

LABEL_14:

    goto LABEL_15;
  }

  if (v24 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v20 = type;
    if (os_log_type_enabled(v9, type))
    {
      *buf = 136446210;
      v27 = "[NWConcrete_nw_listener dealloc]";
      _os_log_impl(&dword_181A37000, v9, v20, "%{public}s listener advertisers were not cleaned up prior to dealloc, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  v17 = type;
  v18 = os_log_type_enabled(v9, type);
  if (!v16)
  {
    if (v18)
    {
      *buf = 136446210;
      v27 = "[NWConcrete_nw_listener dealloc]";
      _os_log_impl(&dword_181A37000, v9, v17, "%{public}s listener advertisers were not cleaned up prior to dealloc, no backtrace", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (v18)
  {
    *buf = 136446466;
    v27 = "[NWConcrete_nw_listener dealloc]";
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&dword_181A37000, v9, v17, "%{public}s listener advertisers were not cleaned up prior to dealloc, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v16);
  if (v8)
  {
LABEL_16:
    free(v8);
  }

LABEL_17:
  v11 = *(self + 29);
  if (v11)
  {
    free(v11);
    *(self + 29) = 0;
  }

  v12 = *(self + 7);
  if (v12)
  {
    free(v12);
    *(self + 7) = 0;
  }

  v23.receiver = self;
  v23.super_class = NWConcrete_nw_listener;
  [(NWConcrete_nw_listener *)&v23 dealloc:v21];
}

- (NSString)description
{
  selfCopy = self;
  v3 = selfCopy;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (selfCopy)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __nw_listener_copy_description_block_invoke;
    v8[3] = &unk_1E6A3D738;
    v9 = selfCopy;
    v10 = &v11;
    v4 = _Block_copy(v8);
    os_unfair_lock_lock(v3 + 2);
    v4[2](v4);
    os_unfair_lock_unlock(v3 + 2);

    v5 = v12[3];
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v11, 8);

  if (v5)
  {
    v6 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v5, 0x8000100u, *MEMORY[0x1E695E488]);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)getIDSInformation
{
  nw_context_assert_queue(*(self + 3));
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__18668;
  v11 = __Block_byref_object_dispose__18669;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__NWConcrete_nw_listener_getIDSInformation__block_invoke;
  v6[3] = &unk_1E6A3D738;
  v6[4] = self;
  v6[5] = &v7;
  v3 = _Block_copy(v6);
  os_unfair_lock_lock(self + 2);
  v3[2](v3);
  os_unfair_lock_unlock(self + 2);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updateParametersForNewConnection:(id)connection
{
  connectionCopy = connection;
  nw_context_assert_queue(*(self + 3));
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__18668;
  v13 = __Block_byref_object_dispose__18669;
  v14 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __59__NWConcrete_nw_listener_updateParametersForNewConnection___block_invoke;
  aBlock[3] = &unk_1E6A3D738;
  aBlock[4] = self;
  aBlock[5] = &v9;
  v5 = _Block_copy(aBlock);
  os_unfair_lock_lock(self + 2);
  v5[2](v5);
  os_unfair_lock_unlock(self + 2);

  if (v10[5])
  {
    v6 = nw_parameters_copy_default_protocol_stack(connectionCopy);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __59__NWConcrete_nw_listener_updateParametersForNewConnection___block_invoke_2;
    v7[3] = &unk_1E6A323B8;
    v7[4] = self;
    v7[5] = &v9;
    nw_protocol_stack_iterate_application_protocols(v6, v7);
  }

  _Block_object_dispose(&v9, 8);
}

- (void)handleInboxCancelComplete:(id)complete
{
  v35 = *MEMORY[0x1E69E9840];
  completeCopy = complete;
  nw_context_assert_queue(*(self + 3));
  v5 = *(self + 76);
  if (v5)
  {
    v6 = v5 - 1;
    *(self + 76) = v6;
    v7 = *(self + 2);
    if (v7)
    {
      if (!_nw_parameters_get_logging_disabled(v7))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v8 = glistenerLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          selfCopy = self;
          v10 = selfCopy + 42;

          v11 = *(self + 76);
          *buf = 136446978;
          v28 = "[NWConcrete_nw_listener handleInboxCancelComplete:]";
          v29 = 2082;
          v30 = v10;
          v31 = 2114;
          v32 = completeCopy;
          v33 = 1024;
          LODWORD(v34) = v11;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Removing deferral for %{public}@ -> %u", buf, 0x26u);
        }
      }

      v6 = *(self + 76);
    }

    if (!v6)
    {
      if (*(self + 310))
      {
        nw_listener_cancel_complete_on_queue(self);
      }

      else if (*(self + 32) <= 2)
      {
        nw_listener_reconcile_inboxes_on_queue(self);
      }
    }

    goto LABEL_36;
  }

  v12 = *(self + 2);
  if (!v12 || _nw_parameters_get_logging_disabled(v12))
  {
    goto LABEL_36;
  }

  if (__nwlog_listener_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
  }

  v13 = glistenerLogObj;
  selfCopy2 = self;

  *buf = 136446722;
  v28 = "[NWConcrete_nw_listener handleInboxCancelComplete:]";
  v29 = 2082;
  v30 = selfCopy2 + 42;
  v31 = 2114;
  v32 = completeCopy;
  v15 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v15, &type, &v25))
  {
    goto LABEL_25;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v16 = glistenerLogObj;
    v17 = type;
    if (os_log_type_enabled(v16, type))
    {

      *buf = 136446722;
      v28 = "[NWConcrete_nw_listener handleInboxCancelComplete:]";
      v29 = 2082;
      v30 = selfCopy2 + 42;
      v31 = 2114;
      v32 = completeCopy;
      _os_log_impl(&dword_181A37000, v16, v17, "%{public}s [%{public}s] Removing deferral for %{public}@ results in invalid defer count", buf, 0x20u);
    }

LABEL_24:

LABEL_25:
    if (!v15)
    {
      goto LABEL_36;
    }

LABEL_26:
    free(v15);
    goto LABEL_36;
  }

  if (v25 != 1)
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v16 = glistenerLogObj;
    v22 = type;
    if (os_log_type_enabled(v16, type))
    {

      *buf = 136446722;
      v28 = "[NWConcrete_nw_listener handleInboxCancelComplete:]";
      v29 = 2082;
      v30 = selfCopy2 + 42;
      v31 = 2114;
      v32 = completeCopy;
      _os_log_impl(&dword_181A37000, v16, v22, "%{public}s [%{public}s] Removing deferral for %{public}@ results in invalid defer count, backtrace limit exceeded", buf, 0x20u);
    }

    goto LABEL_24;
  }

  backtrace_string = __nw_create_backtrace_string();
  if (!backtrace_string)
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v16 = glistenerLogObj;
    v23 = type;
    if (os_log_type_enabled(v16, type))
    {
      id_string = nw_listener_get_id_string(selfCopy2);
      *buf = 136446722;
      v28 = "[NWConcrete_nw_listener handleInboxCancelComplete:]";
      v29 = 2082;
      v30 = id_string;
      v31 = 2114;
      v32 = completeCopy;
      _os_log_impl(&dword_181A37000, v16, v23, "%{public}s [%{public}s] Removing deferral for %{public}@ results in invalid defer count, no backtrace", buf, 0x20u);
    }

    goto LABEL_24;
  }

  v19 = backtrace_string;
  if (__nwlog_listener_log::onceToken != -1)
  {
    dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
  }

  v20 = glistenerLogObj;
  v21 = type;
  if (os_log_type_enabled(v20, type))
  {

    *buf = 136446978;
    v28 = "[NWConcrete_nw_listener handleInboxCancelComplete:]";
    v29 = 2082;
    v30 = selfCopy2 + 42;
    v31 = 2114;
    v32 = completeCopy;
    v33 = 2082;
    v34 = v19;
    _os_log_impl(&dword_181A37000, v20, v21, "%{public}s [%{public}s] Removing deferral for %{public}@ results in invalid defer count, dumping backtrace:%{public}s", buf, 0x2Au);
  }

  free(v19);
  if (v15)
  {
    goto LABEL_26;
  }

LABEL_36:
}

- (void)handleInboxFailed:(id)failed error:(id)error
{
  v23 = *MEMORY[0x1E69E9840];
  failedCopy = failed;
  errorCopy = error;
  nw_context_assert_queue(*(self + 3));
  v8 = *(self + 2);
  if (v8 && !_nw_parameters_get_logging_disabled(v8))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v9 = glistenerLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      selfCopy = self;
      v11 = selfCopy + 42;

      v17 = 136446722;
      v18 = "[NWConcrete_nw_listener handleInboxFailed:error:]";
      v19 = 2082;
      v20 = v11;
      v21 = 2114;
      v22 = failedCopy;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] inbox failed: %{public}@", &v17, 0x20u);
    }
  }

  v12 = *(self + 18);
  if (v12 && failedCopy && (_nw_array_contains_object(v12, failedCopy) & 1) != 0)
  {
    nw_array_remove_object(*(self + 18), failedCopy);
    nw_listener_cancel_inbox_on_queue(self, failedCopy);
    v13 = *(self + 18);
    if (!v13 || !_nw_array_get_count(v13))
    {
      nw_listener_set_state_on_queue(self, 1, errorCopy);
    }
  }

  else
  {
    v14 = *(self + 2);
    if (v14 && !_nw_parameters_get_logging_disabled(v14))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v15 = glistenerLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        selfCopy2 = self;

        v17 = 136446466;
        v18 = "[NWConcrete_nw_listener handleInboxFailed:error:]";
        v19 = 2082;
        v20 = selfCopy2 + 42;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] inbox already removed, not cancelling redundantly", &v17, 0x16u);
      }
    }
  }
}

- (void)handleInboundPacket:(const char *)packet length:(unsigned __int16)length from:(id)from to:(id)to interface:(id)interface socket:(id)socket
{
  lengthCopy = length;
  v90 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  interfaceCopy = interface;
  socketCopy = socket;
  nw_context_assert_queue(*(self + 3));
  if (!packet)
  {
    v34 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
    v35 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v82[0] = 0;
    if (!__nwlog_fault(v35, type, v82))
    {
      goto LABEL_128;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v37 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v37, "%{public}s called with null buffer", buf, 0xCu);
      }
    }

    else if (v82[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v36 = __nwlog_obj();
      v49 = type[0];
      v50 = os_log_type_enabled(v36, type[0]);
      if (backtrace_string)
      {
        if (v50)
        {
          *buf = 136446466;
          *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v36, v49, "%{public}s called with null buffer, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_128:
        if (!v35)
        {
          goto LABEL_30;
        }

LABEL_129:
        free(v35);
        goto LABEL_30;
      }

      if (v50)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v49, "%{public}s called with null buffer, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v36 = __nwlog_obj();
      v62 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v62, "%{public}s called with null buffer, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_127:

    goto LABEL_128;
  }

  if (!lengthCopy)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
    v35 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v82[0] = 0;
    if (!__nwlog_fault(v35, type, v82))
    {
      goto LABEL_128;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v39 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v39, "%{public}s called with null length", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v82[0] != 1)
    {
      v36 = __nwlog_obj();
      v63 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v63, "%{public}s called with null length, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_127;
    }

    v51 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v52 = type[0];
    v53 = os_log_type_enabled(v36, type[0]);
    if (!v51)
    {
      if (v53)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v52, "%{public}s called with null length, no backtrace", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v53)
    {
      *buf = 136446466;
      *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
      *&buf[12] = 2082;
      *&buf[14] = v51;
      _os_log_impl(&dword_181A37000, v36, v52, "%{public}s called with null length, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_90;
  }

  if (!fromCopy)
  {
    v40 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
    v35 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v82[0] = 0;
    if (!__nwlog_fault(v35, type, v82))
    {
      goto LABEL_128;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v41 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v41, "%{public}s called with null source", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v82[0] != 1)
    {
      v36 = __nwlog_obj();
      v64 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v64, "%{public}s called with null source, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_127;
    }

    v51 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v54 = type[0];
    v55 = os_log_type_enabled(v36, type[0]);
    if (!v51)
    {
      if (v55)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v54, "%{public}s called with null source, no backtrace", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v55)
    {
      *buf = 136446466;
      *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
      *&buf[12] = 2082;
      *&buf[14] = v51;
      _os_log_impl(&dword_181A37000, v36, v54, "%{public}s called with null source, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_90;
  }

  if (!toCopy)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
    v35 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v82[0] = 0;
    if (!__nwlog_fault(v35, type, v82))
    {
      goto LABEL_128;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v43 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v43, "%{public}s called with null destination", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v82[0] != 1)
    {
      v36 = __nwlog_obj();
      v65 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v65, "%{public}s called with null destination, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_127;
    }

    v51 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v56 = type[0];
    v57 = os_log_type_enabled(v36, type[0]);
    if (!v51)
    {
      if (v57)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v56, "%{public}s called with null destination, no backtrace", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v57)
    {
      *buf = 136446466;
      *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
      *&buf[12] = 2082;
      *&buf[14] = v51;
      _os_log_impl(&dword_181A37000, v36, v56, "%{public}s called with null destination, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_90;
  }

  if (!interfaceCopy)
  {
    v44 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
    v35 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v82[0] = 0;
    if (!__nwlog_fault(v35, type, v82))
    {
      goto LABEL_128;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v45 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v45, "%{public}s called with null interface", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v82[0] != 1)
    {
      v36 = __nwlog_obj();
      v66 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v66, "%{public}s called with null interface, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_127;
    }

    v51 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v58 = type[0];
    v59 = os_log_type_enabled(v36, type[0]);
    if (!v51)
    {
      if (v59)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v58, "%{public}s called with null interface, no backtrace", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v59)
    {
      *buf = 136446466;
      *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
      *&buf[12] = 2082;
      *&buf[14] = v51;
      _os_log_impl(&dword_181A37000, v36, v58, "%{public}s called with null interface, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_90;
  }

  if (!socketCopy)
  {
    v46 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
    v35 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v82[0] = 0;
    if (!__nwlog_fault(v35, type, v82))
    {
      goto LABEL_128;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v36 = __nwlog_obj();
      v47 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v47, "%{public}s called with null socket", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v82[0] != 1)
    {
      v36 = __nwlog_obj();
      v67 = type[0];
      if (os_log_type_enabled(v36, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v67, "%{public}s called with null socket, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_127;
    }

    v51 = __nw_create_backtrace_string();
    v36 = __nwlog_obj();
    v60 = type[0];
    v61 = os_log_type_enabled(v36, type[0]);
    if (!v51)
    {
      if (v61)
      {
        *buf = 136446210;
        *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        _os_log_impl(&dword_181A37000, v36, v60, "%{public}s called with null socket, no backtrace", buf, 0xCu);
      }

      goto LABEL_127;
    }

    if (v61)
    {
      *buf = 136446466;
      *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
      *&buf[12] = 2082;
      *&buf[14] = v51;
      _os_log_impl(&dword_181A37000, v36, v60, "%{public}s called with null socket, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_90:

    free(v51);
    if (!v35)
    {
      goto LABEL_30;
    }

    goto LABEL_129;
  }

  if (*(self + 32) == 2 && (*(self + 310) & 1) == 0)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v87 = __Block_byref_object_copy__11;
    v88 = __Block_byref_object_dispose__12;
    v89 = 0;
    *type = 0;
    v77 = type;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__18668;
    v80 = __Block_byref_object_dispose__18669;
    v81 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __78__NWConcrete_nw_listener_handleInboundPacket_length_from_to_interface_socket___block_invoke;
    aBlock[3] = &unk_1E6A36148;
    aBlock[4] = self;
    aBlock[5] = buf;
    aBlock[6] = type;
    v18 = _Block_copy(aBlock);
    os_unfair_lock_lock(self + 2);
    v18[2](v18);
    os_unfair_lock_unlock(self + 2);

    if (*(*&buf[8] + 40))
    {
      v19 = dispatch_data_create(packet, lengthCopy, 0, 0);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __78__NWConcrete_nw_listener_handleInboundPacket_length_from_to_interface_socket___block_invoke_45;
      v68[3] = &unk_1E6A2E000;
      v74 = buf;
      v69 = fromCopy;
      v70 = toCopy;
      v71 = interfaceCopy;
      v72 = socketCopy;
      v20 = v19;
      v73 = v20;
      v21 = _Block_copy(v68);
      v22 = v21;
      v23 = *(v77 + 5);
      if (v23)
      {
        v24 = *(self + 18);
        v25 = v21;
        v26 = v23;
        v27 = dispatch_block_create_with_qos_class(0, v24, 0, v25);
        dispatch_async(v26, v27);
      }

      else if (nw_context_is_inline(*(self + 3)))
      {
        v22[2](v22);
      }
    }

    else
    {
      v32 = *(self + 2);
      if (!v32 || _nw_parameters_get_logging_disabled(v32))
      {
        goto LABEL_29;
      }

      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v20 = glistenerLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        selfCopy = self;

        *v82 = 136446466;
        v83 = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
        v84 = 2082;
        v85 = selfCopy + 42;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] ignoring inbound packet: no new packet handler", v82, 0x16u);
      }
    }

LABEL_29:
    _Block_object_dispose(type, 8);

    _Block_object_dispose(buf, 8);
    goto LABEL_30;
  }

  v28 = *(self + 2);
  if (v28 && !_nw_parameters_get_logging_disabled(v28))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v29 = glistenerLogObj;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      selfCopy2 = self;
      v31 = selfCopy2 + 42;

      *buf = 136446466;
      *&buf[4] = "[NWConcrete_nw_listener handleInboundPacket:length:from:to:interface:socket:]";
      *&buf[12] = 2082;
      *&buf[14] = v31;
      _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] ignoring inbound packet: not ready or no client queue", buf, 0x16u);
    }
  }

LABEL_30:
}

- (void)handleInbound:(id)inbound addProtocolInbox:(BOOL)inbox
{
  inboxCopy = inbox;
  v84 = *MEMORY[0x1E69E9840];
  inboundCopy = inbound;
  nw_context_assert_queue(*(self + 3));
  v7 = *(self + 2);
  if (v7 && !_nw_parameters_get_logging_disabled(v7))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v8 = glistenerLogObj;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      selfCopy = self;
      v10 = selfCopy + 42;

      *buf = 136446978;
      *&buf[4] = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]";
      *&buf[12] = 2082;
      *&buf[14] = v10;
      *&buf[22] = 1024;
      LODWORD(v82) = inboxCopy;
      WORD2(v82) = 2112;
      *(&v82 + 6) = inboundCopy;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Handling inbound connection (add inbox %u) %@", buf, 0x26u);
    }
  }

  if (*(self + 32) == 2 && (*(self + 310) & 1) == 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __57__NWConcrete_nw_listener_handleInbound_addProtocolInbox___block_invoke;
    aBlock[3] = &unk_1E6A3D868;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    os_unfair_lock_lock(self + 2);
    v11[2](v11);
    os_unfair_lock_unlock(self + 2);

    selfCopy2 = self;
    if (nw_parameters_get_include_peer_to_peer(*(self + 2)) && nw_parameters_get_multipath_service(*(self + 2)) && (v13 = *(selfCopy2 + 34)) != 0)
    {
      v14 = v13;
      v15 = v14[2] == 2;

      if (v15)
      {
        v16 = *(self + 2);
        if (v16 && !_nw_parameters_get_logging_disabled(v16))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v17 = glistenerLogObj;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            id_string = nw_listener_get_id_string(selfCopy2);
            *buf = 136446722;
            *&buf[4] = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]";
            *&buf[12] = 2082;
            *&buf[14] = id_string;
            *&buf[22] = 2112;
            *&v82 = inboundCopy;
            _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] Monitoring connection %@ for AWDL usage", buf, 0x20u);
          }
        }

        v74[0] = MEMORY[0x1E69E9820];
        v74[1] = 3221225472;
        v74[2] = __57__NWConcrete_nw_listener_handleInbound_addProtocolInbox___block_invoke_41;
        v74[3] = &unk_1E6A2DFD8;
        v74[4] = selfCopy2;
        v75 = inboundCopy;
        nw_connection_set_interface_use_callback(v75, v74);
      }
    }

    else
    {
    }

    if (inboxCopy)
    {
      listener_protocol_on_nw_queue = nw_connection_get_listener_protocol_on_nw_queue(inboundCopy, *(self + 2), 0);
      if (listener_protocol_on_nw_queue)
      {
        v20 = *(self + 2);
        if (v20 && !_nw_parameters_get_logging_disabled(v20))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v21 = glistenerLogObj;
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = selfCopy2;

            *buf = 136446466;
            *&buf[4] = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]";
            *&buf[12] = 2082;
            *&buf[14] = v22 + 42;
            _os_log_impl(&dword_181A37000, v21, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Listener found protocol in new connection to create an inbox from", buf, 0x16u);
          }
        }

        v23 = [[nw_listener_inbox_protocol alloc] initWithProtocol:selfCopy2 delegate:?];
        if (v23)
        {
          v24 = *(selfCopy2 + 18);
          if (v24)
          {
            _nw_array_append(v24, v23);
          }
        }

        else
        {
          v25 = *(self + 2);
          if (v25 && !_nw_parameters_get_logging_disabled(v25))
          {
            if (__nwlog_listener_log::onceToken != -1)
            {
              dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
            }

            v26 = glistenerLogObj;
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = nw_listener_get_id_string(selfCopy2);
              v28 = listener_protocol_on_nw_queue[2];
              *buf = 136446722;
              *&buf[4] = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]";
              *&buf[12] = 2082;
              *&buf[14] = v27;
              *&buf[22] = 2082;
              *&v82 = v28;
              _os_log_impl(&dword_181A37000, v26, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Failed to create inbox for %{public}s", buf, 0x20u);
            }
          }
        }
      }
    }

    v70 = 0;
    v71 = &v70;
    v72 = 0x2020000000;
    v73 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&v82 = __Block_byref_object_copy__18668;
    *(&v82 + 1) = __Block_byref_object_dispose__18669;
    v83 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__11;
    v68 = __Block_byref_object_dispose__12;
    v69 = 0;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = __Block_byref_object_copy__11;
    v62 = __Block_byref_object_dispose__12;
    v63 = 0;
    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = __Block_byref_object_copy__18668;
    v56 = __Block_byref_object_dispose__18669;
    v57 = 0;
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __57__NWConcrete_nw_listener_handleInbound_addProtocolInbox___block_invoke_43;
    v51[3] = &unk_1E6A2EF40;
    v51[4] = selfCopy2;
    v51[5] = &v70;
    v51[6] = buf;
    v51[7] = &v64;
    v51[8] = &v58;
    v51[9] = &v52;
    v29 = _Block_copy(v51);
    os_unfair_lock_lock(self + 2);
    v29[2](v29);
    os_unfair_lock_unlock(self + 2);

    if (v59[5])
    {
      v30 = nw_connection_copy_endpoint(inboundCopy);
      multiplex = nw_group_descriptor_create_multiplex(v30);
      v32 = nw_connection_group_create_with_connection(multiplex, inboundCopy);
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __57__NWConcrete_nw_listener_handleInbound_addProtocolInbox___block_invoke_2;
      v48[3] = &unk_1E6A3D738;
      v49 = v32;
      v50 = &v58;
      v33 = v32;
      v34 = _Block_copy(v48);
    }

    else
    {
      if (!v65[5])
      {
        v40 = *(self + 2);
        if (!v40 || _nw_parameters_get_logging_disabled(v40))
        {
          v34 = 0;
          goto LABEL_62;
        }

        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v39 = glistenerLogObj;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v41 = nw_listener_get_id_string(selfCopy2);
          *v77 = 136446466;
          v78 = "[NWConcrete_nw_listener handleInbound:addProtocolInbox:]";
          v79 = 2082;
          v80 = v41;
          _os_log_impl(&dword_181A37000, v39, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] Neither connection handler nor connection group handler is set", v77, 0x16u);
        }

        v34 = 0;
        goto LABEL_61;
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __57__NWConcrete_nw_listener_handleInbound_addProtocolInbox___block_invoke_3;
      v45[3] = &unk_1E6A3D738;
      v47 = &v64;
      v46 = inboundCopy;
      v34 = _Block_copy(v45);
      v30 = v46;
    }

    if (v71[3])
    {
LABEL_48:
      nw_utilities_execute_block_as_persona_from_parameters(v53[5], v34);
LABEL_62:

      _Block_object_dispose(&v52, 8);
      _Block_object_dispose(&v58, 8);

      _Block_object_dispose(&v64, 8);
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(&v70, 8);
      goto LABEL_63;
    }

    v35 = *(*&buf[8] + 40);
    if (!v35)
    {
      if (nw_context_is_inline(*(self + 3)))
      {
        goto LABEL_48;
      }

      v35 = *(*&buf[8] + 40);
      if (!v35)
      {
        goto LABEL_62;
      }
    }

    v36 = *(selfCopy2 + 18);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__NWConcrete_nw_listener_handleInbound_addProtocolInbox___block_invoke_44;
    block[3] = &unk_1E6A2ED20;
    v44 = &v52;
    v34 = v34;
    v43 = v34;
    v37 = v35;
    v38 = dispatch_block_create_with_qos_class(0, v36, 0, block);
    dispatch_async(v37, v38);

    v39 = v43;
LABEL_61:

    goto LABEL_62;
  }

LABEL_63:
}

- (BOOL)canHandleNewConnection:(id)connection
{
  v28 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  nw_context_assert_queue(*(self + 3));
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__NWConcrete_nw_listener_canHandleNewConnection___block_invoke;
  v11[3] = &unk_1E6A2EF68;
  v11[4] = self;
  v11[5] = &v20;
  v11[6] = &v16;
  v11[7] = &v12;
  v5 = _Block_copy(v11);
  os_unfair_lock_lock(self + 2);
  v5[2](v5);
  os_unfair_lock_unlock(self + 2);

  if (*(v21 + 24) == 1)
  {
    nw_listener_suspend_inbox(self, connectionCopy);
  }

  else
  {
    if (*(v17 + 24) != 1 || (v13[3] & 1) != 0)
    {
      v6 = 1;
      goto LABEL_7;
    }

    nw_listener_suspend_inbox(self, connectionCopy);
    v8 = *(self + 2);
    if (v8 && !_nw_parameters_get_logging_disabled(v8))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v9 = glistenerLogObj;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        selfCopy = self;

        *buf = 136446466;
        v25 = "[NWConcrete_nw_listener canHandleNewConnection:]";
        v26 = 2082;
        v27 = selfCopy + 42;
        _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s [%{public}s] cannot handle new connection due to no authorized keys", buf, 0x16u);
      }
    }
  }

  v6 = 0;
LABEL_7:
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v6;
}

- (char)initWithParameters:(void *)parameters multicastDescriptor:
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a2;
  parametersCopy = parameters;
  if (!self)
  {
LABEL_93:
    v26 = 0;
    goto LABEL_35;
  }

  v56.receiver = self;
  v56.super_class = NWConcrete_nw_listener;
  v8 = objc_msgSendSuper2(&v56, sel_init);
  if (!v8)
  {
    v38 = __nwlog_obj();
    *buf = 136446210;
    v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
    v39 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v39, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v40 = __nwlog_obj();
        v41 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
          _os_log_impl(&dword_181A37000, v40, v41, "%{public}s [super init] failed", buf, 0xCu);
        }
      }

      else if (v54 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v40 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v40, type);
        if (backtrace_string)
        {
          if (v48)
          {
            *buf = 136446466;
            v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
            v59 = 2082;
            v60 = backtrace_string;
            _os_log_impl(&dword_181A37000, v40, v47, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_85;
        }

        if (v48)
        {
          *buf = 136446210;
          v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
          _os_log_impl(&dword_181A37000, v40, v47, "%{public}s [super init] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v40 = __nwlog_obj();
        v52 = type;
        if (os_log_type_enabled(v40, type))
        {
          *buf = 136446210;
          v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
          _os_log_impl(&dword_181A37000, v40, v52, "%{public}s [super init] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_85:
    if (v39)
    {
      free(v39);
    }

    goto LABEL_93;
  }

  if (!v6)
  {
    v42 = __nwlog_obj();
    *buf = 136446210;
    v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
    v43 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v54 = 0;
    if (__nwlog_fault(v43, &type, &v54))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v44 = __nwlog_obj();
        v45 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
          _os_log_impl(&dword_181A37000, v44, v45, "%{public}s called with null _parameters", buf, 0xCu);
        }
      }

      else if (v54 == 1)
      {
        v49 = __nw_create_backtrace_string();
        v44 = __nwlog_obj();
        v50 = type;
        v51 = os_log_type_enabled(v44, type);
        if (v49)
        {
          if (v51)
          {
            *buf = 136446466;
            v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
            v59 = 2082;
            v60 = v49;
            _os_log_impl(&dword_181A37000, v44, v50, "%{public}s called with null _parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v49);
          goto LABEL_90;
        }

        if (v51)
        {
          *buf = 136446210;
          v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
          _os_log_impl(&dword_181A37000, v44, v50, "%{public}s called with null _parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v44 = __nwlog_obj();
        v53 = type;
        if (os_log_type_enabled(v44, type))
        {
          *buf = 136446210;
          v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
          _os_log_impl(&dword_181A37000, v44, v53, "%{public}s called with null _parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_90:
    if (v43)
    {
      free(v43);
    }

    goto LABEL_93;
  }

  v9 = _nw_parameters_copy_local_endpoint(v6);
  if (v9)
  {
LABEL_7:
    objc_storeStrong(v8 + 2, a2);
    v11 = _nw_parameters_copy_context(v6);
    v12 = *(v8 + 3);
    *(v8 + 3) = v11;

    objc_storeStrong(v8 + 4, parameters);
    nw_parameters_set_server_mode(*(v8 + 2));
    add = atomic_fetch_add(nw_listener_get_next_id(void)::s_last_listener_id, 1u);
    v14 = add + 1;
    v15 = (add + 1);
    if (add + 1 >= 0x10000 && add == 0xFFFF)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v16 = gLogObj;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446466;
        v58 = "nw_listener_get_next_id";
        v59 = 1024;
        LODWORD(v60) = v14;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s reached %u listeners, wrapping", buf, 0x12u);
      }
    }

    *(v8 + 20) = v14;
    snprintf(v8 + 42, 6uLL, "L%u", v15);
    v17 = _nw_parameters_copy_description(*(v8 + 2));
    v18 = *(v8 + 2);
    if (*(v8 + 4))
    {
      if (!v18 || _nw_parameters_get_logging_disabled(v18))
      {
        goto LABEL_31;
      }

      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v19 = glistenerLogObj;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
LABEL_30:

LABEL_31:
        if (v17)
        {
          free(v17);
        }

        *(v8 + 26) = -1;
        v26 = v8;
        goto LABEL_34;
      }

      v20 = "<NULL>";
      v21 = *(v8 + 4);
      if (v17)
      {
        v20 = v17;
      }

      *buf = 136446978;
      v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
      v59 = 2082;
      v60 = v8 + 42;
      v61 = 2082;
      v62 = v20;
      v63 = 2114;
      v64 = v21;
      v22 = "%{public}s [%{public}s] created: <%{public}s, %{public}@>";
      v23 = v19;
      v24 = 42;
    }

    else
    {
      if (!v18 || _nw_parameters_get_logging_disabled(v18))
      {
        goto LABEL_31;
      }

      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v19 = glistenerLogObj;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      v25 = "<NULL>";
      *buf = 136446722;
      v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
      v59 = 2082;
      if (v17)
      {
        v25 = v17;
      }

      v60 = v8 + 42;
      v61 = 2082;
      v62 = v25;
      v22 = "%{public}s [%{public}s] created: <%{public}s>";
      v23 = v19;
      v24 = 32;
    }

    _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, v22, buf, v24);
    goto LABEL_30;
  }

  host = _nw_endpoint_create_host("::", "0");
  if (host)
  {
    _nw_parameters_set_local_endpoint(v6, host);

    goto LABEL_7;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v28 = gLogObj;
  *buf = 136446210;
  v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
  v29 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v54 = 0;
  if (__nwlog_fault(v29, &type, &v54))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      v31 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
        _os_log_impl(&dword_181A37000, v30, v31, "%{public}s nw_endpoint_create_host failed", buf, 0xCu);
      }
    }

    else if (v54 == 1)
    {
      v32 = __nw_create_backtrace_string();
      if (v32)
      {
        v33 = v32;
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        if (os_log_type_enabled(v34, type))
        {
          *buf = 136446466;
          v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
          v59 = 2082;
          v60 = v33;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s nw_endpoint_create_host failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v33);
        if (!v29)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v30 = __nwlog_obj();
      v37 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
        _os_log_impl(&dword_181A37000, v30, v37, "%{public}s nw_endpoint_create_host failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      v36 = type;
      if (os_log_type_enabled(v30, type))
      {
        *buf = 136446210;
        v58 = "[NWConcrete_nw_listener initWithParameters:multicastDescriptor:]";
        _os_log_impl(&dword_181A37000, v30, v36, "%{public}s nw_endpoint_create_host failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v29)
  {
LABEL_42:
    free(v29);
  }

LABEL_43:
  v26 = 0;
LABEL_34:

LABEL_35:
  return v26;
}

@end