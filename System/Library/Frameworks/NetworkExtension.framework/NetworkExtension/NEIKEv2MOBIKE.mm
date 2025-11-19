@interface NEIKEv2MOBIKE
- (id)initWithQueue:(void *)a3 tunnelProvider:;
- (void)dealloc;
- (void)initiateMOBIKE:(uint64_t)a3 pathStatus:(void *)a4 serverAddress:(char)a5 earlyDisconnect:;
- (void)mobikeDisconnect;
- (void)mobikeStartWaitTimer;
- (void)mobikeStopWaitTimer;
- (void)startMOBIKE:(uint64_t)a1;
@end

@implementation NEIKEv2MOBIKE

- (void)dealloc
{
  if (self && objc_getProperty(self, a2, 32, 1))
  {
    [(NEIKEv2MOBIKE *)self mobikeStopWaitTimer];
  }

  v4.receiver = self;
  v4.super_class = NEIKEv2MOBIKE;
  [(NEIKEv2MOBIKE *)&v4 dealloc];
}

- (void)mobikeStopWaitTimer
{
  if (a1 && objc_getProperty(a1, a2, 32, 1))
  {
    Property = objc_getProperty(a1, v3, 32, 1);
    dispatch_source_cancel(Property);

    objc_setProperty_atomic(a1, v5, 0, 32);
  }
}

- (id)initWithQueue:(void *)a3 tunnelProvider:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (!v6)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
LABEL_10:

      a1 = 0;
      goto LABEL_6;
    }

    *buf = 136315138;
    v16 = "[NEIKEv2MOBIKE initWithQueue:tunnelProvider:]";
    v13 = "%s called with null queue";
LABEL_12:
    _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, v13, buf, 0xCu);
    goto LABEL_10;
  }

  if (!v7)
  {
    v12 = ne_log_obj();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_10;
    }

    *buf = 136315138;
    v16 = "[NEIKEv2MOBIKE initWithQueue:tunnelProvider:]";
    v13 = "%s called with null tunnelProvider";
    goto LABEL_12;
  }

  v14.receiver = a1;
  v14.super_class = NEIKEv2MOBIKE;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  a1 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 5, a2);
    objc_storeWeak(a1 + 3, v8);
  }

LABEL_6:

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

- (void)mobikeStartWaitTimer
{
  if (a1 && !objc_getProperty(a1, a2, 32, 1))
  {
    v4 = a1[10];
    Property = objc_getProperty(a1, v3, 40, 1);
    if (v4)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __37__NEIKEv2MOBIKE_mobikeStartWaitTimer__block_invoke_2;
      v10[3] = &unk_1E7F0B0E8;
      v10[4] = a1;
      v6 = v10;
      v7 = 10;
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __37__NEIKEv2MOBIKE_mobikeStartWaitTimer__block_invoke;
      v11[3] = &unk_1E7F0B0E8;
      v11[4] = a1;
      v6 = v11;
      v7 = 2;
    }

    v8 = NECreateTimerSource(Property, v7, v6);
    objc_setProperty_atomic(a1, v9, v8, 32);
  }
}

uint64_t __37__NEIKEv2MOBIKE_mobikeStartWaitTimer__block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3 && (*(v3 + 10) & 1) == 0)
  {
    *(v3 + 10) = 1;
    WeakRetained = objc_loadWeakRetained((v3 + 24));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      WeakRetained[21] &= ~1u;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __31__NEIKEv2MOBIKE_mobikeReassert__block_invoke;
      v8[3] = &unk_1E7F0B4A8;
      v8[4] = v3;
      [WeakRetained setTunnelNetworkSettings:0 completionHandler:v8];
    }

    v3 = *(a1 + 32);
  }

  [(NEIKEv2MOBIKE *)v3 mobikeStopWaitTimer];
  v6 = *(a1 + 32);

  return [(NEIKEv2MOBIKE *)v6 mobikeStartWaitTimer];
}

void __37__NEIKEv2MOBIKE_mobikeStartWaitTimer__block_invoke_2(uint64_t a1, const char *a2)
{
  [(NEIKEv2MOBIKE *)*(a1 + 32) mobikeStopWaitTimer];
  v3 = *(a1 + 32);

  [(NEIKEv2MOBIKE *)v3 mobikeDisconnect];
}

- (void)mobikeDisconnect
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v2 = WeakRetained;
      [(NEIKEv2PacketTunnelProvider *)WeakRetained handleInterfaceDown];
      WeakRetained = v2;
    }
  }
}

void __31__NEIKEv2MOBIKE_mobikeReassert__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((v3 + 24));
    if (WeakRetained)
    {
      v5 = WeakRetained;
      [WeakRetained setReasserting:1];
    }
  }
}

- (void)startMOBIKE:(uint64_t)a1
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (a1)
  {
    if (v3)
    {
      *(a1 + 8) = 1;
      *(a1 + 9) = 0;
      if (*(a1 + 72) || (v6 = [objc_getProperty(a1 v4], v6 != objc_msgSend(objc_getProperty(a1, v7, 56, 1), "interfaceIndex")) || objc_getProperty(a1, v4, 16, 1))
      {
        v8 = 1;
        Property = objc_getProperty(a1, v4, 16, 1);
        v10 = @"0";
        if (Property)
        {
          v10 = Property;
        }

        v11 = v10;
        v12 = [MEMORY[0x1E6977E28] endpointWithHostname:v5 port:v11];
      }

      else
      {
        v8 = 0;
        v12 = 0;
      }

      ++*(a1 + 72);
      WeakRetained = objc_loadWeakRetained((a1 + 24));
      if (WeakRetained)
      {
        v15 = objc_getProperty(a1, v13, 48, 1);
        objc_setProperty_atomic(a1, v16, v15, 56);
        v18 = objc_getProperty(WeakRetained, v17, 240, 1);
        v20 = [objc_getProperty(a1 v19];
        v22 = objc_getProperty(a1, v21, 40, 1);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __29__NEIKEv2MOBIKE_startMOBIKE___block_invoke;
        v24[3] = &unk_1E7F08990;
        v24[4] = a1;
        [v18 sendMOBIKEWithRetries:1 retryInterval:0 interfaceName:v20 invalidateTransport:v8 resetEndpoint:v12 callbackQueue:v22 callback:v24];
      }
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v26 = "[NEIKEv2MOBIKE startMOBIKE:]";
        _os_log_fault_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_FAULT, "%s called with null serverAddress", buf, 0xCu);
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __29__NEIKEv2MOBIKE_startMOBIKE___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v9 = a4;
  v10 = *(a1 + 32);
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = *(v10 + 11);
  *(v10 + 8) = 0;
  v12 = *(a1 + 32);
  if (!v12)
  {
    goto LABEL_18;
  }

  *(v12 + 11) = 0;
  v13 = *(a1 + 32);
  if (!v13)
  {
    goto LABEL_18;
  }

  if (*(v13 + 9))
  {
    *(v13 + 72) = 0;
LABEL_6:
    v14 = *(a1 + 32);
    if (v14)
    {
      Property = objc_getProperty(v14, v8, 80, 1);
      [(NEIKEv2MOBIKE *)v14 startMOBIKE:?];
    }

    goto LABEL_18;
  }

  if (*(v13 + 64) != 1)
  {
    *(v13 + 72) = 0;
    goto LABEL_18;
  }

  if (a3)
  {
    *(v13 + 72) = 0;
    v16 = *(a1 + 32);
    if (v16)
    {
      *(v16 + 10) = 0;
    }
  }

  else
  {
    if ((v11 & 1) == 0 && *(v13 + 72) < 4uLL)
    {
      v19 = ne_log_obj();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v9;
        _os_log_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_INFO, "mobike failed with error %@", &v20, 0xCu);
      }

      goto LABEL_6;
    }

    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v20) = 0;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "mobike failed after max retries", &v20, 2u);
    }

    [(NEIKEv2MOBIKE *)*(a1 + 32) mobikeDisconnect];
  }

LABEL_18:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)initiateMOBIKE:(uint64_t)a3 pathStatus:(void *)a4 serverAddress:(char)a5 earlyDisconnect:
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a4;
  if (a1)
  {
    v10 = ne_log_obj();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 134218498;
      v21 = a3;
      v22 = 2048;
      v23 = a2;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_1BA83C000, v10, OS_LOG_TYPE_DEFAULT, "initiate mobike - path status %ld ifIndex %lu server address %@", &v20, 0x20u);
    }

    v12 = v9;
    if (a2 && (v13 = [objc_alloc(MEMORY[0x1E6977E30]) initWithInterfaceIndex:a2], a2 = v13, v12) && a3 == 1 && v13)
    {
      objc_setProperty_atomic(a1, v11, v13, 48);
      objc_setProperty_atomic(a1, v14, v12, 80);
      *(a1 + 9) = 1;
      *(a1 + 64) = 1;
      [(NEIKEv2MOBIKE *)a1 mobikeStopWaitTimer];

      if ((*(a1 + 11) & 1) == 0)
      {
        *(a1 + 11) = a5;
      }

      if (*(a1 + 8))
      {
        v16 = ne_log_obj();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          LOWORD(v20) = 0;
          _os_log_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_INFO, "mobike in progress", &v20, 2u);
        }
      }

      else
      {
        [(NEIKEv2MOBIKE *)a1 startMOBIKE:v12];
      }
    }

    else
    {
      objc_setProperty_atomic(a1, v11, 0, 48);
      objc_setProperty_atomic(a1, v17, 0, 80);
      *(a1 + 9) = 0;
      *(a1 + 64) = 2;
      [(NEIKEv2MOBIKE *)a1 mobikeStartWaitTimer];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end