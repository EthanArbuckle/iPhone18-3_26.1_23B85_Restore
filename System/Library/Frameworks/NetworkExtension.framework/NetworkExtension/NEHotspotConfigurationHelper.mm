@interface NEHotspotConfigurationHelper
+ (id)sharedManager;
- (NEHotspotConfigurationHelper)init;
- (id)helper;
- (void)sendRequest:(uint64_t)request requestType:(void *)type resultHandler:;
@end

@implementation NEHotspotConfigurationHelper

- (NEHotspotConfigurationHelper)init
{
  v7.receiver = self;
  v7.super_class = NEHotspotConfigurationHelper;
  v2 = [(NEHotspotConfigurationHelper *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("NEHotspotConfigurationHelper queue", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

+ (id)sharedManager
{
  objc_opt_self();
  if (sharedManager_init_manager_7105 != -1)
  {
    dispatch_once(&sharedManager_init_manager_7105, &__block_literal_global_7106);
  }

  v0 = sharedManager_g_manager_7107;

  return v0;
}

uint64_t __45__NEHotspotConfigurationHelper_sharedManager__block_invoke()
{
  sharedManager_g_manager_7107 = objc_alloc_init(NEHotspotConfigurationHelper);

  return MEMORY[0x1EEE66BB8]();
}

- (id)helper
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = selfCopy[1];
  if (!v2)
  {
    v3 = [[NEHelper alloc] initWithDelegateClassID:9 queue:selfCopy[2]];
    v4 = selfCopy[1];
    selfCopy[1] = v3;

    v2 = selfCopy[1];
  }

  v5 = v2;
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)sendRequest:(uint64_t)request requestType:(void *)type resultHandler:
{
  typeCopy = type;
  v8 = a2;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (request == 2)
  {
    xpc_dictionary_set_uint64(v9, "MessageType", 0x3EBuLL);
  }

  else if (request == 1)
  {
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v8;
        xpc_dictionary_set_uint64(v10, "MessageType", 0x3EAuLL);
        v12 = [v11 cStringUsingEncoding:4];

        xpc_dictionary_set_string(v10, "NetworkToRemove", v12);
      }
    }
  }

  else
  {
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v10 = 0;
      goto LABEL_15;
    }

    xpc_dictionary_set_uint64(v10, "MessageType", 0x3E9uLL);
    xpc_dictionary_set_data(v10, "AddParameter", [v8 bytes], objc_msgSend(v8, "length"));
  }

  if (v10)
  {
    if (typeCopy)
    {
      xpc_dictionary_set_BOOL(v10, "IsResponseExpected", 1);
      helper = [(NEHotspotConfigurationHelper *)self helper];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __70__NEHotspotConfigurationHelper_sendRequest_requestType_resultHandler___block_invoke;
      v15[3] = &unk_1E7F07AA0;
      v15[4] = self;
      v16 = typeCopy;
      [helper sendRequest:v10 responseHandler:v15];
    }

    else
    {
      xpc_dictionary_set_BOOL(v10, "IsResponseExpected", 0);
      helper2 = [(NEHotspotConfigurationHelper *)self helper];
      [helper2 sendRequest:v10 responseHandler:0];
    }
  }

LABEL_15:
}

void __70__NEHotspotConfigurationHelper_sendRequest_requestType_resultHandler___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = v7;
  if (a3 == 107)
  {
LABEL_19:
    (*(*(a1 + 40) + 16))();
    goto LABEL_20;
  }

  if (v7 && MEMORY[0x1BFAFC5E0](v7) == MEMORY[0x1E69E9E80])
  {
    uint64 = xpc_dictionary_get_uint64(v8, "MessageType");
    if (uint64 == 1005)
    {
      v10 = xpc_dictionary_get_value(v8, "QueryResult");
      if (v10)
      {
        if (*(a1 + 32))
        {
          v11 = _CFXPCCreateCFObjectFromXPCObject();
          if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v12 = v11;
          }

          else
          {
            v16 = ne_log_obj();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              v24 = 138412290;
              v25 = objc_opt_class();
              v23 = v25;
              _os_log_debug_impl(&dword_1BA83C000, v16, OS_LOG_TYPE_DEBUG, "%@ received an invalid response to query.", &v24, 0xCu);
            }

            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40), a3);
      }

      else
      {
        v20 = ne_log_obj();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v24 = 134217984;
          v25 = a3;
          _os_log_debug_impl(&dword_1BA83C000, v20, OS_LOG_TYPE_DEBUG, "query request received nil response with result code = %lld", &v24, 0xCu);
        }

        (*(*(a1 + 40) + 16))();
      }

      if ((a2 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    if (uint64 == 1004)
    {
      (*(*(a1 + 40) + 16))(*(a1 + 40), a3);
    }

    else
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a1 + 32);
        v24 = 138412290;
        v25 = objc_opt_class();
        v22 = v25;
        _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, "%@ received unknown response.", &v24, 0xCu);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), 108);
    }
  }

  if ((a2 & 1) == 0)
  {
LABEL_16:
    v14 = ne_log_obj();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = objc_opt_class();
      v24 = 138412290;
      v25 = v18;
      v19 = v18;
      _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%@ failed to communicate to helper server.", &v24, 0xCu);
    }

    goto LABEL_19;
  }

LABEL_20:

  v15 = *MEMORY[0x1E69E9840];
}

@end