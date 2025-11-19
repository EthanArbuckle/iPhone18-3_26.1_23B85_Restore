@interface HKXPCEventObserver
+ (void)_registerEventHandler:(id)a3 forStream:(const char *)a4;
+ (void)_subscribeToStream:(const char *)a3 clientIdentifier:(const char *)a4;
+ (void)setAuthorizationStreamEventHandler:(id)a3;
+ (void)subscribeToAuthorizationStreamWithIdentifier:(const char *)a3;
@end

@implementation HKXPCEventObserver

+ (void)setAuthorizationStreamEventHandler:(id)a3
{
  v5 = a3;
  if (atomic_exchange(_hasRegisteredAuthorizationHandler, 1u))
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"HKXPCEventObserver.m" lineNumber:30 description:@"This method can only be called once during the lifetime of a process"];
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__HKXPCEventObserver_setAuthorizationStreamEventHandler___block_invoke;
  v9[3] = &unk_1E7381F68;
  v10 = v5;
  v7 = HKAuthorizationEventStream;
  v8 = v5;
  [HKXPCEventObserver _registerEventHandler:v9 forStream:v7];
}

uint64_t __57__HKXPCEventObserver_setAuthorizationStreamEventHandler___block_invoke(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_string(xdict, HKAuthorizationEventBundleIdentifierKey);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

+ (void)subscribeToAuthorizationStreamWithIdentifier:(const char *)a3
{
  v4 = atomic_load(_hasRegisteredAuthorizationHandler);
  if ((v4 & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:a1 file:@"HKXPCEventObserver.m" lineNumber:42 description:@"This method may not be called until a handler block is registered"];
  }

  v8 = HKAuthorizationEventStream;

  [HKXPCEventObserver _subscribeToStream:v8 clientIdentifier:a3];
}

+ (void)_registerEventHandler:(id)a3 forStream:(const char *)a4
{
  v6 = a3;
  v7 = HKCreateSerialDispatchQueue(a1, @"eventQueue");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke;
  v9[3] = &unk_1E7381F90;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  xpc_set_event_stream_handler(a4, v7, v9);
}

void __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogInfrastructure();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    v6 = HKLogInfrastructure();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 40);
      v16 = 136315138;
      v17 = v7;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_INFO, "Received XPC event for %s", &v16, 0xCu);
    }
  }

  v8 = MEMORY[0x193B04A90](v3);
  if (v8 != MEMORY[0x1E69E9E80])
  {
    v9 = v8;
    v10 = MEMORY[0x1E69E9E98];
    _HKInitializeLogging();
    reply = HKLogInfrastructure();
    v12 = os_log_type_enabled(reply, OS_LOG_TYPE_ERROR);
    if (v9 == v10)
    {
      if (v12)
      {
        __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_2(v3);
      }
    }

    else if (v12)
    {
      __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_1(v9);
    }

LABEL_18:

    goto LABEL_19;
  }

  if (!xpc_dictionary_get_BOOL(v3, HKXPCEventSendToClientKey))
  {
    reply = xpc_dictionary_create_reply(v3);
    if (reply)
    {
      xpc_dictionary_send_reply();
    }

    else
    {
      v13 = MEMORY[0x193B04A30](v3);
      _HKInitializeLogging();
      v14 = HKLogInfrastructure();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_3(v13, v14);
      }

      free(v13);
    }

    goto LABEL_18;
  }

  (*(*(a1 + 32) + 16))();
LABEL_19:

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)_subscribeToStream:(const char *)a3 clientIdentifier:(const char *)a4
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_set_event();
}

void __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_1(const _xpc_type_s *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  xpc_type_get_name(a1);
  OUTLINED_FUNCTION_0_23(&dword_19197B000, v1, v2, "XPC events subscriber received event of unexpected type %s", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_0_23(&dword_19197B000, v1, v2, "XPC events subscriber received error: %s", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

void __54__HKXPCEventObserver__registerEventHandler_forStream___block_invoke_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to create reply for XPC event: %s", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end