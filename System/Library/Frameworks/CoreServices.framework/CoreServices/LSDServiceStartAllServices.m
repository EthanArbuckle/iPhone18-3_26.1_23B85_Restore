@interface LSDServiceStartAllServices
@end

@implementation LSDServiceStartAllServices

void ___LSDServiceStartAllServices_block_invoke()
{
  v28 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _LSDServiceStartAllServices::services;
  _LSDServiceStartAllServices::services = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = _LSDServiceStartAllServices::listeners;
  _LSDServiceStartAllServices::listeners = v2;

  *&buf = NSClassFromString(&cfstr_Lsdreadservice_0.isa);
  *(&buf + 1) = NSClassFromString(&cfstr_Lsdmodifyservi_0.isa);
  v23 = NSClassFromString(&cfstr_Lsdopenservice_0.isa);
  v24 = NSClassFromString(&cfstr_Lsddeviceident_0.isa);
  v25 = NSClassFromString(&cfstr_Lsdiconservice.isa);
  v26 = NSClassFromString(&cfstr_Lsdrebuildserv_0.isa);
  v27 = NSClassFromString(&cfstr_Lsdappprotecti_7.isa);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:7];
  if (!v4)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSDServiceStartAllServices()_block_invoke"];
    [v15 handleFailureInFunction:v16 file:@"LSDService.mm" lineNumber:333 description:{@"Failed to get LSDService subclass list for process %lu", getpid()}];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 XPCConnectionIsAlwaysPrivileged])
        {
          SharedInstance = __LSDefaultsGetSharedInstance();
          if ([SharedInstance proxyUIDForUID:getuid()])
          {
            continue;
          }
        }

        if ([v10 isEnabled])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v12 = _LSDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 componentsJoinedByString:{@", "}];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Starting services: %@", &buf, 0xCu);
  }

  [v5 enumerateObjectsUsingBlock:&__block_literal_global_37];
  v14 = *MEMORY[0x1E69E9840];
}

void ___LSDServiceStartAllServices_block_invoke_34(uint64_t a1, void *a2)
{
  SharedInstance = __LSDefaultsGetSharedInstance();
  v11 = [SharedInstance serviceNameForConnectionType:objc_msgSend(a2 lightweightSystemService:{"connectionType"), objc_msgSend(__LSDefaultsGetSharedInstance(), "isLightweightSystemServer")}];
  if (!v11)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSDServiceStartAllServices()_block_invoke"];
    [v6 handleFailureInFunction:v7 file:@"LSDService.mm" lineNumber:355 description:{@"Failed to create XPC service name for class %@", a2}];
  }

  v4 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v11];
  if (v4)
  {
    v5 = [[a2 alloc] initWithXPCListener:v4];
    if (!v5)
    {
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSDServiceStartAllServices()_block_invoke"];
      [v9 handleFailureInFunction:v10 file:@"LSDService.mm" lineNumber:364 description:{@"Failed to create XPC service object of class %@", a2}];
    }

    [v4 setDelegate:v5];
    [v4 resume];
    [_LSDServiceStartAllServices::services addObject:v5];
    [_LSDServiceStartAllServices::listeners addObject:v4];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSDServiceStartAllServices()_block_invoke"];
    [v5 handleFailureInFunction:v8 file:@"LSDService.mm" lineNumber:360 description:{@"Failed to create XPC listener for class %@", a2}];
  }
}

@end