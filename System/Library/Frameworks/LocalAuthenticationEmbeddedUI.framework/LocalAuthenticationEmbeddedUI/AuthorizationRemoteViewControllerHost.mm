@interface AuthorizationRemoteViewControllerHost
@end

@implementation AuthorizationRemoteViewControllerHost

id __85___AuthorizationRemoteViewControllerHost_requestViewControllerWithConnectionHandler___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D241E0]);
  [v0 setServiceBundleIdentifier:@"com.apple.CoreAuthUI"];
  [v0 setServiceViewControllerClassName:@"AuthorizationRemoteViewController"];

  return v0;
}

void __85___AuthorizationRemoteViewControllerHost_requestViewControllerWithConnectionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 timeIntervalSinceNow];
  v9 = v8;
  v10 = LA_LOG_0();
  if (v9 >= -1.0)
  {
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v11 = LALogTypeForInternalError();
  }

  if (os_log_type_enabled(v10, v11))
  {
    v13 = 134217984;
    v14 = -v9;
    _os_log_impl(&dword_238BCD000, v10, v11, "RemoteUI call took %.2f secs", &v13, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __59___AuthorizationRemoteViewControllerHost_exportedInterface__block_invoke()
{
  v0 = [MEMORY[0x277D24138] interfaceForXPCProtocol:&unk_284B94BA8];
  v1 = exportedInterface_interface;
  exportedInterface_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __72___AuthorizationRemoteViewControllerHost_serviceViewControllerInterface__block_invoke()
{
  v0 = [MEMORY[0x277D24138] interfaceForXPCProtocol:&unk_284B94A70];
  v1 = serviceViewControllerInterface_interface;
  serviceViewControllerInterface_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __71___AuthorizationRemoteViewControllerHost_startWithConfiguration_reply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LA_LOG_0();
  v5 = LALogTypeForInternalError();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_238BCD000, v4, v5, "Could not obtain service proxy for starting (%{public}@).", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

void __56___AuthorizationRemoteViewControllerHost_stopWithReply___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = LA_LOG_0();
  v5 = LALogTypeForInternalError();
  if (os_log_type_enabled(v4, v5))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_238BCD000, v4, v5, "Could not obtain service proxy for stoping (%{public}@).", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
}

@end