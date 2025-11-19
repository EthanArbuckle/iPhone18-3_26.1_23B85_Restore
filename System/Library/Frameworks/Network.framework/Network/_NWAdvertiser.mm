@interface _NWAdvertiser
- (id)initFor:(void *)a3 descriptor:(void *)a4 parent:(void *)a5 parameters:;
- (void)dealloc;
- (void)reconcileChildren:(uint64_t)a1;
- (void)start;
- (void)startBonjour;
- (void)stop;
- (void)stopBonjour;
- (void)updateFlows:(uint64_t)a1;
@end

@implementation _NWAdvertiser

- (void)stop
{
  v45 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    nw_context_assert_queue(*(*(a1 + 8) + 24));
    v2 = *(*(a1 + 8) + 16);
    if (v2 && !_nw_parameters_get_logging_disabled(v2))
    {
      if (__nwlog_listener_log::onceToken != -1)
      {
        dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
      }

      v3 = glistenerLogObj;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_listener_get_id_string(*(a1 + 8));
        v5 = *(a1 + 16);
        *buf = 136446722;
        *&buf[4] = "[_NWAdvertiser stop]";
        *&buf[12] = 2082;
        *&buf[14] = id_string;
        *&buf[22] = 2112;
        v41 = v5;
        _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] stop advertise %@", buf, 0x20u);
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = *(a1 + 48);
    v7 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v7)
    {
      v8 = *v37;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v37 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [(_NWAdvertiser *)*(*(&v36 + 1) + 8 * i) stop];
        }

        v7 = [v6 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v7);
    }

    v10 = *(a1 + 48);
    *(a1 + 48) = 0;

    [(_NWAdvertiser *)a1 stopBonjour];
    v11 = *(a1 + 32);
    if (v11)
    {
      nw_path_evaluator_cancel(v11);
      v12 = *(a1 + 32);
      *(a1 + 32) = 0;
    }

    v13 = *(a1 + 8);
    if (*(v13 + 128) == 2 && (*(v13 + 310) & 1) == 0)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 24));
      v15 = WeakRetained == 0;

      if (v15)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v41 = __Block_byref_object_copy__18668;
        v42 = __Block_byref_object_dispose__18669;
        v43 = 0;
        v30 = 0;
        v31 = &v30;
        v32 = 0x3032000000;
        v33 = __Block_byref_object_copy__11;
        v34 = __Block_byref_object_dispose__12;
        v35 = 0;
        v24 = 0;
        v25 = &v24;
        v26 = 0x3032000000;
        v27 = __Block_byref_object_copy__18668;
        v28 = __Block_byref_object_dispose__18669;
        v29 = 0;
        v16 = *(a1 + 8);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __21___NWAdvertiser_stop__block_invoke;
        aBlock[3] = &unk_1E6A2EF68;
        aBlock[4] = a1;
        aBlock[5] = buf;
        aBlock[6] = &v30;
        aBlock[7] = &v24;
        v17 = _Block_copy(aBlock);
        os_unfair_lock_lock(v16 + 2);
        v17[2](v17);
        os_unfair_lock_unlock(v16 + 2);

        if (v31[5])
        {
          v18 = *(*&buf[8] + 40);
          if (v18)
          {
            if (v25[5])
            {
              v19 = *(*(a1 + 8) + 72);
              v22[0] = MEMORY[0x1E69E9820];
              v22[1] = 3221225472;
              v22[2] = __21___NWAdvertiser_stop__block_invoke_2;
              v22[3] = &unk_1E6A2DFB0;
              v22[4] = &v30;
              v22[5] = &v24;
              v20 = v18;
              v21 = dispatch_block_create_with_qos_class(0, v19, 0, v22);
              dispatch_async(v20, v21);
            }
          }
        }

        _Block_object_dispose(&v24, 8);

        _Block_object_dispose(&v30, 8);
        _Block_object_dispose(buf, 8);
      }
    }
  }
}

- (void)dealloc
{
  v31 = *MEMORY[0x1E69E9840];
  if (self->dnsref)
  {
    v3 = *(self->listener + 2);
    if (v3)
    {
      if (!_nw_parameters_get_logging_disabled(v3))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v4 = glistenerLogObj;
        id_string = nw_listener_get_id_string(self->listener);
        *buf = 136446466;
        v26 = "[_NWAdvertiser dealloc]";
        v27 = 2082;
        v28 = id_string;
        v21 = 22;
        v20 = buf;
        v6 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v23 = 0;
        if (!__nwlog_fault(v6, &type, &v23))
        {
LABEL_13:
          if (!v6)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v7 = glistenerLogObj;
          v8 = type;
          if (os_log_type_enabled(v7, type))
          {
            v9 = nw_listener_get_id_string(self->listener);
            *buf = 136446466;
            v26 = "[_NWAdvertiser dealloc]";
            v27 = 2082;
            v28 = v9;
            _os_log_impl(&dword_181A37000, v7, v8, "%{public}s [%{public}s] dnsref is not NULL", buf, 0x16u);
          }

LABEL_12:

          goto LABEL_13;
        }

        if (v23 != 1)
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v7 = glistenerLogObj;
          v16 = type;
          if (os_log_type_enabled(v7, type))
          {
            v17 = nw_listener_get_id_string(self->listener);
            *buf = 136446466;
            v26 = "[_NWAdvertiser dealloc]";
            v27 = 2082;
            v28 = v17;
            _os_log_impl(&dword_181A37000, v7, v16, "%{public}s [%{public}s] dnsref is not NULL, backtrace limit exceeded", buf, 0x16u);
          }

          goto LABEL_12;
        }

        backtrace_string = __nw_create_backtrace_string();
        if (!backtrace_string)
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v7 = glistenerLogObj;
          v18 = type;
          if (os_log_type_enabled(v7, type))
          {
            v19 = nw_listener_get_id_string(self->listener);
            *buf = 136446466;
            v26 = "[_NWAdvertiser dealloc]";
            v27 = 2082;
            v28 = v19;
            _os_log_impl(&dword_181A37000, v7, v18, "%{public}s [%{public}s] dnsref is not NULL, no backtrace", buf, 0x16u);
          }

          goto LABEL_12;
        }

        v12 = backtrace_string;
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v13 = glistenerLogObj;
        v14 = type;
        if (os_log_type_enabled(v13, type))
        {
          v15 = nw_listener_get_id_string(self->listener);
          *buf = 136446722;
          v26 = "[_NWAdvertiser dealloc]";
          v27 = 2082;
          v28 = v15;
          v29 = 2082;
          v30 = v12;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s [%{public}s] dnsref is not NULL, dumping backtrace:%{public}s", buf, 0x20u);
        }

        free(v12);
        if (v6)
        {
LABEL_14:
          free(v6);
        }
      }
    }
  }

LABEL_15:
  evaluator = self->evaluator;
  if (evaluator)
  {
    nw_path_evaluator_cancel(evaluator);
  }

  v22.receiver = self;
  v22.super_class = _NWAdvertiser;
  [(_NWAdvertiser *)&v22 dealloc:v20];
}

- (id)initFor:(void *)a3 descriptor:(void *)a4 parent:(void *)a5 parameters:
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!v10)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v19, &type, &v33))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
        _os_log_impl(&dword_181A37000, v20, v21, "%{public}s called with null _listener", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v25 = type;
      v26 = os_log_type_enabled(v20, type);
      if (backtrace_string)
      {
        if (v26)
        {
          *buf = 136446466;
          v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
          v37 = 2082;
          v38 = backtrace_string;
          _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null _listener, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_40:
        if (!v19)
        {
LABEL_42:

          a1 = 0;
          goto LABEL_6;
        }

LABEL_41:
        free(v19);
        goto LABEL_42;
      }

      if (v26)
      {
        *buf = 136446210;
        v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
        _os_log_impl(&dword_181A37000, v20, v25, "%{public}s called with null _listener, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
        _os_log_impl(&dword_181A37000, v20, v30, "%{public}s called with null _listener, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_39:

    goto LABEL_40;
  }

  if (!v11)
  {
    v22 = __nwlog_obj();
    *buf = 136446210;
    v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
    v19 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v33 = 0;
    if (!__nwlog_fault(v19, &type, &v33))
    {
      goto LABEL_40;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v20 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
        _os_log_impl(&dword_181A37000, v20, v23, "%{public}s called with null _descriptor", buf, 0xCu);
      }
    }

    else if (v33 == 1)
    {
      v27 = __nw_create_backtrace_string();
      v20 = __nwlog_obj();
      v28 = type;
      v29 = os_log_type_enabled(v20, type);
      if (v27)
      {
        if (v29)
        {
          *buf = 136446466;
          v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
          v37 = 2082;
          v38 = v27;
          _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null _descriptor, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v27);
        if (!v19)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (v29)
      {
        *buf = 136446210;
        v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
        _os_log_impl(&dword_181A37000, v20, v28, "%{public}s called with null _descriptor, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v20 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v20, type))
      {
        *buf = 136446210;
        v36 = "[_NWAdvertiser initFor:descriptor:parent:parameters:]";
        _os_log_impl(&dword_181A37000, v20, v31, "%{public}s called with null _descriptor, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_39;
  }

  v32.receiver = a1;
  v32.super_class = _NWAdvertiser;
  v14 = objc_msgSendSuper2(&v32, sel_init);
  a1 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 1, a2);
    objc_storeStrong(a1 + 2, a3);
    objc_storeWeak(a1 + 3, v12);
    v15 = _nw_parameters_copy(v13);
    v16 = a1[5];
    a1[5] = v15;

    nw_parameters_set_multipath_service(a1[5], nw_multipath_service_disabled);
  }

LABEL_6:

  return a1;
}

- (void)start
{
  v32 = *MEMORY[0x1E69E9840];
  nw_context_assert_queue(*(*(a1 + 8) + 24));
  v2 = *(*(a1 + 8) + 16);
  if (v2 && !_nw_parameters_get_logging_disabled(v2))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v3 = glistenerLogObj;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      id_string = nw_listener_get_id_string(*(a1 + 8));
      v5 = *(a1 + 16);
      *buf = 136446722;
      v27 = "[_NWAdvertiser start]";
      v28 = 2082;
      v29 = id_string;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s [%{public}s] start advertise %@", buf, 0x20u);
    }
  }

  if (!*(a1 + 32))
  {
    *__str = 0;
    v25 = 0;
    snprintf(__str, 0x10uLL, "%d", *(*(a1 + 8) + 308));
    v6 = nw_listener_copy_parameters_with_port(*(a1 + 40), __str, 0);
    evaluator_for_advertise = nw_path_create_evaluator_for_advertise(*(a1 + 16), v6);
    v8 = *(a1 + 32);
    *(a1 + 32) = evaluator_for_advertise;

    if (*(a1 + 32))
    {
      objc_initWeak(&location, a1);
      v9 = *(a1 + 32);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __22___NWAdvertiser_start__block_invoke;
      v21[3] = &unk_1E6A3D2D8;
      objc_copyWeak(&v22, &location);
      nw_path_evaluator_set_update_handler(v9, 0, v21);
      v10 = *(*(a1 + 8) + 16);
      if (v10 && !_nw_parameters_get_logging_disabled(v10))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v11 = glistenerLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = nw_listener_get_id_string(*(a1 + 8));
          *buf = 136446466;
          v27 = "[_NWAdvertiser start]";
          v28 = 2082;
          v29 = v12;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Starting advertiser", buf, 0x16u);
        }
      }

      v13 = *(a1 + 32);
      if (v13)
      {
        v14 = v13;
        os_unfair_lock_lock(v13 + 24);
        v15 = v14[6];
        os_unfair_lock_unlock(v13 + 24);
      }

      else
      {
        v15 = 0;
      }

      v19 = v15;
      nw_context_assert_queue(*(*(a1 + 8) + 24));
      v20 = *(a1 + 8);
      if ((*(v20 + 128) - 1) <= 1 && (*(v20 + 310) & 1) == 0)
      {
        [(_NWAdvertiser *)a1 updateFlows:v19];
        [(_NWAdvertiser *)a1 reconcileChildren:v19];
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }

    else
    {
      v16 = *(*(a1 + 8) + 16);
      if (v16 && !_nw_parameters_get_logging_disabled(v16))
      {
        if (__nwlog_listener_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
        }

        v17 = glistenerLogObj;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = nw_listener_get_id_string(*(a1 + 8));
          *buf = 136446466;
          v27 = "[_NWAdvertiser start]";
          v28 = 2082;
          v29 = v18;
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_ERROR, "%{public}s [%{public}s] nw_path_create_evaluator_for_advertise failed", buf, 0x16u);
        }
      }
    }
  }

  [(_NWAdvertiser *)a1 startBonjour];
}

- (void)updateFlows:(uint64_t)a1
{
  v3 = a2;
  v4 = nw_dictionary_create();
  v5 = *(a1 + 56);
  if (v5)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __29___NWAdvertiser_updateFlows___block_invoke;
    v13[3] = &unk_1E6A35DB8;
    v14 = v3;
    v15 = v4;
    nw_dictionary_apply(v5, v13);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __29___NWAdvertiser_updateFlows___block_invoke_2;
  v12[3] = &unk_1E6A39A98;
  v12[4] = a1;
  nw_dictionary_apply(v4, v12);
  v6 = nw_dictionary_create();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __29___NWAdvertiser_updateFlows___block_invoke_5;
  v10[3] = &unk_1E6A35DE0;
  v10[4] = a1;
  v7 = v6;
  v11 = v7;
  nw_path_enumerate_browse_options(v3, v10);
  v8 = *(a1 + 56);
  *(a1 + 56) = v7;
  v9 = v7;
}

- (void)reconcileChildren:(uint64_t)a1
{
  v3 = a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  v10 = v3;
  v6 = nw_path_copy_discovered_endpoints(v3);
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v8 = nw_listener_reconcile_advertised_endpoints(v4, v5, v6, v10, WeakRetained);
  v9 = *(a1 + 48);
  *(a1 + 48) = v8;
}

- (void)startBonjour
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v2 = (a1 + 64);
  if (*(a1 + 64) || nw_advertise_descriptor_get_type(*(a1 + 16)) != 1)
  {
    return;
  }

  if (!nw_parameters_get_use_awdl(*(*(a1 + 8) + 16)))
  {
    goto LABEL_10;
  }

  v3 = *(a1 + 8);
  if (nw_parameters_get_include_peer_to_peer(v3[2]) && nw_parameters_get_multipath_service(v3[2]) && (v4 = v3[34]) != 0)
  {
    v5 = nw_advertise_descriptor_get_type(v4);

    v6 = *(a1 + 8);
    if (v5 == 2 && !*(v6 + 248))
    {
LABEL_10:
      v7 = 0;
      goto LABEL_20;
    }
  }

  else
  {

    v6 = *(a1 + 8);
  }

  v8 = *(v6 + 16);
  if (v8 && !_nw_parameters_get_logging_disabled(v8))
  {
    if (__nwlog_listener_log::onceToken != -1)
    {
      dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
    }

    v9 = glistenerLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      id_string = nw_listener_get_id_string(*(a1 + 8));
      *buf = 136446466;
      v50 = "[_NWAdvertiser startBonjour]";
      v51 = 2082;
      v52 = id_string;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s [%{public}s] Including kDNSServiceFlagsIncludeAWDL", buf, 0x16u);
    }
  }

  v7 = 0x100000;
LABEL_20:
  v11 = nw_parameters_copy_required_interface(*(*(a1 + 8) + 208));
  if (nw_parameters_get_use_p2p(*(*(a1 + 8) + 208)))
  {
    v7 |= 0x20000u;
    if (v11)
    {
      v12 = *(*(a1 + 8) + 16);
      if (v12)
      {
        if (!_nw_parameters_get_logging_disabled(v12))
        {
          if (__nwlog_listener_log::onceToken != -1)
          {
            dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
          }

          v13 = glistenerLogObj;
          v14 = nw_listener_get_id_string(*(a1 + 8));
          name = _nw_interface_get_name(v11);
          *buf = 136446722;
          v50 = "[_NWAdvertiser startBonjour]";
          v51 = 2082;
          v52 = v14;
          v53 = 2082;
          v54 = name;
          v16 = _os_log_send_and_compose_impl();

          type = OS_LOG_TYPE_ERROR;
          v47 = 0;
          if (__nwlog_fault(v16, &type, &v47))
          {
            if (type == OS_LOG_TYPE_FAULT)
            {
              if (__nwlog_listener_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
              }

              v17 = glistenerLogObj;
              v18 = type;
              if (os_log_type_enabled(v17, type))
              {
                v19 = nw_listener_get_id_string(*(a1 + 8));
                v20 = _nw_interface_get_name(v11);
                *buf = 136446722;
                v50 = "[_NWAdvertiser startBonjour]";
                v51 = 2082;
                v52 = v19;
                v53 = 2082;
                v54 = v20;
                _os_log_impl(&dword_181A37000, v17, v18, "%{public}s [%{public}s] Client specified an interface (%{public}s) and RegisterP2P", buf, 0x20u);
              }
            }

            else if (v47 == 1)
            {
              backtrace_string = __nw_create_backtrace_string();
              if (backtrace_string)
              {
                v22 = backtrace_string;
                if (__nwlog_listener_log::onceToken != -1)
                {
                  dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
                }

                v23 = glistenerLogObj;
                v24 = type;
                if (os_log_type_enabled(v23, type))
                {
                  v25 = nw_listener_get_id_string(*(a1 + 8));
                  v26 = _nw_interface_get_name(v11);
                  *buf = 136446978;
                  v50 = "[_NWAdvertiser startBonjour]";
                  v51 = 2082;
                  v52 = v25;
                  v53 = 2082;
                  v54 = v26;
                  v55 = 2082;
                  v56 = v22;
                  _os_log_impl(&dword_181A37000, v23, v24, "%{public}s [%{public}s] Client specified an interface (%{public}s) and RegisterP2P, dumping backtrace:%{public}s", buf, 0x2Au);
                }

                free(v22);
                if (!v16)
                {
                  goto LABEL_53;
                }

                goto LABEL_52;
              }

              if (__nwlog_listener_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
              }

              v17 = glistenerLogObj;
              v30 = type;
              if (os_log_type_enabled(v17, type))
              {
                v31 = nw_listener_get_id_string(*(a1 + 8));
                v32 = _nw_interface_get_name(v11);
                *buf = 136446722;
                v50 = "[_NWAdvertiser startBonjour]";
                v51 = 2082;
                v52 = v31;
                v53 = 2082;
                v54 = v32;
                _os_log_impl(&dword_181A37000, v17, v30, "%{public}s [%{public}s] Client specified an interface (%{public}s) and RegisterP2P, no backtrace", buf, 0x20u);
              }
            }

            else
            {
              if (__nwlog_listener_log::onceToken != -1)
              {
                dispatch_once(&__nwlog_listener_log::onceToken, &__block_literal_global_44_47455);
              }

              v17 = glistenerLogObj;
              v27 = type;
              if (os_log_type_enabled(v17, type))
              {
                v28 = nw_listener_get_id_string(*(a1 + 8));
                v29 = _nw_interface_get_name(v11);
                *buf = 136446722;
                v50 = "[_NWAdvertiser startBonjour]";
                v51 = 2082;
                v52 = v28;
                v53 = 2082;
                v54 = v29;
                _os_log_impl(&dword_181A37000, v17, v27, "%{public}s [%{public}s] Client specified an interface (%{public}s) and RegisterP2P, backtrace limit exceeded", buf, 0x20u);
              }
            }
          }

          if (v16)
          {
LABEL_52:
            free(v16);
          }
        }
      }
    }
  }

LABEL_53:
  if (nw_advertise_descriptor_get_no_auto_rename(*(a1 + 16)))
  {
    v33 = v7 | 8;
  }

  else
  {
    v33 = v7;
  }

  if (nw_parameters_get_required_interface_type(*(*(a1 + 8) + 208)) == nw_interface_type_loopback)
  {
    if (nw_interface_get_loopback_index_onceToken != -1)
    {
      dispatch_once(&nw_interface_get_loopback_index_onceToken, &__block_literal_global_53613);
    }

    index = nw_interface_get_loopback_index_index;
  }

  else if (v11)
  {
    index = _nw_interface_get_index(v11);
  }

  else
  {
    index = 0;
  }

  v35 = nw_advertise_descriptor_copy_txt_record_object(*(a1 + 16));
  v36 = v35;
  if (v35)
  {
    txtLen = v35[2].isa;
    txtRecord = v35[1].isa;
  }

  else
  {
    txtLen = 0;
    txtRecord = 0;
  }

  bonjour_name = nw_advertise_descriptor_get_bonjour_name(*(a1 + 16));
  bonjour_type = nw_advertise_descriptor_get_bonjour_type(*(a1 + 16));
  if (nw_parameters_get_local_only(*(a1 + 40)))
  {
    bonjour_domain = "local.";
  }

  else
  {
    bonjour_domain = nw_advertise_descriptor_get_bonjour_domain(*(a1 + 16));
  }

  v42 = DNSServiceRegister(v2, v33, index, bonjour_name, bonjour_type, bonjour_domain, 0, bswap32(*(*(a1 + 8) + 308)) >> 16, txtLen, txtRecord, _NWAdvertiser_dnssd_handler, a1);
  if (v42 || (v43 = *(a1 + 64), v44 = nw_context_copy_workloop(*(*(a1 + 8) + 24)), v42 = DNSServiceSetDispatchQueue(v43, v44), v44, v42))
  {
    v45 = *(a1 + 8);
    dns_error = nw_error_create_dns_error(v42);
    nw_listener_set_state_on_queue(v45, 3, dns_error);
  }
}

- (void)stopBonjour
{
  if (a1)
  {
    v1 = *(a1 + 64);
    if (v1)
    {
      *(a1 + 64) = 0;
      v3 = nw_parameters_copy_context(*(*(a1 + 8) + 16));
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __28___NWAdvertiser_stopBonjour__block_invoke;
      v4[3] = &unk_1E6A3AC58;
      v4[4] = a1;
      v4[5] = v1;
      nw_queue_context_async_if_needed(v3, v4);
    }
  }
}

@end