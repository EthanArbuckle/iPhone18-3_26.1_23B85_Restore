@interface NEPvDFetcher
- (BOOL)isActive;
- (NEPvDFetcher)initWithDelegate:(id)a3 queue:(id)a4 url:(id)a5 identityRef:(__SecIdentity *)a6;
- (id)findProxy:(void *)a1 proxyToFind:(void *)a2;
- (id)formatExpirationDateFrom:(void *)a1;
- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6;
- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4;
- (void)dealloc;
- (void)fetchPvDConfig;
- (void)setQueue:(uint64_t)a1;
@end

@implementation NEPvDFetcher

- (void)URLSession:(id)a3 task:(id)a4 didReceiveChallenge:(id)a5 completionHandler:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = ne_log_obj();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v23 = [v12 protectionSpace];
    v24 = [v23 authenticationMethod];
    v25 = 138412290;
    v26 = v24;
    _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "PvD got challenge type %@", &v25, 0xCu);
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  v15 = [v12 protectionSpace];
  v16 = [v15 authenticationMethod];
  v17 = [v16 isEqualToString:*MEMORY[0x1E696A940]];

  if (!v17)
  {
    goto LABEL_14;
  }

  if (!self || (identityRef = self->_identityRef) == 0)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_INFO, "PvD requesting client cert but none provided", &v25, 2u);
    }

    goto LABEL_13;
  }

  v19 = [MEMORY[0x1E696AF30] credentialWithIdentity:identityRef certificates:0 persistence:1];
  if (!v19)
  {
    v21 = ne_log_obj();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v25) = 0;
      _os_log_error_impl(&dword_1BA83C000, v21, OS_LOG_TYPE_ERROR, "Unable to create client credential for PvD challenge", &v25, 2u);
    }

LABEL_13:

LABEL_14:
    v13[2](v13, 1, 0);
    goto LABEL_15;
  }

  v20 = v19;
  v13[2](v13, 0, v19);

LABEL_15:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)URLSession:(id)a3 taskIsWaitingForConnectivity:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a4;
  v5 = ne_log_obj();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 currentRequest];
    v7 = [v6 URL];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEFAULT, "PvD configuration fetch is waiting for connectivity for %@", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)isActive
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
  }

  return self != 0;
}

- (void)dealloc
{
  if (self)
  {
    session = self->_session;
    if (session)
    {
      [(NSURLSession *)session invalidateAndCancel];
      objc_storeStrong(&self->_session, 0);
    }

    fetchTimer = self->_fetchTimer;
    if (fetchTimer)
    {
      dispatch_source_cancel(fetchTimer);
      objc_storeStrong(&self->_fetchTimer, 0);
    }
  }

  [(NEPvDFetcher *)self setQueue:?];
  v5.receiver = self;
  v5.super_class = NEPvDFetcher;
  [(NEPvDFetcher *)&v5 dealloc];
}

- (void)setQueue:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 32), a2);
  }
}

- (NEPvDFetcher)initWithDelegate:(id)a3 queue:(id)a4 url:(id)a5 identityRef:(__SecIdentity *)a6
{
  location[3] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v12)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[NEPvDFetcher initWithDelegate:queue:url:identityRef:]";
      _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, "%s called with null url", location, 0xCu);
    }

    goto LABEL_8;
  }

  v14 = [v12 host];

  if (!v14)
  {
    v31 = ne_log_obj();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[NEPvDFetcher initWithDelegate:queue:url:identityRef:]";
      _os_log_fault_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_FAULT, "%s called with null url.host", location, 0xCu);
    }

LABEL_8:

LABEL_9:
    v30 = 0;
    goto LABEL_14;
  }

  v37.receiver = self;
  v37.super_class = NEPvDFetcher;
  self = [(NEPvDFetcher *)&v37 init];
  if (!self)
  {
    self = ne_log_obj();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_FAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_fault_impl(&dword_1BA83C000, &self->super, OS_LOG_TYPE_FAULT, "[super init] failed", location, 2u);
    }

    goto LABEL_9;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v15 setScheme:@"https"];
  [v15 setPath:@"/.well-known/pvd"];
  v16 = [v13 host];
  [v15 setHost:v16];

  v17 = [v13 port];
  [v15 setPort:v17];

  v18 = [v15 URL];
  objc_storeStrong(&self->_url, v18);

  if (self->_url)
  {
    v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    objc_storeStrong(&self->_queue, v19);

    [(NSOperationQueue *)self->_queue setUnderlyingQueue:v11];
    v20 = [MEMORY[0x1E696AF80] ephemeralSessionConfiguration];
    [v20 setWaitsForConnectivity:1];
    v21 = MEMORY[0x1E696AF78];
    v22 = self->_queue;
    v23 = [v21 sessionWithConfiguration:v20 delegate:self delegateQueue:v22];
    objc_storeStrong(&self->_session, v23);

    objc_storeWeak(&self->_delegate, v10);
    self->_identityRef = a6;
    v24 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v11);
    objc_storeStrong(&self->_fetchTimer, v24);

    objc_initWeak(location, self);
    fetchTimer = self->_fetchTimer;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __55__NEPvDFetcher_initWithDelegate_queue_url_identityRef___block_invoke;
    v34[3] = &unk_1E7F0A020;
    v26 = self;
    v35 = v26;
    v27 = fetchTimer;
    objc_copyWeak(&v36, location);
    dispatch_source_set_event_handler(v27, v34);

    v28 = self->_fetchTimer;
    v29 = dispatch_time(0x8000000000000000, 86400000000000);
    dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 0);

    dispatch_activate(self->_fetchTimer);
    [(NEPvDFetcher *)v26 fetchPvDConfig];
    v30 = v26;
    objc_destroyWeak(&v36);

    objc_destroyWeak(location);
  }

  else
  {
    v20 = ne_log_obj();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      LODWORD(location[0]) = 136315138;
      *(location + 4) = "[NEPvDFetcher initWithDelegate:queue:url:identityRef:]";
      _os_log_fault_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_FAULT, "%s called with null self.url", location, 0xCu);
    }

    v30 = 0;
  }

LABEL_14:
  v32 = *MEMORY[0x1E69E9840];
  return v30;
}

void __55__NEPvDFetcher_initWithDelegate_queue_url_identityRef___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEFAULT, "PvD fetch for %@ fired", &v8, 0xCu);
  }

  v4 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [(NEPvDFetcher *)WeakRetained fetchPvDConfig];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)fetchPvDConfig
{
  v21 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__20481;
  v17[4] = __Block_byref_object_dispose__20482;
  v18 = 0;
  if ((*(a1 + 8) & 1) == 0)
  {
    *(a1 + 8) = 1;
    v2 = *(a1 + 16);
    v3 = [MEMORY[0x1E696AF68] requestWithURL:*(a1 + 16) cachePolicy:1 timeoutInterval:30.0];
    objc_initWeak(&location, a1);
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v20 = v2;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "Fetching PvD configuration for url %@", buf, 0xCu);
    }

    v5 = *(a1 + 24);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __30__NEPvDFetcher_fetchPvDConfig__block_invoke;
    v12 = &unk_1E7F0A048;
    v6 = v2;
    v13 = v6;
    v14 = v17;
    objc_copyWeak(&v15, &location);
    v7 = [v5 dataTaskWithRequest:v3 completionHandler:&v9];

    [v7 resume];
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }

  _Block_object_dispose(v17, 8);

  v8 = *MEMORY[0x1E69E9840];
}

void __30__NEPvDFetcher_fetchPvDConfig__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v147 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    WeakRetained = ne_log_obj();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v10 = [v8 localizedDescription];
      v11 = *(a1 + 32);
      *buf = 138543618;
      v140 = v10;
      v141 = 2112;
      v142 = v11;
      v12 = "Fetching PvD configuration resulted in error: %{public}@ with url: %@";
      v13 = WeakRetained;
      goto LABEL_4;
    }

    goto LABEL_36;
  }

  v14 = [a3 statusCode];
  v15 = v14;
  if (!v7 || v14 != 200)
  {
    WeakRetained = ne_log_obj();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      *buf = 134218242;
      v140 = v15;
      v141 = 2112;
      v142 = v33;
      _os_log_error_impl(&dword_1BA83C000, WeakRetained, OS_LOG_TYPE_ERROR, "Fetching proxy PvD configuration resulted in unexpected response: %ld with url: %@", buf, 0x16u);
    }

    goto LABEL_36;
  }

  v128 = 0;
  v16 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v128];
  WeakRetained = v128;
  v17 = *(*(a1 + 40) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  if ((isa_nsdictionary(*(*(*(a1 + 40) + 8) + 40)) & 1) == 0)
  {
    v10 = ne_log_obj();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_35;
    }

    v34 = *(a1 + 32);
    *buf = 138412546;
    v140 = WeakRetained;
    v141 = 2112;
    v142 = v34;
    v12 = "Fetching proxy PvD configuration resulted in malformed JSON object: %@ with url: %@";
    v13 = v10;
LABEL_4:
    _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
LABEL_35:

    goto LABEL_36;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v19 = *(a1 + 32);
    v20 = *(*(*(a1 + 40) + 8) + 40);
    v21 = v19;
    v22 = [v20 objectForKey:@"identifier"];
    v23 = 0x1E695D000uLL;
    if (v22)
    {
      v24 = v22;
      v25 = [v20 objectForKey:@"proxies"];
      if (v25)
      {
        v26 = v25;
        v27 = [v20 objectForKey:@"expires"];

        v23 = 0x1E695D000uLL;
        if (v27)
        {
          v28 = [v20 objectForKey:@"expires"];
          v29 = [NEPvDFetcher formatExpirationDateFrom:v28];
          v30 = [MEMORY[0x1E695DF00] now];
          v127 = v29;
          v31 = [v30 compare:v29];

          if (v31 != -1)
          {
            v32 = ne_log_obj();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *v143 = 138412546;
              v144 = v28;
              v145 = 2112;
              v146 = v21;
              _os_log_error_impl(&dword_1BA83C000, v32, OS_LOG_TYPE_ERROR, "PvD configuration is expired (%@) from %@", v143, 0x16u);
            }

LABEL_23:
            goto LABEL_24;
          }

          v126 = [v20 objectForKey:@"identifier"];
          v124 = v28;
          if (!isa_nsstring(v126) || ([v21 host], v50 = objc_claimAutoreleasedReturnValue(), v51 = [v126 isEqualToString:v50], v50, (v51 & 1) == 0))
          {
            v70 = ne_log_obj();
            v125 = v70;
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              *v143 = 138412546;
              v144 = v21;
              v145 = 2112;
              v146 = v126;
              _os_log_error_impl(&dword_1BA83C000, v70, OS_LOG_TYPE_ERROR, "Matching identifier for PvD was not found in response for url %@ : %@", v143, 0x16u);
            }

            v71 = 0;
            v72 = v127;
LABEL_81:

            if (v71)
            {
              v76 = [objc_getProperty(WeakRetained v75];
              v77 = [v76 isEqualToDictionary:*(*(*(a1 + 40) + 8) + 40)];

              if ((v77 & 1) == 0)
              {
                v78 = ne_log_obj();
                if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                {
                  Property = objc_getProperty(WeakRetained, v79, 72, 1);
                  v81 = @"updated";
                  v82 = *(a1 + 32);
                  if (!Property)
                  {
                    v81 = @"first";
                  }

                  *buf = 138412546;
                  v140 = v81;
                  v141 = 2112;
                  v142 = v82;
                  _os_log_impl(&dword_1BA83C000, v78, OS_LOG_TYPE_INFO, "Got %@ PvD configuration from %@", buf, 0x16u);
                }

                v83 = [[NEPvDConfiguration alloc] initWithDictionary:?];
                objc_setProperty_atomic(WeakRetained, v84, v83, 72);

                v35 = objc_loadWeakRetained(&WeakRetained[8].isa);
                if (objc_opt_respondsToSelector())
                {
                  [v35 configUpdated:objc_getProperty(WeakRetained, v85, 72, 1)];
                }

                goto LABEL_26;
              }
            }

LABEL_24:
            v35 = ne_log_obj();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              v73 = *(a1 + 32);
              *buf = 138412290;
              v140 = v73;
              _os_log_debug_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_DEBUG, "Ignoring invalid or unchanged PvD configuration for %@", buf, 0xCu);
            }

LABEL_26:

            v36 = [*(v23 + 3840) now];
            objc_setProperty_atomic(WeakRetained, v37, v36, 48);

            LOBYTE(WeakRetained[1].isa) = 0;
            if (objc_getProperty(WeakRetained, v38, 72, 1))
            {
              v40 = [objc_getProperty(WeakRetained v39];
              v41 = [v40 valueForKey:@"expires"];

              v42 = [NEPvDFetcher formatExpirationDateFrom:v41];
              v43 = [*(v23 + 3840) now];
              [v42 timeIntervalSinceDate:v43];
              v45 = v44;

              v46 = 300.0;
              if (v45 >= 300.0)
              {
                v46 = v45;
                if (v45 > 86400.0)
                {
                  v46 = 86400.0;
                }
              }
            }

            else
            {
              v46 = 86400.0;
            }

            v47 = ne_log_obj();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v140 = WeakRetained;
              v141 = 2048;
              v142 = v46 / 60;
              _os_log_debug_impl(&dword_1BA83C000, v47, OS_LOG_TYPE_DEBUG, "Fetching new PvD %@ in %lu mins", buf, 0x16u);
            }

            v10 = WeakRetained[7].isa;
            v48 = dispatch_time(0x8000000000000000, (v46 * 1000000000.0));
            dispatch_source_set_timer(v10, v48, 0xFFFFFFFFFFFFFFFFLL, 0);
            goto LABEL_35;
          }

          v52 = [v20 objectForKey:@"proxies"];
          v125 = v52;
          if (isa_nsarray(v52) && [v52 count])
          {
            v53 = [v20 objectForKey:@"proxy-match"];
            if (isa_nsarray(v53) && [v53 count])
            {
              v135 = 0u;
              v136 = 0u;
              v133 = 0u;
              v134 = 0u;
              v54 = v53;
              v120 = [v54 countByEnumeratingWithState:&v133 objects:buf count:16];
              log = v54;
              if (v120)
              {
                v113 = 0;
                v116 = *v134;
                while (2)
                {
                  for (i = 0; i != v120; ++i)
                  {
                    if (*v134 != v116)
                    {
                      objc_enumerationMutation(v54);
                    }

                    v56 = *(*(&v133 + 1) + 8 * i);
                    v57 = [v56 objectForKey:@"ports"];
                    if (isa_nsarray(v57) && [v57 count])
                    {
                      v114 = v57;
                      v86 = ne_log_obj();
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                      {
                        *v143 = 138412290;
                        v144 = v57;
                        _os_log_error_impl(&dword_1BA83C000, v86, OS_LOG_TYPE_ERROR, "PvD: Ports are not currently supported in proxy-match rules: %@", v143, 0xCu);
                      }

                      v137 = 0;
                      goto LABEL_100;
                    }

                    v58 = [v56 objectForKey:@"proxies"];
                    v59 = v58;
                    if (v58 && [v58 count])
                    {
                      v114 = v57;
                      if (!isa_nsarray(v59) || ([v59 objectAtIndexedSubscript:0], v60 = objc_claimAutoreleasedReturnValue(), v61 = isa_nsstring(v60), v60, (v61 & 1) == 0))
                      {
                        v87 = ne_log_obj();
                        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                        {
                          *v143 = 138412290;
                          v144 = v59;
                          _os_log_error_impl(&dword_1BA83C000, v87, OS_LOG_TYPE_ERROR, "PvD: invalid proxies key value: %@", v143, 0xCu);
                        }

LABEL_99:

                        v137 = 0;
LABEL_100:

                        v89 = log;
LABEL_101:

                        goto LABEL_102;
                      }

                      if ([v59 count]>= 2)
                      {
                        v62 = ne_log_obj();
                        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
                        {
                          v65 = [v59 objectAtIndexedSubscript:1];
                          *v143 = 138412290;
                          v144 = v65;
                          _os_log_debug_impl(&dword_1BA83C000, v62, OS_LOG_TYPE_DEBUG, "PvD: ignore fallback proxy identifiers %@", v143, 0xCu);
                        }
                      }

                      v63 = [v59 objectAtIndexedSubscript:0];
                      if (v113)
                      {
                        v64 = [v113 isEqualToString:v63];

                        if ((v64 & 1) == 0)
                        {
                          v87 = ne_log_obj();
                          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                          {
                            v90 = [v59 objectAtIndexedSubscript:0];
                            *v143 = 138412546;
                            v144 = v113;
                            v145 = 2112;
                            v146 = v90;
                            _os_log_error_impl(&dword_1BA83C000, v87, OS_LOG_TYPE_ERROR, "PvD: match rules refer to different identifiers %@ != %@", v143, 0x16u);
                          }

                          goto LABEL_99;
                        }
                      }

                      else
                      {
                        v113 = v63;
                      }

                      v54 = log;
                      v57 = v114;
                    }
                  }

                  v120 = [v54 countByEnumeratingWithState:&v133 objects:buf count:16];
                  if (v120)
                  {
                    continue;
                  }

                  break;
                }

                if (!v113)
                {
                  v113 = 0;
LABEL_91:
                  v137 = 1;
LABEL_102:
                  v23 = 0x1E695D000;
                  v72 = v127;

                  v71 = v137;
                  goto LABEL_80;
                }

                v121 = [NEPvDFetcher findProxy:v125 proxyToFind:v113];
                if (!v121 || [v121 count]!= 2)
                {
                  v91 = ne_log_obj();
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
                  {
                    *v143 = 138412546;
                    v144 = v113;
                    v145 = 2112;
                    v146 = v121;
                    _os_log_error_impl(&dword_1BA83C000, v91, OS_LOG_TYPE_ERROR, "PvD: Referenced proxy %@ did not have 2 entries: %@", v143, 0x16u);
                  }

                  v137 = 0;
                  goto LABEL_130;
                }

                v66 = [v121 objectAtIndexedSubscript:0];
                v67 = [v66 objectForKey:@"protocol"];

                LOBYTE(v66) = [v67 isEqualToString:@"https-connect"];
                v117 = [v67 isEqualToString:@"connect-udp"];
                v68 = [v121 objectAtIndexedSubscript:1];
                v112 = [v68 objectForKey:@"protocol"];

                if (v66)
                {
                  v69 = 0;
                }

                else
                {
                  v69 = [v112 isEqualToString:@"https-connect"] ^ 1;
                }

                if (v117)
                {
                  v92 = 0;
                }

                else
                {
                  v92 = [v112 isEqualToString:@"connect-udp"] ^ 1;
                }

                if ((v69 | v92))
                {
                  v93 = ne_log_obj();
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                  {
                    *v143 = 138412290;
                    v144 = v113;
                    v94 = "PvD: Proxy identifier %@ does not handle both TCP and UDP";
LABEL_139:
                    _os_log_error_impl(&dword_1BA83C000, v93, OS_LOG_TYPE_ERROR, v94, v143, 0xCu);
                    goto LABEL_129;
                  }

                  goto LABEL_129;
                }

                v118 = [v121 objectAtIndexedSubscript:0];
                v95 = [v118 objectForKey:@"alpn"];
                v96 = [v121 objectAtIndexedSubscript:1];
                v97 = [v96 objectForKey:@"alpn"];
                v98 = [v95 isEqual:v97];

                if ((v98 & 1) == 0)
                {
                  v93 = ne_log_obj();
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                  {
                    *v143 = 138412290;
                    v144 = v121;
                    v94 = "PvD: Two proxies do not have matching ALPN values: %@";
                    goto LABEL_139;
                  }

LABEL_129:

                  v137 = 0;
LABEL_130:
                  v89 = v121;
                  goto LABEL_101;
                }

                v131 = 0u;
                v132 = 0u;
                v129 = 0u;
                v130 = 0u;
                v54 = v121;
                v111 = [v54 countByEnumeratingWithState:&v129 objects:v138 count:16];
                if (v111)
                {
                  v110 = *v130;
                  while (2)
                  {
                    for (j = 0; j != v111; ++j)
                    {
                      if (*v130 != v110)
                      {
                        objc_enumerationMutation(v54);
                      }

                      v99 = *(*(&v129 + 1) + 8 * j);
                      v100 = [v99 objectForKey:@"proxy"];
                      v101 = [v21 host];
                      v119 = v100;
                      LOBYTE(v100) = [v100 containsString:v101];

                      if ((v100 & 1) == 0)
                      {
                        v107 = ne_log_obj();
                        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
                        {
                          v109 = [v21 host];
                          *v143 = 138412546;
                          v144 = v119;
                          v145 = 2112;
                          v146 = v109;
                          _os_log_error_impl(&dword_1BA83C000, v107, OS_LOG_TYPE_ERROR, "PvD: Proxy URL %@ does not contain relay host %@", v143, 0x16u);
                        }

                        v137 = 0;
                        goto LABEL_137;
                      }

                      v115 = [v99 objectForKey:@"protocol"];
                      if ([v115 isEqualToString:@"connect-udp"])
                      {
                        v102 = MEMORY[0x1E695DFF8];
                        v103 = [v99 objectForKey:@"proxy"];
                        v104 = [v102 URLWithString:v103];

                        v105 = [v104 path];
                        v106 = v105;
                        if (!v105 || ([v105 containsString:@".well-known/masque/udp"] & 1) == 0)
                        {
                          v108 = ne_log_obj();
                          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                          {
                            *v143 = 138412290;
                            v144 = v104;
                            _os_log_error_impl(&dword_1BA83C000, v108, OS_LOG_TYPE_ERROR, "PvD: connect-udp proxy URI path must contain '.well-known/masque/udp/{target_host}/{target_port}': %@", v143, 0xCu);
                          }

                          v137 = 0;
LABEL_137:

                          goto LABEL_102;
                        }
                      }
                    }

                    v111 = [v54 countByEnumeratingWithState:&v129 objects:v138 count:16];
                    if (v111)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              else
              {
                v113 = 0;
              }

              goto LABEL_91;
            }

            log = v53;
            v74 = ne_log_obj();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              *v143 = 0;
              _os_log_error_impl(&dword_1BA83C000, v74, OS_LOG_TYPE_ERROR, "Ignoring PvD configuration, no valid proxy-match criteria", v143, 2u);
            }

            v71 = 0;
          }

          else
          {
            log = ne_log_obj();
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              *v143 = 0;
              _os_log_error_impl(&dword_1BA83C000, log, OS_LOG_TYPE_ERROR, "Invalid PvD configuration, no valid proxies", v143, 2u);
            }

            v71 = 0;
          }

          v72 = v127;
LABEL_80:

          goto LABEL_81;
        }
      }

      else
      {
      }
    }

    v28 = ne_log_obj();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v143 = 0;
      _os_log_error_impl(&dword_1BA83C000, v28, OS_LOG_TYPE_ERROR, "PvD configuration missing mandatory fields", v143, 2u);
    }

    goto LABEL_23;
  }

LABEL_36:

  v49 = *MEMORY[0x1E69E9840];
}

- (id)formatExpirationDateFrom:(void *)a1
{
  v1 = MEMORY[0x1E696AB78];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZZZZZ"];
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v5];

  v6 = [v3 dateFromString:v2];

  return v6;
}

- (id)findProxy:(void *)a1 proxyToFind:(void *)a2
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138412290;
    v18 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (isa_nsdictionary(v12))
        {
          v13 = [v12 objectForKey:@"identifier"];
          v14 = [v4 isEqualToString:v13];

          if (v14)
          {
            if (!v5)
            {
              v5 = objc_alloc(MEMORY[0x1E695DF70]);
            }

            [v5 addObject:{v12, v18, v19}];
          }
        }

        else
        {
          v15 = ne_log_obj();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = v18;
            v24 = v12;
            _os_log_error_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_ERROR, "Invalid proxy configuration, not a dictionary: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v9);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

@end