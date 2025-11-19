@interface LSDService
@end

@implementation LSDService

void __50___LSDService_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    if (!v3)
    {
      v4 = _LSDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        __50___LSDService_listener_shouldAcceptNewConnection___block_invoke_cold_1(WeakRetained, v4);
      }
    }

    [v3 setExportedObject:0];
    [WeakRetained connectionWasInvalidated:v3];
  }
}

void __50___LSDService_listener_shouldAcceptNewConnection___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_18162D000, a2, OS_LOG_TYPE_FAULT, "connection service %@ was unexpectedly nil in invalidation handler", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end