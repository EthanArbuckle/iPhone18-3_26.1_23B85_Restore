@interface NEVPNConnectivitySession
- (id)initWithConfiguration:(void *)a3 delegate:(void *)a4 queue:;
@end

@implementation NEVPNConnectivitySession

uint64_t __56__NEVPNConnectivitySession_cancelWithCompletionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic_copy(v3, a2, *(a1 + 40), 32);
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 16);
    }
  }

  return ne_session_cancel();
}

- (id)initWithConfiguration:(void *)a3 delegate:(void *)a4 queue:
{
  v47[2] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1 && (v41.receiver = a1, v41.super_class = NEVPNConnectivitySession, v11 = objc_msgSendSuper2(&v41, sel_init), (v12 = v11) != 0))
  {
    objc_storeStrong(v11 + 1, a2);
    objc_storeWeak(v12 + 3, v9);
    objc_storeStrong(v12 + 5, a4);
    v47[0] = 0;
    v47[1] = 0;
    v13 = [v8 identifier];
    [v13 getUUIDBytes:v47];

    v14 = [v8 VPN];
    LODWORD(v13) = v14 == 0;

    if (v13)
    {
      v16 = [v8 appVPN];
      v17 = v16 == 0;

      if (v17)
      {
        v18 = [v8 alwaysOnVPN];
        v19 = v18 == 0;

        if (v19)
        {
          v20 = [v8 pathController];
          v21 = v20 == 0;

          if (v21)
          {
            v22 = [v8 contentFilter];
            v23 = v22 == 0;

            if (v23)
            {
              v24 = [v8 dnsProxy];
              v25 = v24 == 0;

              if (v25)
              {
                v26 = [v8 dnsSettings];
                v27 = v26 == 0;

                if (v27)
                {
                  v28 = [v8 appPush];
                  v29 = v28 == 0;

                  if (v29)
                  {
                    v30 = [v8 relay];
                    v31 = v30 == 0;

                    if (v31)
                    {
                      [v8 urlFilter];
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v32 = ne_session_create();
    if (v32)
    {
      objc_initWeak(location, v12);
      objc_copyWeak(&v40, location);
      v39 = v12;
      ne_session_set_event_handler();
      v39[2] = v32;
      v15 = v39;

      objc_destroyWeak(&v40);
      objc_destroyWeak(location);
    }

    else
    {
      v33 = ne_log_obj();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v36 = [v8 name];
        v37 = [v8 identifier];
        v38 = ne_session_type_to_string();
        *location = 138412802;
        *&location[4] = v36;
        v43 = 2112;
        v44 = v37;
        v45 = 2080;
        v46 = v38;
        _os_log_error_impl(&dword_1BA83C000, v33, OS_LOG_TYPE_ERROR, "Failed to create a ne_session for %@ (%@), session type %s", location, 0x20u);
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];
  return v15;
}

void __65__NEVPNConnectivitySession_initWithConfiguration_delegate_queue___block_invoke(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 40));
      v4 = WeakRetained;
      if (WeakRetained && (v5 = objc_loadWeakRetained(WeakRetained + 3)) != 0)
      {
        v6 = v5;
        [v5 sessionStatusDidChange:v4];
      }

      else
      {
        v6 = ne_log_obj();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218240;
          v18 = v4;
          v19 = 2048;
          v20 = 0;
          _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "Failed to notify of a session status change because self (%p) or the delegate (%p) is nil", buf, 0x16u);
        }
      }
    }

    goto LABEL_21;
  }

  v7 = *(a1 + 32);
  if (!v7 || v7[2] && ((v8 = v7[2], ne_session_release(), (v9 = *(a1 + 32)) == 0) || (*(v9 + 16) = 0, (v7 = *(a1 + 32)) == 0)) || !objc_getProperty(v7, a2, 32, 1))
  {
LABEL_21:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v10, 32, 1);
  }

  v16 = Property;
  v13 = *(a1 + 32);
  if (v13)
  {
    objc_setProperty_atomic_copy(v13, v12, 0, 32);
  }

  v16[2]();
  v14 = *MEMORY[0x1E69E9840];
}

@end