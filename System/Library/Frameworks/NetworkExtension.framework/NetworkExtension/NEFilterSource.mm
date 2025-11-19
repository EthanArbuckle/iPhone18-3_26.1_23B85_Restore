@interface NEFilterSource
+ (BOOL)filterRequired;
- (NEFilterSource)initWithDecisionQueue:(id)a3;
- (NEFilterSource)initWithURL:(id)a3 direction:(int64_t)a4 socketIdentifier:(unint64_t)a5;
- (id)filterOptions;
- (id)replacementData;
- (uint64_t)generateCryptoSignature:(_DWORD *)a3 length:;
- (uint64_t)sendDataToPluginWithConnection:(void *)a3 completionHandler:;
- (void)addData:(id)a3 withCompletionQueue:(id)a4 completionHandler:(id)a5;
- (void)connectToFilterUnit:(void *)a3 withCompletionHandler:;
- (void)dataCompleteWithCompletionQueue:(id)a3 completionHandler:(id)a4;
- (void)finishedLoadingWithDecisionHandler:(id)a3;
- (void)initGlobals;
- (void)prepareAgentForResponse:(void *)a3 handler:;
- (void)prepareAgentForURL:(void *)a3 urlRequest:(void *)a4 urlResponse:(void *)a5 parentURL:(uint64_t)a6 direction:(void *)a7 flowUUID:(void *)a8 handler:;
- (void)prepareAgentWithHandler:(void *)a1;
- (void)receivedData:(id)a3 decisionHandler:(id)a4;
- (void)receivedResponse:(id)a3 decisionHandler:(id)a4;
- (void)remediateWithDecisionHandler:(id)a3;
- (void)willSendRequest:(id)a3 decisionHandler:(id)a4;
@end

@implementation NEFilterSource

- (void)remediateWithDecisionHandler:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (self && (objc_setProperty_atomic(self, v4, 0, 160), self->_expectRemediation))
    {
      v6 = [(NEFilterSource *)self url];
      v9 = objc_getProperty(self, v7, 184, 1);
      controlUnit = self->_controlUnit;
      if (controlUnit)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __47__NEFilterSource_remediateWithDecisionHandler___block_invoke_3;
        v15[3] = &unk_1E7F07830;
        v15[4] = self;
        v18 = v5;
        v16 = v6;
        v17 = v9;
        [(NEFilterSource *)self connectToFilterUnit:v15 withCompletionHandler:?];

        v11 = v18;
      }

      else
      {
        self->_status = 1;
        Property = objc_getProperty(self, v8, 144, 1);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __47__NEFilterSource_remediateWithDecisionHandler___block_invoke_2;
        v19[3] = &unk_1E7F0B588;
        v19[4] = self;
        v20 = v5;
        dispatch_async(Property, v19);
        v11 = v20;
      }
    }

    else
    {
      v12 = ne_log_obj();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "remediateWithDecisionHandler: dont expect remediation", buf, 2u);
      }

      if (self)
      {
        self = objc_getProperty(self, v13, 144, 1);
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__NEFilterSource_remediateWithDecisionHandler___block_invoke;
      block[3] = &unk_1E7F0B600;
      v22 = v5;
      dispatch_async(&self->super, block);
      v6 = v22;
    }
  }
}

uint64_t __47__NEFilterSource_remediateWithDecisionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __47__NEFilterSource_remediateWithDecisionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    *uuid = 0;
    v23 = 0;
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 80, 1);
    }

    [Property getUUIDBytes:uuid];
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, "command", 5);
    xpc_dictionary_set_uuid(v6, "flow-uuid", uuid);
    v7 = [*(a1 + 40) absoluteString];
    xpc_dictionary_set_string(v6, "url", [v7 UTF8String]);

    v8 = *(a1 + 48);
    if (v8)
    {
      v9 = [v8 absoluteString];
      xpc_dictionary_set_string(v6, "parent-url", [v9 UTF8String]);
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 192);
    }

    v18 = *(a1 + 32);
    v19 = *(a1 + 56);
    ne_filter_send_message();
  }

  else
  {
    *(*(a1 + 32) + 24) = 2;
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *uuid = 0;
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, "remediateWithDecisionHandler: could not establish connection to data provider", uuid, 2u);
    }

    v14 = *(a1 + 32);
    if (v14)
    {
      v15 = objc_getProperty(v14, v13, 144, 1);
    }

    else
    {
      v15 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__NEFilterSource_remediateWithDecisionHandler___block_invoke_85;
    block[3] = &unk_1E7F0B588;
    v16 = *(a1 + 56);
    block[4] = *(a1 + 32);
    v21 = v16;
    dispatch_async(v15, block);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)connectToFilterUnit:(void *)a3 withCompletionHandler:
{
  v4 = a3;
  if (v4)
  {
    v5 = *(a1 + 192);
    v6 = ne_filter_copy_connection();
    if (v6)
    {
      v4[2](v4, v6);
    }

    else
    {
      v7 = *(a1 + 192);
      v8 = v4;
      ne_filter_request_connection();
    }
  }
}

void __60__NEFilterSource_connectToFilterUnit_withCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(v3 + 192);
    }

    v7 = ne_filter_copy_connection();
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

uint64_t __47__NEFilterSource_remediateWithDecisionHandler___block_invoke_85(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __47__NEFilterSource_remediateWithDecisionHandler___block_invoke_2_86(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 80, 1);
    }

    *buf = 138412546;
    v18 = Property;
    v19 = 2112;
    v20 = v3;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "NEFilterSource got remediation reply %@: %@", buf, 0x16u);
  }

  if (!v3 || MEMORY[0x1BFAFC5E0](v3) != MEMORY[0x1E69E9E80])
  {
    v7 = *(a1 + 32);
LABEL_5:
    v8 = 2;
    goto LABEL_6;
  }

  v13 = xpc_dictionary_get_BOOL(v3, "verdict-drop");
  v7 = *(a1 + 32);
  if (v13)
  {
    goto LABEL_5;
  }

  v8 = 1;
LABEL_6:
  *(v7 + 24) = v8;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = objc_getProperty(v9, v6, 144, 1);
  }

  else
  {
    v10 = 0;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47__NEFilterSource_remediateWithDecisionHandler___block_invoke_87;
  v15[3] = &unk_1E7F0B588;
  v11 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v11;
  dispatch_async(v10, v15);

  v12 = *MEMORY[0x1E69E9840];
}

void __47__NEFilterSource_remediateWithDecisionHandler___block_invoke_87(uint64_t a1)
{
  v3 = a1 + 32;
  v1 = *(a1 + 32);
  v2 = *(v3 + 8);
  v4 = v1[3];
  v5 = [(NEFilterSource *)v1 filterOptions];
  (*(v2 + 16))(v2, v4, v5);
}

- (id)filterOptions
{
  if (!a1)
  {
    goto LABEL_15;
  }

  if ([a1 status] == 2)
  {
    v3 = objc_alloc_init(NEFilterBlockPage);
    v4 = [a1 url];
    v6 = [v4 absoluteString];
    if (v3)
    {
      objc_setProperty_atomic_copy(v3, v5, v6, 24);
    }

    if (objc_getProperty(a1, v7, 160, 1))
    {
      Property = objc_getProperty(a1, v8, 160, 1);
      if (v3)
      {
        objc_setProperty_atomic_copy(v3, v10, Property, 32);
        objc_setProperty_atomic_copy(v3, v11, &stru_1F3880810, 40);
      }

      if ([objc_getProperty(a1 v10])
      {
        v12 = objc_getProperty(a1, v8, 168, 1);
        if (v3)
        {
          v13 = v12;
LABEL_20:
          v25 = v3;
          v26 = 48;
          goto LABEL_21;
        }
      }

      else if (v3)
      {
        v13 = @"Request Access";
        goto LABEL_20;
      }
    }

    else if (v3)
    {
      v13 = @"display:none";
      v25 = v3;
      v26 = 40;
LABEL_21:
      objc_setProperty_atomic_copy(v25, v8, v13, v26);
    }

    if (objc_getProperty(a1, v8, 176, 1))
    {
      v28 = objc_getProperty(a1, v27, 176, 1);
      v29 = v28;
      if (v3)
      {
        if (v28 && [v28 length])
        {
          v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@" by &ldquo%@&rdquo;", v29];;
        }

        else
        {
          v30 = &stru_1F3880810;
        }

        organization = v3->_organization;
        v3->_organization = &v30->isa;
      }
    }

    v32 = [(NEFilterBlockPage *)v3 page];
    if (v32)
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v33 = [v32 dataUsingEncoding:4];
      v34 = [v33 copy];
      [v14 setObject:v34 forKeyedSubscript:@"PageData"];

      if (objc_getProperty(a1, v35, 160, 1))
      {
        [v14 setObject:objc_getProperty(a1 forKeyedSubscript:{v36, 160, 1), @"RemediationURL"}];
      }
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_45;
  }

  if (!objc_getProperty(a1, v2, 152, 1))
  {
LABEL_15:
    v14 = 0;
    goto LABEL_45;
  }

  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v15 = [a1 url];

  if (v15)
  {
    v17 = [a1 url];
    v18 = [v17 absoluteString];
    v20 = objc_getProperty(a1, v19, 152, 1);
    v21 = v18;
    v22 = v20;
    v23 = &stru_1F3880810;
    if ([v21 containsString:@"?"])
    {
      v24 = @"&";
    }

    else
    {
      if ([v21 characterAtIndex:{objc_msgSend(v21, "length") - 1}] != 47)
      {
        v23 = @"/";
      }

      v24 = @"?";
    }

    v37 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v38 = [v22 stringByAddingPercentEncodingWithAllowedCharacters:v37];

    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@", v21, v23, v24, v38];
    v40 = [MEMORY[0x1E695DFF8] URLWithString:v39];
    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    if (v41)
    {
      [v14 setObject:v41 forKeyedSubscript:@"RedirectURL"];
    }
  }

  v42 = [objc_getProperty(a1 v16];
  [v14 setObject:v42 forKeyedSubscript:@"URLAppendString"];

  objc_setProperty_atomic(a1, v43, 0, 152);
LABEL_45:

  return v14;
}

- (void)finishedLoadingWithDecisionHandler:(id)a3
{
  v5 = a3;
  if (self)
  {
    v6 = objc_getProperty(self, v4, 216, 1);
    Property = objc_getProperty(self, v7, 144, 1);
  }

  else
  {
    v6 = 0;
    Property = 0;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__NEFilterSource_finishedLoadingWithDecisionHandler___block_invoke;
  v10[3] = &unk_1E7F0B588;
  v10[4] = self;
  v11 = v5;
  v9 = v5;
  dispatch_group_notify(v6, Property, v10);
}

void __53__NEFilterSource_finishedLoadingWithDecisionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if ((*(v1 + 8) & 1) != 0 && !*(v1 + 16))
    {
      *(v1 + 24) = 1;
      Property = objc_getProperty(v1, v3, 144, 1);
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke;
      v18 = &unk_1E7F0B588;
      v19 = v1;
      v20 = v4;
      dispatch_async(Property, &v15);
      v13 = v20;
    }

    else
    {
      if (!objc_getProperty(v1, v3, 128, 1))
      {
        v7 = objc_getProperty(v1, v6, 144, 1);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_2;
        block[3] = &unk_1E7F0B600;
        v25 = v4;
        dispatch_async(v7, block);
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_3;
      aBlock[3] = &unk_1E7F0B588;
      aBlock[4] = v1;
      v8 = v4;
      v23 = v8;
      v9 = _Block_copy(aBlock);
      v11 = objc_getProperty(v1, v10, 128, 1);
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_5;
      v18 = &unk_1E7F077B8;
      v19 = v1;
      v20 = v8;
      v21 = v9;
      v12 = v9;
      [(NEFilterSource *)v1 prepareAgentForResponse:v11 handler:&v15];

      v13 = v23;
    }
  }
}

uint64_t __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_3(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 144, 1);
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_4;
  v6[3] = &unk_1E7F0B588;
  v6[4] = v5;
  v7 = *(a1 + 40);
  dispatch_async(Property, v6);
}

void __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_16;
  }

  v6 = *(v5 + 16);
  if (!v4 || !v6)
  {
    if (v6)
    {
      v14 = 2;
LABEL_17:
      *(v5 + 24) = v14;
      v15 = *(a1 + 32);
      if (v15)
      {
        Property = objc_getProperty(v15, v3, 144, 1);
      }

      else
      {
        Property = 0;
      }

      length_4[0] = MEMORY[0x1E69E9820];
      length_4[1] = 3221225472;
      length_4[2] = __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_6;
      length_4[3] = &unk_1E7F0B588;
      v17 = *(a1 + 40);
      length_4[4] = *(a1 + 32);
      v28 = v17;
      dispatch_async(Property, length_4);

      goto LABEL_25;
    }

LABEL_16:
    v14 = 1;
    goto LABEL_17;
  }

  if ([v5 status] == 3)
  {
    *uuid = 0;
    v33 = 0;
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = objc_getProperty(v8, v7, 80, 1);
    }

    [v8 getUUIDBytes:uuid];
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v9, "command", 4);
    xpc_dictionary_set_uuid(v9, "flow-uuid", uuid);
    xpc_dictionary_set_int64(v9, "direction", 2);
    v10 = *(a1 + 32);
    if (v10)
    {
      v11 = *(v10 + 200);
    }

    else
    {
      v11 = 0;
    }

    xpc_dictionary_set_int64(v9, "byte-count-inbound", v11);
    v12 = *(a1 + 32);
    if (v12)
    {
      v13 = *(v12 + 208);
    }

    else
    {
      v13 = 0;
    }

    xpc_dictionary_set_int64(v9, "byte-count-outbound", v13);
    memset(bytes, 0, sizeof(bytes));
    length = 0;
    if ([(NEFilterSource *)*(a1 + 32) generateCryptoSignature:&length length:?])
    {
      xpc_dictionary_set_data(v9, "crypto-signature", bytes, length);
    }

    else
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 32);
        if (v23)
        {
          v23 = objc_getProperty(v23, v19, 80, 1);
        }

        *buf = 138412290;
        v30 = v23;
        _os_log_error_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_ERROR, "NEFilterSource failed to sign data complete message for %@", buf, 0xCu);
      }
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      v21 = *(v20 + 192);
    }

    v24 = *(a1 + 32);
    v25 = *(a1 + 48);
    ne_filter_send_message();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_25:

  v22 = *MEMORY[0x1E69E9840];
}

- (void)prepareAgentForResponse:(void *)a3 handler:
{
  v49 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v5 = a3;
    v6 = a2;
    v7 = [v6 URL];
    objc_setProperty_atomic(a1, v8, v6, 128);

    [a1 setUrl:v7];
    if ((*(a1 + 8) & 1) == 0)
    {
      v9 = objc_alloc_init(MEMORY[0x1E6977E40]);
      [v9 setUrl:v7];
      [v9 setPid:{objc_msgSend(a1, "sourceAppPid")}];
      v10 = [a1 sourceAppIdentifier];
      if ([v10 isEqualToString:@"com.apple.SafariViewService"])
      {
        v11 = [v9 pid];

        if (v11 >= 1)
        {
          [a1 setSourceAppIdentifier:0];
        }
      }

      else
      {
      }

      v12 = [a1 sourceAppIdentifier];
      [v9 setSourceApplicationWithBundleID:v12];

      if (![v9 pid])
      {
        v13 = [v9 effectiveBundleID];

        if (!v13)
        {
          v14 = ne_log_obj();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buffer[0]) = 0;
            _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "WebKit did not give us any information", buffer, 2u);
          }
        }
      }

      if ([a1 sourceAppPid] >= 1)
      {
        v15 = [a1 sourceAppPid];
        if (v15 != getpid())
        {
          v48 = 0;
          memset(buffer, 0, sizeof(buffer));
          if (proc_pidinfo([a1 sourceAppPid], 17, 1uLL, buffer, 56) == 56)
          {
            v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buffer];
            [v9 setProcessUUID:v16];

            v17 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buffer];
            [v9 setEffectiveProcessUUID:v17];
          }

          else
          {
            v17 = ne_log_obj();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v46 = [a1 sourceAppPid];
              _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "Failed to convert from PID (%d) to UUID", buf, 8u);
            }
          }
        }
      }

      v18 = [v7 host];
      if (v18)
      {
        v19 = [v7 port];
        v20 = [v19 stringValue];
        if (v20)
        {
          v21 = MEMORY[0x1E6977E28];
          [v7 host];
          v22 = v44 = v5;
          v23 = [v7 port];
          v24 = [v23 stringValue];
          v25 = [v21 endpointWithHostname:v22 port:v24];

          v5 = v44;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      v26 = [objc_alloc(MEMORY[0x1E6977E50]) initWithEndpoint:v25 parameters:v9];
      objc_setProperty_atomic(a1, v27, v26, 72);

      v29 = [objc_getProperty(a1 v28];
      v30 = [v29 clientID];
      objc_setProperty_atomic(a1, v31, v30, 80);

      v33 = [objc_getProperty(a1 v32];
      *(a1 + 16) = [v33 filterControlUnit];
    }

    v34 = [a1 url];
    v36 = objc_getProperty(a1, v35, 136, 1);
    v38 = objc_getProperty(a1, v37, 128, 1);
    v40 = objc_getProperty(a1, v39, 184, 1);
    Property = objc_getProperty(a1, v41, 80, 1);
    [(NEFilterSource *)a1 prepareAgentForURL:v34 urlRequest:v36 urlResponse:v38 parentURL:v40 direction:2 flowUUID:Property handler:v5];
  }

  v43 = *MEMORY[0x1E69E9840];
}

- (void)prepareAgentForURL:(void *)a3 urlRequest:(void *)a4 urlResponse:(void *)a5 parentURL:(uint64_t)a6 direction:(void *)a7 flowUUID:(void *)a8 handler:
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a8;
  v21 = v20;
  if (v20)
  {
    v22 = *(a1 + 16);
    if (v22)
    {
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __97__NEFilterSource_prepareAgentForURL_urlRequest_urlResponse_parentURL_direction_flowUUID_handler___block_invoke;
      v24[3] = &unk_1E7F07768;
      v24[4] = a1;
      v30 = v20;
      v25 = v19;
      v26 = v15;
      v27 = v18;
      v28 = v16;
      v29 = v17;
      v31 = a6;
      [(NEFilterSource *)a1 connectToFilterUnit:v22 withCompletionHandler:v24];
    }

    else
    {
      *(a1 + 24) = 1;
      v23 = ne_log_obj();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1BA83C000, v23, OS_LOG_TYPE_DEBUG, "prepareAgentForURL: controlUnit = 0, skipping content filtering", buf, 2u);
      }

      v21[2](v21, 0);
    }
  }
}

void __97__NEFilterSource_prepareAgentForURL_urlRequest_urlResponse_parentURL_direction_flowUUID_handler___block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v3)
  {
    *(v4 + 24) = 2;
    v5 = *(*(a1 + 80) + 16);
    goto LABEL_6;
  }

  if (v4 && (*(v4 + 8) & 1) != 0)
  {
    v5 = *(*(a1 + 80) + 16);
LABEL_6:
    v5();
    goto LABEL_27;
  }

  *uuid = 0;
  v33 = 0;
  [*(a1 + 40) getUUIDBytes:uuid];
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "command", 2);
  xpc_dictionary_set_uuid(v6, "flow-uuid", uuid);
  v7 = [*(a1 + 48) absoluteString];
  xpc_dictionary_set_string(v6, "url", [v7 UTF8String]);

  v8 = [*(a1 + 32) sourceAppIdentifier];

  if (v8)
  {
    v9 = [*(a1 + 32) sourceAppIdentifier];
    xpc_dictionary_set_string(v6, "source-app-bundle-id", [v9 UTF8String]);
  }

  if ([*(a1 + 32) sourceAppPid])
  {
    xpc_dictionary_set_uint64(v6, "source-app-pid", [*(a1 + 32) sourceAppPid]);
  }

  v10 = getpid();
  xpc_dictionary_set_uint64(v6, "source-pid", v10);
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = [v11 absoluteString];
    xpc_dictionary_set_string(v6, "parent-url", [v12 UTF8String]);
  }

  if (*(a1 + 64))
  {
    v13 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v13 encodeObject:*(a1 + 64) forKey:@"URL_Request"];
    [v13 finishEncoding];
    v14 = [v13 encodedData];
    xpc_dictionary_set_data(v6, "url-request", [v14 bytes], objc_msgSend(v14, "length"));
  }

  if (*(a1 + 72))
  {
    v15 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v15 encodeObject:*(a1 + 72) forKey:@"URL_Response"];
    [v15 finishEncoding];
    v16 = [v15 encodedData];
    xpc_dictionary_set_data(v6, "url-response", [v16 bytes], objc_msgSend(v16, "length"));
  }

  xpc_dictionary_set_int64(v6, "direction", *(a1 + 88));
  xpc_dictionary_set_uint64(v6, "connection-direction", 1uLL);
  xpc_dictionary_set_uint64(v6, "socket-identifier", [*(a1 + 32) socketIdentifier]);
  memset(bytes, 0, sizeof(bytes));
  length = 0;
  if ([(NEFilterSource *)*(a1 + 32) generateCryptoSignature:&length length:?])
  {
    xpc_dictionary_set_data(v6, "crypto-signature", bytes, length);
  }

  else
  {
    v17 = ne_log_obj();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 40);
      length_4 = 138412290;
      v30 = v23;
      _os_log_error_impl(&dword_1BA83C000, v17, OS_LOG_TYPE_ERROR, "NEFilterSource failed to sign new flow message for %@", &length_4, 0xCu);
    }
  }

  v18 = ne_log_obj();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 40);
    length_4 = 138412290;
    v30 = v22;
    _os_log_debug_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_DEBUG, "NEFilterSource send new flow %@", &length_4, 0xCu);
  }

  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 192);
  }

  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  v27 = *(a1 + 80);
  v26 = v3;
  ne_filter_send_message();

LABEL_27:
  v21 = *MEMORY[0x1E69E9840];
}

- (uint64_t)generateCryptoSignature:(_DWORD *)a3 length:
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v3 = 0;
    goto LABEL_14;
  }

  v3 = 0;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (a2 && a3)
  {
    [objc_getProperty(a1 a2];
    DWORD2(v19) = 1;
    HIDWORD(v23) = [a1 sourceAppPid];
    DWORD2(v23) = getpid();
    v6 = a1[26];
    *(&v27 + 1) = a1[25];
    v28 = v6;
    v7 = [a1 sourceAppIdentifier];
    v8 = [v7 UTF8String];

    v9 = [a1 url];
    v10 = [v9 absoluteString];
    v11 = [v10 UTF8String];

    *a3 = 32;
    v12 = a1[24];
    if (v8)
    {
      strlen(v8);
      if (!v11)
      {
LABEL_8:
        v3 = ne_filter_sign_data();
        v13 = ne_log_obj();
        v14 = v13;
        if (v3)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_DEBUG, "generateCryptoSignature: signed flow message", buf, 2u);
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "generateCryptoSignature: Failed to sign flow message", buf, 2u);
        }

        goto LABEL_14;
      }
    }

    else if (!v11)
    {
      goto LABEL_8;
    }

    strlen(v11);
    goto LABEL_8;
  }

LABEL_14:
  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

void __97__NEFilterSource_prepareAgentForURL_urlRequest_urlResponse_parentURL_direction_flowUUID_handler___block_invoke_20(void *a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3 || MEMORY[0x1BFAFC5E0](v3) != MEMORY[0x1E69E9E80])
  {
    *(a1[4] + 24) = 2;
    v5 = ne_log_obj();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v34) = 0;
      _os_log_debug_impl(&dword_1BA83C000, v5, OS_LOG_TYPE_DEBUG, "NEFilterSource could not add new flow", &v34, 2u);
    }

LABEL_5:

    goto LABEL_6;
  }

  v8 = xpc_dictionary_get_BOOL(v4, "verdict-drop");
  v9 = ne_log_obj();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v33 = a1[5];
    v34 = 138412546;
    v35 = v33;
    v36 = 2112;
    v37 = v4;
    _os_log_debug_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_DEBUG, "NEFilterSource got new-flow reply %@: %@", &v34, 0x16u);
  }

  if (v8)
  {
    *(a1[4] + 24) = 2;
    string = xpc_dictionary_get_string(v4, "remediation-url");
    if (string)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v13 = a1[4];
      if (v13)
      {
        objc_setProperty_atomic(v13, v11, v12, 160);
      }

      Property = a1[4];
      if (Property)
      {
        Property = objc_getProperty(Property, v14, 160, 1);
      }

      if ([Property isEqualToString:@"x-apple-content-filter://nefilter-unblock"])
      {
        v16 = a1[4];
        if (v16)
        {
          *(v16 + 9) = 1;
        }
      }
    }

    v17 = xpc_dictionary_get_string(v4, "remediation-button-text");
    if (v17)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
      v20 = a1[4];
      if (v20)
      {
        objc_setProperty_atomic(v20, v18, v19, 168);
      }
    }

    v21 = xpc_dictionary_get_string(v4, "organization");
    if (v21)
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
      v24 = a1[4];
      if (v24)
      {
        objc_setProperty_atomic(v24, v22, v23, 176);
      }
    }
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(v4, "verdict-peek");
    v26 = a1[4];
    if (v26)
    {
      *(v26 + 112) = uint64;
    }

    *(a1[4] + 120) = xpc_dictionary_get_uint64(v4, "verdict-pass");
    v27 = a1[4];
    if (*(v27 + 120) == -1)
    {
      v28 = 1;
    }

    else
    {
      v28 = 3;
    }

    *(v27 + 24) = v28;
  }

  v29 = a1[4];
  if (v29)
  {
    *(v29 + 8) = 1;
  }

  v30 = xpc_dictionary_get_string(v4, "url-append-string");
  if (v30)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v30];
    v32 = a1[4];
    if (v32)
    {
      objc_setProperty_atomic(v32, v31, v5, 152);
    }

    goto LABEL_5;
  }

LABEL_6:
  v6 = a1[6];
  (*(a1[7] + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_84(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 80, 1);
    }

    v26 = 138412546;
    v27 = Property;
    v28 = 2112;
    v29 = v3;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "NEFilterSource finishedLoadingWithDecisionHandler got inbound-data-completion reply %@: %@", &v26, 0x16u);
  }

  if (!v3 || MEMORY[0x1BFAFC5E0](v3) != MEMORY[0x1E69E9E80])
  {
    v6 = *(a1 + 32);
    v7 = 2;
LABEL_5:
    *(v6 + 24) = v7;
    goto LABEL_6;
  }

  v9 = xpc_dictionary_get_BOOL(v3, "verdict-drop");
  v6 = *(a1 + 32);
  if (!v9)
  {
    v7 = 1;
    goto LABEL_5;
  }

  *(v6 + 24) = 2;
  string = xpc_dictionary_get_string(v3, "remediation-url");
  if (string)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v13 = *(a1 + 32);
    if (v13)
    {
      objc_setProperty_atomic(v13, v11, v12, 160);
    }

    v15 = *(a1 + 32);
    if (v15)
    {
      v15 = objc_getProperty(v15, v14, 160, 1);
    }

    if ([v15 isEqualToString:@"x-apple-content-filter://nefilter-unblock"])
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        *(v16 + 9) = 1;
      }
    }
  }

  v17 = xpc_dictionary_get_string(v3, "remediation-button-text");
  if (v17)
  {
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v17];
    v20 = *(a1 + 32);
    if (v20)
    {
      objc_setProperty_atomic(v20, v18, v19, 168);
    }
  }

  v21 = xpc_dictionary_get_string(v3, "organization");
  if (v21)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v21];
    v24 = *(a1 + 32);
    if (v24)
    {
      objc_setProperty_atomic(v24, v22, v23, 176);
    }
  }

LABEL_6:
  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

void __59__NEFilterSource_handleFinishedLoadingWithDecisionHandler___block_invoke_4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_setProperty_atomic(v3, a2, 0, 128);
    v3 = *(a1 + 32);
  }

  v4 = *(a1 + 40);
  v5 = [v3 status];
  v6 = [(NEFilterSource *)*(a1 + 32) filterOptions];
  (*(v4 + 16))(v4, v5, v6);
}

- (void)receivedData:(id)a3 decisionHandler:(id)a4
{
  v6 = a3;
  v8 = a4;
  if (v8)
  {
    if (self && self->_controlUnit)
    {
      if (objc_getProperty(self, v7, 128, 1))
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __47__NEFilterSource_receivedData_decisionHandler___block_invoke_3;
        aBlock[3] = &unk_1E7F0B588;
        aBlock[4] = self;
        v10 = v8;
        v25 = v10;
        v11 = _Block_copy(aBlock);
        Property = objc_getProperty(self, v12, 216, 1);
        dispatch_group_enter(Property);
        v15 = objc_getProperty(self, v14, 128, 1);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __47__NEFilterSource_receivedData_decisionHandler___block_invoke_5;
        v20[3] = &unk_1E7F07808;
        v20[4] = self;
        v22 = v10;
        v23 = v11;
        v21 = v6;
        v16 = v11;
        [(NEFilterSource *)self prepareAgentForResponse:v15 handler:v20];

        v17 = v25;
      }

      else
      {
        v19 = objc_getProperty(self, v9, 144, 1);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __47__NEFilterSource_receivedData_decisionHandler___block_invoke_2;
        v26[3] = &unk_1E7F0B600;
        v27 = v8;
        dispatch_async(v19, v26);
        v17 = v27;
      }
    }

    else
    {
      self->_status = 1;
      v18 = objc_getProperty(self, v7, 144, 1);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__NEFilterSource_receivedData_decisionHandler___block_invoke;
      block[3] = &unk_1E7F0B588;
      block[4] = self;
      v29 = v8;
      dispatch_async(v18, block);
      v17 = v29;
    }
  }
}

uint64_t __47__NEFilterSource_receivedData_decisionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __47__NEFilterSource_receivedData_decisionHandler___block_invoke_3(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 144, 1);
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__NEFilterSource_receivedData_decisionHandler___block_invoke_4;
  v6[3] = &unk_1E7F0B588;
  v6[4] = v5;
  v7 = *(a1 + 40);
  dispatch_async(Property, v6);
}

void __47__NEFilterSource_receivedData_decisionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (!v5)
  {
    goto LABEL_15;
  }

  v6 = *(v5 + 16);
  if (!v4 || !v6)
  {
    if (v6)
    {
      v13 = 2;
LABEL_16:
      *(v5 + 24) = v13;
      v14 = *(a1 + 32);
      if (v14)
      {
        Property = objc_getProperty(v14, v3, 144, 1);
      }

      else
      {
        Property = 0;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __47__NEFilterSource_receivedData_decisionHandler___block_invoke_6;
      block[3] = &unk_1E7F0B588;
      v16 = *(a1 + 48);
      block[4] = *(a1 + 32);
      v22 = v16;
      dispatch_async(Property, block);
      v18 = *(a1 + 32);
      if (v18)
      {
        v18 = objc_getProperty(v18, v17, 216, 1);
      }

      dispatch_group_leave(v18);
      v12 = v22;
      goto LABEL_21;
    }

LABEL_15:
    v13 = 1;
    goto LABEL_16;
  }

  if ([v5 status] == 3)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = objc_getProperty(v8, v7, 64, 1);
    }

    [v8 appendData:*(a1 + 40)];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) length];
    if (v9)
    {
      *(v9 + 200) += v10;
    }

    v11 = *(a1 + 32);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __47__NEFilterSource_receivedData_decisionHandler___block_invoke_7;
    v19[3] = &unk_1E7F0B600;
    v20 = *(a1 + 56);
    if (([(NEFilterSource *)v11 sendDataToPluginWithConnection:v4 completionHandler:v19]& 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
    }

    v12 = v20;
LABEL_21:

    goto LABEL_22;
  }

  (*(*(a1 + 56) + 16))();
LABEL_22:
}

uint64_t __47__NEFilterSource_receivedData_decisionHandler___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

- (uint64_t)sendDataToPluginWithConnection:(void *)a3 completionHandler:
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!a1)
  {
    goto LABEL_22;
  }

  if (*(a1 + 120) == -1 || ![objc_getProperty(a1 v6] || (v8 = *(a1 + 120), v9 = *(a1 + 104), v8 >= objc_msgSend(objc_getProperty(a1, v6, 64, 1), "length") + v9))
  {
    v12 = objc_getProperty(a1, v6, 64, 1);
    [v12 replaceBytesInRange:0 withBytes:objc_msgSend(objc_getProperty(a1 length:{v13, 64, 1), "length"), 0, 0}];

    goto LABEL_8;
  }

  v10 = *(a1 + 120);
  v11 = *(a1 + 104);
  if (v10 > v11)
  {
    [objc_getProperty(a1 v6];
LABEL_8:
    *(a1 + 104) = *(a1 + 120);
  }

  v14 = [objc_getProperty(a1 v6];
  v16 = *(a1 + 104);
  if (v14 >= *(a1 + 112) - v16)
  {
    v17 = *(a1 + 112) - v16;
  }

  else
  {
    v17 = v14;
  }

  if (*(a1 + 88) == v16 && *(a1 + 96) == v17)
  {
    v18 = ne_log_obj();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_INFO, "Duplicate request made.", buf, 2u);
    }

    goto LABEL_21;
  }

  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  if (!v17)
  {
LABEL_21:
    a1 = 0;
    goto LABEL_22;
  }

  *buf = 0;
  v32 = 0;
  [objc_getProperty(a1 v15];
  v19 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v19, "command", 3);
  xpc_dictionary_set_uuid(v19, "flow-uuid", buf);
  v21 = [objc_getProperty(a1 v20];
  xpc_dictionary_set_data(v19, "data", v21, v17);
  xpc_dictionary_set_uint64(v19, "data-start-offset", *(a1 + 104));
  xpc_dictionary_set_int64(v19, "direction", 2);
  if (objc_getProperty(a1, v22, 128, 1))
  {
    v23 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v23 encodeObject:objc_getProperty(a1 forKey:{v24, 128, 1), @"URL_Response"}];
    [v23 finishEncoding];
    v25 = [v23 encodedData];
    xpc_dictionary_set_data(v19, "url-response", [v25 bytes], objc_msgSend(v25, "length"));
  }

  v26 = *(a1 + 192);
  v29 = v5;
  v30 = v7;
  ne_filter_send_message();

  a1 = 1;
LABEL_22:

  v27 = *MEMORY[0x1E69E9840];
  return a1;
}

void __67__NEFilterSource_sendDataToPluginWithConnection_completionHandler___block_invoke(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 80, 1);
    }

    v29 = 138412546;
    v30 = Property;
    v31 = 2112;
    v32 = v3;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "NEFilterSource got send-inbound-data reply %@: %@", &v29, 0x16u);
  }

  if (v3 && MEMORY[0x1BFAFC5E0](v3) == MEMORY[0x1E69E9E80])
  {
    if (xpc_dictionary_get_BOOL(v3, "verdict-drop"))
    {
      *(a1[4] + 24) = 2;
      string = xpc_dictionary_get_string(v3, "remediation-url");
      if (string)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
        v12 = a1[4];
        if (v12)
        {
          objc_setProperty_atomic(v12, v10, v11, 160);
        }

        v14 = a1[4];
        if (v14)
        {
          v14 = objc_getProperty(v14, v13, 160, 1);
        }

        if ([v14 isEqualToString:@"x-apple-content-filter://nefilter-unblock"])
        {
          v15 = a1[4];
          if (v15)
          {
            *(v15 + 9) = 1;
          }
        }
      }

      v16 = xpc_dictionary_get_string(v3, "remediation-button-text");
      if (v16)
      {
        v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v16];
        v19 = a1[4];
        if (v19)
        {
          objc_setProperty_atomic(v19, v17, v18, 168);
        }
      }

      v20 = xpc_dictionary_get_string(v3, "organization");
      if (v20)
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v20];
        v23 = a1[4];
        if (v23)
        {
          objc_setProperty_atomic(v23, v21, v22, 176);
        }
      }

      goto LABEL_6;
    }

    uint64 = xpc_dictionary_get_uint64(v3, "verdict-peek");
    v25 = a1[4];
    if (v25)
    {
      *(v25 + 112) = uint64;
    }

    v26 = xpc_dictionary_get_uint64(v3, "verdict-pass");
    v6 = a1[4];
    v27 = *(v6 + 120);
    if (v26 > v27)
    {
      *(v6 + 120) = v26;
      v6 = a1[4];
      v27 = *(v6 + 120);
    }

    if (v27 != -1)
    {
      *(v6 + 24) = 3;
      if (([(NEFilterSource *)a1[4] sendDataToPluginWithConnection:a1[6] completionHandler:?]& 1) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    v7 = 1;
  }

  else
  {
    v6 = a1[4];
    v7 = 2;
  }

  *(v6 + 24) = v7;
LABEL_6:
  (*(a1[6] + 16))();
LABEL_7:

  v8 = *MEMORY[0x1E69E9840];
}

void __47__NEFilterSource_receivedData_decisionHandler___block_invoke_4(uint64_t a1)
{
  v3 = [*(a1 + 32) status];
  v4 = *(a1 + 32);
  if (v3 != 3 && v4)
  {
    objc_setProperty_atomic(v4, v2, 0, 128);
    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v6 = [v4 status];
  v7 = [(NEFilterSource *)*(a1 + 32) filterOptions];
  (*(v5 + 16))(v5, v6, v7);

  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v8, 216, 1);
  }

  dispatch_group_leave(Property);
}

- (void)receivedResponse:(id)a3 decisionHandler:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__NEFilterSource_receivedResponse_decisionHandler___block_invoke;
    v8[3] = &unk_1E7F07A78;
    v8[4] = self;
    v9 = v6;
    [(NEFilterSource *)self prepareAgentForResponse:a3 handler:v8];
  }
}

void __51__NEFilterSource_receivedResponse_decisionHandler___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 144, 1);
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__NEFilterSource_receivedResponse_decisionHandler___block_invoke_2;
  v6[3] = &unk_1E7F0B588;
  v6[4] = v5;
  v7 = *(a1 + 40);
  dispatch_async(Property, v6);
}

void __51__NEFilterSource_receivedResponse_decisionHandler___block_invoke_2(uint64_t a1)
{
  v3 = [*(a1 + 32) status];
  v4 = *(a1 + 32);
  if (v3 != 3 && v4)
  {
    objc_setProperty_atomic(v4, v2, 0, 128);
    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v6 = [v4 status];
  v7 = [(NEFilterSource *)*(a1 + 32) filterOptions];
  (*(v5 + 16))(v5, v6, v7);
}

- (void)willSendRequest:(id)a3 decisionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke;
    aBlock[3] = &unk_1E7F0AAA0;
    aBlock[4] = self;
    v22 = v6;
    v8 = v7;
    v23 = v8;
    v9 = _Block_copy(aBlock);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_4;
    v19[3] = &unk_1E7F0B588;
    v19[4] = self;
    v10 = v8;
    v20 = v10;
    v12 = _Block_copy(v19);
    if (self && objc_getProperty(self, v11, 128, 1))
    {
      Property = objc_getProperty(self, v13, 128, 1);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_6;
      v15[3] = &unk_1E7F077E0;
      v15[4] = self;
      v16 = v10;
      v17 = v12;
      v18 = v9;
      [(NEFilterSource *)self prepareAgentForResponse:v15 handler:?];
    }

    else
    {
      v9[2](v9);
    }
  }
}

void __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_2;
  v49[3] = &unk_1E7F07A78;
  v49[4] = v1;
  v3 = *(a1 + 48);
  v50 = v3;
  if (v1)
  {
    v4 = v49;
    v5 = v2;
    v6 = [v5 URL];
    objc_setProperty_atomic(v1, v7, 0, 128);
    v8 = objc_alloc_init(MEMORY[0x1E6977E40]);
    [v8 setUrl:v6];
    [v8 setPid:{objc_msgSend(v1, "sourceAppPid")}];
    v9 = [v1 sourceAppIdentifier];
    if ([v9 isEqualToString:@"com.apple.SafariViewService"])
    {
      v10 = [v8 pid];

      if (v10 >= 1)
      {
        [v1 setSourceAppIdentifier:0];
      }
    }

    else
    {
    }

    v11 = [v1 sourceAppIdentifier];
    [v8 setSourceApplicationWithBundleID:v11];

    if (![v8 pid])
    {
      v12 = [v8 effectiveBundleID];

      if (!v12)
      {
        v13 = ne_log_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buffer[0]) = 0;
          _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "WebKit did not give us any information", buffer, 2u);
        }
      }
    }

    if ([v1 sourceAppPid] >= 1)
    {
      v14 = [v1 sourceAppPid];
      if (v14 != getpid())
      {
        v54 = 0;
        memset(buffer, 0, sizeof(buffer));
        if (proc_pidinfo([v1 sourceAppPid], 17, 1uLL, buffer, 56) == 56)
        {
          v15 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buffer];
          [v8 setProcessUUID:v15];

          v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buffer];
          [v8 setEffectiveProcessUUID:v16];
        }

        else
        {
          v16 = ne_log_obj();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v46 = [v1 sourceAppPid];
            *buf = 67109120;
            v52 = v46;
            _os_log_error_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_ERROR, "Failed to convert from PID (%d) to UUID", buf, 8u);
          }
        }
      }
    }

    v17 = [v6 host];
    if (v17)
    {
      v48 = v5;
      v18 = [v6 port];
      v19 = [v18 stringValue];
      if (v19)
      {
        v20 = MEMORY[0x1E6977E28];
        [v6 host];
        v47 = v8;
        v22 = v21 = v4;
        v23 = [v6 port];
        v24 = [v23 stringValue];
        v25 = [v20 endpointWithHostname:v22 port:v24];

        v4 = v21;
        v8 = v47;
      }

      else
      {
        v25 = 0;
      }

      v5 = v48;
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_alloc(MEMORY[0x1E6977E50]) initWithEndpoint:v25 parameters:v8];
    objc_setProperty_atomic(v1, v27, v26, 72);

    v29 = [objc_getProperty(v1 v28];
    v30 = [v29 clientID];
    objc_setProperty_atomic(v1, v31, v30, 80);

    objc_setProperty_atomic(v1, v32, v5, 136);
    v33 = [v5 HTTPBody];

    *(v1 + 208) += [v33 length];
    [v1 setUrl:v6];
    v35 = [objc_getProperty(v1 v34];
    *(v1 + 16) = [v35 filterControlUnit];

    v36 = [v1 url];
    v38 = objc_getProperty(v1, v37, 136, 1);
    v40 = objc_getProperty(v1, v39, 128, 1);
    v42 = objc_getProperty(v1, v41, 184, 1);
    Property = objc_getProperty(v1, v43, 80, 1);
    [(NEFilterSource *)v1 prepareAgentForURL:v36 urlRequest:v38 urlResponse:v40 parentURL:v42 direction:1 flowUUID:Property handler:v4];

    v3 = v50;
  }

  v45 = *MEMORY[0x1E69E9840];
}

void __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_4(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 144, 1);
    v5 = *(a1 + 32);
  }

  else
  {
    v5 = 0;
    Property = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_5;
  v6[3] = &unk_1E7F0B588;
  v6[4] = v5;
  v7 = *(a1 + 40);
  dispatch_async(Property, v6);
}

void __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_6(id *a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a1[4];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5[4];
  if (!v4 || !v6)
  {
    if (v6)
    {
      v8 = 2;
LABEL_18:
      *(v5 + 3) = v8;
      v16 = a1[4];
      if (v16)
      {
        Property = objc_getProperty(v16, v3, 144, 1);
      }

      else
      {
        Property = 0;
      }

      length_4[0] = MEMORY[0x1E69E9820];
      length_4[1] = 3221225472;
      length_4[2] = __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_7;
      length_4[3] = &unk_1E7F0B588;
      v18 = a1[5];
      length_4[4] = a1[4];
      v30 = v18;
      dispatch_async(Property, length_4);

      goto LABEL_28;
    }

LABEL_17:
    v8 = 1;
    goto LABEL_18;
  }

  if ([v5 status] == 2)
  {
    v7 = a1[6];
LABEL_22:
    v7[2]();
    goto LABEL_28;
  }

  if ([a1[4] status] != 3)
  {
    v7 = a1[7];
    goto LABEL_22;
  }

  *uuid = 0;
  v35 = 0;
  v10 = a1[4];
  if (v10)
  {
    v10 = objc_getProperty(v10, v9, 80, 1);
  }

  [v10 getUUIDBytes:uuid];
  v11 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v11, "command", 4);
  xpc_dictionary_set_uuid(v11, "flow-uuid", uuid);
  xpc_dictionary_set_int64(v11, "direction", 2);
  v12 = a1[4];
  if (v12)
  {
    v13 = v12[25];
  }

  else
  {
    v13 = 0;
  }

  xpc_dictionary_set_int64(v11, "byte-count-inbound", v13);
  v14 = a1[4];
  if (v14)
  {
    v15 = v14[26];
  }

  else
  {
    v15 = 0;
  }

  xpc_dictionary_set_int64(v11, "byte-count-outbound", v15);
  memset(bytes, 0, sizeof(bytes));
  length = 0;
  if ([(NEFilterSource *)a1[4] generateCryptoSignature:&length length:?])
  {
    xpc_dictionary_set_data(v11, "crypto-signature", bytes, length);
  }

  else
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = a1[4];
      if (v24)
      {
        v24 = objc_getProperty(v24, v20, 80, 1);
      }

      *buf = 138412290;
      v32 = v24;
      _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "NEFilterSource failed to sign data complete message for %@", buf, 0xCu);
    }
  }

  v21 = a1[4];
  if (v21)
  {
    v22 = v21[24];
  }

  v25 = a1[4];
  v26 = a1[7];
  v27 = a1[6];
  ne_filter_send_message();

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_83(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 80, 1);
    }

    v27 = 138412546;
    v28 = Property;
    v29 = 2112;
    v30 = v3;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "NEFilterSource willSendRequest got inbound-data-completion reply %@: %@", &v27, 0x16u);
  }

  if (!v3 || MEMORY[0x1BFAFC5E0](v3) != MEMORY[0x1E69E9E80])
  {
    v6 = *(a1 + 32);
    v7 = 2;
LABEL_5:
    *(v6 + 24) = v7;
    goto LABEL_6;
  }

  v10 = xpc_dictionary_get_BOOL(v3, "verdict-drop");
  v6 = *(a1 + 32);
  if (!v10)
  {
    v7 = 1;
    goto LABEL_5;
  }

  *(v6 + 24) = 2;
  string = xpc_dictionary_get_string(v3, "remediation-url");
  if (string)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v14 = *(a1 + 32);
    if (v14)
    {
      objc_setProperty_atomic(v14, v12, v13, 160);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      v16 = objc_getProperty(v16, v15, 160, 1);
    }

    if ([v16 isEqualToString:@"x-apple-content-filter://nefilter-unblock"])
    {
      v17 = *(a1 + 32);
      if (v17)
      {
        *(v17 + 9) = 1;
      }
    }
  }

  v18 = xpc_dictionary_get_string(v3, "remediation-button-text");
  if (v18)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v18];
    v21 = *(a1 + 32);
    if (v21)
    {
      objc_setProperty_atomic(v21, v19, v20, 168);
    }
  }

  v22 = xpc_dictionary_get_string(v3, "organization");
  if (v22)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v22];
    v25 = *(a1 + 32);
    if (v25)
    {
      objc_setProperty_atomic(v25, v23, v24, 176);
    }
  }

LABEL_6:
  v8 = 48;
  if (*(*(a1 + 32) + 24) == 1)
  {
    v8 = 40;
  }

  (*(*(a1 + v8) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

void __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_5(uint64_t a1)
{
  v3 = [*(a1 + 32) status];
  v4 = *(a1 + 32);
  if (v3 != 3 && v4)
  {
    objc_setProperty_atomic(v4, v2, 0, 128);
    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v6 = [v4 status];
  v7 = [(NEFilterSource *)*(a1 + 32) filterOptions];
  (*(v5 + 16))(v5, v6, v7);
}

void __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_2(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    Property = objc_getProperty(v3, a2, 144, 1);
  }

  else
  {
    Property = 0;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_3;
  v6[3] = &unk_1E7F0B588;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  dispatch_async(Property, v6);
}

void __50__NEFilterSource_willSendRequest_decisionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) status];
  v4 = [(NEFilterSource *)*(a1 + 32) filterOptions];
  (*(v2 + 16))(v2, v3, v4);
}

- (NEFilterSource)initWithDecisionQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NEFilterSource;
  v6 = [(NEFilterSource *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_registered = 0;
    v6->_status = 3;
    *&v6->_peekIndex = xmmword_1BAA4E540;
    v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:0];
    pendingData = v7->_pendingData;
    v7->_pendingData = v8;

    v7->_pendingDataStartIndex = 0;
    objc_storeStrong(&v7->_queue, a3);
    v10 = dispatch_group_create();
    sendDataGroup = v7->_sendDataGroup;
    v7->_sendDataGroup = v10;

    [(NEFilterSource *)v7 initGlobals];
  }

  return v7;
}

- (void)initGlobals
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = nw_context_copy_implicit_context();
  v4 = v2;
  nw_queue_context_async();
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 192) = v6[3];

  _Block_object_dispose(&v5, 8);
}

intptr_t __29__NEFilterSource_initGlobals__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = ne_filter_get_definition();
  *(*(a1[6] + 8) + 24) = nw_context_get_globals_for_protocol();

  v4 = a1[5];

  return dispatch_semaphore_signal(v4);
}

- (void)dataCompleteWithCompletionQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__NEFilterSource_dataCompleteWithCompletionQueue_completionHandler___block_invoke;
  v10[3] = &unk_1E7F07790;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(NEFilterSource *)self prepareAgentWithHandler:v10];
}

void __68__NEFilterSource_dataCompleteWithCompletionQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = *(v4 + 16);
  if (!v3 || !v5)
  {
    if (v5)
    {
      v13 = 2;
LABEL_17:
      *(v4 + 24) = v13;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __68__NEFilterSource_dataCompleteWithCompletionQueue_completionHandler___block_invoke_2;
      block[3] = &unk_1E7F0B588;
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      block[4] = *(a1 + 32);
      v32 = v18;
      dispatch_async(v17, block);
      v16 = v32;
      goto LABEL_18;
    }

LABEL_16:
    v13 = 1;
    goto LABEL_17;
  }

  if ([v4 status] != 3)
  {
    length_4[0] = MEMORY[0x1E69E9820];
    length_4[1] = 3221225472;
    length_4[2] = __68__NEFilterSource_dataCompleteWithCompletionQueue_completionHandler___block_invoke_3;
    length_4[3] = &unk_1E7F0B588;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    length_4[4] = *(a1 + 32);
    v30 = v15;
    dispatch_async(v14, length_4);
    v16 = v30;
LABEL_18:

    goto LABEL_24;
  }

  *uuid = 0;
  v37 = 0;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v6, 80, 1);
  }

  [Property getUUIDBytes:uuid];
  v8 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v8, "command", 4);
  xpc_dictionary_set_uuid(v8, "flow-uuid", uuid);
  xpc_dictionary_set_int64(v8, "direction", 2);
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(v9 + 200);
  }

  else
  {
    v10 = 0;
  }

  xpc_dictionary_set_int64(v8, "byte-count-inbound", v10);
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 208);
  }

  else
  {
    v12 = 0;
  }

  xpc_dictionary_set_int64(v8, "byte-count-outbound", v12);
  memset(bytes, 0, sizeof(bytes));
  length = 0;
  if ([(NEFilterSource *)*(a1 + 32) generateCryptoSignature:&length length:?])
  {
    xpc_dictionary_set_data(v8, "crypto-signature", bytes, length);
  }

  else
  {
    v19 = ne_log_obj();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      if (v24)
      {
        v24 = objc_getProperty(v24, v20, 80, 1);
      }

      *buf = 138412290;
      v34 = v24;
      _os_log_error_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_ERROR, "NEFilterSource failed to sign data complete message for %@", buf, 0xCu);
    }
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = *(v21 + 192);
  }

  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  ne_filter_send_message();

LABEL_24:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)prepareAgentWithHandler:(void *)a1
{
  if (a1)
  {
    v3 = a2;
    v13 = [a1 url];
    v5 = objc_getProperty(a1, v4, 136, 1);
    v7 = objc_getProperty(a1, v6, 128, 1);
    v9 = objc_getProperty(a1, v8, 184, 1);
    v10 = [a1 direction];
    Property = objc_getProperty(a1, v11, 80, 1);
    [(NEFilterSource *)a1 prepareAgentForURL:v13 urlRequest:v5 urlResponse:v7 parentURL:v9 direction:v10 flowUUID:Property handler:v3];
  }
}

uint64_t __68__NEFilterSource_dataCompleteWithCompletionQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __68__NEFilterSource_dataCompleteWithCompletionQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) status];
  v4 = [(NEFilterSource *)*(a1 + 32) replacementData];
  (*(v2 + 16))(v2, v3, v4);
}

void __68__NEFilterSource_dataCompleteWithCompletionQueue_completionHandler___block_invoke_81(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 80, 1);
    }

    *buf = 138412546;
    v31 = Property;
    v32 = 2112;
    v33 = v3;
    _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "NEFilterSource got inbound-data-completion reply %@: %@", buf, 0x16u);
  }

  if (!v3 || MEMORY[0x1BFAFC5E0](v3) != MEMORY[0x1E69E9E80])
  {
    v6 = *(a1 + 32);
    v7 = 2;
LABEL_5:
    *(v6 + 24) = v7;
    goto LABEL_6;
  }

  v11 = xpc_dictionary_get_BOOL(v3, "verdict-drop");
  v6 = *(a1 + 32);
  if (!v11)
  {
    v7 = 1;
    goto LABEL_5;
  }

  *(v6 + 24) = 2;
  string = xpc_dictionary_get_string(v3, "remediation-url");
  if (string)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v15 = *(a1 + 32);
    if (v15)
    {
      objc_setProperty_atomic(v15, v13, v14, 160);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      v17 = objc_getProperty(v17, v16, 160, 1);
    }

    if ([v17 isEqualToString:@"x-apple-content-filter://nefilter-unblock"])
    {
      v18 = *(a1 + 32);
      if (v18)
      {
        *(v18 + 9) = 1;
      }
    }
  }

  v19 = xpc_dictionary_get_string(v3, "remediation-button-text");
  if (v19)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
    v22 = *(a1 + 32);
    if (v22)
    {
      objc_setProperty_atomic(v22, v20, v21, 168);
    }
  }

  v23 = xpc_dictionary_get_string(v3, "organization");
  if (v23)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23];
    v26 = *(a1 + 32);
    if (v26)
    {
      objc_setProperty_atomic(v26, v24, v25, 176);
    }
  }

LABEL_6:
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __68__NEFilterSource_dataCompleteWithCompletionQueue_completionHandler___block_invoke_82;
  v28[3] = &unk_1E7F0B588;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v28[4] = *(a1 + 32);
  v29 = v9;
  dispatch_async(v8, v28);

  v10 = *MEMORY[0x1E69E9840];
}

void __68__NEFilterSource_dataCompleteWithCompletionQueue_completionHandler___block_invoke_82(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) status];
  v4 = [(NEFilterSource *)*(a1 + 32) replacementData];
  (*(v2 + 16))(v2, v3, v4);
}

- (id)replacementData
{
  v1 = a1;
  if (a1)
  {
    if ([a1 status] == 2)
    {
      v2 = objc_alloc_init(NEFilterBlockPage);
      v3 = [v1 url];
      v5 = [v3 absoluteString];
      if (v2)
      {
        objc_setProperty_atomic_copy(v2, v4, v5, 24);
      }

      v6 = [(NEFilterBlockPage *)v2 page];
      if (v6)
      {
        v7 = v6;
        v1 = [v6 dataUsingEncoding:4];
      }

      else
      {
        v1 = 0;
      }
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (void)addData:(id)a3 withCompletionQueue:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke;
  v14[3] = &unk_1E7F07830;
  v14[4] = self;
  v15 = v9;
  v16 = v8;
  v17 = v10;
  v11 = v8;
  v12 = v10;
  v13 = v9;
  [(NEFilterSource *)self prepareAgentWithHandler:v14];
}

void __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 16);
  if (!v3 || !v5)
  {
    if (v5)
    {
      v13 = 2;
LABEL_14:
      *(v4 + 24) = v13;
      v14 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke_2;
      block[3] = &unk_1E7F0B588;
      v10 = &v26;
      v17 = *(a1 + 56);
      block[4] = *(a1 + 32);
      v26 = v17;
      v16 = block;
      goto LABEL_15;
    }

LABEL_13:
    v13 = 1;
    goto LABEL_14;
  }

  if ([v4 status] != 3)
  {
    v14 = *(a1 + 40);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke_3;
    v23[3] = &unk_1E7F0B588;
    v10 = &v24;
    v15 = *(a1 + 56);
    v23[4] = *(a1 + 32);
    v24 = v15;
    v16 = v23;
LABEL_15:
    dispatch_async(v14, v16);
    goto LABEL_16;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke_4;
  aBlock[3] = &unk_1E7F0AAA0;
  v21[0] = *(a1 + 40);
  v6 = *(a1 + 56);
  v21[1] = *(a1 + 32);
  v22 = v6;
  v8 = _Block_copy(aBlock);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v7, 64, 1);
  }

  v10 = v21;
  [Property appendData:*(a1 + 48)];
  v11 = *(a1 + 32);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke_6;
  v18[3] = &unk_1E7F0B600;
  v12 = v8;
  v19 = v12;
  if (([(NEFilterSource *)v11 sendDataToPluginWithConnection:v3 completionHandler:v18]& 1) == 0)
  {
    v12[2](v12);
  }

LABEL_16:
}

uint64_t __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) status];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) status];
  v4 = [(NEFilterSource *)*(a1 + 32) replacementData];
  (*(v2 + 16))(v2, v3, v4);
}

void __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke_5;
  v4[3] = &unk_1E7F0B588;
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __64__NEFilterSource_addData_withCompletionQueue_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) status];
  v4 = [(NEFilterSource *)*(a1 + 32) replacementData];
  (*(v2 + 16))(v2, v3, v4);
}

- (NEFilterSource)initWithURL:(id)a3 direction:(int64_t)a4 socketIdentifier:(unint64_t)a5
{
  v9 = a3;
  v18.receiver = self;
  v18.super_class = NEFilterSource;
  v10 = [(NEFilterSource *)&v18 init];
  v11 = v10;
  if (v10)
  {
    v10->_registered = 0;
    objc_storeStrong(&v10->_url, a3);
    *(v11 + 40) = a4;
    *(v11 + 48) = a5;
    v12 = *(v11 + 56);
    *(v11 + 56) = 0;

    *(v11 + 12) = 0;
    *(v11 + 24) = 3;
    *(v11 + 112) = xmmword_1BAA4E540;
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = *(v11 + 80);
    *(v11 + 80) = v13;

    v15 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:0];
    v16 = *(v11 + 64);
    *(v11 + 64) = v15;

    *(v11 + 104) = 0;
    [(NEFilterSource *)v11 initGlobals];
  }

  return v11;
}

+ (BOOL)filterRequired
{
  v16 = *MEMORY[0x1E69E9840];
  if (g_delegation_audit_token)
  {
    v2 = objc_alloc_init(MEMORY[0x1E6977E40]);
    v3 = *(g_delegation_audit_token + 16);
    *v15 = *g_delegation_audit_token;
    *&v15[16] = v3;
    [v2 setSourceApplicationWithToken:v15];
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v15 = 136315394;
      *&v15[4] = "+[NEFilterSource filterRequired]";
      *&v15[12] = 2112;
      *&v15[14] = v2;
      _os_log_debug_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_DEBUG, "%s: parameters %@", v15, 0x16u);
    }

    v5 = [objc_alloc(MEMORY[0x1E6977E50]) initWithEndpoint:0 parameters:v2];
    v6 = g_pathEvaluator;
    g_pathEvaluator = v5;

    v7 = g_pathEvaluator;
  }

  else
  {
    v7 = [MEMORY[0x1E6977E50] sharedDefaultEvaluator];
    v2 = v7;
  }

  v8 = [v7 path];
  v9 = [v8 filterControlUnit];

  v11 = (v9 & 0x40000000) == 0 && v9 != 0;
  v12 = ne_log_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *v15 = 136315394;
    *&v15[4] = "+[NEFilterSource filterRequired]";
    *&v15[12] = 1024;
    *&v15[14] = v11;
    _os_log_debug_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEBUG, "%s: result %d", v15, 0x12u);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11;
}

@end