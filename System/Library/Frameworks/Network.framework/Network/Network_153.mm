void __runProbes_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (gRunningProbes != 1)
  {
    gRunningProbes = 1;
    v4 = +[ManagedNetworkSettings sharedMNS];
    v5 = [v4 queue];
    dispatch_assert_queue_V2(v5);

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v6 = gLogObj;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      *&buf[4] = "nwphResetProbesOnQueue";
      _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEBUG, "%{public}s Resetting ECH settings", buf, 0xCu);
    }

    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_probe_enabled];
    [v7 setValue:MEMORY[0x1E695E110] forKey:v8];

    addNewNetworkdSettings(v7, 0);
    v9 = *(a1 + 32);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        *&buf[4] = "nwphRunProbes";
        _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s starting network probes", buf, 0xCu);
      }

      int64_with_default = networkd_settings_get_int64_with_default(nw_setting_ech_canary_numerator, 0);
      v13 = networkd_settings_get_int64_with_default(nw_setting_ech_canary_denominator, 0);
      v14 = arc4random_uniform(v13);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v15 = gLogObj;
      v16 = v15;
      if (v14 >= int64_with_default)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          *&buf[4] = "nwphRunProbes";
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s Not selected to run ECH canary. Finished with transaction %@", buf, 0x16u);
        }

        gRunningProbes = 0;
      }

      else
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446722;
          *&buf[4] = "nwphShouldRunECHCanaryProbe";
          *&buf[12] = 1024;
          *&buf[14] = int64_with_default;
          *&buf[18] = 1024;
          *&buf[20] = v13;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s ECH canary sampled at %u / %u", buf, 0x18u);
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136446210;
          *&buf[4] = "nwphRunProbes";
          _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_DEBUG, "%{public}s Running ECH canary probe", buf, 0xCu);
        }

        v18 = nw_activity_create(40, 1);
        nw_activity_activate(v18);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __nwphRunProbes_block_invoke;
        v31 = &unk_1E6A3A4D8;
        v32 = v18;
        v33 = v9;
        v19 = v18;
        nwphRunECHProbes(1, v19, buf);
      }

LABEL_19:

      return;
    }

    *buf = 136446210;
    *&buf[4] = "nwphRunProbes";
    v20 = _os_log_send_and_compose_impl();
    v21 = v11;
    v22 = v20;

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v22, &type, &v28))
    {
LABEL_36:
      if (v22)
      {
        free(v22);
      }

      goto LABEL_19;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        *&buf[4] = "nwphRunProbes";
        v25 = "%{public}s called with null transaction";
LABEL_34:
        _os_log_impl(&dword_181A37000, v23, v24, v25, buf, 0xCu);
      }
    }

    else
    {
      if (v28 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v24 = type;
        v27 = os_log_type_enabled(v23, type);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            *&buf[4] = "nwphRunProbes";
            *&buf[12] = 2082;
            *&buf[14] = backtrace_string;
            _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null transaction, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_36;
        }

        if (!v27)
        {
          goto LABEL_35;
        }

        *buf = 136446210;
        *&buf[4] = "nwphRunProbes";
        v25 = "%{public}s called with null transaction, no backtrace";
        goto LABEL_34;
      }

      v23 = __nwlog_obj();
      v24 = type;
      if (os_log_type_enabled(v23, type))
      {
        *buf = 136446210;
        *&buf[4] = "nwphRunProbes";
        v25 = "%{public}s called with null transaction, backtrace limit exceeded";
        goto LABEL_34;
      }
    }

LABEL_35:

    goto LABEL_36;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 136446466;
    *&buf[4] = "runProbes_block_invoke";
    *&buf[12] = 2112;
    *&buf[14] = v3;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s Already running probes, skipping. Finished with transaction %@", buf, 0x16u);
  }
}

void __nwphRunProbes_block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __nwphRunProbes_block_invoke_2;
    v5[3] = &unk_1E6A3A4D8;
    v6 = v3;
    v7 = *(a1 + 40);
    nwphRunECHProbes(0, v6, v5);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v4 = gLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v9 = "nwphRunProbes_block_invoke";
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s ECH local probes failed, saving", buf, 0xCu);
    }

    nwphProbesComplete(0, *(a1 + 32), *(a1 + 40));
  }
}

void nwphRunECHProbes(int a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v7 = gLogObj;
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = "generic";
      if (a1)
      {
        v9 = "regional";
      }

      *buf = 136446466;
      *&buf[4] = "nwphRunECHProbes";
      *&buf[12] = 2082;
      *&buf[14] = v9;
      _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s starting %{public}s network probes", buf, 0x16u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v35 = 0;
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v33 = 0;
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 0;
    if (a1)
    {
      v10 = 2;
    }

    else
    {
      v10 = 5;
    }

    if (a1)
    {
      v11 = @"https://croissant.cdn-apple.com";
    }

    else
    {
      v11 = @"https://croissant.edge.apple";
    }

    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = v10;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __nwphRunECHProbes_block_invoke;
    v19[3] = &unk_1E6A2E7E0;
    v27 = a1;
    v23 = buf;
    v24 = v28;
    v20 = v11;
    v21 = v5;
    v25 = v32;
    v26 = v30;
    v22 = v6;
    nwphRunProbe(v11, 0, v21, v10, v19);

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
    _Block_object_dispose(v32, 8);
    _Block_object_dispose(buf, 8);
    goto LABEL_13;
  }

  *buf = 136446210;
  *&buf[4] = "nwphRunECHProbes";
  v12 = _os_log_send_and_compose_impl();

  LOBYTE(v32[0]) = 16;
  LOBYTE(v30[0]) = 0;
  if (__nwlog_fault(v12, v32, v30))
  {
    if (LOBYTE(v32[0]) == 17)
    {
      v13 = __nwlog_obj();
      v14 = v32[0];
      if (os_log_type_enabled(v13, v32[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nwphRunECHProbes";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null parent_activity", buf, 0xCu);
      }
    }

    else if (LOBYTE(v30[0]) == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v16 = v32[0];
      v17 = os_log_type_enabled(v13, v32[0]);
      if (backtrace_string)
      {
        if (v17)
        {
          *buf = 136446466;
          *&buf[4] = "nwphRunECHProbes";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null parent_activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_30;
      }

      if (v17)
      {
        *buf = 136446210;
        *&buf[4] = "nwphRunECHProbes";
        _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null parent_activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v18 = v32[0];
      if (os_log_type_enabled(v13, v32[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nwphRunECHProbes";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null parent_activity, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_30:
  if (v12)
  {
    free(v12);
  }

  (*(v6 + 2))(v6, 0);
LABEL_13:
}

void sub_1824C1C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void __nwphRunECHProbes_block_invoke(uint64_t a1, int a2)
{
  v27 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 56) + 8) + 24) = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      v6 = "generic";
      if (*(a1 + 88))
      {
        v6 = "regional";
      }

      *buf = 136446466;
      v24 = "nwphRunECHProbes_block_invoke";
      v25 = 2082;
      v26 = v6;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s First %{public}s ECH probe succeeded, starting second", buf, 0x16u);
    }

    v7 = *(a1 + 88);
    if (v7)
    {
      v8 = 3;
    }

    else
    {
      v8 = 6;
    }

    *(*(*(a1 + 64) + 8) + 24) = v8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v16[0] = MEMORY[0x1E69E9820];
    v11 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
    v12 = *(*(*(a1 + 64) + 8) + 24);
    v16[1] = 3221225472;
    v16[2] = __nwphRunECHProbes_block_invoke_546;
    v16[3] = &unk_1E6A2E7B8;
    v22 = v7;
    v20 = v11;
    v17 = v9;
    v13 = *(a1 + 40);
    v14 = *(a1 + 80);
    v18 = v13;
    v21 = v14;
    v19 = *(a1 + 48);
    nwphRunProbe(v17, 1, v10, v12, v16);
  }

  else
  {
    if (v5)
    {
      v15 = "generic";
      if (*(a1 + 88))
      {
        v15 = "regional";
      }

      *buf = 136446466;
      v24 = "nwphRunECHProbes_block_invoke";
      v25 = 2082;
      v26 = v15;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s First %{public}s ECH probe failed", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void nwphRunProbe(void *a1, int a2, void *a3, int a4, void *a5)
{
  v63 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (!v9)
  {
    v30 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nwphRunProbe";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v31, &type, &v55))
    {
      goto LABEL_86;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v55 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v32 = __nwlog_obj();
        v33 = type;
        v43 = os_log_type_enabled(v32, type);
        if (backtrace_string)
        {
          if (v43)
          {
            *buf = 136446466;
            v58 = "nwphRunProbe";
            v59 = 2082;
            v60 = backtrace_string;
            _os_log_impl(&dword_181A37000, v32, v33, "%{public}s called with null probeTarget, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
LABEL_86:
          if (!v31)
          {
LABEL_88:
            v12[2](v12, 0);
            goto LABEL_24;
          }

LABEL_87:
          free(v31);
          goto LABEL_88;
        }

        if (v43)
        {
          *buf = 136446210;
          v58 = "nwphRunProbe";
          v34 = "%{public}s called with null probeTarget, no backtrace";
          goto LABEL_84;
        }
      }

      else
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v58 = "nwphRunProbe";
          v34 = "%{public}s called with null probeTarget, backtrace limit exceeded";
          goto LABEL_84;
        }
      }

      goto LABEL_85;
    }

    v32 = __nwlog_obj();
    v33 = type;
    if (!os_log_type_enabled(v32, type))
    {
      goto LABEL_85;
    }

    *buf = 136446210;
    v58 = "nwphRunProbe";
    v34 = "%{public}s called with null probeTarget";
    goto LABEL_84;
  }

  if (!v10)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nwphRunProbe";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v31, &type, &v55))
    {
      goto LABEL_86;
    }

    if (type != OS_LOG_TYPE_FAULT)
    {
      if (v55 != 1)
      {
        v32 = __nwlog_obj();
        v33 = type;
        if (os_log_type_enabled(v32, type))
        {
          *buf = 136446210;
          v58 = "nwphRunProbe";
          v34 = "%{public}s called with null parent_activity, backtrace limit exceeded";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      v44 = __nw_create_backtrace_string();
      v32 = __nwlog_obj();
      v33 = type;
      v45 = os_log_type_enabled(v32, type);
      if (!v44)
      {
        if (v45)
        {
          *buf = 136446210;
          v58 = "nwphRunProbe";
          v34 = "%{public}s called with null parent_activity, no backtrace";
          goto LABEL_84;
        }

        goto LABEL_85;
      }

      if (v45)
      {
        *buf = 136446466;
        v58 = "nwphRunProbe";
        v59 = 2082;
        v60 = v44;
        v46 = "%{public}s called with null parent_activity, dumping backtrace:%{public}s";
LABEL_62:
        _os_log_impl(&dword_181A37000, v32, v33, v46, buf, 0x16u);
      }

LABEL_63:

      free(v44);
      if (!v31)
      {
        goto LABEL_88;
      }

      goto LABEL_87;
    }

    v32 = __nwlog_obj();
    v33 = type;
    if (!os_log_type_enabled(v32, type))
    {
      goto LABEL_85;
    }

    *buf = 136446210;
    v58 = "nwphRunProbe";
    v34 = "%{public}s called with null parent_activity";
LABEL_84:
    _os_log_impl(&dword_181A37000, v32, v33, v34, buf, 0xCu);
    goto LABEL_85;
  }

  if (!a4)
  {
    v36 = __nwlog_obj();
    *buf = 136446210;
    v58 = "nwphRunProbe";
    v31 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (!__nwlog_fault(v31, &type, &v55))
    {
      goto LABEL_86;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v58 = "nwphRunProbe";
        v34 = "%{public}s called with null label";
        goto LABEL_84;
      }

LABEL_85:

      goto LABEL_86;
    }

    if (v55 != 1)
    {
      v32 = __nwlog_obj();
      v33 = type;
      if (os_log_type_enabled(v32, type))
      {
        *buf = 136446210;
        v58 = "nwphRunProbe";
        v34 = "%{public}s called with null label, backtrace limit exceeded";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    v44 = __nw_create_backtrace_string();
    v32 = __nwlog_obj();
    v33 = type;
    v47 = os_log_type_enabled(v32, type);
    if (!v44)
    {
      if (v47)
      {
        *buf = 136446210;
        v58 = "nwphRunProbe";
        v34 = "%{public}s called with null label, no backtrace";
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    if (v47)
    {
      *buf = 136446466;
      v58 = "nwphRunProbe";
      v59 = 2082;
      v60 = v44;
      v46 = "%{public}s called with null label, dumping backtrace:%{public}s";
      goto LABEL_62;
    }

    goto LABEL_63;
  }

  if (v11)
  {
    v13 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
    [v13 setHTTPCookieStorage:0];
    [v13 setURLCache:0];
    if (a2)
    {
      [v13 set_allowsTLSECH:1];
    }

    v14 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v13];
    v15 = [MEMORY[0x1E695DFF8] URLWithString:v9];
    if (v15)
    {
      v16 = nw_activity_create(40, a4);
      nw_activity_set_parent_activity(v16, v10);
      nw_activity_activate(v16);
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __nwphRunProbe_block_invoke;
      v51[3] = &unk_1E6A2E808;
      v17 = v16;
      v52 = v17;
      v54 = v12;
      v53 = v14;
      v18 = [v53 dataTaskWithURL:v15 completionHandler:v51];
      [v18 set_nw_activity:v17];
      [v18 resume];
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446466;
        v58 = "nwphRunProbe";
        v59 = 2112;
        v60 = v9;
        _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_DEBUG, "%{public}s started probe to %@", buf, 0x16u);
      }

      goto LABEL_23;
    }

    v50 = v10;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v20 = gLogObj;
    *buf = 136446466;
    v58 = "nwphRunProbe";
    v59 = 2112;
    v60 = v9;
    v21 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v55 = 0;
    if (__nwlog_fault(v21, &type, &v55))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_29;
        }

        *buf = 136446466;
        v58 = "nwphRunProbe";
        v59 = 2112;
        v60 = v9;
        v24 = "%{public}s URLWithString %@ failed";
LABEL_27:
        v28 = v22;
        v29 = v23;
        goto LABEL_28;
      }

      if (v55 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v22 = gLogObj;
        v23 = type;
        if (!os_log_type_enabled(v22, type))
        {
          goto LABEL_29;
        }

        *buf = 136446466;
        v58 = "nwphRunProbe";
        v59 = 2112;
        v60 = v9;
        v24 = "%{public}s URLWithString %@ failed, backtrace limit exceeded";
        goto LABEL_27;
      }

      v25 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v26 = type;
      v27 = os_log_type_enabled(v22, type);
      if (!v25)
      {
        if (!v27)
        {
LABEL_29:

          if (!v21)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        *buf = 136446466;
        v58 = "nwphRunProbe";
        v59 = 2112;
        v60 = v9;
        v24 = "%{public}s URLWithString %@ failed, no backtrace";
        v28 = v22;
        v29 = v26;
LABEL_28:
        _os_log_impl(&dword_181A37000, v28, v29, v24, buf, 0x16u);
        goto LABEL_29;
      }

      if (v27)
      {
        *buf = 136446722;
        v58 = "nwphRunProbe";
        v59 = 2112;
        v60 = v9;
        v61 = 2082;
        v62 = v25;
        _os_log_impl(&dword_181A37000, v22, v26, "%{public}s URLWithString %@ failed, dumping backtrace:%{public}s", buf, 0x20u);
      }

      free(v25);
    }

    if (!v21)
    {
LABEL_22:
      v12[2](v12, 0);
      v10 = v50;
LABEL_23:

      goto LABEL_24;
    }

LABEL_21:
    free(v21);
    goto LABEL_22;
  }

  v37 = __nwlog_obj();
  *buf = 136446210;
  v58 = "nwphRunProbe";
  v38 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v55 = 0;
  if (__nwlog_fault(v38, &type, &v55))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v58 = "nwphRunProbe";
        v41 = "%{public}s called with null completion";
LABEL_91:
        _os_log_impl(&dword_181A37000, v39, v40, v41, buf, 0xCu);
      }
    }

    else
    {
      if (v55 == 1)
      {
        v48 = __nw_create_backtrace_string();
        v39 = __nwlog_obj();
        v40 = type;
        v49 = os_log_type_enabled(v39, type);
        if (v48)
        {
          if (v49)
          {
            *buf = 136446466;
            v58 = "nwphRunProbe";
            v59 = 2082;
            v60 = v48;
            _os_log_impl(&dword_181A37000, v39, v40, "%{public}s called with null completion, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v48);
          goto LABEL_93;
        }

        if (!v49)
        {
          goto LABEL_92;
        }

        *buf = 136446210;
        v58 = "nwphRunProbe";
        v41 = "%{public}s called with null completion, no backtrace";
        goto LABEL_91;
      }

      v39 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v39, type))
      {
        *buf = 136446210;
        v58 = "nwphRunProbe";
        v41 = "%{public}s called with null completion, backtrace limit exceeded";
        goto LABEL_91;
      }
    }

LABEL_92:
  }

LABEL_93:
  if (v38)
  {
    free(v38);
  }

LABEL_24:
}

void __nwphRunProbe_block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v10 = gLogObj;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136446210;
    v19 = "nwphRunProbe_block_invoke";
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s Probe complete", &v18, 0xCu);
  }

  if (v9)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136446466;
      v19 = "nwphRunProbe_block_invoke";
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Got error: %@", &v18, 0x16u);
    }
  }

  if (!v8)
  {
    goto LABEL_20;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v12 = gLogObj;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136446466;
    v19 = "nwphRunProbe_block_invoke";
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s Got response: %@", &v18, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v13 = v8;
  if ([v13 statusCode] != 200)
  {

LABEL_20:
    v16 = *(a1 + 32);
    if (v9)
    {
      v17 = [v9 domain];
      nw_activity_complete_with_reason_and_underlying_error(v16, 3u, v17, [v9 code]);
    }

    else
    {
      nw_activity_complete_with_reason_and_underlying_error(*(a1 + 32), 3u, 0, 0);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) invalidateAndCancel];
    goto LABEL_24;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v14 = gLogObj;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = 136446210;
    v19 = "nwphRunProbe_block_invoke";
    _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s Got back 200 OK", &v18, 0xCu);
  }

  if (v7)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136446466;
      v19 = "nwphRunProbe_block_invoke";
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s Got back data: %@", &v18, 0x16u);
    }
  }

  nw_activity_complete_with_reason(*(a1 + 32), 2u);
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) invalidateAndCancel];

LABEL_24:
}

void __nwphRunECHProbes_block_invoke_546(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 56) + 8) + 24) = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      v6 = "generic";
      if (*(a1 + 80))
      {
        v6 = "regional";
      }

      *buf = 136446466;
      v18 = "nwphRunECHProbes_block_invoke";
      v19 = 2082;
      v20 = v6;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s Second %{public}s ECH probe succeeded, starting third", buf, 0x16u);
    }

    v7 = *(a1 + 80);
    if (v7)
    {
      v8 = 4;
    }

    else
    {
      v8 = 7;
    }

    *(*(*(a1 + 64) + 8) + 24) = v8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(*(*(a1 + 64) + 8) + 24);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nwphRunECHProbes_block_invoke_547;
    v13[3] = &unk_1E6A2E790;
    v15 = *(a1 + 72);
    v16 = v7;
    v14 = *(a1 + 48);
    nwphRunProbe(v9, 0, v10, v11, v13);
  }

  else
  {
    if (v5)
    {
      v12 = "generic";
      if (*(a1 + 80))
      {
        v12 = "regional";
      }

      *buf = 136446466;
      v18 = "nwphRunECHProbes_block_invoke";
      v19 = 2082;
      v20 = v12;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s Second %{public}s ECH probe failed", buf, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __nwphRunECHProbes_block_invoke_547(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = a2;
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (a2)
  {
    if (v5)
    {
      v6 = "generic";
      if (*(a1 + 48))
      {
        v6 = "regional";
      }

      v12 = 136446466;
      v13 = "nwphRunECHProbes_block_invoke";
      v14 = 2082;
      v15 = v6;
      v7 = "%{public}s Third %{public}s ECH probe succeeded";
LABEL_10:
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, v7, &v12, 0x16u);
    }
  }

  else if (v5)
  {
    v8 = "generic";
    if (*(a1 + 48))
    {
      v8 = "regional";
    }

    v12 = 136446466;
    v13 = "nwphRunECHProbes_block_invoke";
    v14 = 2082;
    v15 = v8;
    v7 = "%{public}s Third %{public}s ECH probe failed";
    goto LABEL_10;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), a2, v9, v10);
}

void __nwphRunProbes_block_invoke_2(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = "failed";
    if (a2)
    {
      v5 = "succeeded";
    }

    v6 = 136446466;
    v7 = "nwphRunProbes_block_invoke_2";
    v8 = 2082;
    v9 = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s ECH probes %{public}s, saving", &v6, 0x16u);
  }

  nwphProbesComplete(a2, *(a1 + 32), *(a1 + 40));
}

void nwphProbesComplete(char a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nwphProbesComplete";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (!__nwlog_fault(v11, &type, &v28))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v12 = __nwlog_obj();
      v13 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        *&buf[4] = "nwphProbesComplete";
        _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null parent_activity", buf, 0xCu);
      }
    }

    else if (v28 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          *&buf[4] = "nwphProbesComplete";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null parent_activity, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v11)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v11);
        goto LABEL_4;
      }

      if (v18)
      {
        *buf = 136446210;
        *&buf[4] = "nwphProbesComplete";
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null parent_activity, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v12 = __nwlog_obj();
      v22 = type;
      if (os_log_type_enabled(v12, type))
      {
        *buf = 136446210;
        *&buf[4] = "nwphProbesComplete";
        _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null parent_activity, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v6)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy__24182;
    v32 = __Block_byref_object_dispose__24183;
    v33 = v6;
    v8 = +[ManagedNetworkSettings sharedMNS];
    v9 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __nwphProbesComplete_block_invoke;
    block[3] = &unk_1E6A3BED0;
    v27 = a1;
    v25 = v5;
    v26 = buf;
    dispatch_async(v9, block);

    _Block_object_dispose(buf, 8);
    goto LABEL_4;
  }

  v14 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nwphProbesComplete";
  v11 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v28 = 0;
  if (!__nwlog_fault(v11, &type, &v28))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v12 = __nwlog_obj();
    v15 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      *&buf[4] = "nwphProbesComplete";
      _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null transaction", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v28 != 1)
  {
    v12 = __nwlog_obj();
    v23 = type;
    if (os_log_type_enabled(v12, type))
    {
      *buf = 136446210;
      *&buf[4] = "nwphProbesComplete";
      _os_log_impl(&dword_181A37000, v12, v23, "%{public}s called with null transaction, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v19 = __nw_create_backtrace_string();
  v12 = __nwlog_obj();
  v20 = type;
  v21 = os_log_type_enabled(v12, type);
  if (!v19)
  {
    if (v21)
    {
      *buf = 136446210;
      *&buf[4] = "nwphProbesComplete";
      _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null transaction, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v21)
  {
    *buf = 136446466;
    *&buf[4] = "nwphProbesComplete";
    *&buf[12] = 2082;
    *&buf[14] = v19;
    _os_log_impl(&dword_181A37000, v12, v20, "%{public}s called with null transaction, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v11)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void sub_1824C39D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24182(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __nwphProbesComplete_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 48)];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:nw_setting_ech_probe_enabled];
  [v2 setValue:v3 forKey:v4];

  addNewNetworkdSettings(v2, 0);
  if (*(a1 + 48))
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  nw_activity_complete_with_reason(*(a1 + 32), v5);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v6 = gLogObj;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v11 = 136446722;
    v12 = "nwphProbesComplete_block_invoke";
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_181A37000, v6, OS_LOG_TYPE_DEFAULT, "%{public}s Probes complete (success: %u). Finished with transaction %@", &v11, 0x1Cu);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  gRunningProbes = 0;
}

uint64_t network_config_cellular_blocked_observer_create(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "network_config_cellular_blocked_observer_create";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s creating cellular blocked observer", &v6, 0xCu);
  }

  return network_config_policy_observer_create(1, a1, a2);
}

uint64_t network_config_policy_observer_create(int a1, uint64_t a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v21 = 0;
      if (nw_policy_event_queue(void)::onceToken != -1)
      {
        v9 = a1;
        v10 = a2;
        v11 = a3;
        dispatch_once(&nw_policy_event_queue(void)::onceToken, &__block_literal_global_24197);
        a1 = v9;
        a2 = v10;
        a3 = v11;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZL37network_config_policy_observer_create34network_config_policy_event_type_tP16dispatch_queue_sU13block_pointerFvPvS2_S2_E_block_invoke;
      block[3] = &unk_1E6A2EA58;
      v17 = a1;
      block[5] = buf;
      block[6] = a2;
      block[4] = a3;
      dispatch_sync(nw_policy_event_queue(void)::queue, block);
      v3 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      return v3;
    }

    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "network_config_policy_observer_create";
    v5 = _os_log_send_and_compose_impl();
    v19 = OS_LOG_TYPE_ERROR;
    v18 = 0;
    if (!__nwlog_fault(v5, &v19, &v18))
    {
      goto LABEL_34;
    }

    if (v19 == OS_LOG_TYPE_FAULT)
    {
      v6 = __nwlog_obj();
      v7 = v19;
      if (os_log_type_enabled(v6, v19))
      {
        *buf = 136446210;
        *&buf[4] = "network_config_policy_observer_create";
        v8 = "%{public}s called with null block";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v18 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v19;
      if (os_log_type_enabled(v6, v19))
      {
        *buf = 136446210;
        *&buf[4] = "network_config_policy_observer_create";
        v8 = "%{public}s called with null block, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v19;
    v15 = os_log_type_enabled(v6, v19);
    if (!backtrace_string)
    {
      if (v15)
      {
        *buf = 136446210;
        *&buf[4] = "network_config_policy_observer_create";
        v8 = "%{public}s called with null block, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v15)
    {
      *buf = 136446466;
      *&buf[4] = "network_config_policy_observer_create";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v14 = "%{public}s called with null block, dumping backtrace:%{public}s";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "network_config_policy_observer_create";
  v5 = _os_log_send_and_compose_impl();
  v19 = OS_LOG_TYPE_ERROR;
  v18 = 0;
  if (!__nwlog_fault(v5, &v19, &v18))
  {
    goto LABEL_34;
  }

  if (v19 != OS_LOG_TYPE_FAULT)
  {
    if (v18 != 1)
    {
      v6 = __nwlog_obj();
      v7 = v19;
      if (os_log_type_enabled(v6, v19))
      {
        *buf = 136446210;
        *&buf[4] = "network_config_policy_observer_create";
        v8 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    backtrace_string = __nw_create_backtrace_string();
    v6 = __nwlog_obj();
    v7 = v19;
    v13 = os_log_type_enabled(v6, v19);
    if (!backtrace_string)
    {
      if (v13)
      {
        *buf = 136446210;
        *&buf[4] = "network_config_policy_observer_create";
        v8 = "%{public}s called with null queue, no backtrace";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (v13)
    {
      *buf = 136446466;
      *&buf[4] = "network_config_policy_observer_create";
      *&buf[12] = 2082;
      *&buf[14] = backtrace_string;
      v14 = "%{public}s called with null queue, dumping backtrace:%{public}s";
LABEL_23:
      _os_log_impl(&dword_181A37000, v6, v7, v14, buf, 0x16u);
    }

LABEL_24:
    free(backtrace_string);
    goto LABEL_34;
  }

  v6 = __nwlog_obj();
  v7 = v19;
  if (os_log_type_enabled(v6, v19))
  {
    *buf = 136446210;
    *&buf[4] = "network_config_policy_observer_create";
    v8 = "%{public}s called with null queue";
LABEL_33:
    _os_log_impl(&dword_181A37000, v6, v7, v8, buf, 0xCu);
  }

LABEL_34:
  if (v5)
  {
    free(v5);
  }

  return 0;
}

void ___ZL37network_config_policy_observer_create34network_config_policy_event_type_tP16dispatch_queue_sU13block_pointerFvPvS2_S2_E_block_invoke(uint64_t a1)
{
  *&v72[13] = *MEMORY[0x1E69E9840];
  if (network_config_setup_policy_event_watcher(void)::kevsrc)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
LABEL_3:
      v3 = *(a1 + 32);
      if (v3)
      {
        v4 = *(a1 + 56);
        if ((v4 - 1) >= 5)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v16 = gLogObj;
          if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446466;
            *&buf[4] = "network_config_add_policy_event_handler";
            *&buf[12] = 1024;
            *&buf[14] = v4;
            _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s Invalid policy event type %u", buf, 0x12u);
          }

          goto LABEL_110;
        }

        v5 = off_1E6A2EB88[v4 - 1];
        if (*v5 || (v6 = xpc_array_create(0, 0), (*v5 = v6) != 0))
        {
          v7 = xpc_dictionary_create(0, 0, 0);
          if (v7)
          {
            v8 = v7;
            _Block_copy(v3);
            dispatch_retain(v2);
            xpc_dictionary_set_pointer();
            xpc_dictionary_set_pointer();
            xpc_array_append_value(*v5, v8);
LABEL_111:
            *(*(*(a1 + 40) + 8) + 24) = v8;
            return;
          }

          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          *buf = 136446210;
          *&buf[4] = "network_config_add_policy_event_handler";
          v22 = _os_log_send_and_compose_impl();
          handler[0] = OS_LOG_TYPE_ERROR;
          v69[0] = 0;
          if (!__nwlog_fault(v22, handler, v69))
          {
            goto LABEL_108;
          }

          if (handler[0] == OS_LOG_TYPE_FAULT)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v23 = gLogObj;
            v24 = handler[0];
            if (!os_log_type_enabled(gLogObj, handler[0]))
            {
              goto LABEL_108;
            }

            *buf = 136446210;
            *&buf[4] = "network_config_add_policy_event_handler";
            v25 = "%{public}s xpc_dictionary_create failed";
            goto LABEL_106;
          }

          if (v69[0] != 1)
          {
            pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
            networkd_settings_init();
            v23 = gLogObj;
            v24 = handler[0];
            if (!os_log_type_enabled(gLogObj, handler[0]))
            {
              goto LABEL_108;
            }

            *buf = 136446210;
            *&buf[4] = "network_config_add_policy_event_handler";
            v25 = "%{public}s xpc_dictionary_create failed, backtrace limit exceeded";
            goto LABEL_106;
          }

          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v32 = gLogObj;
          v33 = handler[0];
          v34 = os_log_type_enabled(gLogObj, handler[0]);
          if (backtrace_string)
          {
            if (v34)
            {
              *buf = 136446466;
              *&buf[4] = "network_config_add_policy_event_handler";
              *&buf[12] = 2082;
              *&buf[14] = backtrace_string;
              _os_log_impl(&dword_181A37000, v32, v33, "%{public}s xpc_dictionary_create failed, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(backtrace_string);
            goto LABEL_108;
          }

          if (v34)
          {
            *buf = 136446210;
            *&buf[4] = "network_config_add_policy_event_handler";
            v25 = "%{public}s xpc_dictionary_create failed, no backtrace";
            v48 = v32;
            v49 = v33;
LABEL_107:
            _os_log_impl(&dword_181A37000, v48, v49, v25, buf, 0xCu);
          }

LABEL_108:
          if (v22)
          {
            free(v22);
          }

LABEL_110:
          v8 = 0;
          goto LABEL_111;
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        *buf = 136446210;
        *&buf[4] = "network_config_add_policy_event_handler";
        v22 = _os_log_send_and_compose_impl();
        handler[0] = OS_LOG_TYPE_ERROR;
        v69[0] = 0;
        if (!__nwlog_fault(v22, handler, v69))
        {
          goto LABEL_108;
        }

        if (handler[0] == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v23 = gLogObj;
          v24 = handler[0];
          if (!os_log_type_enabled(gLogObj, handler[0]))
          {
            goto LABEL_108;
          }

          *buf = 136446210;
          *&buf[4] = "network_config_add_policy_event_handler";
          v25 = "%{public}s xpc_array_create failed";
          goto LABEL_106;
        }

        if (v69[0] != 1)
        {
          v23 = __nwlog_obj();
          v24 = handler[0];
          if (!os_log_type_enabled(v23, handler[0]))
          {
            goto LABEL_108;
          }

          *buf = 136446210;
          *&buf[4] = "network_config_add_policy_event_handler";
          v25 = "%{public}s xpc_array_create failed, backtrace limit exceeded";
          goto LABEL_106;
        }

        v43 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v24 = handler[0];
        v44 = os_log_type_enabled(v23, handler[0]);
        if (!v43)
        {
          if (!v44)
          {
            goto LABEL_108;
          }

          *buf = 136446210;
          *&buf[4] = "network_config_add_policy_event_handler";
          v25 = "%{public}s xpc_array_create failed, no backtrace";
          goto LABEL_106;
        }

        if (!v44)
        {
LABEL_75:
          free(v43);
          goto LABEL_108;
        }

        *buf = 136446466;
        *&buf[4] = "network_config_add_policy_event_handler";
        *&buf[12] = 2082;
        *&buf[14] = v43;
        v45 = "%{public}s xpc_array_create failed, dumping backtrace:%{public}s";
LABEL_74:
        _os_log_impl(&dword_181A37000, v23, v24, v45, buf, 0x16u);
        goto LABEL_75;
      }

      __nwlog_obj();
      *buf = 136446210;
      *&buf[4] = "network_config_add_policy_event_handler";
      v22 = _os_log_send_and_compose_impl();
      handler[0] = OS_LOG_TYPE_ERROR;
      v69[0] = 0;
      if (!__nwlog_fault(v22, handler, v69))
      {
        goto LABEL_108;
      }

      if (handler[0] == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = handler[0];
        if (!os_log_type_enabled(v23, handler[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "network_config_add_policy_event_handler";
        v25 = "%{public}s called with null block";
      }

      else if (v69[0] == 1)
      {
        v43 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v24 = handler[0];
        v55 = os_log_type_enabled(v23, handler[0]);
        if (v43)
        {
          if (!v55)
          {
            goto LABEL_75;
          }

          *buf = 136446466;
          *&buf[4] = "network_config_add_policy_event_handler";
          *&buf[12] = 2082;
          *&buf[14] = v43;
          v45 = "%{public}s called with null block, dumping backtrace:%{public}s";
          goto LABEL_74;
        }

        if (!v55)
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "network_config_add_policy_event_handler";
        v25 = "%{public}s called with null block, no backtrace";
      }

      else
      {
        v23 = __nwlog_obj();
        v24 = handler[0];
        if (!os_log_type_enabled(v23, handler[0]))
        {
          goto LABEL_108;
        }

        *buf = 136446210;
        *&buf[4] = "network_config_add_policy_event_handler";
        v25 = "%{public}s called with null block, backtrace limit exceeded";
      }

LABEL_106:
      v48 = v23;
      v49 = v24;
      goto LABEL_107;
    }

LABEL_57:
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "network_config_add_policy_event_handler";
    v22 = _os_log_send_and_compose_impl();
    handler[0] = OS_LOG_TYPE_ERROR;
    v69[0] = 0;
    if (!__nwlog_fault(v22, handler, v69))
    {
      goto LABEL_108;
    }

    if (handler[0] == OS_LOG_TYPE_FAULT)
    {
      v23 = __nwlog_obj();
      v24 = handler[0];
      if (!os_log_type_enabled(v23, handler[0]))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      *&buf[4] = "network_config_add_policy_event_handler";
      v25 = "%{public}s called with null queue";
      goto LABEL_106;
    }

    if (v69[0] == 1)
    {
      v43 = __nw_create_backtrace_string();
      v23 = __nwlog_obj();
      v24 = handler[0];
      v54 = os_log_type_enabled(v23, handler[0]);
      if (v43)
      {
        if (!v54)
        {
          goto LABEL_75;
        }

        *buf = 136446466;
        *&buf[4] = "network_config_add_policy_event_handler";
        *&buf[12] = 2082;
        *&buf[14] = v43;
        v45 = "%{public}s called with null queue, dumping backtrace:%{public}s";
        goto LABEL_74;
      }

      if (!v54)
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      *&buf[4] = "network_config_add_policy_event_handler";
      v25 = "%{public}s called with null queue, no backtrace";
    }

    else
    {
      v23 = __nwlog_obj();
      v24 = handler[0];
      if (!os_log_type_enabled(v23, handler[0]))
      {
        goto LABEL_108;
      }

      *buf = 136446210;
      *&buf[4] = "network_config_add_policy_event_handler";
      v25 = "%{public}s called with null queue, backtrace limit exceeded";
    }

    goto LABEL_106;
  }

  v9 = socket(32, 3, 1);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v9;
    *v64 = 0x100000001;
    v65 = 3;
    if (ioctl(v9, 0x800C6502uLL, v64))
    {
      v11 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *v69 = 136446466;
      v70 = "network_config_setup_policy_event_watcher";
      v71 = 1024;
      *v72 = v11;
      v12 = _os_log_send_and_compose_impl();
      type[0] = OS_LOG_TYPE_ERROR;
      v63 = OS_LOG_TYPE_DEFAULT;
      if (!__nwlog_fault(v12, type, &v63))
      {
        goto LABEL_101;
      }

      if (type[0] == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_101;
        }

        *v69 = 136446466;
        v70 = "network_config_setup_policy_event_watcher";
        v71 = 1024;
        *v72 = v11;
        v15 = "%{public}s ioctl(SIOCSKEVFILT) failed %{darwin.errno}d";
LABEL_99:
        v51 = v13;
        v52 = v14;
        v53 = 18;
LABEL_100:
        _os_log_impl(&dword_181A37000, v51, v52, v15, v69, v53);
        goto LABEL_101;
      }

      if (v63 != OS_LOG_TYPE_INFO)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = type[0];
        if (!os_log_type_enabled(gLogObj, type[0]))
        {
          goto LABEL_101;
        }

        *v69 = 136446466;
        v70 = "network_config_setup_policy_event_watcher";
        v71 = 1024;
        *v72 = v11;
        v15 = "%{public}s ioctl(SIOCSKEVFILT) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_99;
      }

      v27 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v13 = gLogObj;
      v14 = type[0];
      v28 = os_log_type_enabled(gLogObj, type[0]);
      if (!v27)
      {
        if (!v28)
        {
          goto LABEL_101;
        }

        *v69 = 136446466;
        v70 = "network_config_setup_policy_event_watcher";
        v71 = 1024;
        *v72 = v11;
        v15 = "%{public}s ioctl(SIOCSKEVFILT) failed %{darwin.errno}d, no backtrace";
        goto LABEL_99;
      }

      if (v28)
      {
        *v69 = 136446722;
        v70 = "network_config_setup_policy_event_watcher";
        v71 = 1024;
        *v72 = v11;
        v72[2] = 2082;
        *&v72[3] = v27;
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s ioctl(SIOCSKEVFILT) failed %{darwin.errno}d, dumping backtrace:%{public}s", v69, 0x1Cu);
      }

      free(v27);
LABEL_101:
      if (!v12)
      {
LABEL_103:
        close(v10);
        return;
      }

LABEL_102:
      free(v12);
      goto LABEL_103;
    }

    *type = 1;
    if (ioctl(v10, 0x8004667EuLL, type))
    {
      v26 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *v69 = 136446466;
      v70 = "network_config_setup_policy_event_watcher";
      v71 = 1024;
      *v72 = v26;
      v12 = _os_log_send_and_compose_impl();
      v63 = OS_LOG_TYPE_ERROR;
      v61 = 0;
      if (!__nwlog_fault(v12, &v63, &v61))
      {
        goto LABEL_101;
      }

      if (v63 == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v13 = gLogObj;
        v14 = v63;
        if (!os_log_type_enabled(gLogObj, v63))
        {
          goto LABEL_101;
        }

        *v69 = 136446466;
        v70 = "network_config_setup_policy_event_watcher";
        v71 = 1024;
        *v72 = v26;
        v15 = "%{public}s ioctl(FIONBIO) failed %{darwin.errno}d";
        goto LABEL_99;
      }

      if (v61 != 1)
      {
        v13 = __nwlog_obj();
        v14 = v63;
        if (!os_log_type_enabled(v13, v63))
        {
          goto LABEL_101;
        }

        *v69 = 136446466;
        v70 = "network_config_setup_policy_event_watcher";
        v71 = 1024;
        *v72 = v26;
        v15 = "%{public}s ioctl(FIONBIO) failed %{darwin.errno}d, backtrace limit exceeded";
        goto LABEL_99;
      }

      v37 = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v63;
      v38 = os_log_type_enabled(v13, v63);
      if (!v37)
      {
        if (!v38)
        {
          goto LABEL_101;
        }

        *v69 = 136446466;
        v70 = "network_config_setup_policy_event_watcher";
        v71 = 1024;
        *v72 = v26;
        v15 = "%{public}s ioctl(FIONBIO) failed %{darwin.errno}d, no backtrace";
        goto LABEL_99;
      }

      if (v38)
      {
        *v69 = 136446722;
        v70 = "network_config_setup_policy_event_watcher";
        v71 = 1024;
        *v72 = v26;
        v72[2] = 2082;
        *&v72[3] = v37;
        v39 = "%{public}s ioctl(FIONBIO) failed %{darwin.errno}d, dumping backtrace:%{public}s";
        v40 = v13;
        v41 = v14;
        v42 = 28;
LABEL_65:
        _os_log_impl(&dword_181A37000, v40, v41, v39, v69, v42);
        goto LABEL_66;
      }

      goto LABEL_66;
    }

    v35 = v10;
    if (nw_policy_event_queue(void)::onceToken != -1)
    {
      dispatch_once(&nw_policy_event_queue(void)::onceToken, &__block_literal_global_24197);
      v35 = v10;
    }

    v36 = dispatch_source_create(MEMORY[0x1E69E96F8], v35, 0, nw_policy_event_queue(void)::queue);
    network_config_setup_policy_event_watcher(void)::kevsrc = v36;
    if (v36)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = ___ZL41network_config_setup_policy_event_watcherv_block_invoke;
      v67 = &__block_descriptor_tmp_10_24220;
      v68 = v10;
      dispatch_source_set_cancel_handler(v36, buf);
      *handler = MEMORY[0x1E69E9820];
      v57 = 0x40000000;
      v58 = ___ZL41network_config_setup_policy_event_watcherv_block_invoke_2;
      v59 = &__block_descriptor_tmp_12_24221;
      v60 = v10;
      dispatch_source_set_event_handler(network_config_setup_policy_event_watcher(void)::kevsrc, handler);
      dispatch_activate(network_config_setup_policy_event_watcher(void)::kevsrc);
      v2 = *(a1 + 48);
      if (v2)
      {
        goto LABEL_3;
      }

      goto LABEL_57;
    }

    __nwlog_obj();
    *v69 = 136446210;
    v70 = "network_config_setup_policy_event_watcher";
    v12 = _os_log_send_and_compose_impl();
    v63 = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v12, &v63, &v61))
    {
      goto LABEL_101;
    }

    if (v63 == OS_LOG_TYPE_FAULT)
    {
      v46 = __nwlog_obj();
      v47 = v63;
      if (!os_log_type_enabled(v46, v63))
      {
        goto LABEL_101;
      }

      *v69 = 136446210;
      v70 = "network_config_setup_policy_event_watcher";
      v15 = "%{public}s dispatch_source_create failed";
    }

    else if (v61 == 1)
    {
      v37 = __nw_create_backtrace_string();
      v46 = __nwlog_obj();
      v47 = v63;
      v50 = os_log_type_enabled(v46, v63);
      if (v37)
      {
        if (v50)
        {
          *v69 = 136446466;
          v70 = "network_config_setup_policy_event_watcher";
          v71 = 2082;
          *v72 = v37;
          v39 = "%{public}s dispatch_source_create failed, dumping backtrace:%{public}s";
          v40 = v46;
          v41 = v47;
          v42 = 22;
          goto LABEL_65;
        }

LABEL_66:
        free(v37);
        if (!v12)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (!v50)
      {
        goto LABEL_101;
      }

      *v69 = 136446210;
      v70 = "network_config_setup_policy_event_watcher";
      v15 = "%{public}s dispatch_source_create failed, no backtrace";
    }

    else
    {
      v46 = __nwlog_obj();
      v47 = v63;
      if (!os_log_type_enabled(v46, v63))
      {
        goto LABEL_101;
      }

      *v69 = 136446210;
      v70 = "network_config_setup_policy_event_watcher";
      v15 = "%{public}s dispatch_source_create failed, backtrace limit exceeded";
    }

    v51 = v46;
    v52 = v47;
    v53 = 12;
    goto LABEL_100;
  }

  v17 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  *v69 = 136446466;
  v70 = "network_config_setup_policy_event_watcher";
  v71 = 1024;
  *v72 = v17;
  v18 = _os_log_send_and_compose_impl();
  v64[0] = OS_LOG_TYPE_ERROR;
  type[0] = OS_LOG_TYPE_DEFAULT;
  if (__nwlog_fault(v18, v64, type))
  {
    if (v64[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = v64[0];
      if (!os_log_type_enabled(gLogObj, v64[0]))
      {
        goto LABEL_83;
      }

      *v69 = 136446466;
      v70 = "network_config_setup_policy_event_watcher";
      v71 = 1024;
      *v72 = v17;
      v21 = "%{public}s socket(PF_SYSTEM, SOCK_RAW, SYSPROTO_EVENT) failed %{darwin.errno}d";
      goto LABEL_82;
    }

    if (type[0] != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v20 = v64[0];
      if (!os_log_type_enabled(gLogObj, v64[0]))
      {
        goto LABEL_83;
      }

      *v69 = 136446466;
      v70 = "network_config_setup_policy_event_watcher";
      v71 = 1024;
      *v72 = v17;
      v21 = "%{public}s socket(PF_SYSTEM, SOCK_RAW, SYSPROTO_EVENT) failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_82;
    }

    v29 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v19 = gLogObj;
    v20 = v64[0];
    v30 = os_log_type_enabled(gLogObj, v64[0]);
    if (v29)
    {
      if (v30)
      {
        *v69 = 136446722;
        v70 = "network_config_setup_policy_event_watcher";
        v71 = 1024;
        *v72 = v17;
        v72[2] = 2082;
        *&v72[3] = v29;
        _os_log_impl(&dword_181A37000, v19, v20, "%{public}s socket(PF_SYSTEM, SOCK_RAW, SYSPROTO_EVENT) failed %{darwin.errno}d, dumping backtrace:%{public}s", v69, 0x1Cu);
      }

      free(v29);
      goto LABEL_83;
    }

    if (v30)
    {
      *v69 = 136446466;
      v70 = "network_config_setup_policy_event_watcher";
      v71 = 1024;
      *v72 = v17;
      v21 = "%{public}s socket(PF_SYSTEM, SOCK_RAW, SYSPROTO_EVENT) failed %{darwin.errno}d, no backtrace";
LABEL_82:
      _os_log_impl(&dword_181A37000, v19, v20, v21, v69, 0x12u);
    }
  }

LABEL_83:
  if (v18)
  {
    free(v18);
  }
}

dispatch_queue_t ___ZL21nw_policy_event_queuev_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("com.apple.libnetwork.cellular_blocked", v0);
  nw_policy_event_queue(void)::queue = result;
  return result;
}

uint64_t network_config_cellular_failed_observer_create(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "network_config_cellular_failed_observer_create";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s creating cellular failed observer", &v6, 0xCu);
  }

  return network_config_policy_observer_create(2, a1, a2);
}

uint64_t network_config_wifi_blocked_observer_create(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "network_config_wifi_blocked_observer_create";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s creating Wi-Fi blocked observer", &v6, 0xCu);
  }

  return network_config_policy_observer_create(3, a1, a2);
}

uint64_t network_config_ultra_constrained_blocked_observer_create(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "network_config_ultra_constrained_blocked_observer_create";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s creating ultra-constrained blocked observer", &v6, 0xCu);
  }

  return network_config_policy_observer_create(5, a1, a2);
}

uint64_t network_config_local_network_blocked_observer_create(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "network_config_local_network_blocked_observer_create";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s creating local network blocked observer", &v6, 0xCu);
  }

  return network_config_policy_observer_create(4, a1, a2);
}

void network_config_policy_observer_cancel(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (a1)
  {
    if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = "network_config_policy_observer_cancel";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s cancelling cellular blocked observer", buf, 0xCu);
    }

    if (nw_policy_event_queue(void)::onceToken != -1)
    {
      dispatch_once(&nw_policy_event_queue(void)::onceToken, &__block_literal_global_24197);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZL37network_config_policy_observer_cancelPv_block_invoke;
    block[3] = &__block_descriptor_tmp_19;
    block[4] = a1;
    dispatch_sync(nw_policy_event_queue(void)::queue, block);
    return;
  }

  *buf = 136446210;
  v13 = "network_config_policy_observer_cancel";
  v3 = _os_log_send_and_compose_impl();
  v11 = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (__nwlog_fault(v3, &v11, &v10))
  {
    if (v11 == OS_LOG_TYPE_FAULT)
    {
      v4 = __nwlog_obj();
      v5 = v11;
      if (!os_log_type_enabled(v4, v11))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v13 = "network_config_policy_observer_cancel";
      v6 = "%{public}s called with null observer";
      goto LABEL_21;
    }

    if (v10 != 1)
    {
      v4 = __nwlog_obj();
      v5 = v11;
      if (!os_log_type_enabled(v4, v11))
      {
        goto LABEL_22;
      }

      *buf = 136446210;
      v13 = "network_config_policy_observer_cancel";
      v6 = "%{public}s called with null observer, backtrace limit exceeded";
      goto LABEL_21;
    }

    backtrace_string = __nw_create_backtrace_string();
    v4 = __nwlog_obj();
    v5 = v11;
    v8 = os_log_type_enabled(v4, v11);
    if (backtrace_string)
    {
      if (v8)
      {
        *buf = 136446466;
        v13 = "network_config_policy_observer_cancel";
        v14 = 2082;
        v15 = backtrace_string;
        _os_log_impl(&dword_181A37000, v4, v5, "%{public}s called with null observer, dumping backtrace:%{public}s", buf, 0x16u);
      }

      free(backtrace_string);
      goto LABEL_22;
    }

    if (v8)
    {
      *buf = 136446210;
      v13 = "network_config_policy_observer_cancel";
      v6 = "%{public}s called with null observer, no backtrace";
LABEL_21:
      _os_log_impl(&dword_181A37000, v4, v5, v6, buf, 0xCu);
    }
  }

LABEL_22:
  if (v3)
  {
    free(v3);
  }
}

void ___ZL37network_config_policy_observer_cancelPv_block_invoke(uint64_t a1)
{
  network_config_remove_observer_from_array(&g_cellular_blocked_handlers, *(a1 + 32));
  network_config_remove_observer_from_array(&g_cellular_failed_handlers, *(a1 + 32));
  network_config_remove_observer_from_array(&g_wifi_blocked_handlers, *(a1 + 32));
  network_config_remove_observer_from_array(&g_ultra_constrained_blocked_handlers, *(a1 + 32));
  v2 = *(a1 + 32);

  network_config_remove_observer_from_array(&g_local_network_blocked_handlers, v2);
}

void network_config_remove_observer_from_array(void **a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "network_config_remove_observer_from_array";
    v7 = _os_log_send_and_compose_impl();
    v18 = OS_LOG_TYPE_ERROR;
    v17 = 0;
    if (!__nwlog_fault(v7, &v18, &v17))
    {
      goto LABEL_36;
    }

    if (v18 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      *&buf[4] = "network_config_remove_observer_from_array";
      v10 = "%{public}s called with null array_ptr";
    }

    else if (v17 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v9 = v18;
      v12 = os_log_type_enabled(v8, v18);
      if (backtrace_string)
      {
        if (v12)
        {
          *buf = 136446466;
          *&buf[4] = "network_config_remove_observer_from_array";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null array_ptr, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_36:
        if (!v7)
        {
          return;
        }

LABEL_37:
        free(v7);
        return;
      }

      if (!v12)
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      *&buf[4] = "network_config_remove_observer_from_array";
      v10 = "%{public}s called with null array_ptr, no backtrace";
    }

    else
    {
      v8 = __nwlog_obj();
      v9 = v18;
      if (!os_log_type_enabled(v8, v18))
      {
        goto LABEL_36;
      }

      *buf = 136446210;
      *&buf[4] = "network_config_remove_observer_from_array";
      v10 = "%{public}s called with null array_ptr, backtrace limit exceeded";
    }

LABEL_35:
    _os_log_impl(&dword_181A37000, v8, v9, v10, buf, 0xCu);
    goto LABEL_36;
  }

  if (a2)
  {
    v3 = *a1;
    if (v3)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2000000000;
      v20 = 0;
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 0x40000000;
      applier[2] = ___ZL41network_config_remove_observer_from_arrayPPvS__block_invoke;
      applier[3] = &unk_1E6A2EB28;
      applier[4] = buf;
      applier[5] = a2;
      xpc_array_apply(v3, applier);
      v5 = xpc_array_create(0, 0);
      v6 = *a1;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 0x40000000;
      v15[2] = ___ZL41network_config_remove_observer_from_arrayPPvS__block_invoke_2;
      v15[3] = &__block_descriptor_tmp_21_24279;
      v15[4] = a2;
      v15[5] = v5;
      xpc_array_apply(v6, v15);
      if (*a1)
      {
        xpc_release(*a1);
      }

      *a1 = v5;
      _Block_object_dispose(buf, 8);
    }

    return;
  }

  __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "network_config_remove_observer_from_array";
  v7 = _os_log_send_and_compose_impl();
  v18 = OS_LOG_TYPE_ERROR;
  v17 = 0;
  if (!__nwlog_fault(v7, &v18, &v17))
  {
    goto LABEL_36;
  }

  if (v18 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    *&buf[4] = "network_config_remove_observer_from_array";
    v10 = "%{public}s called with null observer";
    goto LABEL_35;
  }

  if (v17 != 1)
  {
    v8 = __nwlog_obj();
    v9 = v18;
    if (!os_log_type_enabled(v8, v18))
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    *&buf[4] = "network_config_remove_observer_from_array";
    v10 = "%{public}s called with null observer, backtrace limit exceeded";
    goto LABEL_35;
  }

  v13 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v9 = v18;
  v14 = os_log_type_enabled(v8, v18);
  if (!v13)
  {
    if (!v14)
    {
      goto LABEL_36;
    }

    *buf = 136446210;
    *&buf[4] = "network_config_remove_observer_from_array";
    v10 = "%{public}s called with null observer, no backtrace";
    goto LABEL_35;
  }

  if (v14)
  {
    *buf = 136446466;
    *&buf[4] = "network_config_remove_observer_from_array";
    *&buf[12] = 2082;
    *&buf[14] = v13;
    _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null observer, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v13);
  if (v7)
  {
    goto LABEL_37;
  }
}

BOOL ___ZL41network_config_remove_observer_from_arrayPPvS__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  if (v3 == a3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return v3 != a3;
}

uint64_t ___ZL41network_config_remove_observer_from_arrayPPvS__block_invoke_2(uint64_t a1, int a2, xpc_object_t value)
{
  if (*(a1 + 32) == value)
  {
    pointer = xpc_dictionary_get_pointer();
    v4 = xpc_dictionary_get_pointer();
    if (pointer)
    {
      _Block_release(pointer);
    }

    if (v4)
    {
      dispatch_release(v4);
    }

    xpc_dictionary_set_pointer();
    xpc_dictionary_set_pointer();
  }

  else
  {
    xpc_array_append_value(*(a1 + 40), value);
  }

  return 1;
}

uint64_t network_config_mptcp_watcher_create(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "network_config_mptcp_watcher_create";
    v28 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v43) = 0;
    if (!__nwlog_fault(v28, type, &v43))
    {
      goto LABEL_89;
    }

    if (type[0] != OS_LOG_TYPE_FAULT)
    {
      if (v43 != 1)
      {
        v29 = __nwlog_obj();
        v30 = type[0];
        if (!os_log_type_enabled(v29, type[0]))
        {
          goto LABEL_89;
        }

        *buf = 136446210;
        *&buf[4] = "network_config_mptcp_watcher_create";
        v31 = "%{public}s called with null queue, backtrace limit exceeded";
        goto LABEL_88;
      }

      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v30 = type[0];
      v33 = os_log_type_enabled(v29, type[0]);
      if (!backtrace_string)
      {
        if (!v33)
        {
          goto LABEL_89;
        }

        *buf = 136446210;
        *&buf[4] = "network_config_mptcp_watcher_create";
        v31 = "%{public}s called with null queue, no backtrace";
        goto LABEL_88;
      }

      if (v33)
      {
        *buf = 136446466;
        *&buf[4] = "network_config_mptcp_watcher_create";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v34 = "%{public}s called with null queue, dumping backtrace:%{public}s";
LABEL_78:
        _os_log_impl(&dword_181A37000, v29, v30, v34, buf, 0x16u);
      }

LABEL_79:
      free(backtrace_string);
      goto LABEL_89;
    }

    v29 = __nwlog_obj();
    v30 = type[0];
    if (!os_log_type_enabled(v29, type[0]))
    {
      goto LABEL_89;
    }

    *buf = 136446210;
    *&buf[4] = "network_config_mptcp_watcher_create";
    v31 = "%{public}s called with null queue";
LABEL_88:
    _os_log_impl(&dword_181A37000, v29, v30, v31, buf, 0xCu);
LABEL_89:
    if (v28)
    {
      free(v28);
    }

    return 0;
  }

  if (!a2)
  {
    __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "network_config_mptcp_watcher_create";
    v28 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v43) = 0;
    if (!__nwlog_fault(v28, type, &v43))
    {
      goto LABEL_89;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (!os_log_type_enabled(v29, type[0]))
      {
        goto LABEL_89;
      }

      *buf = 136446210;
      *&buf[4] = "network_config_mptcp_watcher_create";
      v31 = "%{public}s called with null block";
      goto LABEL_88;
    }

    if (v43 != 1)
    {
      v29 = __nwlog_obj();
      v30 = type[0];
      if (!os_log_type_enabled(v29, type[0]))
      {
        goto LABEL_89;
      }

      *buf = 136446210;
      *&buf[4] = "network_config_mptcp_watcher_create";
      v31 = "%{public}s called with null block, backtrace limit exceeded";
      goto LABEL_88;
    }

    backtrace_string = __nw_create_backtrace_string();
    v29 = __nwlog_obj();
    v30 = type[0];
    v35 = os_log_type_enabled(v29, type[0]);
    if (backtrace_string)
    {
      if (v35)
      {
        *buf = 136446466;
        *&buf[4] = "network_config_mptcp_watcher_create";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        v34 = "%{public}s called with null block, dumping backtrace:%{public}s";
        goto LABEL_78;
      }

      goto LABEL_79;
    }

    if (!v35)
    {
      goto LABEL_89;
    }

    *buf = 136446210;
    *&buf[4] = "network_config_mptcp_watcher_create";
    v31 = "%{public}s called with null block, no backtrace";
    goto LABEL_88;
  }

  nw_allow_use_of_dispatch_internal();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    *&buf[4] = "network_config_mptcp_watcher_create";
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s creating MPTCP watcher", buf, 0xCu);
  }

  v5 = socket(32, 3, 1);
  if (v5 < 0)
  {
    return 0;
  }

  v6 = v5;
  v43 = 0x100000001;
  v44 = 12;
  if (ioctl(v5, 0x800C6502uLL, &v43))
  {
    v7 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "network_config_mptcp_watcher_create";
    *&buf[12] = 1024;
    *&buf[14] = v7;
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    LOBYTE(v42) = 0;
    if (!__nwlog_fault(v8, type, &v42))
    {
      goto LABEL_49;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      *&buf[4] = "network_config_mptcp_watcher_create";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      v11 = "%{public}s ioctl(SIOCSKEVFILT) failed %{darwin.errno}d";
      goto LABEL_48;
    }

    if (v42 != 1)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      *&buf[4] = "network_config_mptcp_watcher_create";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      v11 = "%{public}s ioctl(SIOCSKEVFILT) failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_48;
    }

    v13 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type[0];
    v14 = os_log_type_enabled(gLogObj, type[0]);
    if (!v13)
    {
      if (!v14)
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      *&buf[4] = "network_config_mptcp_watcher_create";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      v11 = "%{public}s ioctl(SIOCSKEVFILT) failed %{darwin.errno}d, no backtrace";
      goto LABEL_48;
    }

    if (v14)
    {
      *buf = 136446722;
      *&buf[4] = "network_config_mptcp_watcher_create";
      *&buf[12] = 1024;
      *&buf[14] = v7;
      *&buf[18] = 2082;
      *&buf[20] = v13;
      _os_log_impl(&dword_181A37000, v9, v10, "%{public}s ioctl(SIOCSKEVFILT) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
    }

    free(v13);
    goto LABEL_49;
  }

  v42 = 1;
  if (ioctl(v6, 0x8004667EuLL, &v42))
  {
    v12 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *buf = 136446466;
    *&buf[4] = "network_config_mptcp_watcher_create";
    *&buf[12] = 1024;
    *&buf[14] = v12;
    v8 = _os_log_send_and_compose_impl();
    type[0] = OS_LOG_TYPE_ERROR;
    v41 = OS_LOG_TYPE_DEFAULT;
    if (!__nwlog_fault(v8, type, &v41))
    {
      goto LABEL_49;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      *&buf[4] = "network_config_mptcp_watcher_create";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      v11 = "%{public}s ioctl(FIONBIO) failed %{darwin.errno}d";
      goto LABEL_48;
    }

    if (v41 != OS_LOG_TYPE_INFO)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v9 = gLogObj;
      v10 = type[0];
      if (!os_log_type_enabled(gLogObj, type[0]))
      {
        goto LABEL_49;
      }

      *buf = 136446466;
      *&buf[4] = "network_config_mptcp_watcher_create";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      v11 = "%{public}s ioctl(FIONBIO) failed %{darwin.errno}d, backtrace limit exceeded";
      goto LABEL_48;
    }

    v19 = __nw_create_backtrace_string();
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    v10 = type[0];
    v20 = os_log_type_enabled(gLogObj, type[0]);
    if (v19)
    {
      if (v20)
      {
        *buf = 136446722;
        *&buf[4] = "network_config_mptcp_watcher_create";
        *&buf[12] = 1024;
        *&buf[14] = v12;
        *&buf[18] = 2082;
        *&buf[20] = v19;
        _os_log_impl(&dword_181A37000, v9, v10, "%{public}s ioctl(FIONBIO) failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
      }

      free(v19);
      if (!v8)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if (v20)
    {
      *buf = 136446466;
      *&buf[4] = "network_config_mptcp_watcher_create";
      *&buf[12] = 1024;
      *&buf[14] = v12;
      v11 = "%{public}s ioctl(FIONBIO) failed %{darwin.errno}d, no backtrace";
LABEL_48:
      _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0x12u);
    }

LABEL_49:
    if (!v8)
    {
LABEL_51:
      close(v6);
      return 0;
    }

LABEL_50:
    free(v8);
    goto LABEL_51;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  v15 = v6;
  if (nw_policy_event_queue(void)::onceToken != -1)
  {
    dispatch_once(&nw_policy_event_queue(void)::onceToken, &__block_literal_global_24197);
    v15 = v6;
  }

  *&buf[24] = dispatch_source_create(MEMORY[0x1E69E96F8], v15, 0, nw_policy_event_queue(void)::queue);
  v16 = *(*&buf[8] + 24);
  if (!v16)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    *type = 136446210;
    v46 = "network_config_mptcp_watcher_create";
    v21 = _os_log_send_and_compose_impl();
    v41 = OS_LOG_TYPE_ERROR;
    v40 = 0;
    if (__nwlog_fault(v21, &v41, &v40))
    {
      if (v41 == OS_LOG_TYPE_FAULT)
      {
        v22 = __nwlog_obj();
        v23 = v41;
        if (os_log_type_enabled(v22, v41))
        {
          *type = 136446210;
          v46 = "network_config_mptcp_watcher_create";
          v24 = "%{public}s dispatch_source_create failed";
LABEL_57:
          _os_log_impl(&dword_181A37000, v22, v23, v24, type, 0xCu);
        }
      }

      else if (v40 == 1)
      {
        v25 = __nw_create_backtrace_string();
        v22 = __nwlog_obj();
        v23 = v41;
        v26 = os_log_type_enabled(v22, v41);
        if (v25)
        {
          if (v26)
          {
            *type = 136446466;
            v46 = "network_config_mptcp_watcher_create";
            v47 = 2082;
            v48 = v25;
            _os_log_impl(&dword_181A37000, v22, v23, "%{public}s dispatch_source_create failed, dumping backtrace:%{public}s", type, 0x16u);
          }

          free(v25);
          goto LABEL_58;
        }

        if (v26)
        {
          *type = 136446210;
          v46 = "network_config_mptcp_watcher_create";
          v24 = "%{public}s dispatch_source_create failed, no backtrace";
          goto LABEL_57;
        }
      }

      else
      {
        v22 = __nwlog_obj();
        v23 = v41;
        if (os_log_type_enabled(v22, v41))
        {
          *type = 136446210;
          v46 = "network_config_mptcp_watcher_create";
          v24 = "%{public}s dispatch_source_create failed, backtrace limit exceeded";
          goto LABEL_57;
        }
      }
    }

LABEL_58:
    if (v21)
    {
      free(v21);
    }

    close(v6);
    v18 = 0;
    goto LABEL_61;
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 0x40000000;
  handler[2] = __network_config_mptcp_watcher_create_block_invoke;
  handler[3] = &unk_1E6A2E9B8;
  v39 = v6;
  handler[4] = buf;
  dispatch_source_set_cancel_handler(v16, handler);
  v17 = *(*&buf[8] + 24);
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 0x40000000;
  v36[2] = __network_config_mptcp_watcher_create_block_invoke_2;
  v36[3] = &unk_1E6A2EA30;
  v37 = v6;
  v36[4] = a2;
  v36[5] = a1;
  dispatch_source_set_event_handler(v17, v36);
  dispatch_activate(*(*&buf[8] + 24));
  v18 = *(*&buf[8] + 24);
LABEL_61:
  _Block_object_dispose(buf, 8);
  return v18;
}

void __network_config_mptcp_watcher_create_block_invoke(uint64_t a1)
{
  close(*(a1 + 40));
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    dispatch_release(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __network_config_mptcp_watcher_create_block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v2 = "network_config_mptcp_watcher_create_block_invoke";
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  while (1)
  {
    v4 = recv(*(a1 + 48), &v40, 0x80uLL, 0);
    if (v4 < 1)
    {
      break;
    }

    if (DWORD2(v40) == 1 && HIDWORD(v40) == 12)
    {
      if (DWORD1(v41) == 1)
      {
        v12 = DWORD2(v41);
        if ((((DWORD2(v41) == 0) ^ sMptcpUsesCell) & 1) == 0)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v13 = gLogObj;
          v14 = os_log_type_enabled(gLogObj, OS_LOG_TYPE_DEFAULT);
          v12 = DWORD2(v41);
          if (v14)
          {
            *buf = 136446466;
            v15 = "on";
            if (!DWORD2(v41))
            {
              v15 = "off";
            }

            v37 = v2;
            v38 = 2082;
            *v39 = v15;
            _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s MPTCP changing cell-icon to %{public}s", buf, 0x16u);
            v12 = DWORD2(v41);
          }
        }

        sMptcpUsesCell = v12 != 0;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __network_config_mptcp_watcher_create_block_invoke_4;
        block[3] = &unk_1E6A2E9E0;
        v3 = *(a1 + 40);
        block[4] = *(a1 + 32);
        dispatch_async(v3, block);
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (os_log_type_enabled(gLogObj, OS_LOG_TYPE_INFO))
        {
          *buf = 136446466;
          v37 = v2;
          v38 = 1024;
          *v39 = DWORD1(v41);
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s Received unexpected event-code: %u", buf, 0x12u);
        }
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446722;
      v37 = "network_config_mptcp_watcher_create_block_invoke_2";
      v38 = 1024;
      *v39 = DWORD2(v40);
      *&v39[4] = 1024;
      *&v39[6] = HIDWORD(v40);
      v6 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (__nwlog_fault(v6, &type, &v34))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v7 = gLogObj;
          v8 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v37 = v2;
            v38 = 1024;
            *v39 = DWORD2(v40);
            *&v39[4] = 1024;
            *&v39[6] = HIDWORD(v40);
            v9 = v7;
            v10 = v8;
            v11 = "%{public}s Received unexpected msg: class %u subclass %u";
LABEL_29:
            _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0x18u);
          }
        }

        else if (v34 == 1)
        {
          v17 = v2;
          backtrace_string = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v20 = type;
          v21 = os_log_type_enabled(gLogObj, type);
          if (backtrace_string)
          {
            if (v21)
            {
              *buf = 136446978;
              v37 = v17;
              v38 = 1024;
              *v39 = DWORD2(v40);
              *&v39[4] = 1024;
              *&v39[6] = HIDWORD(v40);
              *&v39[10] = 2082;
              *&v39[12] = backtrace_string;
              _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Received unexpected msg: class %u subclass %u, dumping backtrace:%{public}s", buf, 0x22u);
            }

            free(backtrace_string);
            v2 = v17;
          }

          else
          {
            v2 = v17;
            if (v21)
            {
              *buf = 136446722;
              v37 = v17;
              v38 = 1024;
              *v39 = DWORD2(v40);
              *&v39[4] = 1024;
              *&v39[6] = HIDWORD(v40);
              v9 = v19;
              v10 = v20;
              v11 = "%{public}s Received unexpected msg: class %u subclass %u, no backtrace";
              goto LABEL_29;
            }
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v22 = gLogObj;
          v23 = type;
          if (os_log_type_enabled(gLogObj, type))
          {
            *buf = 136446722;
            v37 = v2;
            v38 = 1024;
            *v39 = DWORD2(v40);
            *&v39[4] = 1024;
            *&v39[6] = HIDWORD(v40);
            v9 = v22;
            v10 = v23;
            v11 = "%{public}s Received unexpected msg: class %u subclass %u, backtrace limit exceeded";
            goto LABEL_29;
          }
        }
      }

      if (v6)
      {
        free(v6);
      }
    }
  }

  if (v4 < 0)
  {
    v24 = **(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 8);
    if (v24 != 35)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      *buf = 136446466;
      v37 = "network_config_mptcp_watcher_create_block_invoke_2";
      v38 = 1024;
      *v39 = v24;
      v25 = _os_log_send_and_compose_impl();
      type = OS_LOG_TYPE_ERROR;
      v34 = 0;
      if (!__nwlog_fault(v25, &type, &v34))
      {
        goto LABEL_48;
      }

      if (type != OS_LOG_TYPE_FAULT)
      {
        if (v34 == 1)
        {
          v29 = __nw_create_backtrace_string();
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          v30 = os_log_type_enabled(gLogObj, type);
          if (v29)
          {
            if (v30)
            {
              *buf = 136446722;
              v37 = v2;
              v38 = 1024;
              *v39 = v24;
              *&v39[4] = 2082;
              *&v39[6] = v29;
              _os_log_impl(&dword_181A37000, v26, v27, "%{public}s recv from kernel event socket failed %{darwin.errno}d, dumping backtrace:%{public}s", buf, 0x1Cu);
            }

            free(v29);
            goto LABEL_48;
          }

          if (!v30)
          {
            goto LABEL_48;
          }

          *buf = 136446466;
          v37 = v2;
          v38 = 1024;
          *v39 = v24;
          v28 = "%{public}s recv from kernel event socket failed %{darwin.errno}d, no backtrace";
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v26 = gLogObj;
          v27 = type;
          if (!os_log_type_enabled(gLogObj, type))
          {
            goto LABEL_48;
          }

          *buf = 136446466;
          v37 = v2;
          v38 = 1024;
          *v39 = v24;
          v28 = "%{public}s recv from kernel event socket failed %{darwin.errno}d, backtrace limit exceeded";
        }

LABEL_47:
        _os_log_impl(&dword_181A37000, v26, v27, v28, buf, 0x12u);
        goto LABEL_48;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v26 = gLogObj;
      v27 = type;
      if (os_log_type_enabled(gLogObj, type))
      {
        *buf = 136446466;
        v37 = v2;
        v38 = 1024;
        *v39 = v24;
        v28 = "%{public}s recv from kernel event socket failed %{darwin.errno}d";
        goto LABEL_47;
      }

LABEL_48:
      if (v25)
      {
        free(v25);
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 0x40000000;
      v32[2] = __network_config_mptcp_watcher_create_block_invoke_6;
      v32[3] = &unk_1E6A2EA08;
      v31 = *(a1 + 40);
      v32[4] = *(a1 + 32);
      dispatch_async(v31, v32);
    }
  }
}

uint64_t __network_config_mptcp_watcher_create_block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  return (*(v1 + 16))();
}

uint64_t __Block_byref_object_copy__24471(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__11_24506(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void _nw_connection_send_idempotent_content_block_invoke()
{
  v14 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  *buf = 136446210;
  v11 = "_nw_connection_send_idempotent_content_block_invoke";
  v1 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v8 = 0;
  if (!__nwlog_fault(v1, &type, &v8))
  {
LABEL_6:
    if (!v1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (os_log_type_enabled(v2, type))
    {
      *buf = 136446210;
      v11 = "_nw_connection_send_idempotent_content_block_invoke";
      _os_log_impl(&dword_181A37000, v2, v3, "%{public}s _nw_connection_send_idempotent_content called directly", buf, 0xCu);
    }

LABEL_5:

    goto LABEL_6;
  }

  if (v8 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v7 = type;
    if (os_log_type_enabled(v2, type))
    {
      *buf = 136446210;
      v11 = "_nw_connection_send_idempotent_content_block_invoke";
      _os_log_impl(&dword_181A37000, v2, v7, "%{public}s _nw_connection_send_idempotent_content called directly, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_5;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v5 = type;
  v6 = os_log_type_enabled(v2, type);
  if (!backtrace_string)
  {
    if (v6)
    {
      *buf = 136446210;
      v11 = "_nw_connection_send_idempotent_content_block_invoke";
      _os_log_impl(&dword_181A37000, v2, v5, "%{public}s _nw_connection_send_idempotent_content called directly, no backtrace", buf, 0xCu);
    }

    goto LABEL_5;
  }

  if (v6)
  {
    *buf = 136446466;
    v11 = "_nw_connection_send_idempotent_content_block_invoke";
    v12 = 2082;
    v13 = backtrace_string;
    _os_log_impl(&dword_181A37000, v2, v5, "%{public}s _nw_connection_send_idempotent_content called directly, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(backtrace_string);
  if (v1)
  {
LABEL_7:
    free(v1);
  }
}

void _nw_connection_write_idempotent_block_invoke_2()
{
  v16 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v0 = gLogObj;
  *buf = 136446210;
  v13 = "_nw_connection_write_idempotent_block_invoke_2";
  v1 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v10 = 0;
  if (!__nwlog_fault(v1, &type, &v10))
  {
    goto LABEL_10;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "_nw_connection_write_idempotent_block_invoke_2";
    v4 = "%{public}s _nw_connection_write_idempotent called directly";
LABEL_15:
    v8 = v2;
    v9 = v3;
LABEL_16:
    _os_log_impl(&dword_181A37000, v8, v9, v4, buf, 0xCu);
    goto LABEL_17;
  }

  if (v10 != 1)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v2 = gLogObj;
    v3 = type;
    if (!os_log_type_enabled(v2, type))
    {
      goto LABEL_17;
    }

    *buf = 136446210;
    v13 = "_nw_connection_write_idempotent_block_invoke_2";
    v4 = "%{public}s _nw_connection_write_idempotent called directly, backtrace limit exceeded";
    goto LABEL_15;
  }

  backtrace_string = __nw_create_backtrace_string();
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  v6 = type;
  v7 = os_log_type_enabled(v2, type);
  if (backtrace_string)
  {
    if (v7)
    {
      *buf = 136446466;
      v13 = "_nw_connection_write_idempotent_block_invoke_2";
      v14 = 2082;
      v15 = backtrace_string;
      _os_log_impl(&dword_181A37000, v2, v6, "%{public}s _nw_connection_write_idempotent called directly, dumping backtrace:%{public}s", buf, 0x16u);
    }

    free(backtrace_string);
LABEL_10:
    if (!v1)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v7)
  {
    *buf = 136446210;
    v13 = "_nw_connection_write_idempotent_block_invoke_2";
    v4 = "%{public}s _nw_connection_write_idempotent called directly, no backtrace";
    v8 = v2;
    v9 = v6;
    goto LABEL_16;
  }

LABEL_17:

  if (v1)
  {
LABEL_11:
    free(v1);
  }
}

uint64_t nw_connection_add_probe(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v28 = 0;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_connection_add_probe_block_invoke;
      v21[3] = &unk_1E6A3BE58;
      v24 = buf;
      v22 = v3;
      v23 = v5;
      os_unfair_lock_lock(v3 + 34);
      __nw_connection_add_probe_block_invoke(v21);
      os_unfair_lock_unlock(v3 + 34);
      v6 = *(*&buf[8] + 24);

      _Block_object_dispose(buf, 8);
      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_add_probe";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_add_probe";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null probe", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_add_probe";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null probe, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_add_probe";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null probe, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_add_probe";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null probe, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_add_probe";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_add_probe";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_add_probe";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          *&buf[4] = "nw_connection_add_probe";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        *&buf[4] = "nw_connection_add_probe";
        *&buf[12] = 2082;
        *&buf[14] = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:

  return v6 & 1;
}

uint64_t __nw_connection_add_probe_block_invoke(uint64_t a1)
{
  result = nw_connection_add_probe_locked(*(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t nw_connection_add_probe_locked(NWConcrete_nw_connection *a1, NWConcrete_nw_connection *a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v47 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_connection_add_probe_locked";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (!__nwlog_fault(v48, &type, &v61))
    {
      goto LABEL_127;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_add_probe_locked";
        _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v61 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v54 = type;
      v55 = os_log_type_enabled(v49, type);
      if (backtrace_string)
      {
        if (v55)
        {
          *buf = 136446466;
          v64 = "nw_connection_add_probe_locked";
          v65 = 2082;
          *v66 = backtrace_string;
          _os_log_impl(&dword_181A37000, v49, v54, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_127;
      }

      if (v55)
      {
        *buf = 136446210;
        v64 = "nw_connection_add_probe_locked";
        _os_log_impl(&dword_181A37000, v49, v54, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v49 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_add_probe_locked";
        _os_log_impl(&dword_181A37000, v49, v59, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_126:

    goto LABEL_127;
  }

  if (v4)
  {
    if (v3->state == 5)
    {
      parameters = v3->parameters;
      if (parameters && !_nw_parameters_get_logging_disabled(parameters))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          top_id = v3->top_id;
          *buf = 136446466;
          v64 = "nw_connection_add_probe_locked";
          v65 = 1024;
          *v66 = top_id;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [C%u] Connection already cancelled, not adding probe", buf, 0x12u);
        }
      }

      goto LABEL_11;
    }

    v10 = v4->parameters;
    if ((nw_parameters_get_is_probe(v10) & 1) == 0)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v21 = gLogObj;
      *buf = 136446210;
      v64 = "nw_connection_add_probe_locked";
      v18 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v61 = 0;
      if (!__nwlog_fault(v18, &type, &v61))
      {
        goto LABEL_63;
      }

      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v22 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v64 = "nw_connection_add_probe_locked";
          _os_log_impl(&dword_181A37000, v19, v22, "%{public}s Cannot add probe without setting is_probe in parameters", buf, 0xCu);
        }

        goto LABEL_62;
      }

      if (v61 != 1)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v19 = gLogObj;
        v33 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v64 = "nw_connection_add_probe_locked";
          _os_log_impl(&dword_181A37000, v19, v33, "%{public}s Cannot add probe without setting is_probe in parameters, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_62;
      }

      v30 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      v31 = type;
      v32 = os_log_type_enabled(v19, type);
      if (!v30)
      {
        if (v32)
        {
          *buf = 136446210;
          v64 = "nw_connection_add_probe_locked";
          _os_log_impl(&dword_181A37000, v19, v31, "%{public}s Cannot add probe without setting is_probe in parameters, no backtrace", buf, 0xCu);
        }

        goto LABEL_62;
      }

      if (v32)
      {
        *buf = 136446466;
        v64 = "nw_connection_add_probe_locked";
        v65 = 2082;
        *v66 = v30;
        _os_log_impl(&dword_181A37000, v19, v31, "%{public}s Cannot add probe without setting is_probe in parameters, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_52;
    }

    probes = v3->probes;
    if (probes || (v12 = _nw_array_create(), v13 = v3->probes, v3->probes = v12, v13, (probes = v3->probes) != 0))
    {
      if (_nw_array_contains_object(probes, v5))
      {
        v14 = v3->parameters;
        if (v14 && !_nw_parameters_get_logging_disabled(v14))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v15 = gconnectionLogObj;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = v3->top_id;
            *buf = 136446722;
            v64 = "nw_connection_add_probe_locked";
            v65 = 1024;
            *v66 = v16;
            *&v66[4] = 2112;
            *&v66[6] = v5;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Cannot add probe %@ because probe list already contains this probe", buf, 0x1Cu);
          }
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v17 = gLogObj;
        *buf = 136446210;
        v64 = "nw_connection_add_probe_locked";
        v18 = _os_log_send_and_compose_impl();

        type = OS_LOG_TYPE_ERROR;
        v61 = 0;
        if (!__nwlog_fault(v18, &type, &v61))
        {
LABEL_63:
          if (!v18)
          {
LABEL_65:
            v9 = 0;
LABEL_92:

            goto LABEL_93;
          }

LABEL_64:
          free(v18);
          goto LABEL_65;
        }

        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v20 = type;
          if (os_log_type_enabled(v19, type))
          {
            *buf = 136446210;
            v64 = "nw_connection_add_probe_locked";
            _os_log_impl(&dword_181A37000, v19, v20, "%{public}s Cannot add probe to connection because the probe list already contains this probe", buf, 0xCu);
          }

LABEL_62:

          goto LABEL_63;
        }

        if (v61 != 1)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v19 = gLogObj;
          v36 = type;
          if (os_log_type_enabled(v19, type))
          {
            *buf = 136446210;
            v64 = "nw_connection_add_probe_locked";
            _os_log_impl(&dword_181A37000, v19, v36, "%{public}s Cannot add probe to connection because the probe list already contains this probe, backtrace limit exceeded", buf, 0xCu);
          }

          goto LABEL_62;
        }

        v30 = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v34 = type;
        v35 = os_log_type_enabled(v19, type);
        if (!v30)
        {
          if (v35)
          {
            *buf = 136446210;
            v64 = "nw_connection_add_probe_locked";
            _os_log_impl(&dword_181A37000, v19, v34, "%{public}s Cannot add probe to connection because the probe list already contains this probe, no backtrace", buf, 0xCu);
          }

          goto LABEL_62;
        }

        if (v35)
        {
          *buf = 136446466;
          v64 = "nw_connection_add_probe_locked";
          v65 = 2082;
          *v66 = v30;
          _os_log_impl(&dword_181A37000, v19, v34, "%{public}s Cannot add probe to connection because the probe list already contains this probe, dumping backtrace:%{public}s", buf, 0x16u);
        }

LABEL_52:

        free(v30);
        if (!v18)
        {
          goto LABEL_65;
        }

        goto LABEL_64;
      }
    }

    cancel_group = v3->cancel_group;
    if (cancel_group || (v24 = dispatch_group_create(), v25 = v3->cancel_group, v3->cancel_group = v24, v25, (cancel_group = v3->cancel_group) != 0))
    {
LABEL_80:
      dispatch_group_enter(cancel_group);
      v41 = v3->probes;
      if (v41)
      {
        _nw_array_append(v41, v5);
      }

      v42 = v3->parameters;
      if (v42 && !_nw_parameters_get_logging_disabled(v42))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v43 = gconnectionLogObj;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v44 = v3->top_id;
          count = v3->probes;
          if (count)
          {
            count = _nw_array_get_count(count);
          }

          *buf = 136446978;
          v64 = "nw_connection_add_probe_locked";
          v65 = 1024;
          *v66 = v44;
          *&v66[4] = 2112;
          *&v66[6] = v5;
          v67 = 2048;
          v68 = count;
          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Added probe %@ to probe list, now have %zu probes", buf, 0x26u);
        }
      }

      v9 = 1;
      goto LABEL_92;
    }

    v26 = __nwlog_obj();
    *buf = 136446210;
    v64 = "nw_connection_add_probe_locked";
    v27 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v61 = 0;
    if (__nwlog_fault(v27, &type, &v61))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v28 = __nwlog_obj();
        v29 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v64 = "nw_connection_add_probe_locked";
          _os_log_impl(&dword_181A37000, v28, v29, "%{public}s dispatch_group_create failed", buf, 0xCu);
        }
      }

      else if (v61 == 1)
      {
        v37 = __nw_create_backtrace_string();
        v28 = __nwlog_obj();
        v38 = type;
        v39 = os_log_type_enabled(v28, type);
        if (v37)
        {
          if (v39)
          {
            *buf = 136446466;
            v64 = "nw_connection_add_probe_locked";
            v65 = 2082;
            *v66 = v37;
            _os_log_impl(&dword_181A37000, v28, v38, "%{public}s dispatch_group_create failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v37);
          goto LABEL_77;
        }

        if (v39)
        {
          *buf = 136446210;
          v64 = "nw_connection_add_probe_locked";
          _os_log_impl(&dword_181A37000, v28, v38, "%{public}s dispatch_group_create failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v28 = __nwlog_obj();
        v40 = type;
        if (os_log_type_enabled(v28, type))
        {
          *buf = 136446210;
          v64 = "nw_connection_add_probe_locked";
          _os_log_impl(&dword_181A37000, v28, v40, "%{public}s dispatch_group_create failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_77:
    if (v27)
    {
      free(v27);
    }

    cancel_group = v3->cancel_group;
    goto LABEL_80;
  }

  v51 = __nwlog_obj();
  *buf = 136446210;
  v64 = "nw_connection_add_probe_locked";
  v48 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v61 = 0;
  if (__nwlog_fault(v48, &type, &v61))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_add_probe_locked";
        _os_log_impl(&dword_181A37000, v49, v52, "%{public}s called with null probe", buf, 0xCu);
      }
    }

    else if (v61 == 1)
    {
      v56 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v57 = type;
      v58 = os_log_type_enabled(v49, type);
      if (v56)
      {
        if (v58)
        {
          *buf = 136446466;
          v64 = "nw_connection_add_probe_locked";
          v65 = 2082;
          *v66 = v56;
          _os_log_impl(&dword_181A37000, v49, v57, "%{public}s called with null probe, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v56);
        if (!v48)
        {
          goto LABEL_11;
        }

        goto LABEL_128;
      }

      if (v58)
      {
        *buf = 136446210;
        v64 = "nw_connection_add_probe_locked";
        _os_log_impl(&dword_181A37000, v49, v57, "%{public}s called with null probe, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v49 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v64 = "nw_connection_add_probe_locked";
        _os_log_impl(&dword_181A37000, v49, v60, "%{public}s called with null probe, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_126;
  }

LABEL_127:
  if (v48)
  {
LABEL_128:
    free(v48);
  }

LABEL_11:
  v9 = 0;
LABEL_93:

  return v9;
}

void nw_connection_access_probe_connections(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_connection_access_probe_connections";
    v7 = _os_log_send_and_compose_impl();

    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &v24, &v23))
    {
      goto LABEL_38;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_access_probe_connections";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = v24;
      v14 = os_log_type_enabled(v8, v24);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v26 = "nw_connection_access_probe_connections";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v26 = "nw_connection_access_probe_connections";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_access_probe_connections";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_connection_access_probe_connections_block_invoke;
    v20[3] = &unk_1E6A3D710;
    v21 = v3;
    v22 = v5;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_access_probe_connections_block_invoke(v20);
    os_unfair_lock_unlock(v3 + 34);

    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_connection_access_probe_connections";
  v7 = _os_log_send_and_compose_impl();

  v24 = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &v24, &v23))
  {
    goto LABEL_38;
  }

  if (v24 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_access_probe_connections";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null handler", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v23 != 1)
  {
    v8 = __nwlog_obj();
    v19 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_access_probe_connections";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = v24;
  v17 = os_log_type_enabled(v8, v24);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v26 = "nw_connection_access_probe_connections";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v26 = "nw_connection_access_probe_connections";
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void __nw_connection_access_probe_connections_block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  v4 = v3;
  if (!v2)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_access_probe_connections_locked";
    v7 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v20 = 0;
    if (!__nwlog_fault(v7, &type, &v20))
    {
      goto LABEL_39;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_access_probe_connections_locked";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v20 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = type;
      v14 = os_log_type_enabled(v8, type);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_access_probe_connections_locked";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_39:
        if (!v7)
        {
          goto LABEL_5;
        }

LABEL_40:
        free(v7);
        goto LABEL_5;
      }

      if (v14)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_access_probe_connections_locked";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = type;
      if (os_log_type_enabled(v8, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_access_probe_connections_locked";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_38:

    goto LABEL_39;
  }

  if (v3)
  {
    v5 = v2[50];
    if (v5)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL45nw_connection_access_probe_connections_lockedP24NWConcrete_nw_connectionU13block_pointerFbS0_E_block_invoke;
      v23 = &unk_1E6A3CD30;
      v24 = v3;
      _nw_array_apply(v5, buf);
    }

    goto LABEL_5;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_access_probe_connections_locked";
  v7 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v20 = 0;
  if (!__nwlog_fault(v7, &type, &v20))
  {
    goto LABEL_39;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_access_probe_connections_locked";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null handler", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v20 != 1)
  {
    v8 = __nwlog_obj();
    v19 = type;
    if (os_log_type_enabled(v8, type))
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_access_probe_connections_locked";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null handler, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_38;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = type;
  v17 = os_log_type_enabled(v8, type);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      *&buf[4] = "nw_connection_access_probe_connections_locked";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null handler, no backtrace", buf, 0xCu);
    }

    goto LABEL_38;
  }

  if (v17)
  {
    *buf = 136446466;
    *&buf[4] = "nw_connection_access_probe_connections_locked";
    *&buf[12] = 2082;
    *&buf[14] = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null handler, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_40;
  }

LABEL_5:
}

void nw_connection_remove_probe(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v6 = __nwlog_obj();
    *buf = 136446210;
    v26 = "nw_connection_remove_probe";
    v7 = _os_log_send_and_compose_impl();

    v24 = OS_LOG_TYPE_ERROR;
    v23 = 0;
    if (!__nwlog_fault(v7, &v24, &v23))
    {
      goto LABEL_38;
    }

    if (v24 == OS_LOG_TYPE_FAULT)
    {
      v8 = __nwlog_obj();
      v9 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_remove_probe";
        _os_log_impl(&dword_181A37000, v8, v9, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v23 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v8 = __nwlog_obj();
      v13 = v24;
      v14 = os_log_type_enabled(v8, v24);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          v26 = "nw_connection_remove_probe";
          v27 = 2082;
          v28 = backtrace_string;
          _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v7)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v7);
        goto LABEL_4;
      }

      if (v14)
      {
        *buf = 136446210;
        v26 = "nw_connection_remove_probe";
        _os_log_impl(&dword_181A37000, v8, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v8 = __nwlog_obj();
      v18 = v24;
      if (os_log_type_enabled(v8, v24))
      {
        *buf = 136446210;
        v26 = "nw_connection_remove_probe";
        _os_log_impl(&dword_181A37000, v8, v18, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v4)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __nw_connection_remove_probe_block_invoke;
    v20[3] = &unk_1E6A3D760;
    v21 = v3;
    v22 = v5;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_remove_probe_block_invoke(v20);
    os_unfair_lock_unlock(v3 + 34);

    goto LABEL_4;
  }

  v10 = __nwlog_obj();
  *buf = 136446210;
  v26 = "nw_connection_remove_probe";
  v7 = _os_log_send_and_compose_impl();

  v24 = OS_LOG_TYPE_ERROR;
  v23 = 0;
  if (!__nwlog_fault(v7, &v24, &v23))
  {
    goto LABEL_38;
  }

  if (v24 == OS_LOG_TYPE_FAULT)
  {
    v8 = __nwlog_obj();
    v11 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_remove_probe";
      _os_log_impl(&dword_181A37000, v8, v11, "%{public}s called with null probe", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v23 != 1)
  {
    v8 = __nwlog_obj();
    v19 = v24;
    if (os_log_type_enabled(v8, v24))
    {
      *buf = 136446210;
      v26 = "nw_connection_remove_probe";
      _os_log_impl(&dword_181A37000, v8, v19, "%{public}s called with null probe, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v15 = __nw_create_backtrace_string();
  v8 = __nwlog_obj();
  v16 = v24;
  v17 = os_log_type_enabled(v8, v24);
  if (!v15)
  {
    if (v17)
    {
      *buf = 136446210;
      v26 = "nw_connection_remove_probe";
      _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null probe, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v17)
  {
    *buf = 136446466;
    v26 = "nw_connection_remove_probe";
    v27 = 2082;
    v28 = v15;
    _os_log_impl(&dword_181A37000, v8, v16, "%{public}s called with null probe, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v15);
  if (v7)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void nw_connection_remove_probe_locked(NWConcrete_nw_connection *a1, NWConcrete_nw_connection *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_connection_remove_probe_locked";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v28, &type, &v41))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v44 = "nw_connection_remove_probe_locked";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v29, type);
      if (backtrace_string)
      {
        if (v35)
        {
          *buf = 136446466;
          v44 = "nw_connection_remove_probe_locked";
          v45 = 2082;
          *v46 = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_83:
        if (!v28)
        {
          goto LABEL_49;
        }

        goto LABEL_84;
      }

      if (v35)
      {
        *buf = 136446210;
        v44 = "nw_connection_remove_probe_locked";
        _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v44 = "nw_connection_remove_probe_locked";
        _os_log_impl(&dword_181A37000, v29, v39, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_82:

    goto LABEL_83;
  }

  if (!v4)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_connection_remove_probe_locked";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v28, &type, &v41))
    {
      goto LABEL_83;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v44 = "nw_connection_remove_probe_locked";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null probe", buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v37 = type;
      v38 = os_log_type_enabled(v29, type);
      if (v36)
      {
        if (v38)
        {
          *buf = 136446466;
          v44 = "nw_connection_remove_probe_locked";
          v45 = 2082;
          *v46 = v36;
          _os_log_impl(&dword_181A37000, v29, v37, "%{public}s called with null probe, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
        if (!v28)
        {
          goto LABEL_49;
        }

LABEL_84:
        free(v28);
        goto LABEL_49;
      }

      if (v38)
      {
        *buf = 136446210;
        v44 = "nw_connection_remove_probe_locked";
        _os_log_impl(&dword_181A37000, v29, v37, "%{public}s called with null probe, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v44 = "nw_connection_remove_probe_locked";
        _os_log_impl(&dword_181A37000, v29, v40, "%{public}s called with null probe, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_82;
  }

  probes = v3->probes;
  if (probes)
  {
    if (_nw_array_contains_object(probes, v5))
    {
      v7 = v3->probes;
      v8 = v5;
      if (v7)
      {
        v9 = _nw_array_duplicate_array_without_object(v7, v8);
      }

      else
      {
        v9 = _nw_array_create();
      }

      v13 = v9;

      objc_storeStrong(&v3->probes, v13);
      parameters = v3->parameters;
      if (parameters && !_nw_parameters_get_logging_disabled(parameters))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v15 = gconnectionLogObj;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          top_id = v3->top_id;
          count = v3->probes;
          if (count)
          {
            count = _nw_array_get_count(count);
          }

          *buf = 136446978;
          v44 = "nw_connection_remove_probe_locked";
          v45 = 1024;
          *v46 = top_id;
          *&v46[4] = 2112;
          *&v46[6] = v8;
          v47 = 2048;
          v48 = count;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Removed probe %@ from probe list, now have %zu probes", buf, 0x26u);
        }
      }

      cancel_group = v3->cancel_group;
      if (cancel_group)
      {
        dispatch_group_leave(cancel_group);
LABEL_48:

        goto LABEL_49;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v19 = gLogObj;
      *buf = 136446210;
      v44 = "nw_connection_remove_probe_locked";
      v20 = _os_log_send_and_compose_impl();

      type = OS_LOG_TYPE_ERROR;
      v41 = 0;
      if (__nwlog_fault(v20, &type, &v41))
      {
        if (type == OS_LOG_TYPE_FAULT)
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v22 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v44 = "nw_connection_remove_probe_locked";
            _os_log_impl(&dword_181A37000, v21, v22, "%{public}s Cannot remove probe from cancel group because cancel group does not exist", buf, 0xCu);
          }
        }

        else if (v41 == 1)
        {
          v23 = __nw_create_backtrace_string();
          v21 = __nwlog_obj();
          v24 = type;
          v25 = os_log_type_enabled(v21, type);
          if (v23)
          {
            if (v25)
            {
              *buf = 136446466;
              v44 = "nw_connection_remove_probe_locked";
              v45 = 2082;
              *v46 = v23;
              _os_log_impl(&dword_181A37000, v21, v24, "%{public}s Cannot remove probe from cancel group because cancel group does not exist, dumping backtrace:%{public}s", buf, 0x16u);
            }

            free(v23);
            if (!v20)
            {
              goto LABEL_48;
            }

            goto LABEL_47;
          }

          if (v25)
          {
            *buf = 136446210;
            v44 = "nw_connection_remove_probe_locked";
            _os_log_impl(&dword_181A37000, v21, v24, "%{public}s Cannot remove probe from cancel group because cancel group does not exist, no backtrace", buf, 0xCu);
          }
        }

        else
        {
          pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
          networkd_settings_init();
          v21 = gLogObj;
          v26 = type;
          if (os_log_type_enabled(v21, type))
          {
            *buf = 136446210;
            v44 = "nw_connection_remove_probe_locked";
            _os_log_impl(&dword_181A37000, v21, v26, "%{public}s Cannot remove probe from cancel group because cancel group does not exist, backtrace limit exceeded", buf, 0xCu);
          }
        }
      }

      if (!v20)
      {
        goto LABEL_48;
      }

LABEL_47:
      free(v20);
      goto LABEL_48;
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136446466;
      v44 = "nw_connection_remove_probe_locked";
      v45 = 2112;
      *v46 = v5;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s Not removing probe %@ because probe list does not contain this probe", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v10 = v3->parameters;
  if (v10 && !_nw_parameters_get_logging_disabled(v10))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v11 = gconnectionLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v3->top_id;
      *buf = 136446722;
      v44 = "nw_connection_remove_probe_locked";
      v45 = 1024;
      *v46 = v12;
      *&v46[4] = 2112;
      *&v46[6] = v5;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_INFO, "%{public}s [C%u] Not removing probe %@ because probes array does not exist", buf, 0x1Cu);
    }

LABEL_13:
  }

LABEL_49:
}

void nw_connection_reset_client(void *a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v31 = __Block_byref_object_copy__24471;
    v32 = __Block_byref_object_dispose__24472;
    v33 = 0;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __nw_connection_reset_client_block_invoke;
    v21[3] = &unk_1E6A3D738;
    v23 = buf;
    v3 = v1;
    v22 = v3;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_reset_client_block_invoke(v21);
    os_unfair_lock_unlock(v2 + 34);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __nw_connection_reset_client_block_invoke_2;
    v18[3] = &unk_1E6A3D738;
    v4 = v3;
    v19 = v4;
    v20 = buf;
    nw_connection_async_if_needed(v4, v18);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __nw_connection_reset_client_block_invoke_3;
    v16[3] = &unk_1E6A3D868;
    v5 = v4;
    v17 = v5;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_reset_client_block_invoke_3(v16);
    os_unfair_lock_unlock(v2 + 34);
    v6 = v5;
    *type = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __nw_connection_allow_reset_queue_block_invoke;
    v28 = &unk_1E6A3D868;
    v7 = v6;
    v29 = v7;
    os_unfair_lock_lock(v2 + 34);
    v27(type);
    os_unfair_lock_unlock(v2 + 34);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v8 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_reset_client";
  v9 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v24 = 0;
  if (__nwlog_fault(v9, type, &v24))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_reset_client";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v24 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v13 = type[0];
      v14 = os_log_type_enabled(v10, type[0]);
      if (backtrace_string)
      {
        if (v14)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_reset_client";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v14)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_reset_client";
        _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v15 = type[0];
      if (os_log_type_enabled(v10, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_reset_client";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v9)
  {
    free(v9);
  }

LABEL_3:
}

void sub_1824CBAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  _Block_object_dispose((v30 - 144), 8);

  _Unwind_Resume(a1);
}

void __nw_connection_reset_client_block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 168);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
  nw_read_request_report_error_with_override(v2, v3, v4);

  v5 = *(a1 + 32);
  v6 = *(v5 + 168);
  *(v5 + 168) = 0;

  v7 = *(*(a1 + 32) + 160);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [[NWConcrete_nw_error alloc] initWithDomain:89 code:?];
  nw_write_request_report_error_with_override(v7, v8, v9);

  v10 = *(a1 + 32);
  v11 = *(v10 + 160);
  *(v10 + 160) = 0;

  v12 = *(*(a1 + 32) + 144);
  if (v12)
  {
    v13 = *(*(*(a1 + 40) + 8) + 40);

    nw_endpoint_handler_cancel_read_write_requests(v12, v13);
  }
}

void __nw_connection_reset_client_block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 200);
  *(v2 + 200) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 208);
  *(v4 + 208) = 0;
}

uint64_t nw_connection_is_cancelled(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_is_cancelled_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v15 = buf;
    v14 = v1;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_is_cancelled_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_is_cancelled";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_is_cancelled";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_is_cancelled";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_is_cancelled";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_is_cancelled";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3 & 1;
}

uint64_t __nw_connection_is_cancelled_or_failed_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = (*(v1 + 109) & 8) != 0 || (*(v1 + 80) & 0xFFFFFFFE) == 4;
  *(*(*(result + 40) + 8) + 24) = v2;
  return result;
}

uint64_t nw_connection_should_run_probe(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v19 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __nw_connection_should_run_probe_block_invoke;
    v13[3] = &unk_1E6A3D738;
    v15 = buf;
    v14 = v1;
    os_unfair_lock_lock(v2 + 34);
    __nw_connection_should_run_probe_block_invoke(v13);
    os_unfair_lock_unlock(v2 + 34);
    v3 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  *&buf[4] = "nw_connection_should_run_probe";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v6, &type, &v16))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_should_run_probe";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v16 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_should_run_probe";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_should_run_probe";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_should_run_probe";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3 & 1;
}

BOOL __nw_connection_should_run_probe_block_invoke(uint64_t a1)
{
  result = nw_connection_should_run_probe_locked(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t nw_connection_check_experimental_probe_options(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if (v3)
  {
    if (v4)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __nw_connection_check_experimental_probe_options_block_invoke;
      v21[3] = &unk_1E6A3BE58;
      v24 = &v27;
      v22 = v3;
      v23 = v5;
      os_unfair_lock_lock(v3 + 34);
      __nw_connection_check_experimental_probe_options_block_invoke(v21);
      os_unfair_lock_unlock(v3 + 34);
      v6 = *(v28 + 24);

      goto LABEL_4;
    }

    v12 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_connection_check_experimental_probe_options";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v32 = "nw_connection_check_experimental_probe_options";
          _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null config", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v32 = "nw_connection_check_experimental_probe_options";
          _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v32 = "nw_connection_check_experimental_probe_options";
          _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v32 = "nw_connection_check_experimental_probe_options";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v17, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v32 = "nw_connection_check_experimental_probe_options";
    v9 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (__nwlog_fault(v9, &type, &v25))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v10 = __nwlog_obj();
        v11 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v32 = "nw_connection_check_experimental_probe_options";
          _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v25 != 1)
      {
        v10 = __nwlog_obj();
        v19 = type;
        if (os_log_type_enabled(v10, type))
        {
          *buf = 136446210;
          v32 = "nw_connection_check_experimental_probe_options";
          _os_log_impl(&dword_181A37000, v10, v19, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = type;
      v16 = os_log_type_enabled(v10, type);
      if (!backtrace_string)
      {
        if (v16)
        {
          *buf = 136446210;
          v32 = "nw_connection_check_experimental_probe_options";
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v16)
      {
        *buf = 136446466;
        v32 = "nw_connection_check_experimental_probe_options";
        v33 = 2082;
        v34 = backtrace_string;
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v9)
  {
    free(v9);
  }

  v6 = 0;
LABEL_4:
  _Block_object_dispose(&v27, 8);

  return v6 & 1;
}

uint64_t __nw_connection_check_experimental_probe_options_block_invoke(uint64_t a1)
{
  result = nw_connection_check_experimental_probe_options_locked(*(a1 + 32), *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t nw_connection_check_experimental_probe_options_locked(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_connection_check_experimental_probe_options_locked";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v28, &type, &v41))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v44 = "nw_connection_check_experimental_probe_options_locked";
        _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v34 = type;
      v35 = os_log_type_enabled(v29, type);
      if (backtrace_string)
      {
        if (v35)
        {
          *buf = 136446466;
          v44 = "nw_connection_check_experimental_probe_options_locked";
          v45 = 2082;
          v46 = backtrace_string;
          _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v28)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }

      if (v35)
      {
        *buf = 136446210;
        v44 = "nw_connection_check_experimental_probe_options_locked";
        _os_log_impl(&dword_181A37000, v29, v34, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v39 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v44 = "nw_connection_check_experimental_probe_options_locked";
        _os_log_impl(&dword_181A37000, v29, v39, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_72;
  }

  if (!v4)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v44 = "nw_connection_check_experimental_probe_options_locked";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    if (!__nwlog_fault(v28, &type, &v41))
    {
      goto LABEL_73;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v29 = __nwlog_obj();
      v32 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v44 = "nw_connection_check_experimental_probe_options_locked";
        _os_log_impl(&dword_181A37000, v29, v32, "%{public}s called with null config", buf, 0xCu);
      }
    }

    else if (v41 == 1)
    {
      v36 = __nw_create_backtrace_string();
      v29 = __nwlog_obj();
      v37 = type;
      v38 = os_log_type_enabled(v29, type);
      if (v36)
      {
        if (v38)
        {
          *buf = 136446466;
          v44 = "nw_connection_check_experimental_probe_options_locked";
          v45 = 2082;
          v46 = v36;
          _os_log_impl(&dword_181A37000, v29, v37, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v36);
LABEL_73:
        if (!v28)
        {
LABEL_75:
          v14 = 0;
          goto LABEL_38;
        }

LABEL_74:
        free(v28);
        goto LABEL_75;
      }

      if (v38)
      {
        *buf = 136446210;
        v44 = "nw_connection_check_experimental_probe_options_locked";
        _os_log_impl(&dword_181A37000, v29, v37, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v29 = __nwlog_obj();
      v40 = type;
      if (os_log_type_enabled(v29, type))
      {
        *buf = 136446210;
        v44 = "nw_connection_check_experimental_probe_options_locked";
        _os_log_impl(&dword_181A37000, v29, v40, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_72:

    goto LABEL_73;
  }

  v6 = v3[2];
  if (v6)
  {
    v7 = nw_protocol_boringssl_copy_definition();
    identifier = nw_protocol_definition_get_identifier(v7);
    v9 = nw_protocol_boringssl_copy_definition();
    v10 = nw_parameters_copy_protocol_options_for_definition(v6, v9);

    v11 = v10;
    Class = object_getClass(v5);
    v13 = MEMORY[0x1E69E9E80];
    if (Class != MEMORY[0x1E69E9E80])
    {
      v14 = 0;
LABEL_36:

      goto LABEL_37;
    }

    v15 = xpc_dictionary_get_value(v5, "validate");
    v16 = v15;
    if (!v15 || object_getClass(v15) != v13)
    {
      v14 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v17 = xpc_dictionary_get_value(v16, identifier);
    if (v17)
    {
      v18 = sec_protocol_options_matches_config();
      v19 = v3[2];
      if (v18)
      {
        if (!v19 || _nw_parameters_get_logging_disabled(v19))
        {
          v14 = 1;
          goto LABEL_34;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(v3 + 112);
          *buf = 136446466;
          v44 = "nw_connection_check_experimental_probe_options_locked";
          v45 = 1024;
          LODWORD(v46) = v21;
          _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Probing a TLS connection with a matching config.", buf, 0x12u);
        }

        v14 = 1;
        goto LABEL_33;
      }

      if (v19 && !_nw_parameters_get_logging_disabled(v19))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_32;
        }

        v25 = *(v3 + 112);
        *buf = 136446466;
        v44 = "nw_connection_check_experimental_probe_options_locked";
        v45 = 1024;
        LODWORD(v46) = v25;
        v24 = "%{public}s [C%u] Not probing a TLS connection with a mismatched config.";
LABEL_31:
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_DEBUG, v24, buf, 0x12u);
LABEL_32:
        v14 = 0;
LABEL_33:

LABEL_34:
        goto LABEL_35;
      }
    }

    else
    {
      v22 = v3[2];
      if (v22 && !_nw_parameters_get_logging_disabled(v22))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v20 = gconnectionLogObj;
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_32;
        }

        v23 = *(v3 + 112);
        *buf = 136446466;
        v44 = "nw_connection_check_experimental_probe_options_locked";
        v45 = 1024;
        LODWORD(v46) = v23;
        v24 = "%{public}s [C%u] Missing TLS config.";
        goto LABEL_31;
      }
    }

    v14 = 0;
    goto LABEL_34;
  }

  v14 = 0;
LABEL_37:

LABEL_38:
  return v14;
}

void *nw_connection_create_experimental_probe_configuration_block_for_protocol(void *a1, void *a2, uint64_t a3, void *a4)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v9;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__11_24506;
  v49 = __Block_byref_object_dispose__12_24507;
  v50 = 0;
  if (!v7)
  {
    v13 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
    v14 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v14, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v15 = __nwlog_obj();
        v16 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
          _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v15 = __nwlog_obj();
        v26 = type;
        v27 = os_log_type_enabled(v15, type);
        if (backtrace_string)
        {
          if (v27)
          {
            *buf = 136446466;
            v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
            v53 = 2082;
            v54 = backtrace_string;
            _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_48;
        }

        if (v27)
        {
          *buf = 136446210;
          v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
          _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v15 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v15, type))
        {
          *buf = 136446210;
          v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
          _os_log_impl(&dword_181A37000, v15, v34, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_48:
    if (v14)
    {
      free(v14);
    }

    goto LABEL_62;
  }

  if (!v8)
  {
    v17 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
    v18 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v18, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v19 = __nwlog_obj();
        v20 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
          _os_log_impl(&dword_181A37000, v19, v20, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        v28 = __nw_create_backtrace_string();
        v19 = __nwlog_obj();
        v29 = type;
        v30 = os_log_type_enabled(v19, type);
        if (v28)
        {
          if (v30)
          {
            *buf = 136446466;
            v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
            v53 = 2082;
            v54 = v28;
            _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v28);
          goto LABEL_54;
        }

        if (v30)
        {
          *buf = 136446210;
          v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
          _os_log_impl(&dword_181A37000, v19, v29, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v19 = __nwlog_obj();
        v35 = type;
        if (os_log_type_enabled(v19, type))
        {
          *buf = 136446210;
          v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
          _os_log_impl(&dword_181A37000, v19, v35, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_54:
    if (v18)
    {
      free(v18);
    }

    goto LABEL_62;
  }

  if (!v9)
  {
    v21 = __nwlog_obj();
    *buf = 136446210;
    v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v43 = 0;
    if (__nwlog_fault(v22, &type, &v43))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v23 = __nwlog_obj();
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s called with null protocol_definition", buf, 0xCu);
        }
      }

      else if (v43 == 1)
      {
        v31 = __nw_create_backtrace_string();
        v23 = __nwlog_obj();
        v32 = type;
        v33 = os_log_type_enabled(v23, type);
        if (v31)
        {
          if (v33)
          {
            *buf = 136446466;
            v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
            v53 = 2082;
            v54 = v31;
            _os_log_impl(&dword_181A37000, v23, v32, "%{public}s called with null protocol_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v31);
          goto LABEL_60;
        }

        if (v33)
        {
          *buf = 136446210;
          v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
          _os_log_impl(&dword_181A37000, v23, v32, "%{public}s called with null protocol_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v23 = __nwlog_obj();
        v36 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v52 = "nw_connection_create_experimental_probe_configuration_block_for_protocol";
          _os_log_impl(&dword_181A37000, v23, v36, "%{public}s called with null protocol_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_60:
    if (v22)
    {
      free(v22);
    }

LABEL_62:
    v11 = _Block_copy(&__block_literal_global_19409);
    goto LABEL_5;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __nw_connection_create_experimental_probe_configuration_block_for_protocol_block_invoke;
  v37[3] = &unk_1E6A2EBB8;
  v41 = &v45;
  v38 = v7;
  v39 = v8;
  v42 = a3;
  v40 = v10;
  os_unfair_lock_lock(v7 + 34);
  __nw_connection_create_experimental_probe_configuration_block_for_protocol_block_invoke(v37);
  os_unfair_lock_unlock(v7 + 34);
  v11 = _Block_copy(v46[5]);

LABEL_5:
  _Block_object_dispose(&v45, 8);

  return v11;
}

void __nw_connection_create_experimental_probe_configuration_block_for_protocol_block_invoke(uint64_t a1)
{
  v2 = nw_connection_create_experimental_probe_configuration_block_for_protocol_locked(*(a1 + 32), *(a1 + 40), *(a1 + 64), *(a1 + 48));
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

id nw_connection_create_experimental_probe_configuration_block_for_protocol_locked(void *a1, void *a2, uint64_t a3, void *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = v9;
  if (!v7)
  {
    v27 = __nwlog_obj();
    *buf = 136446210;
    v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
    v28 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v28, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v29 = __nwlog_obj();
        v30 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v29, v30, "%{public}s called with null connection", buf, 0xCu);
        }
      }

      else if (v64 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v29 = __nwlog_obj();
        v44 = type;
        v45 = os_log_type_enabled(v29, type);
        if (backtrace_string)
        {
          if (v45)
          {
            *buf = 136446466;
            v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
            v68 = 2082;
            v69 = backtrace_string;
            _os_log_impl(&dword_181A37000, v29, v44, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_79;
        }

        if (v45)
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v29, v44, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v29 = __nwlog_obj();
        v55 = type;
        if (os_log_type_enabled(v29, type))
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v29, v55, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_79:
    if (v28)
    {
      free(v28);
    }

    goto LABEL_99;
  }

  if (!v8)
  {
    v31 = __nwlog_obj();
    *buf = 136446210;
    v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
    v32 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v32, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v33 = __nwlog_obj();
        v34 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v33, v34, "%{public}s called with null config", buf, 0xCu);
        }
      }

      else if (v64 == 1)
      {
        v46 = __nw_create_backtrace_string();
        v33 = __nwlog_obj();
        v47 = type;
        v48 = os_log_type_enabled(v33, type);
        if (v46)
        {
          if (v48)
          {
            *buf = 136446466;
            v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
            v68 = 2082;
            v69 = v46;
            _os_log_impl(&dword_181A37000, v33, v47, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v46);
          goto LABEL_85;
        }

        if (v48)
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v33, v47, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v33 = __nwlog_obj();
        v56 = type;
        if (os_log_type_enabled(v33, type))
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v33, v56, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_85:
    if (v32)
    {
      free(v32);
    }

    goto LABEL_99;
  }

  if (!a3)
  {
    v35 = __nwlog_obj();
    *buf = 136446210;
    v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
    v36 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v36, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v37 = __nwlog_obj();
        v38 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v37, v38, "%{public}s called with null experiment_identifier", buf, 0xCu);
        }
      }

      else if (v64 == 1)
      {
        v49 = __nw_create_backtrace_string();
        v37 = __nwlog_obj();
        v50 = type;
        v51 = os_log_type_enabled(v37, type);
        if (v49)
        {
          if (v51)
          {
            *buf = 136446466;
            v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
            v68 = 2082;
            v69 = v49;
            _os_log_impl(&dword_181A37000, v37, v50, "%{public}s called with null experiment_identifier, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v49);
          goto LABEL_91;
        }

        if (v51)
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v37, v50, "%{public}s called with null experiment_identifier, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v37 = __nwlog_obj();
        v57 = type;
        if (os_log_type_enabled(v37, type))
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v37, v57, "%{public}s called with null experiment_identifier, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_91:
    if (v36)
    {
      free(v36);
    }

    goto LABEL_99;
  }

  if (!v9)
  {
    v39 = __nwlog_obj();
    *buf = 136446210;
    v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
    v40 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v64 = 0;
    if (__nwlog_fault(v40, &type, &v64))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v41 = __nwlog_obj();
        v42 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v41, v42, "%{public}s called with null protocol_definition", buf, 0xCu);
        }
      }

      else if (v64 == 1)
      {
        v52 = __nw_create_backtrace_string();
        v41 = __nwlog_obj();
        v53 = type;
        v54 = os_log_type_enabled(v41, type);
        if (v52)
        {
          if (v54)
          {
            *buf = 136446466;
            v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
            v68 = 2082;
            v69 = v52;
            _os_log_impl(&dword_181A37000, v41, v53, "%{public}s called with null protocol_definition, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v52);
          goto LABEL_97;
        }

        if (v54)
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v41, v53, "%{public}s called with null protocol_definition, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v41 = __nwlog_obj();
        v58 = type;
        if (os_log_type_enabled(v41, type))
        {
          *buf = 136446210;
          v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
          _os_log_impl(&dword_181A37000, v41, v58, "%{public}s called with null protocol_definition, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_97:
    if (v40)
    {
      free(v40);
    }

LABEL_99:
    v14 = _Block_copy(&__block_literal_global_19409);
LABEL_9:
    v15 = v14;
    goto LABEL_20;
  }

  Class = object_getClass(v8);
  v12 = MEMORY[0x1E69E9E80];
  if (Class != MEMORY[0x1E69E9E80])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446210;
      v67 = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked";
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s Malformed experimental configuration blob", buf, 0xCu);
    }

    v14 = _Block_copy(&__block_literal_global_19409);
    goto LABEL_9;
  }

  v16 = nw_protocol_boringssl_copy_definition();
  identifier = nw_protocol_definition_get_identifier(v16);
  v18 = v10;

  v19 = nw_endpoint_handler_copy_protocol_metadata(v7[18], v16, 0, 0);
  if (!strncmp(identifier, v18 + 8, 0x20uLL))
  {
    v20 = xpc_dictionary_get_value(v8, "transform");
    v21 = v20;
    if (v20 && object_getClass(v20) == v12)
    {
      v22 = _Block_copy(&__block_literal_global_19409);
      v23 = xpc_dictionary_get_value(v21, v18 + 8);
      v24 = v23;
      if (v23 && object_getClass(v23) == v12)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___ZL79nw_connection_create_experimental_probe_configuration_block_for_protocol_lockedP24NWConcrete_nw_connectionPU24objcproto13OS_xpc_object8NSObjectPKcPU36objcproto25OS_nw_protocol_definitionS1__block_invoke;
        aBlock[3] = &unk_1E6A2EE50;
        v61 = v24;
        v63 = a3;
        v62 = v19;
        v59 = v24;
        v26 = _Block_copy(aBlock);

        v15 = _Block_copy(v26);
        goto LABEL_18;
      }
    }

    v15 = _Block_copy(&__block_literal_global_19409);
LABEL_18:

    goto LABEL_19;
  }

  v15 = _Block_copy(&__block_literal_global_19409);
LABEL_19:

LABEL_20:

  return v15;
}

void ___ZL79nw_connection_create_experimental_probe_configuration_block_for_protocol_lockedP24NWConcrete_nw_connectionPU24objcproto13OS_xpc_object8NSObjectPKcPU36objcproto25OS_nw_protocol_definitionS1__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (sec_protocol_options_apply_config())
  {
    goto LABEL_9;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v3 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked_block_invoke";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked_block_invoke";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s sec_protocol_options_apply_config failed", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked_block_invoke";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s sec_protocol_options_apply_config failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (v4)
        {
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      if (v9)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked_block_invoke";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s sec_protocol_options_apply_config failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v5 = gLogObj;
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_experimental_probe_configuration_block_for_protocol_locked_block_invoke";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s sec_protocol_options_apply_config failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v4)
  {
LABEL_8:
    free(v4);
  }

LABEL_9:
  sec_protocol_options_set_experiment_identifier();
  *buf = 0;
  *&buf[8] = 0;
  sec_protocol_metadata_copy_connection_id();
  sec_protocol_options_set_connection_id();
}

id nw_connection_create_experimental_probe(void *a1, void *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__24471;
  v34 = __Block_byref_object_dispose__24472;
  v35 = 0;
  if (v5)
  {
    if (v6)
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __nw_connection_create_experimental_probe_block_invoke;
      v23[3] = &unk_1E6A333D8;
      v26 = &v30;
      v24 = v5;
      v25 = v7;
      v27 = a3;
      os_unfair_lock_lock(v5 + 34);
      __nw_connection_create_experimental_probe_block_invoke(v23);
      os_unfair_lock_unlock(v5 + 34);
      v8 = v31[5];

      goto LABEL_4;
    }

    v14 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_connection_create_experimental_probe";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v11, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v15 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v37 = "nw_connection_create_experimental_probe";
          _os_log_impl(&dword_181A37000, v12, v15, "%{public}s called with null config", buf, 0xCu);
        }

LABEL_36:

        goto LABEL_37;
      }

      if (v28 != 1)
      {
        v12 = __nwlog_obj();
        v22 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v37 = "nw_connection_create_experimental_probe";
          _os_log_impl(&dword_181A37000, v12, v22, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v19 = type;
      v20 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v20)
        {
          *buf = 136446210;
          v37 = "nw_connection_create_experimental_probe";
          _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null config, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v20)
      {
        *buf = 136446466;
        v37 = "nw_connection_create_experimental_probe";
        v38 = 2082;
        v39 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v19, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
      }

      goto LABEL_24;
    }
  }

  else
  {
    v10 = __nwlog_obj();
    *buf = 136446210;
    v37 = "nw_connection_create_experimental_probe";
    v11 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v28 = 0;
    if (__nwlog_fault(v11, &type, &v28))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        v12 = __nwlog_obj();
        v13 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v37 = "nw_connection_create_experimental_probe";
          _os_log_impl(&dword_181A37000, v12, v13, "%{public}s called with null connection", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v28 != 1)
      {
        v12 = __nwlog_obj();
        v21 = type;
        if (os_log_type_enabled(v12, type))
        {
          *buf = 136446210;
          v37 = "nw_connection_create_experimental_probe";
          _os_log_impl(&dword_181A37000, v12, v21, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
        }

        goto LABEL_36;
      }

      backtrace_string = __nw_create_backtrace_string();
      v12 = __nwlog_obj();
      v17 = type;
      v18 = os_log_type_enabled(v12, type);
      if (!backtrace_string)
      {
        if (v18)
        {
          *buf = 136446210;
          v37 = "nw_connection_create_experimental_probe";
          _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, no backtrace", buf, 0xCu);
        }

        goto LABEL_36;
      }

      if (v18)
      {
        *buf = 136446466;
        v37 = "nw_connection_create_experimental_probe";
        v38 = 2082;
        v39 = backtrace_string;
        _os_log_impl(&dword_181A37000, v12, v17, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
      }

LABEL_24:

      free(backtrace_string);
    }
  }

LABEL_37:
  if (v11)
  {
    free(v11);
  }

  v8 = 0;
LABEL_4:
  _Block_object_dispose(&v30, 8);

  return v8;
}

void __nw_connection_create_experimental_probe_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = v2;
  v6 = v5;
  if (!v4)
  {
    v14 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_create_experimental_probe_locked";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v15, &type, &v32))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v17 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_create_experimental_probe_locked";
        _os_log_impl(&dword_181A37000, v16, v17, "%{public}s called with null connection", buf, 0xCu);
      }

      goto LABEL_58;
    }

    if (v32 != 1)
    {
      v16 = __nwlog_obj();
      v29 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_create_experimental_probe_locked";
        _os_log_impl(&dword_181A37000, v16, v29, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v23 = type;
    v24 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v24)
      {
        *buf = 136446210;
        v35 = "nw_connection_create_experimental_probe_locked";
        _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }

      goto LABEL_58;
    }

    if (v24)
    {
      *buf = 136446466;
      v35 = "nw_connection_create_experimental_probe_locked";
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v23, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_40;
  }

  if (!v5)
  {
    v18 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_create_experimental_probe_locked";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v15, &type, &v32))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v19 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_create_experimental_probe_locked";
        _os_log_impl(&dword_181A37000, v16, v19, "%{public}s called with null config", buf, 0xCu);
      }

      goto LABEL_58;
    }

    if (v32 != 1)
    {
      v16 = __nwlog_obj();
      v30 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_create_experimental_probe_locked";
        _os_log_impl(&dword_181A37000, v16, v30, "%{public}s called with null config, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v25 = type;
    v26 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v26)
      {
        *buf = 136446210;
        v35 = "nw_connection_create_experimental_probe_locked";
        _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null config, no backtrace", buf, 0xCu);
      }

      goto LABEL_58;
    }

    if (v26)
    {
      *buf = 136446466;
      v35 = "nw_connection_create_experimental_probe_locked";
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v25, "%{public}s called with null config, dumping backtrace:%{public}s", buf, 0x16u);
    }

    goto LABEL_40;
  }

  if (!v3)
  {
    v20 = __nwlog_obj();
    *buf = 136446210;
    v35 = "nw_connection_create_experimental_probe_locked";
    v15 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v32 = 0;
    if (!__nwlog_fault(v15, &type, &v32))
    {
      goto LABEL_59;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v16 = __nwlog_obj();
      v21 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_create_experimental_probe_locked";
        _os_log_impl(&dword_181A37000, v16, v21, "%{public}s called with null experiment_identifier", buf, 0xCu);
      }

LABEL_58:

LABEL_59:
      if (v15)
      {
        free(v15);
      }

      goto LABEL_9;
    }

    if (v32 != 1)
    {
      v16 = __nwlog_obj();
      v31 = type;
      if (os_log_type_enabled(v16, type))
      {
        *buf = 136446210;
        v35 = "nw_connection_create_experimental_probe_locked";
        _os_log_impl(&dword_181A37000, v16, v31, "%{public}s called with null experiment_identifier, backtrace limit exceeded", buf, 0xCu);
      }

      goto LABEL_58;
    }

    backtrace_string = __nw_create_backtrace_string();
    v16 = __nwlog_obj();
    v27 = type;
    v28 = os_log_type_enabled(v16, type);
    if (!backtrace_string)
    {
      if (v28)
      {
        *buf = 136446210;
        v35 = "nw_connection_create_experimental_probe_locked";
        _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null experiment_identifier, no backtrace", buf, 0xCu);
      }

      goto LABEL_58;
    }

    if (v28)
    {
      *buf = 136446466;
      v35 = "nw_connection_create_experimental_probe_locked";
      v36 = 2082;
      v37 = backtrace_string;
      _os_log_impl(&dword_181A37000, v16, v27, "%{public}s called with null experiment_identifier, dumping backtrace:%{public}s", buf, 0x16u);
    }

LABEL_40:

    free(backtrace_string);
    goto LABEL_59;
  }

  if (!nw_connection_should_run_probe_locked(v4) || !nw_connection_check_experimental_probe_options_locked(v4, v6))
  {
    goto LABEL_9;
  }

  v7 = nw_protocol_boringssl_copy_definition();
  v8 = nw_connection_create_experimental_probe_configuration_block_for_protocol_locked(v4, v6, v3, v7);
  v9 = v8;
  if (v8 == &__block_literal_global_19409)
  {

LABEL_9:
    probe_locked = 0;
    goto LABEL_10;
  }

  secure_tcp = nw_parameters_create_secure_tcp(v8, &__block_literal_global_2);
  probe_locked = nw_connection_create_probe_locked(v4, secure_tcp);

LABEL_10:
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = probe_locked;
}

NSObject *nw_connection_create_probe_locked(void *a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!v4)
  {
    v9 = __nwlog_obj();
    *buf = 136446210;
    v24 = "nw_connection_create_probe_locked";
    v10 = _os_log_send_and_compose_impl();

    v22 = OS_LOG_TYPE_ERROR;
    v21 = 0;
    if (__nwlog_fault(v10, &v22, &v21))
    {
      if (v22 == OS_LOG_TYPE_FAULT)
      {
        v11 = __nwlog_obj();
        v12 = v22;
        if (os_log_type_enabled(v11, v22))
        {
          *buf = 136446210;
          v24 = "nw_connection_create_probe_locked";
          _os_log_impl(&dword_181A37000, v11, v12, "%{public}s called with null probe_parameters", buf, 0xCu);
        }
      }

      else if (v21 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v11 = __nwlog_obj();
        v14 = v22;
        v15 = os_log_type_enabled(v11, v22);
        if (backtrace_string)
        {
          if (v15)
          {
            *buf = 136446466;
            v24 = "nw_connection_create_probe_locked";
            v25 = 2082;
            v26 = backtrace_string;
            _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null probe_parameters, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_20;
        }

        if (v15)
        {
          *buf = 136446210;
          v24 = "nw_connection_create_probe_locked";
          _os_log_impl(&dword_181A37000, v11, v14, "%{public}s called with null probe_parameters, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        v11 = __nwlog_obj();
        v16 = v22;
        if (os_log_type_enabled(v11, v22))
        {
          *buf = 136446210;
          v24 = "nw_connection_create_probe_locked";
          _os_log_impl(&dword_181A37000, v11, v16, "%{public}s called with null probe_parameters, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

LABEL_20:
    if (v10)
    {
      free(v10);
    }

    goto LABEL_22;
  }

  if (!nw_connection_should_run_probe_locked(v3))
  {
LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  _nw_parameters_set_indefinite(v4, 0);
  _nw_parameters_set_is_probe(v4, 1);
  v5 = nw_connection_create_without_parameters_copy(*(v3 + 1), v4);
  v5[108] |= 0x80u;
  v3[108] |= 0x40u;
  v3[109] |= 1u;
  *(v5 + 468) = *(v3 + 452);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = ___ZL33nw_connection_create_probe_lockedP24NWConcrete_nw_connectionPU27objcproto16OS_nw_parameters8NSObject_block_invoke;
  handler[3] = &unk_1E6A3D958;
  v19 = v3;
  v6 = v5;
  v20 = v6;
  nw_connection_set_state_changed_handler(v6, handler);
  v7 = v20;
  v8 = v6;

LABEL_23:
  return v8;
}

void ___ZL33nw_connection_create_probe_lockedP24NWConcrete_nw_connectionPU27objcproto16OS_nw_parameters8NSObject_block_invoke(uint64_t a1, unsigned int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(*(a1 + 32) + 16);
  switch(a2)
  {
    case 3u:
      if (v6 && !_nw_parameters_get_logging_disabled(v6))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v13 = gconnectionLogObj;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = *(*(a1 + 32) + 448);
          v19 = 136446466;
          v20 = "nw_connection_create_probe_locked_block_invoke";
          v21 = 1024;
          v22 = v14;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Probe connection succeeded", &v19, 0x12u);
        }
      }

      v15 = *(a1 + 40);
      v9 = (a1 + 40);
      nw_connection_remove_probe(*(v9 - 1), v15);
      goto LABEL_28;
    case 5u:
      if (v6 && !_nw_parameters_get_logging_disabled(v6))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = gconnectionLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(*(a1 + 32) + 448);
          v19 = 136446466;
          v20 = "nw_connection_create_probe_locked_block_invoke";
          v21 = 1024;
          v22 = v12;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Probe connection cancelled", &v19, 0x12u);
        }
      }

      nw_connection_remove_probe(*(a1 + 32), *(a1 + 40));
      break;
    case 4u:
      if (v6 && !_nw_parameters_get_logging_disabled(v6))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v7 = gconnectionLogObj;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = *(*(a1 + 32) + 448);
          v19 = 136446466;
          v20 = "nw_connection_create_probe_locked_block_invoke";
          v21 = 1024;
          v22 = v8;
          _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Probe connection failed", &v19, 0x12u);
        }
      }

      v10 = *(a1 + 40);
      v9 = (a1 + 40);
      nw_connection_remove_probe(*(v9 - 1), v10);
LABEL_28:
      nw_connection_cancel(*v9);
      break;
    default:
      if (v6 && !_nw_parameters_get_logging_disabled(v6))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v16 = gconnectionLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(*(a1 + 32) + 448);
          if (a2 > 2)
          {
            v18 = "unknown";
          }

          else
          {
            v18 = off_1E6A2EFD8[a2];
          }

          v19 = 136446722;
          v20 = "nw_connection_create_probe_locked_block_invoke";
          v21 = 1024;
          v22 = v17;
          v23 = 2080;
          v24 = v18;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Probe connection state: %s", &v19, 0x1Cu);
        }
      }

      break;
  }
}

void __nw_connection_report_error_to_proxy_agent_on_nw_queue_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  memset(uu, 0, 16);
  v6 = nw_parameters_copy_effective_proxy_config(a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = v8[170];

    if ((v9 & 1) == 0)
    {
      v10 = *(*(a1 + 32) + 16);
      if (v10 && !_nw_parameters_get_logging_disabled(v10))
      {
        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v11 = gconnectionLogObj;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(*(a1 + 32) + 448);
          v13 = *(a1 + 40);
          v22 = 136446722;
          v23 = "nw_connection_report_error_to_proxy_agent_on_nw_queue_block_invoke";
          v24 = 1024;
          v25 = v12;
          v26 = 1024;
          v27 = v13;
          _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Not reporting error %d, not privacy proxy", &v22, 0x18u);
        }

LABEL_18:

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    v14 = v8;
    *uu = *(v14 + 56);
  }

  is_null = uuid_is_null(uu);
  v16 = *(*(a1 + 32) + 16);
  if (is_null)
  {
    if (!v16 || _nw_parameters_get_logging_disabled(v16))
    {
      v8 = 0;
      goto LABEL_27;
    }

    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v11 = gconnectionLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(*(a1 + 32) + 448);
      v18 = *(a1 + 40);
      v22 = 136446722;
      v23 = "nw_connection_report_error_to_proxy_agent_on_nw_queue_block_invoke";
      v24 = 1024;
      v25 = v17;
      v26 = 1024;
      v27 = v18;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Cannot report error %d, no proxy agent", &v22, 0x18u);
    }

    v8 = 0;
    goto LABEL_18;
  }

  if (v16 && !_nw_parameters_get_logging_disabled(v16))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v19 = gconnectionLogObj;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(*(a1 + 32) + 448);
      v21 = *(a1 + 40);
      v22 = 136447234;
      v23 = "nw_connection_report_error_to_proxy_agent_on_nw_queue_block_invoke";
      v24 = 1024;
      v25 = v20;
      v26 = 1024;
      v27 = v21;
      v28 = 1042;
      v29 = 16;
      v30 = 2098;
      v31 = uu;
      _os_log_impl(&dword_181A37000, v19, OS_LOG_TYPE_INFO, "%{public}s [C%u] Reporting error %d to proxy agent %{public, uuid_t}.16P", &v22, 0x28u);
    }
  }

  v8 = 0;
  nw_path_report_error_to_agent(v5, uu, *(a1 + 40));
LABEL_27:
}

uint64_t __nw_connection_report_error_to_proxy_agent_on_nw_queue_block_invoke_29(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (nw_endpoint_handler_get_state(v3) >= 1 && nw_endpoint_handler_get_state(v3) <= 4)
  {
    if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v3) & 1) == 0)
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v15 = gconnectionLogObj;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        id_string = nw_endpoint_handler_get_id_string(v3);
        v17 = nw_endpoint_handler_dry_run_string(v3);
        v23 = nw_endpoint_handler_copy_endpoint(v3);
        logging_description = nw_endpoint_get_logging_description(v23);
        v19 = nw_endpoint_handler_state_string(v3);
        v20 = nw_endpoint_handler_mode_string(v3);
        v21 = nw_endpoint_handler_copy_current_path(v3);
        v22 = *(a1 + 40);
        *buf = 136448002;
        v25 = "nw_connection_report_error_to_proxy_agent_on_nw_queue_block_invoke";
        v26 = 2082;
        v27 = id_string;
        v28 = 2082;
        v29 = v17;
        v30 = 2082;
        v31 = logging_description;
        v32 = 2082;
        v33 = v19;
        v34 = 2082;
        v35 = v20;
        v36 = 2114;
        v37 = v21;
        v38 = 1024;
        v39 = v22;
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] reporting proxy error %d", buf, 0x4Eu);
      }
    }

    v4 = nw_endpoint_handler_copy_parameters(v3);
    v5 = nw_endpoint_handler_copy_current_path(v3);
    v6 = v5;
    if (v4 && v5)
    {
      (*(*(a1 + 32) + 16))();
    }

LABEL_8:
    goto LABEL_10;
  }

  if (gLogDatapath == 1 && (nw_endpoint_handler_get_logging_disabled(v3) & 1) == 0)
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v4 = gconnectionLogObj;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = nw_endpoint_handler_get_id_string(v3);
      v9 = nw_endpoint_handler_dry_run_string(v3);
      v10 = nw_endpoint_handler_copy_endpoint(v3);
      v11 = nw_endpoint_get_logging_description(v10);
      v12 = nw_endpoint_handler_state_string(v3);
      v13 = nw_endpoint_handler_mode_string(v3);
      v14 = nw_endpoint_handler_copy_current_path(v3);
      *buf = 136447746;
      v25 = "nw_connection_report_error_to_proxy_agent_on_nw_queue_block_invoke";
      v26 = 2082;
      v27 = v8;
      v28 = 2082;
      v29 = v9;
      v30 = 2082;
      v31 = v11;
      v32 = 2082;
      v33 = v12;
      v34 = 2082;
      v35 = v13;
      v36 = 2114;
      v37 = v14;
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEBUG, "%{public}s [C%{public}s %{public}s%{public}s %{public}s %{public}s (%{public}@)] skipping endpoint handler that is not in correct state for reporting proxy errors", buf, 0x48u);
    }

    goto LABEL_8;
  }

LABEL_10:

  return 1;
}

BOOL ___ZL51nw_connection_run_sec_experiment_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  experimental_probe = nw_connection_create_experimental_probe(*(a1 + 32), v5, a2);
  v7 = *(*(a1 + 32) + 16);
  if (experimental_probe)
  {
    if (v7 && !_nw_parameters_get_logging_disabled(v7))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v8 = gconnectionLogObj;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(*(a1 + 32) + 448);
        *buf = 136446722;
        v18 = "nw_connection_run_sec_experiment_locked_on_nw_queue_block_invoke";
        v19 = 1024;
        v20 = v9;
        v21 = 2082;
        v22 = a2;
        _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Probe connection started for experiment %{public}s", buf, 0x1Cu);
      }
    }

    v10 = nw_queue_copy_current_workloop();
    nw_connection_set_queue(experimental_probe, v10);

    nw_connection_add_probe(*(a1 + 32), experimental_probe);
    v11 = *(*(a1 + 32) + 24);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZL51nw_connection_run_sec_experiment_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_226;
    v15[3] = &unk_1E6A3D868;
    v16 = experimental_probe;
    nw_queue_context_async(v11, v15);
    v12 = v16;
LABEL_16:

    goto LABEL_17;
  }

  if (v7 && !_nw_parameters_get_logging_disabled(v7))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v12 = gconnectionLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(*(a1 + 32) + 448);
      *buf = 136446722;
      v18 = "nw_connection_run_sec_experiment_locked_on_nw_queue_block_invoke_2";
      v19 = 1024;
      v20 = v13;
      v21 = 2082;
      v22 = a2;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Probe connection skipped for experiment %{public}s: nw_connection_create_experimental_probe returned nil connection", buf, 0x1Cu);
    }

    goto LABEL_16;
  }

LABEL_17:

  return experimental_probe != 0;
}

void ___ZL51nw_connection_run_sec_experiment_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_229(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 16);
  if (v3 && !_nw_parameters_get_logging_disabled(v3))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v5 = gconnectionLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(*(a1 + 32) + 448);
      v7 = 136446722;
      v8 = "nw_connection_run_sec_experiment_locked_on_nw_queue_block_invoke";
      v9 = 1024;
      v10 = v6;
      v11 = 2082;
      v12 = a2;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Probe connection skipped for experiment %{public}s", &v7, 0x1Cu);
    }
  }
}

uint64_t ___ZL48nw_connection_run_pqtls_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(v4);
    v5 = 1;
    if (nw_endpoint_proxy_match_pattern_to_endpoint(*(*(a1 + 32) + 8), string_ptr))
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

uint64_t ___ZL48nw_connection_run_pqtls_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (object_getClass(v4) == MEMORY[0x1E69E9F10] && (string_ptr = xpc_string_get_string_ptr(v4), nw_endpoint_proxy_match_pattern_to_endpoint(*(*(a1 + 32) + 8), string_ptr)))
  {
    v6 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t ___ZL48nw_connection_run_pqtls_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_234(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = nw_protocol_transform_contains_protocol(v4, *(a1 + 32));
  if (v5)
  {
    v6 = *(*(a1 + 40) + 16);
    if (v6 && !_nw_parameters_get_logging_disabled(v6))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v7 = gconnectionLogObj;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(*(a1 + 40) + 448);
        v10 = 136446466;
        v11 = "nw_connection_run_pqtls_probe_locked_on_nw_queue_block_invoke";
        v12 = 1024;
        v13 = v8;
        _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_INFO, "%{public}s [C%u] PQ-TLS probe found TLS in transform", &v10, 0x12u);
      }
    }

    nw_protocol_transform_modify_parameters(v4, *(a1 + 48));
  }

  return v5 ^ 1u;
}

void ___ZL48nw_connection_run_pqtls_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke_235(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = *(a1 + 32);
    v5 = nw_protocol_options_copy(v3);
    nw_protocol_stack_append_application_protocol(v4, v5);
  }

  else if (nw_protocol_options_is_tls(v3))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    nw_protocol_stack_append_application_protocol(*(a1 + 32), *(a1 + 40));
  }
}

void ___ZL46nw_connection_run_ech_probe_locked_on_nw_queueP24NWConcrete_nw_connection_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v4 = *(a1 + 32);
    v5 = nw_protocol_options_copy(v3);
    nw_protocol_stack_append_application_protocol(v4, v5);
  }

  else if (nw_protocol_options_is_tls(v3))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    nw_protocol_stack_append_application_protocol(*(a1 + 32), *(a1 + 40));
  }
}

uint64_t ___ZL49nw_connection_check_for_unlisted_tracker_on_queueP24NWConcrete_nw_connectionPU25objcproto14OS_nw_endpoint8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  if (v1)
  {
    _nw_endpoint_get_known_tracker_name(v1);
  }

  ne_tracker_create_xcode_issue();
  return 0;
}

void ___ZL48nw_connection_send_viability_changed_on_nw_queueP24NWConcrete_nw_connectionb_block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 128) == 2)
  {
    v3 = *(v1 + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(a1 + 32) + 448);
        v6 = *(a1 + 48);
        *buf = 136446722;
        v13 = "nw_connection_send_viability_changed_on_nw_queue_block_invoke";
        v14 = 1024;
        v15 = v5;
        v16 = 1024;
        v17 = v6;
        _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s [C%u] delayed viability_changed_handler(%{BOOL}d)", buf, 0x18u);
      }
    }

    v7 = *(a1 + 32);
    v8 = v7[48];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZL48nw_connection_send_viability_changed_on_nw_queueP24NWConcrete_nw_connectionb_block_invoke_242;
    v9[3] = &unk_1E6A3B8C0;
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    nw_connection_async_client(v7, v8, v9);
  }
}

uint64_t ___ZL27nw_connection_cancel_probesP24NWConcrete_nw_connectionb_block_invoke_254(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZL27nw_connection_cancel_probesP24NWConcrete_nw_connectionb_block_invoke_2;
  v7[3] = &unk_1E6A3B4E0;
  v5 = v4;
  v8 = v5;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  os_unfair_lock_lock(v4 + 34);
  ___ZL27nw_connection_cancel_probesP24NWConcrete_nw_connectionb_block_invoke_2(v7);
  os_unfair_lock_unlock(v4 + 34);
  if (*(a1 + 48) == 1)
  {
    nw_connection_force_cancel(v5);
  }

  else
  {
    nw_connection_cancel(v5);
  }

  return 1;
}

uint64_t ___ZL27nw_connection_cancel_probesP24NWConcrete_nw_connectionb_block_invoke_2(uint64_t result)
{
  v1 = result;
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(result + 32);
  if (*(v2 + 80) == 5)
  {
    v3 = *(*(result + 40) + 16);
    if (v3 && !_nw_parameters_get_logging_disabled(v3))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v5 = *(v1[5] + 448);
      v6 = *(v1[4] + 448);
      v13 = 136446722;
      v14 = "nw_connection_cancel_probes_block_invoke_2";
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v6;
      v7 = "%{public}s [C%u] Probe already cancelled, removing probe [C%u]";
LABEL_8:
      _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_ERROR, v7, &v13, 0x18u);
LABEL_9:
    }
  }

  else
  {
    if (*(v2 + 216) || *(v2 + 208))
    {
      return result;
    }

    v10 = *(*(result + 40) + 16);
    if (v10 && !_nw_parameters_get_logging_disabled(v10))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v4 = gconnectionLogObj;
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }

      v11 = *(v1[5] + 448);
      v12 = *(v1[4] + 448);
      v13 = 136446722;
      v14 = "nw_connection_cancel_probes_block_invoke";
      v15 = 1024;
      v16 = v11;
      v17 = 1024;
      v18 = v12;
      v7 = "%{public}s [C%u] Probe has no handlers that would communicate cancelled state, removing probe [C%u]";
      goto LABEL_8;
    }
  }

  result = v1[6];
  v8 = v1[4];
  if (result)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    return _nw_array_append(result, v8);
  }

  return result;
}

void nw_connection_force_cancel(nw_connection_t connection)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = connection;
  v2 = v1;
  if (v1)
  {
    nw_connection_cancel_inner(v1, 1);
    goto LABEL_3;
  }

  v3 = __nwlog_obj();
  *buf = 136446210;
  v14 = "nw_connection_force_cancel";
  v4 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v11 = 0;
  if (__nwlog_fault(v4, &type, &v11))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v5 = __nwlog_obj();
      v6 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_connection_force_cancel";
        _os_log_impl(&dword_181A37000, v5, v6, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v11 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v5 = __nwlog_obj();
      v8 = type;
      v9 = os_log_type_enabled(v5, type);
      if (backtrace_string)
      {
        if (v9)
        {
          *buf = 136446466;
          v14 = "nw_connection_force_cancel";
          v15 = 2082;
          v16 = backtrace_string;
          _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v9)
      {
        *buf = 136446210;
        v14 = "nw_connection_force_cancel";
        _os_log_impl(&dword_181A37000, v5, v8, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v5 = __nwlog_obj();
      v10 = type;
      if (os_log_type_enabled(v5, type))
      {
        *buf = 136446210;
        v14 = "nw_connection_force_cancel";
        _os_log_impl(&dword_181A37000, v5, v10, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v4)
  {
    free(v4);
  }

LABEL_3:
}

BOOL ___ZL24__nw_signpost_is_enabledv_block_invoke_25094()
{
  result = networkd_settings_get_BOOL(nw_setting_enable_signposts);
  _nw_signposts_enabled = result;
  return result;
}

uint64_t nw_connection_get_attempted_probe_on_queue(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    nw_context_assert_queue(*(v1 + 3));
    v3 = v2[109] & 1;
    goto LABEL_3;
  }

  v5 = __nwlog_obj();
  *buf = 136446210;
  v16 = "nw_connection_get_attempted_probe_on_queue";
  v6 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v13 = 0;
  if (__nwlog_fault(v6, &type, &v13))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v7 = __nwlog_obj();
      v8 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_connection_get_attempted_probe_on_queue";
        _os_log_impl(&dword_181A37000, v7, v8, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v13 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v7 = __nwlog_obj();
      v10 = type;
      v11 = os_log_type_enabled(v7, type);
      if (backtrace_string)
      {
        if (v11)
        {
          *buf = 136446466;
          v16 = "nw_connection_get_attempted_probe_on_queue";
          v17 = 2082;
          v18 = backtrace_string;
          _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        goto LABEL_20;
      }

      if (v11)
      {
        *buf = 136446210;
        v16 = "nw_connection_get_attempted_probe_on_queue";
        _os_log_impl(&dword_181A37000, v7, v10, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v7 = __nwlog_obj();
      v12 = type;
      if (os_log_type_enabled(v7, type))
      {
        *buf = 136446210;
        v16 = "nw_connection_get_attempted_probe_on_queue";
        _os_log_impl(&dword_181A37000, v7, v12, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

LABEL_20:
  if (v6)
  {
    free(v6);
  }

  v3 = 0;
LABEL_3:

  return v3;
}

id nw_connection_create_with_connection(void *a1, void *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v52 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_create_with_connection";
    v53 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v74[0] = 0;
    if (!__nwlog_fault(v53, type, v74))
    {
      goto LABEL_126;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v55 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connection";
        _os_log_impl(&dword_181A37000, v54, v55, "%{public}s called with null original_connection", buf, 0xCu);
      }
    }

    else if (v74[0] == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v59 = type[0];
      v60 = os_log_type_enabled(v54, type[0]);
      if (backtrace_string)
      {
        if (v60)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_create_with_connection";
          *&buf[12] = 2082;
          *&buf[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v54, v59, "%{public}s called with null original_connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v53)
        {
          goto LABEL_128;
        }

        goto LABEL_127;
      }

      if (v60)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connection";
        _os_log_impl(&dword_181A37000, v54, v59, "%{public}s called with null original_connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v54 = __nwlog_obj();
      v64 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connection";
        _os_log_impl(&dword_181A37000, v54, v64, "%{public}s called with null original_connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_125;
  }

  if (!v4)
  {
    v56 = __nwlog_obj();
    *buf = 136446210;
    *&buf[4] = "nw_connection_create_with_connection";
    v53 = _os_log_send_and_compose_impl();

    type[0] = OS_LOG_TYPE_ERROR;
    v74[0] = 0;
    if (!__nwlog_fault(v53, type, v74))
    {
      goto LABEL_126;
    }

    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      v54 = __nwlog_obj();
      v57 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connection";
        _os_log_impl(&dword_181A37000, v54, v57, "%{public}s called with null parameters", buf, 0xCu);
      }
    }

    else if (v74[0] == 1)
    {
      v61 = __nw_create_backtrace_string();
      v54 = __nwlog_obj();
      v62 = type[0];
      v63 = os_log_type_enabled(v54, type[0]);
      if (v61)
      {
        if (v63)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_create_with_connection";
          *&buf[12] = 2082;
          *&buf[14] = v61;
          _os_log_impl(&dword_181A37000, v54, v62, "%{public}s called with null parameters, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v61);
LABEL_126:
        if (!v53)
        {
LABEL_128:
          v32 = 0;
          goto LABEL_91;
        }

LABEL_127:
        free(v53);
        goto LABEL_128;
      }

      if (v63)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connection";
        _os_log_impl(&dword_181A37000, v54, v62, "%{public}s called with null parameters, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v54 = __nwlog_obj();
      v65 = type[0];
      if (os_log_type_enabled(v54, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connection";
        _os_log_impl(&dword_181A37000, v54, v65, "%{public}s called with null parameters, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_125:

    goto LABEL_126;
  }

  v6 = [NWConcrete_nw_connection alloc];
  v7 = *(v3 + 1);
  v8 = _nw_parameters_copy(v5);
  v9 = [(NWConcrete_nw_connection *)&v6->super.isa initWithEndpoint:v7 parameters:v8 identifier:0];

  if (v9)
  {
    v10 = *(v9 + 8);
    v11 = *(v9 + 16);
    nw_allow_use_of_dispatch_internal();
    if (has_modifiers == 1)
    {
      os_unfair_lock_lock(&nw_protocol_modify_lock);
      v12 = g_modifier_list;
      if (g_modifier_list)
      {
        while (1)
        {
          v13 = v12[2];
          if (v13)
          {
            if (v13(v10, v11))
            {
              break;
            }
          }

          v12 = *v12;
          if (!v12)
          {
            goto LABEL_6;
          }
        }

        os_unfair_lock_unlock(&nw_protocol_modify_lock);
        v14 = *(v9 + 16);
        if (v14 && !_nw_parameters_get_logging_disabled(v14))
        {
          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v15 = gconnectionLogObj;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = *(v9 + 448);
            *buf = 136446466;
            *&buf[4] = "nw_connection_create_with_connection";
            *&buf[12] = 1024;
            *&buf[14] = v16;
            _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s [C%u] Connection parameters were modified", buf, 0x12u);
          }
        }
      }

      else
      {
LABEL_6:
        os_unfair_lock_unlock(&nw_protocol_modify_lock);
      }
    }

    *type = 0;
    v71 = type;
    v72 = 0x2020000000;
    v73 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v81 = __Block_byref_object_copy__24471;
    v82 = __Block_byref_object_dispose__24472;
    v83 = 0;
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __nw_connection_create_with_connection_block_invoke;
    v66[3] = &unk_1E6A36148;
    v68 = type;
    v17 = v3;
    v67 = v17;
    v69 = buf;
    os_unfair_lock_lock(v3 + 34);
    __nw_connection_create_with_connection_block_invoke(v66);
    os_unfair_lock_unlock(v3 + 34);
    if (*(v71 + 24) != 1 || (v18 = *(*&buf[8] + 40)) == 0)
    {
      v33 = *(v9 + 16);
      if (!v33 || _nw_parameters_get_logging_disabled(v33))
      {
        v32 = 0;
        goto LABEL_89;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v20 = gconnectionLogObj;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v34 = *(v9 + 448);
        *v74 = 136446466;
        v75 = "nw_connection_create_with_connection";
        v76 = 1024;
        v77 = v34;
        _os_log_impl(&dword_181A37000, v20, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Original connection not yet connected", v74, 0x12u);
      }

      v32 = 0;
LABEL_88:

LABEL_89:
      _Block_object_dispose(buf, 8);

      _Block_object_dispose(type, 8);
      goto LABEL_90;
    }

    v19 = v18;
    v20 = v19[5];

    v21 = _nw_parameters_copy_context(v5);
    v22 = v21;
    if (v20)
    {
      if (v21)
      {
        if (nw_context_shares_workloop(v20, v21))
        {
          v23 = nw_endpoint_handler_create_with_existing(*(*&buf[8] + 40), *(v9 + 16), v9, *(v9 + 448), (v9 + 452));
          v24 = *(v9 + 144);
          *(v9 + 144) = v23;

          v25 = *(v9 + 16);
          if (*(v9 + 144))
          {
            v26 = _nw_parameters_copy_immutable(v25);
            v27 = *(v9 + 16);
            *(v9 + 16) = v26;

            v28 = *(v9 + 16);
            if (v28 && !_nw_parameters_get_logging_disabled(v28))
            {
              if (__nwlog_connection_log::onceToken[0] != -1)
              {
                dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
              }

              v29 = gconnectionLogObj;
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = *(v9 + 448);
                v31 = v17[112];
                *v74 = 136446722;
                v75 = "nw_connection_create_with_connection";
                v76 = 1024;
                v77 = v30;
                v78 = 1024;
                v79 = v31;
                _os_log_impl(&dword_181A37000, v29, OS_LOG_TYPE_INFO, "%{public}s [C%u] create connection from [C%u]", v74, 0x18u);
              }
            }

            v32 = v9;
            goto LABEL_87;
          }

          if (!v25 || _nw_parameters_get_logging_disabled(v25))
          {
LABEL_86:
            v32 = 0;
LABEL_87:

            goto LABEL_88;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v44 = gconnectionLogObj;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v50 = *(v9 + 448);
            *v74 = 136446466;
            v75 = "nw_connection_create_with_connection";
            v76 = 1024;
            v77 = v50;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s [C%u] nw_endpoint_handler_create_with_existing failed", v74, 0x12u);
          }
        }

        else
        {
          v48 = *(v9 + 16);
          if (!v48 || _nw_parameters_get_logging_disabled(v48))
          {
            goto LABEL_86;
          }

          if (__nwlog_connection_log::onceToken[0] != -1)
          {
            dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
          }

          v44 = gconnectionLogObj;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            v49 = *(v9 + 448);
            *v74 = 136446466;
            v75 = "nw_connection_create_with_connection";
            v76 = 1024;
            v77 = v49;
            _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s [C%u] New parameters do not share workloop with existing connection", v74, 0x12u);
          }
        }
      }

      else
      {
        v46 = *(v9 + 16);
        if (!v46 || _nw_parameters_get_logging_disabled(v46))
        {
          goto LABEL_86;
        }

        if (__nwlog_connection_log::onceToken[0] != -1)
        {
          dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
        }

        v44 = gconnectionLogObj;
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v47 = *(v9 + 448);
          *v74 = 136446466;
          v75 = "nw_connection_create_with_connection";
          v76 = 1024;
          v77 = v47;
          _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Cannot get context from new parameters", v74, 0x12u);
        }
      }
    }

    else
    {
      v43 = *(v9 + 16);
      if (!v43 || _nw_parameters_get_logging_disabled(v43))
      {
        goto LABEL_86;
      }

      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v44 = gconnectionLogObj;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = *(v9 + 448);
        *v74 = 136446466;
        v75 = "nw_connection_create_with_connection";
        v76 = 1024;
        v77 = v45;
        _os_log_impl(&dword_181A37000, v44, OS_LOG_TYPE_ERROR, "%{public}s [C%u] Cannot get context from existing connection", v74, 0x12u);
      }
    }

    goto LABEL_86;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v35 = gLogObj;
  *buf = 136446210;
  *&buf[4] = "nw_connection_create_with_connection";
  v36 = _os_log_send_and_compose_impl();

  type[0] = OS_LOG_TYPE_ERROR;
  v74[0] = 0;
  if (__nwlog_fault(v36, type, v74))
  {
    if (type[0] == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v38 = type[0];
      if (os_log_type_enabled(v37, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connection";
        _os_log_impl(&dword_181A37000, v37, v38, "%{public}s [nw_connection initWithEndpoint:parameters:] failed", buf, 0xCu);
      }
    }

    else if (v74[0] == 1)
    {
      v39 = __nw_create_backtrace_string();
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v40 = type[0];
      v41 = os_log_type_enabled(v37, type[0]);
      if (v39)
      {
        if (v41)
        {
          *buf = 136446466;
          *&buf[4] = "nw_connection_create_with_connection";
          *&buf[12] = 2082;
          *&buf[14] = v39;
          _os_log_impl(&dword_181A37000, v37, v40, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v39);
        if (!v36)
        {
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      if (v41)
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connection";
        _os_log_impl(&dword_181A37000, v37, v40, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v37 = gLogObj;
      v42 = type[0];
      if (os_log_type_enabled(v37, type[0]))
      {
        *buf = 136446210;
        *&buf[4] = "nw_connection_create_with_connection";
        _os_log_impl(&dword_181A37000, v37, v42, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }
  }

  if (v36)
  {
LABEL_77:
    free(v36);
  }

LABEL_78:
  v32 = 0;
LABEL_90:

LABEL_91:
  return v32;
}

void *nw_connection_create_with_client_id(const unsigned __int8 *a1, void *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v45 = 0;
    v47 = __nwlog_obj();
    *buf = 136446210;
    v73 = "nw_connection_create_with_client_id";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (!__nwlog_fault(v48, &type, &v70))
    {
      goto LABEL_101;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v50 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v73 = "nw_connection_create_with_client_id";
        _os_log_impl(&dword_181A37000, v49, v50, "%{public}s called with null context", buf, 0xCu);
      }
    }

    else if (v70 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v54 = type;
      v55 = os_log_type_enabled(v49, type);
      if (backtrace_string)
      {
        if (v55)
        {
          *buf = 136446466;
          v73 = "nw_connection_create_with_client_id";
          v74 = 2082;
          *v75 = backtrace_string;
          _os_log_impl(&dword_181A37000, v49, v54, "%{public}s called with null context, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
        if (!v48)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

      if (v55)
      {
        *buf = 136446210;
        v73 = "nw_connection_create_with_client_id";
        _os_log_impl(&dword_181A37000, v49, v54, "%{public}s called with null context, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v49 = __nwlog_obj();
      v59 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v73 = "nw_connection_create_with_client_id";
        _os_log_impl(&dword_181A37000, v49, v59, "%{public}s called with null context, backtrace limit exceeded", buf, 0xCu);
      }
    }

    goto LABEL_100;
  }

  v69 = v3;
  if (uuid_is_null(a1))
  {
    v45 = v3;
    v51 = __nwlog_obj();
    *buf = 136446210;
    v73 = "nw_connection_create_with_client_id";
    v48 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (!__nwlog_fault(v48, &type, &v70))
    {
      goto LABEL_101;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v49 = __nwlog_obj();
      v52 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v73 = "nw_connection_create_with_client_id";
        _os_log_impl(&dword_181A37000, v49, v52, "%{public}s called with null !uuid_is_null(client_id)", buf, 0xCu);
      }
    }

    else if (v70 == 1)
    {
      v56 = __nw_create_backtrace_string();
      v49 = __nwlog_obj();
      v57 = type;
      v58 = os_log_type_enabled(v49, type);
      if (v56)
      {
        if (v58)
        {
          *buf = 136446466;
          v73 = "nw_connection_create_with_client_id";
          v74 = 2082;
          *v75 = v56;
          _os_log_impl(&dword_181A37000, v49, v57, "%{public}s called with null !uuid_is_null(client_id), dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(v56);
LABEL_101:
        if (!v48)
        {
LABEL_103:
          v20 = 0;
          goto LABEL_67;
        }

LABEL_102:
        free(v48);
        goto LABEL_103;
      }

      if (v58)
      {
        *buf = 136446210;
        v73 = "nw_connection_create_with_client_id";
        _os_log_impl(&dword_181A37000, v49, v57, "%{public}s called with null !uuid_is_null(client_id), no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v49 = __nwlog_obj();
      v60 = type;
      if (os_log_type_enabled(v49, type))
      {
        *buf = 136446210;
        v73 = "nw_connection_create_with_client_id";
        _os_log_impl(&dword_181A37000, v49, v60, "%{public}s called with null !uuid_is_null(client_id), backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_100:

    goto LABEL_101;
  }

  evaluator_for_client_id = nw_path_create_evaluator_for_client_id(a1, v3);
  v5 = evaluator_for_client_id;
  if (!evaluator_for_client_id)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446722;
      v73 = "nw_connection_create_with_client_id";
      v74 = 1040;
      *v75 = 16;
      *&v75[4] = 2096;
      *&v75[6] = a1;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_ERROR, "%{public}s Cannot create path evaluator for client ID %{uuid_t}.16P", buf, 0x1Cu);
    }

    v20 = 0;
    goto LABEL_66;
  }

  v6 = evaluator_for_client_id;
  os_unfair_lock_lock(v5 + 24);
  v7 = v6[6];
  os_unfair_lock_unlock(v5 + 24);

  v67 = nw_path_copy_endpoint(v7);
  v68 = nw_path_copy_parameters(v7);
  v8 = [[NWConcrete_nw_connection alloc] initWithEndpoint:v67 parameters:v68 identifier:0];
  v9 = v8;
  if (!v8)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v21 = gLogObj;
    *buf = 136446210;
    v73 = "nw_connection_create_with_client_id";
    v22 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    if (__nwlog_fault(v22, &type, &v70))
    {
      if (type == OS_LOG_TYPE_FAULT)
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v24 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v73 = "nw_connection_create_with_client_id";
          _os_log_impl(&dword_181A37000, v23, v24, "%{public}s [nw_connection initWithEndpoint:parameters:] failed", buf, 0xCu);
        }
      }

      else if (v70 == 1)
      {
        v29 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v30 = type;
        v31 = os_log_type_enabled(v23, type);
        if (v29)
        {
          if (v31)
          {
            *buf = 136446466;
            v73 = "nw_connection_create_with_client_id";
            v74 = 2082;
            *v75 = v29;
            _os_log_impl(&dword_181A37000, v23, v30, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v29);
          if (!v22)
          {
            goto LABEL_64;
          }

          goto LABEL_41;
        }

        if (v31)
        {
          *buf = 136446210;
          v73 = "nw_connection_create_with_client_id";
          _os_log_impl(&dword_181A37000, v23, v30, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
        }
      }

      else
      {
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        v34 = type;
        if (os_log_type_enabled(v23, type))
        {
          *buf = 136446210;
          v73 = "nw_connection_create_with_client_id";
          _os_log_impl(&dword_181A37000, v23, v34, "%{public}s [nw_connection initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
        }
      }
    }

    if (!v22)
    {
      goto LABEL_64;
    }

LABEL_41:
    free(v22);
    goto LABEL_64;
  }

  v10 = *(v8 + 448);
  v11 = v6;
  v12 = v9;
  v13 = v11;
  os_unfair_lock_lock(v5 + 24);
  v14 = v6[6];
  os_unfair_lock_unlock(v5 + 24);

  v66 = nw_path_copy_endpoint(v14);
  v65 = nw_path_copy_parameters(v14);
  v15 = [[NWConcrete_nw_endpoint_handler alloc] initWithEndpoint:v66 parameters:v65 reportCallback:nw_connection_endpoint_report_on_nw_queue context:v12 parent:0 identifier:v10 connection_uuid:(v9 + 452)];
  v16 = v15;
  if (!v15)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v63 = v13;
    v25 = gLogObj;
    *buf = 136446210;
    v73 = "nw_endpoint_handler_create_with_path_evaluator";
    v64 = _os_log_send_and_compose_impl();

    v13 = v63;
    type = OS_LOG_TYPE_ERROR;
    v70 = 0;
    v26 = v64;
    if ((__nwlog_fault(v64, &type, &v70) & 1) == 0)
    {
      goto LABEL_46;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v28 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v73 = "nw_endpoint_handler_create_with_path_evaluator";
        _os_log_impl(&dword_181A37000, v27, v28, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed", buf, 0xCu);
      }
    }

    else
    {
      if (v70 == 1)
      {
        v62 = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v32 = gLogObj;
        v61 = type;
        v33 = os_log_type_enabled(v32, type);
        if (v62)
        {
          if (v33)
          {
            *buf = 136446466;
            v73 = "nw_endpoint_handler_create_with_path_evaluator";
            v74 = 2082;
            *v75 = v62;
            _os_log_impl(&dword_181A37000, v32, v61, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v62);
        }

        else
        {
          if (v33)
          {
            *buf = 136446210;
            v73 = "nw_endpoint_handler_create_with_path_evaluator";
            _os_log_impl(&dword_181A37000, v32, v61, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, no backtrace", buf, 0xCu);
          }
        }

        goto LABEL_45;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v27 = gLogObj;
      v35 = type;
      if (os_log_type_enabled(v27, type))
      {
        *buf = 136446210;
        v73 = "nw_endpoint_handler_create_with_path_evaluator";
        _os_log_impl(&dword_181A37000, v27, v35, "%{public}s [nw_endpoint_handler initWithEndpoint:parameters:] failed, backtrace limit exceeded", buf, 0xCu);
      }
    }

    v13 = v63;
LABEL_45:
    v26 = v64;
LABEL_46:
    if (v26)
    {
      free(v26);
    }

    goto LABEL_48;
  }

  *(v15 + 29) = 2;
  v17 = objc_alloc_init(NWConcrete_nw_endpoint_flow);
  *(v17 + 32) = *(v17 + 32) & 0xFC | 1;
  *v17->connection_uuid = *(v16 + 148);
  v18 = v16[33];
  v16[33] = v17;

  objc_storeStrong(v16 + 34, v5);
  v19 = v16;
LABEL_48:

  v36 = v12[18];
  v12[18] = v16;

  v37 = v12[2];
  if (v12[18])
  {
    v38 = _nw_parameters_copy_immutable(v37);
    v39 = v12[2];
    v12[2] = v38;

    v40 = v12[2];
    if (v40 && !_nw_parameters_get_logging_disabled(v40))
    {
      if (__nwlog_connection_log::onceToken[0] != -1)
      {
        dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
      }

      v41 = gconnectionLogObj;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        v42 = *(v9 + 448);
        *buf = 136446978;
        v73 = "nw_connection_create_with_client_id";
        v74 = 1024;
        *v75 = v42;
        *&v75[4] = 1042;
        *&v75[6] = 16;
        *&v75[10] = 2098;
        *&v75[12] = a1;
        _os_log_impl(&dword_181A37000, v41, OS_LOG_TYPE_INFO, "%{public}s [C%u] create connection from ID %{public,uuid_t}.16P", buf, 0x22u);
      }
    }

    v20 = v12;
    goto LABEL_65;
  }

  if (v37 && !_nw_parameters_get_logging_disabled(v37))
  {
    if (__nwlog_connection_log::onceToken[0] != -1)
    {
      dispatch_once(__nwlog_connection_log::onceToken, &__block_literal_global_28_47435);
    }

    v43 = gconnectionLogObj;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = *(v9 + 448);
      *buf = 136446466;
      v73 = "nw_connection_create_with_client_id";
      v74 = 1024;
      *v75 = v44;
      _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_ERROR, "%{public}s [C%u] nw_endpoint_handler_create_with_path_evaluator failed", buf, 0x12u);
    }
  }

LABEL_64:
  v20 = 0;
LABEL_65:

LABEL_66:
  v45 = v69;
LABEL_67:

  return v20;
}

void nw_connection_add_initial_inbound_data(void *a1, void *a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (!v5)
  {
    v8 = __nwlog_obj();
    *buf = 136446210;
    v29 = "nw_connection_add_initial_inbound_data";
    v9 = _os_log_send_and_compose_impl();

    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v9, &v27, &v26))
    {
      goto LABEL_38;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v10 = __nwlog_obj();
      v11 = v27;
      if (os_log_type_enabled(v10, v27))
      {
        *buf = 136446210;
        v29 = "nw_connection_add_initial_inbound_data";
        _os_log_impl(&dword_181A37000, v10, v11, "%{public}s called with null connection", buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v10 = __nwlog_obj();
      v15 = v27;
      v16 = os_log_type_enabled(v10, v27);
      if (backtrace_string)
      {
        if (v16)
        {
          *buf = 136446466;
          v29 = "nw_connection_add_initial_inbound_data";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v9)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v9);
        goto LABEL_4;
      }

      if (v16)
      {
        *buf = 136446210;
        v29 = "nw_connection_add_initial_inbound_data";
        _os_log_impl(&dword_181A37000, v10, v15, "%{public}s called with null connection, no backtrace", buf, 0xCu);
      }
    }

    else
    {
      v10 = __nwlog_obj();
      v20 = v27;
      if (os_log_type_enabled(v10, v27))
      {
        *buf = 136446210;
        v29 = "nw_connection_add_initial_inbound_data";
        _os_log_impl(&dword_181A37000, v10, v20, "%{public}s called with null connection, backtrace limit exceeded", buf, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v6)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __nw_connection_add_initial_inbound_data_block_invoke;
    v22[3] = &unk_1E6A3D7F8;
    v23 = v5;
    v24 = v7;
    v25 = a3;
    nw_connection_async_if_needed(v23, v22);

    goto LABEL_4;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v29 = "nw_connection_add_initial_inbound_data";
  v9 = _os_log_send_and_compose_impl();

  v27 = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v9, &v27, &v26))
  {
    goto LABEL_38;
  }

  if (v27 == OS_LOG_TYPE_FAULT)
  {
    v10 = __nwlog_obj();
    v13 = v27;
    if (os_log_type_enabled(v10, v27))
    {
      *buf = 136446210;
      v29 = "nw_connection_add_initial_inbound_data";
      _os_log_impl(&dword_181A37000, v10, v13, "%{public}s called with null initial_inbound_data", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v26 != 1)
  {
    v10 = __nwlog_obj();
    v21 = v27;
    if (os_log_type_enabled(v10, v27))
    {
      *buf = 136446210;
      v29 = "nw_connection_add_initial_inbound_data";
      _os_log_impl(&dword_181A37000, v10, v21, "%{public}s called with null initial_inbound_data, backtrace limit exceeded", buf, 0xCu);
    }

    goto LABEL_37;
  }

  v17 = __nw_create_backtrace_string();
  v10 = __nwlog_obj();
  v18 = v27;
  v19 = os_log_type_enabled(v10, v27);
  if (!v17)
  {
    if (v19)
    {
      *buf = 136446210;
      v29 = "nw_connection_add_initial_inbound_data";
      _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null initial_inbound_data, no backtrace", buf, 0xCu);
    }

    goto LABEL_37;
  }

  if (v19)
  {
    *buf = 136446466;
    v29 = "nw_connection_add_initial_inbound_data";
    v30 = 2082;
    v31 = v17;
    _os_log_impl(&dword_181A37000, v10, v18, "%{public}s called with null initial_inbound_data, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v17);
  if (v9)
  {
    goto LABEL_39;
  }

LABEL_4:
}