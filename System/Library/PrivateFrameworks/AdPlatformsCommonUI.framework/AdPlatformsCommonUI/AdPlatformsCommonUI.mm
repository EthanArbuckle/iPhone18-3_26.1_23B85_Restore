uint64_t sub_23E74B1A0()
{
  qword_280CCE8D8 = objc_alloc_init(APClientInfoUI);

  return MEMORY[0x2821F96F8]();
}

void sub_23E74B318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_23E74B334(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CE3898];
  v5 = a3;
  v6 = [v4 remoteObjectInterfaceWithProtocol:&unk_285121AB0];
  v7 = [a1 _remoteObjectRegistry];
  [v7 registerExportedObject:v5 interface:v6];

  return v6;
}

void sub_23E74B3C0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [a1 _remoteObjectRegistry];
  [v6 unregisterExportedObject:a1 interface:v5];
}

id sub_23E74B428(void *a1)
{
  v2 = [MEMORY[0x277CE3898] remoteObjectInterfaceWithProtocol:&unk_285121BC8];
  v3 = [a1 _remoteObjectRegistry];
  v4 = [v3 remoteObjectProxyWithInterface:v2];

  return v4;
}

uint64_t sub_23E74B4A8(void *a1)
{
  [a1 _setInputDelegate:a1];
  [a1 _setResourceLoadDelegate:a1];
  result = [MEMORY[0x277CE4AD0] isAppleInternalInstall];
  if (result)
  {

    return MEMORY[0x2821F9670](a1, sel__setObservedRenderingProgressEvents_);
  }

  return result;
}

void sub_23E74B518(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  sub_23E74B71C(APWebViewResourceLoadCAReporter, v9, v10, a6);
  if (v10)
  {
    if ((byte_27E34F750 & 1) == 0 && [v10 code] == -1002 && (objc_msgSend(v10, "domain"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "isEqualToString:", *MEMORY[0x277CCA738]), v11, v12))
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"WebKit custom protocols were not registered. Proxy is running: %d", *MEMORY[0x277CE9768]];
      APSimulateCrash();
      byte_27E34F750 = 1;
    }

    else
    {
      v14 = APLogForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v10 domain];
        v16 = [v10 code];
        v17 = [v9 originalURL];
        v18 = [v17 host];
        *buf = 141559042;
        v21 = 1752392040;
        v22 = 2048;
        v23 = a1;
        v24 = 2114;
        v25 = v15;
        v26 = 2048;
        v27 = v16;
        v28 = 2114;
        v29 = v18;
        _os_log_impl(&dword_23E74A000, v14, OS_LOG_TYPE_ERROR, "WebView (%{mask.hash}p) request failed: %{public}@:%ld. Host: %{public}@", buf, 0x34u);
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_23E74B71C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_self();
  v10 = [v6 originalURL];
  v11 = [v10 scheme];
  if ([v11 isEqualToString:@"blob"])
  {
    v12 = [v6 originalURL];
    v13 = [v12 resourceSpecifier];
    v14 = [v13 hasPrefix:@"null"];

    if (v14)
    {
      goto LABEL_17;
    }

    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (![v7 code])
  {
    v15 = [v7 domain];
    if (![v15 length])
    {
      v16 = [v7 description];
      if ([v16 isEqualToString:@"Redirection to URL with a scheme that is not HTTP(S)"])
      {
        v17 = [v6 originalURL];
        v18 = [v9 _isHTTPOrHTTPSURL:v17];

        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }
    }
  }

LABEL_13:
  v26 = -1;
  v27 = 0;
  v25 = 0;
  [v9 _parseResourceLoadResultForError:v7 response:v8 result:&v27 errorDomain:&v25 errorCode:&v26];
  v19 = v25;
  if (v27)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_23E74B9B8;
    v24[3] = &unk_278C5A198;
    v24[4] = v27;
    [MEMORY[0x277CE4AB0] sendEventLazy:@"wk.resource.result" eventPayloadBuilder:v24];
    if (v27 != 1)
    {
      v20 = MEMORY[0x277CE4AB0];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_23E74BA6C;
      v21[3] = &unk_278C5A1C0;
      v22 = v19;
      v23 = v26;
      [v20 sendEventLazy:@"wk.resource.error" eventPayloadBuilder:v21];
    }
  }

LABEL_17:
}

id sub_23E74B9B8(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"result";
  v1 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

id sub_23E74BA6C(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", *(a1 + 40), @"domain", @"error", *(a1 + 32)];
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:2];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void sub_23E74BEAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [MEMORY[0x277D75688] sharedInputModeController];
  v2 = [v1 normalizedEnabledInputModeIdentifiers];
  [WeakRetained setUserKeyboards:v2];
}