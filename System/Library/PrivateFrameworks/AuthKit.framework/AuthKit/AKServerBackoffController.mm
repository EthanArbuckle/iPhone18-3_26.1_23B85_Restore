@interface AKServerBackoffController
- (AKServerBackoffController)init;
- (AKServerBackoffControllerDelegate)delegate;
- (BOOL)_isBackoffSupported;
- (BOOL)_isStaleClientInfo:(id)a3;
- (BOOL)_shouldBackoffContext:(id)a3 matchingClients:(id)a4;
- (BOOL)shouldBackoffContext:(id)a3;
- (id)_clientInfoForContext:(id)a3;
- (id)_clientInfoForContext:(id)a3 matchingClients:(id)a4;
- (id)_objectForKey:(id)a3;
- (id)_sanitizeServerBackoffInfoDict:(id)a3;
- (id)_serverBackoffDefaults;
- (id)_updatedServerBackoffInfoForClients:(id)a3 cachedClients:(id)a4;
- (id)serverBackoffInfoForContext:(id)a3;
- (void)_setObject:(id)a3 forKey:(id)a4;
- (void)_updateServerBackoffInfoWithDictionary:(id)a3;
- (void)configureFromHeaderFields:(id)a3;
- (void)reportTelemetryForContext:(id)a3 backoffType:(unint64_t)a4;
@end

@implementation AKServerBackoffController

- (AKServerBackoffController)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = AKServerBackoffController;
  v6 = [(AKServerBackoffController *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    v6->_serverBackoffLock._os_unfair_lock_opaque = 0;
  }

  v3 = MEMORY[0x1E69E5928](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (BOOL)_isBackoffSupported
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(AKServerBackoffController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [location[0] isBackoffSupported] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (AKServerBackoffControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_serverBackoffDefaults
{
  v4[2] = self;
  v4[1] = a2;
  v4[0] = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.aaa.serverbackoff"];
  v3 = MEMORY[0x1E69E5928](v4[0]);
  objc_storeStrong(v4, 0);

  return v3;
}

- (void)configureFromHeaderFields:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKServerBackoffController *)v13 _isBackoffSupported])
  {
    p_serverBackoffLock = &v13->_serverBackoffLock;
    v4 = MEMORY[0x1E69E9820];
    v5 = -1073741824;
    v6 = 0;
    v7 = __55__AKServerBackoffController_configureFromHeaderFields___block_invoke;
    v8 = &unk_1E73D4080;
    v9 = MEMORY[0x1E69E5928](location[0]);
    v10 = MEMORY[0x1E69E5928](v13);
    aaf_unfair_lock_perform_1(p_serverBackoffLock, &v4);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v9, 0);
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  objc_storeStrong(location, 0);
}

void __55__AKServerBackoffController_configureFromHeaderFields___block_invoke(id *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v11[2] = a1;
  v11[1] = a1;
  v3 = objc_opt_class();
  v4 = [a1[4] objectForKey:@"X-Apple-S-Backoff-Server-Info"];
  v11[0] = _AKSafeCast_21(v3, v4);
  MEMORY[0x1E69E5920](v4);
  if (v11[0])
  {
    v9 = [v11[0] aaf_toBase64DecodedData];
    v8 = 0;
    obj = 0;
    v1 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v9 options:0 error:&obj];
    objc_storeStrong(&v8, obj);
    v7 = v1;
    if (v8)
    {
      oslog = _AKLogSystem();
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_3_1_8_65(v12, v8);
        _os_log_error_impl(&dword_193225000, oslog, OS_LOG_TYPE_ERROR, "Failed to decode server backoff info header with error: %{private}@", v12, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }

    else
    {
      [a1[5] _updateServerBackoffInfoWithDictionary:v7];
    }

    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(v11, 0);
  *MEMORY[0x1E69E9840];
}

- (BOOL)shouldBackoffContext:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(os_unfair_lock_s *)v23 _isBackoffSupported])
  {
    os_unfair_lock_lock(v23 + 2);
    v20 = [(os_unfair_lock_s *)v23 _objectForKey:@"X-Apple-S-Backoff-Server-Info"];
    v19 = 0;
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x1E69E5928](v20);
    v13 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
    if (v13)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v13;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(__b[1] + 8 * v10);
        v16 = [(os_unfair_lock_s *)v23 delegate];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_15;
        }

        v15 = [v16 urlAtKey:v18];
        v6 = [v15 absoluteString];
        v5 = [location[0] url];
        v4 = [v5 absoluteString];
        v7 = [v6 isEqualToString:?];
        MEMORY[0x1E69E5920](v4);
        MEMORY[0x1E69E5920](v5);
        MEMORY[0x1E69E5920](v6);
        if ((v7 & 1) == 0 || ((v14 = [v20 objectForKey:v18], (-[os_unfair_lock_s _shouldBackoffContext:matchingClients:](v23, "_shouldBackoffContext:matchingClients:", location[0], v14) & 1) == 0) ? (v21 = 0) : (v19 = 1, -[os_unfair_lock_s reportTelemetryForContext:backoffType:](v23, "reportTelemetryForContext:backoffType:", location[0], 1), v21 = 2), objc_storeStrong(&v14, 0), !v21))
        {
          v21 = 0;
        }

        objc_storeStrong(&v15, 0);
        if (!v21)
        {
LABEL_15:
          v21 = 0;
        }

        objc_storeStrong(&v16, 0);
        if (v21)
        {
          break;
        }

        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [obj countByEnumeratingWithState:__b objects:v25 count:16];
          if (!v11)
          {
            goto LABEL_19;
          }
        }
      }
    }

    else
    {
LABEL_19:
      v21 = 0;
    }

    MEMORY[0x1E69E5920](obj);
    os_unfair_lock_unlock(v23 + 2);
    v24 = v19 & 1;
    v21 = 1;
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v24 = 0;
    v21 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v24 & 1;
}

- (id)serverBackoffInfoForContext:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(AKServerBackoffController *)v15 _isBackoffSupported])
  {
    p_serverBackoffLock = &v15->_serverBackoffLock;
    v6 = MEMORY[0x1E69E9820];
    v7 = -1073741824;
    v8 = 0;
    v9 = __57__AKServerBackoffController_serverBackoffInfoForContext___block_invoke;
    v10 = &unk_1E73D6BC0;
    v11 = MEMORY[0x1E69E5928](v15);
    v12 = MEMORY[0x1E69E5928](location[0]);
    v16 = aaf_unfair_lock_perform_with_result_0(p_serverBackoffLock, &v6);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v16 = 0;
  }

  v13 = 1;
  objc_storeStrong(location, 0);
  v3 = v16;

  return v3;
}

id __57__AKServerBackoffController_serverBackoffInfoForContext___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v26[2] = a1;
  v26[1] = a1;
  v26[0] = [*(a1 + 32) _objectForKey:@"X-Apple-S-Backoff-Server-Info"];
  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v26[0]);
  v12 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v12)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v12;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v8);
      v22 = [v26[0] objectForKey:v24];
      v5 = v22;
      v15 = MEMORY[0x1E69E9820];
      v16 = -1073741824;
      v17 = 0;
      v18 = __57__AKServerBackoffController_serverBackoffInfoForContext___block_invoke_2;
      v19 = &unk_1E73D83E8;
      v20 = MEMORY[0x1E69E5928](*(a1 + 40));
      v21 = MEMORY[0x1E69E5928](*(a1 + 32));
      v1 = [v5 aaf_filter:&v15];
      v2 = v22;
      v22 = v1;
      MEMORY[0x1E69E5920](v2);
      if ([v22 count])
      {
        [v25 setObject:v22 forKeyedSubscript:v24];
      }

      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v22, 0);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  if ([v25 count])
  {
    v14 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v25 options:? error:?];
    v13 = [v14 base64EncodedStringWithOptions:0];
    v27 = MEMORY[0x1E69E5928](v13);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v27 = 0;
  }

  objc_storeStrong(&v25, 0);
  objc_storeStrong(v26, 0);
  *MEMORY[0x1E69E9840];
  v3 = v27;

  return v3;
}

BOOL __57__AKServerBackoffController_serverBackoffInfoForContext___block_invoke_2(id *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v12[2] = a3;
  v12[1] = a1;
  v5 = objc_opt_class();
  v6 = [location[0] objectForKeyedSubscript:@"s"];
  v12[0] = _AKSafeCast_21(v5, v6);
  MEMORY[0x1E69E5920](v6);
  v9 = [v12[0] lowercaseString];
  v8 = [a1[4] appServerName];
  v10 = [v8 lowercaseString];
  v11 = 0;
  if ([v9 isEqualToString:?])
  {
    v11 = [a1[5] _isStaleClientInfo:location[0]] == 0;
  }

  MEMORY[0x1E69E5920](v10);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v9);
  objc_storeStrong(v12, 0);
  objc_storeStrong(location, 0);
  return v11;
}

- (void)reportTelemetryForContext:(id)a3 backoffType:(unint64_t)a4
{
  v35 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v33[1] = a4;
  v33[0] = 0;
  if (a4 == 1)
  {
    objc_storeStrong(v33, @"com.apple.aaa.backoff.client");
  }

  else if (a4 == 2)
  {
    objc_storeStrong(v33, @"com.apple.aaa.backoff.server");
  }

  if (v33[0])
  {
    v28 = [(AKServerBackoffController *)v35 _clientInfoForContext:location[0]];
    if (v28)
    {
      v4 = objc_opt_class();
      v5 = [v28 objectForKeyedSubscript:@"c"];
      v27 = _AKSafeCast_21(v4, v5);
      MEMORY[0x1E69E5920](v5);
      v6 = objc_opt_class();
      v7 = [v28 objectForKeyedSubscript:@"p"];
      v26 = _AKSafeCast_21(v6, v7);
      MEMORY[0x1E69E5920](v7);
      v8 = objc_opt_class();
      v9 = [v28 objectForKeyedSubscript:@"s"];
      v25 = _AKSafeCast_21(v8, v9);
      MEMORY[0x1E69E5920](v9);
      v10 = objc_opt_class();
      v11 = [v28 objectForKeyedSubscript:@"u"];
      v24 = _AKSafeCast_21(v10, v11);
      MEMORY[0x1E69E5920](v11);
      v12 = objc_opt_class();
      v13 = [v28 objectForKeyedSubscript:@"b"];
      v23 = _AKSafeCast_21(v12, v13);
      MEMORY[0x1E69E5920](v13);
      v14 = objc_opt_class();
      v15 = [v28 objectForKeyedSubscript:@"i"];
      v22 = _AKSafeCast_21(v14, v15);
      MEMORY[0x1E69E5920](v15);
      v21 = [MEMORY[0x1E696ABC0] ak_errorWithCode:-7120];
      v20 = [MEMORY[0x1E6985DB0] ak_analyticsEventWithEventName:v33[0] error:v21];
      if (v27)
      {
        [v20 setObject:v27 forKeyedSubscript:@"c"];
      }

      if (v26)
      {
        [v20 setObject:v26 forKeyedSubscript:@"p"];
      }

      if (v25)
      {
        [v20 setObject:v25 forKeyedSubscript:@"s"];
      }

      if (v24)
      {
        [v20 setObject:v24 forKeyedSubscript:@"u"];
      }

      if (v23)
      {
        [v20 setObject:v23 forKeyedSubscript:@"b"];
      }

      if (v22)
      {
        [v20 setObject:v22 forKeyedSubscript:@"i"];
      }

      v19 = +[AKAnalyticsReporterRTC rtcAnalyticsReporter];
      [v19 sendEvent:v20];
      objc_storeStrong(&v19, 0);
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
      objc_storeStrong(&v25, 0);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v28, 0);
    v29 = 0;
  }

  else
  {
    v32 = _AKLogSystem();
    v31 = 2;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      log = v32;
      type = v31;
      __os_log_helper_16_0_0(v30);
      _os_log_debug_impl(&dword_193225000, log, type, "AKServerBackoffController - Unexpected backoff type", v30, 2u);
    }

    objc_storeStrong(&v32, 0);
    v29 = 1;
  }

  objc_storeStrong(v33, 0);
  objc_storeStrong(location, 0);
}

- (BOOL)_shouldBackoffContext:(id)a3 matchingClients:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v47 = 0;
  objc_storeStrong(&v47, a4);
  memset(__b, 0, sizeof(__b));
  v26 = MEMORY[0x1E69E5928](v47);
  v27 = [v26 countByEnumeratingWithState:__b objects:v50 count:16];
  if (v27)
  {
    v22 = *__b[2];
    v23 = 0;
    v24 = v27;
    while (1)
    {
      v21 = v23;
      if (*__b[2] != v22)
      {
        objc_enumerationMutation(v26);
      }

      v46 = *(__b[1] + 8 * v23);
      v6 = objc_opt_class();
      v7 = [v46 objectForKeyedSubscript:@"c"];
      v44 = _AKSafeCast_21(v6, v7);
      MEMORY[0x1E69E5920](v7);
      v8 = objc_opt_class();
      v9 = [v46 objectForKeyedSubscript:@"p"];
      v43 = _AKSafeCast_21(v8, v9);
      MEMORY[0x1E69E5920](v9);
      v10 = objc_opt_class();
      v11 = [v46 objectForKeyedSubscript:@"s"];
      v42 = _AKSafeCast_21(v10, v11);
      MEMORY[0x1E69E5920](v11);
      v12 = objc_opt_class();
      v13 = [v46 objectForKeyedSubscript:@"b"];
      v41 = _AKSafeCast_21(v12, v13);
      MEMORY[0x1E69E5920](v13);
      v14 = objc_opt_class();
      v15 = [v46 objectForKeyedSubscript:@"i"];
      v40 = _AKSafeCast_21(v14, v15);
      MEMORY[0x1E69E5920](v15);
      v16 = MEMORY[0x1E695DF00];
      [v40 doubleValue];
      v39 = [v16 dateWithTimeIntervalSince1970:v4 / 1000.0];
      v38 = [v39 dateByAddingTimeInterval:{objc_msgSend(v41, "integerValue")}];
      v37 = [MEMORY[0x1E695DF00] date];
      v17 = [location[0] appServerName];
      v18 = [v17 lowercaseString];
      v19 = [v42 lowercaseString];
      v35 = 0;
      v33 = 0;
      v31 = 0;
      v29 = 0;
      v20 = 0;
      if ([v18 isEqualToString:?])
      {
        if (v36 = [location[0] clientBundleID], v35 = 1, !v36) && !v44 || (v34 = objc_msgSend(location[0], "clientBundleID"), v33 = 1, v20 = 0, (objc_msgSend(v34, "isEqualToString:", v44)))
        {
          if (v32 = [location[0] proxiedAppBundleID], v31 = 1, !v32) && !v43 || (v30 = objc_msgSend(location[0], "proxiedAppBundleID"), v29 = 1, v20 = 0, (objc_msgSend(v30, "isEqualToString:", v43)))
          {
            v20 = [v37 compare:v38] == -1;
          }
        }
      }

      if (v29)
      {
        MEMORY[0x1E69E5920](v30);
      }

      if (v31)
      {
        MEMORY[0x1E69E5920](v32);
      }

      if (v33)
      {
        MEMORY[0x1E69E5920](v34);
      }

      if (v35)
      {
        MEMORY[0x1E69E5920](v36);
      }

      MEMORY[0x1E69E5920](v19);
      MEMORY[0x1E69E5920](v18);
      MEMORY[0x1E69E5920](v17);
      if (v20)
      {
        v49 = 1;
        v28 = 1;
      }

      else
      {
        v28 = 0;
      }

      objc_storeStrong(&v37, 0);
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
      objc_storeStrong(&v42, 0);
      objc_storeStrong(&v43, 0);
      objc_storeStrong(&v44, 0);
      if (v28)
      {
        break;
      }

      ++v23;
      if (v21 + 1 >= v24)
      {
        v23 = 0;
        v24 = [v26 countByEnumeratingWithState:__b objects:v50 count:16];
        if (!v24)
        {
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
LABEL_27:
    v28 = 0;
  }

  MEMORY[0x1E69E5920](v26);
  if (!v28)
  {
    v49 = 0;
  }

  objc_storeStrong(&v47, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  return v49 & 1;
}

- (void)_updateServerBackoffInfoWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = [(AKServerBackoffController *)v22 _objectForKey:@"X-Apple-S-Backoff-Server-Info"];
  v20 = [v15 mutableCopy];
  MEMORY[0x1E69E5920](v15);
  if (v20)
  {
    v14 = [(AKServerBackoffController *)v22 _sanitizeServerBackoffInfoDict:v20];
    v3 = [v14 mutableCopy];
    v4 = v20;
    v20 = v3;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v14);
  }

  else
  {
    v20 = objc_opt_new();
    MEMORY[0x1E69E5920](0);
  }

  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](location[0]);
  v13 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v10);
      v17 = [location[0] objectForKey:v19];
      v16 = [v20 objectForKeyedSubscript:v19];
      v5 = [v17 aaf_filter:&__block_literal_global_41];
      v6 = v17;
      v17 = v5;
      MEMORY[0x1E69E5920](v6);
      if (v16)
      {
        v7 = [(AKServerBackoffController *)v22 _updatedServerBackoffInfoForClients:v17 cachedClients:v16];
        [v20 setObject:? forKeyedSubscript:?];
        MEMORY[0x1E69E5920](v7);
      }

      else
      {
        [v20 setObject:v17 forKeyedSubscript:v19];
      }

      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  [(AKServerBackoffController *)v22 _setObject:v20 forKey:@"X-Apple-S-Backoff-Server-Info"];
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
}

uint64_t __68__AKServerBackoffController__updateServerBackoffInfoWithDictionary___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  objc_storeStrong(location, 0);
  return isKindOfClass & 1;
}

- (id)_updatedServerBackoffInfoForClients:(id)a3 cachedClients:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v43 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v41 = 0;
  objc_storeStrong(&v41, a4);
  v40 = [v41 mutableCopy];
  memset(__b, 0, sizeof(__b));
  v27 = MEMORY[0x1E69E5928](location[0]);
  v28 = [v27 countByEnumeratingWithState:__b objects:v45 count:16];
  if (v28)
  {
    v23 = *__b[2];
    v24 = 0;
    v25 = v28;
    while (1)
    {
      v22 = v24;
      if (*__b[2] != v23)
      {
        objc_enumerationMutation(v27);
      }

      v39 = *(__b[1] + 8 * v24);
      if (![(AKServerBackoffController *)v43 _isStaleClientInfo:v39])
      {
        v16 = objc_opt_class();
        v17 = [v39 objectForKeyedSubscript:@"c"];
        v37 = _AKSafeCast_21(v16, v17);
        MEMORY[0x1E69E5920](v17);
        v18 = objc_opt_class();
        v19 = [v39 objectForKeyedSubscript:@"p"];
        v36 = _AKSafeCast_21(v18, v19);
        MEMORY[0x1E69E5920](v19);
        v35 = 0;
        memset(v33, 0, sizeof(v33));
        v20 = MEMORY[0x1E69E5928](v41);
        v21 = [v20 countByEnumeratingWithState:v33 objects:v44 count:16];
        if (v21)
        {
          v13 = *v33[2];
          v14 = 0;
          v15 = v21;
          while (1)
          {
            v12 = v14;
            if (*v33[2] != v13)
            {
              objc_enumerationMutation(v20);
            }

            v34 = *(v33[1] + 8 * v14);
            v8 = objc_opt_class();
            v9 = [v34 objectForKeyedSubscript:@"c"];
            v32 = _AKSafeCast_21(v8, v9);
            MEMORY[0x1E69E5920](v9);
            v10 = objc_opt_class();
            v11 = [v34 objectForKeyedSubscript:@"p"];
            v31 = _AKSafeCast_21(v10, v11);
            MEMORY[0x1E69E5920](v11);
            if ((v32 || v37) && ([v32 isEqualToString:v37] & 1) == 0 || (v31 || v36) && (objc_msgSend(v31, "isEqualToString:", v36) & 1) == 0)
            {
              v29 = 0;
            }

            else
            {
              v6 = objc_opt_class();
              v7 = [v39 objectForKeyedSubscript:@"d"];
              v30 = _AKSafeCast_21(v6, v7);
              MEMORY[0x1E69E5920](v7);
              if ([v30 BOOLValue])
              {
                [v40 removeObject:v34];
              }

              else
              {
                [v40 replaceObjectAtIndex:objc_msgSend(v40 withObject:{"indexOfObject:", v34), v39}];
              }

              v35 = 1;
              v29 = 4;
              objc_storeStrong(&v30, 0);
            }

            objc_storeStrong(&v31, 0);
            objc_storeStrong(&v32, 0);
            if (v29)
            {
              break;
            }

            ++v14;
            if (v12 + 1 >= v15)
            {
              v14 = 0;
              v15 = [v20 countByEnumeratingWithState:v33 objects:v44 count:16];
              if (!v15)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x1E69E5920](v20);
        if ((v35 & 1) == 0)
        {
          [v40 addObject:v39];
        }

        objc_storeStrong(&v36, 0);
        objc_storeStrong(&v37, 0);
      }

      ++v24;
      if (v22 + 1 >= v25)
      {
        v24 = 0;
        v25 = [v27 countByEnumeratingWithState:__b objects:v45 count:16];
        if (!v25)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v27);
  v5 = MEMORY[0x1E69E5928](v40);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_sanitizeServerBackoffInfoDict:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = [location[0] mutableCopy];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](location[0]);
  v17 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v17)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v17;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(__b[1] + 8 * v14);
      v21 = [location[0] objectForKeyedSubscript:v23];
      v20 = [v21 mutableCopy];
      memset(v18, 0, sizeof(v18));
      v10 = MEMORY[0x1E69E5928](v21);
      v11 = [v10 countByEnumeratingWithState:v18 objects:v27 count:16];
      if (v11)
      {
        v7 = *v18[2];
        v8 = 0;
        v9 = v11;
        while (1)
        {
          v6 = v8;
          if (*v18[2] != v7)
          {
            objc_enumerationMutation(v10);
          }

          v19 = *(v18[1] + 8 * v8);
          if ([(AKServerBackoffController *)v26 _isStaleClientInfo:v19])
          {
            [v20 removeObject:v19];
          }

          ++v8;
          if (v6 + 1 >= v9)
          {
            v8 = 0;
            v9 = [v10 countByEnumeratingWithState:v18 objects:v27 count:16];
            if (!v9)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x1E69E5920](v10);
      if ([v20 count])
      {
        v5 = v20;
      }

      else
      {
        v5 = 0;
      }

      [v24 setObject:v5 forKeyedSubscript:v23];
      objc_storeStrong(&v20, 0);
      objc_storeStrong(&v21, 0);
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  [(AKServerBackoffController *)v26 _setObject:v24 forKey:@"X-Apple-S-Backoff-Server-Info"];
  v4 = MEMORY[0x1E69E5928](v24);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)_isStaleClientInfo:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = objc_opt_class();
  v6 = [location[0] objectForKeyedSubscript:@"b"];
  v15 = _AKSafeCast_21(v5, v6);
  MEMORY[0x1E69E5920](v6);
  v7 = objc_opt_class();
  v8 = [location[0] objectForKeyedSubscript:@"i"];
  v14 = _AKSafeCast_21(v7, v8);
  MEMORY[0x1E69E5920](v8);
  v9 = MEMORY[0x1E695DF00];
  [v14 doubleValue];
  v13 = [v9 dateWithTimeIntervalSince1970:v3 / 1000.0];
  v12 = [v13 dateByAddingTimeInterval:{objc_msgSend(v15, "integerValue")}];
  v11 = [MEMORY[0x1E695DF00] date];
  v10 = [v11 compare:v12] == 1;
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v10;
}

- (void)_setObject:(id)a3 forKey:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5 = [(AKServerBackoffController *)v8 _serverBackoffDefaults];
  [v5 setObject:location[0] forKey:v6];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (id)_objectForKey:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(AKServerBackoffController *)v7 _serverBackoffDefaults];
  v5 = [v4 objectForKey:location[0]];
  MEMORY[0x1E69E5920](v4);
  objc_storeStrong(location, 0);

  return v5;
}

- (id)_clientInfoForContext:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = [(AKServerBackoffController *)v26 _objectForKey:@"X-Apple-S-Backoff-Server-Info"];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v24);
  v16 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
  if (v16)
  {
    v12 = *__b[2];
    v13 = 0;
    v14 = v16;
    while (1)
    {
      v11 = v13;
      if (*__b[2] != v12)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(__b[1] + 8 * v13);
      v21 = [(AKServerBackoffController *)v26 delegate];
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = [v21 urlAtKey:v23];
      v9 = [v20 absoluteString];
      v8 = [location[0] url];
      v7 = [v8 absoluteString];
      v10 = [v9 isEqualToString:?];
      MEMORY[0x1E69E5920](v7);
      MEMORY[0x1E69E5920](v8);
      MEMORY[0x1E69E5920](v9);
      if ((v10 & 1) == 0)
      {
        goto LABEL_11;
      }

      v19 = [v24 objectForKey:v23];
      v18 = [(AKServerBackoffController *)v26 _clientInfoForContext:location[0] matchingClients:v19];
      if (v18)
      {
        v5 = v18;
        v28 = @"u";
        v29 = v23;
        v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        v27 = [v5 aaf_dictionaryByAddingEntriesFromDictionary:?];
        MEMORY[0x1E69E5920](v6);
        v17 = 1;
      }

      else
      {
        v17 = 0;
      }

      objc_storeStrong(&v18, 0);
      objc_storeStrong(&v19, 0);
      if (!v17)
      {
LABEL_11:
        v17 = 0;
      }

      objc_storeStrong(&v20, 0);
      if (!v17)
      {
LABEL_13:
        v17 = 0;
      }

      objc_storeStrong(&v21, 0);
      if (v17)
      {
        break;
      }

      ++v13;
      if (v11 + 1 >= v14)
      {
        v13 = 0;
        v14 = [obj countByEnumeratingWithState:__b objects:v30 count:16];
        if (!v14)
        {
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
LABEL_17:
    v17 = 0;
  }

  MEMORY[0x1E69E5920](obj);
  if (!v17)
  {
    v27 = 0;
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v3 = v27;

  return v3;
}

- (id)_clientInfoForContext:(id)a3 matchingClients:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v38 = 0;
  objc_storeStrong(&v38, a4);
  memset(__b, 0, sizeof(__b));
  v22 = MEMORY[0x1E69E5928](v38);
  v23 = [v22 countByEnumeratingWithState:__b objects:v41 count:16];
  if (v23)
  {
    v18 = *__b[2];
    v19 = 0;
    v20 = v23;
    while (1)
    {
      v17 = v19;
      if (*__b[2] != v18)
      {
        objc_enumerationMutation(v22);
      }

      v37 = *(__b[1] + 8 * v19);
      v7 = objc_opt_class();
      v8 = [v37 objectForKeyedSubscript:@"c"];
      v35 = _AKSafeCast_21(v7, v8);
      MEMORY[0x1E69E5920](v8);
      v9 = objc_opt_class();
      v10 = [v37 objectForKeyedSubscript:@"p"];
      v34 = _AKSafeCast_21(v9, v10);
      MEMORY[0x1E69E5920](v10);
      v11 = objc_opt_class();
      v12 = [v37 objectForKeyedSubscript:@"s"];
      v33 = _AKSafeCast_21(v11, v12);
      MEMORY[0x1E69E5920](v12);
      v13 = [location[0] appServerName];
      v14 = [v13 lowercaseString];
      v15 = [v33 lowercaseString];
      v31 = 0;
      v29 = 0;
      v27 = 0;
      v25 = 0;
      v16 = 0;
      if ([v14 isEqualToString:?])
      {
        if (v32 = [location[0] clientBundleID], v31 = 1, !v32) && !v35 || (v30 = objc_msgSend(location[0], "clientBundleID"), v29 = 1, v16 = 0, (objc_msgSend(v30, "isEqualToString:", v35)))
        {
          v28 = [location[0] proxiedAppBundleID];
          v27 = 1;
          if (v28 || (v6 = 1, v34))
          {
            v26 = [location[0] proxiedAppBundleID];
            v25 = 1;
            v6 = [v26 isEqualToString:v34];
          }

          v16 = v6;
        }
      }

      if (v25)
      {
        MEMORY[0x1E69E5920](v26);
      }

      if (v27)
      {
        MEMORY[0x1E69E5920](v28);
      }

      if (v29)
      {
        MEMORY[0x1E69E5920](v30);
      }

      if (v31)
      {
        MEMORY[0x1E69E5920](v32);
      }

      MEMORY[0x1E69E5920](v15);
      MEMORY[0x1E69E5920](v14);
      MEMORY[0x1E69E5920](v13);
      if (v16)
      {
        v40 = MEMORY[0x1E69E5928](v37);
        v24 = 1;
      }

      else
      {
        v24 = 0;
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
      objc_storeStrong(&v35, 0);
      if (v24)
      {
        break;
      }

      ++v19;
      if (v17 + 1 >= v20)
      {
        v19 = 0;
        v20 = [v22 countByEnumeratingWithState:__b objects:v41 count:16];
        if (!v20)
        {
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
LABEL_27:
    v24 = 0;
  }

  MEMORY[0x1E69E5920](v22);
  if (!v24)
  {
    v40 = 0;
  }

  objc_storeStrong(&v38, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x1E69E9840];
  v4 = v40;

  return v4;
}

@end