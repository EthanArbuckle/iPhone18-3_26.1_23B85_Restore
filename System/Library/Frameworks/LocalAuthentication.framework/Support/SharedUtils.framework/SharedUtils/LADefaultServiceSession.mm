@interface LADefaultServiceSession
- (LADefaultServiceSession)initWithService:(id)service serviceType:(id)type client:(id)client;
- (void)dealloc;
@end

@implementation LADefaultServiceSession

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(self + 8);
  v2 = *(self + 24);
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_1DF403000, v3, OS_LOG_TYPE_DEBUG, "Deallocated session service: %@ clientID: %@", v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

- (LADefaultServiceSession)initWithService:(id)service serviceType:(id)type client:(id)client
{
  serviceCopy = service;
  typeCopy = type;
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = LADefaultServiceSession;
  v12 = [(LADefaultServiceSession *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_service, service);
    objc_storeStrong(&v13->_serviceType, type);
    objc_storeStrong(&v13->_clientID, client);
    v14 = objc_opt_new();
    sessionID = v13->_sessionID;
    v13->_sessionID = v14;

    v16 = LACLogService();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [LADefaultServiceSession initWithService:&v13->_clientID serviceType:? client:?];
    }
  }

  return v13;
}

- (void)initWithService:(uint64_t *)a1 serviceType:(uint64_t *)a2 client:.cold.1(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

@end