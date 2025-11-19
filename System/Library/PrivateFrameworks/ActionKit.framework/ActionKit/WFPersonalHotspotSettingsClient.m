@interface WFPersonalHotspotSettingsClient
+ (void)createClientWithCompletionHandler:(id)a3;
- (WFPersonalHotspotSettingsClient)initWithClient:(NETRBClient *)a3;
- (void)dealloc;
- (void)getStateWithCompletionHandler:(id)a3;
- (void)setState:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation WFPersonalHotspotSettingsClient

- (void)setState:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v26 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v4)
  {
    v7 = 1023;
  }

  else
  {
    v7 = 1022;
  }

  v8 = [(WFPersonalHotspotSettingsClient *)self client];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v9 = get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr;
  v22 = get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr;
  if (!get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __get_NETRBClientSetGlobalServiceStateSymbolLoc_block_invoke;
    v24 = &unk_278C222B8;
    v25 = &v19;
    v10 = NetrbLibrary();
    v11 = dlsym(v10, "_NETRBClientSetGlobalServiceState");
    *(v25[1] + 24) = v11;
    get_NETRBClientSetGlobalServiceStateSymbolLoc_ptr = *(v25[1] + 24);
    v9 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v9)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"_Bool soft_NETRBClientSetGlobalServiceState(NETRBClientRef, netrbState)"}];
    [v17 handleFailureInFunction:v18 file:@"WFPersonalHotspotSettingsClient.m" lineNumber:23 description:{@"%s", dlerror()}];

    __break(1u);
  }

  if ((v9(v8, v7) & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = getWFBundledIntentsLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[WFPersonalHotspotSettingsClient setState:completionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = v7;
    _os_log_impl(&dword_23DE30000, v12, OS_LOG_TYPE_INFO, "%s Setting Personal Hotspot state to %d", buf, 0x12u);
  }

  v13 = *MEMORY[0x277CBECE8];
  if (WiFiManagerClientCreate())
  {
    if (v4)
    {
      WiFiManagerClientSetMISDiscoveryState();
    }

    WiFiManagerClientSetMISDiscoveryState();
    if (((WiFiManagerClientGetMISDiscoveryState() == 0) ^ v4))
    {
      v14 = 0;
    }

    else
    {
      v14 = WFSettingsClientError();
      v16 = getWFBundledIntentsLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFPersonalHotspotSettingsClient setState:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = v14;
        _os_log_impl(&dword_23DE30000, v16, OS_LOG_TYPE_ERROR, "%s Failed to set hotspot status with error %@", buf, 0x16u);
      }
    }
  }

  else
  {
LABEL_13:
    v14 = WFSettingsClientError();
  }

  v6[2](v6, v14);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)getStateWithCompletionHandler:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0;
  v14 = 1020;
  v5 = [(WFPersonalHotspotSettingsClient *)self client];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v6 = get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr;
  v18 = get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr;
  if (!get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __get_NETRBClientGetGlobalServiceStateSymbolLoc_block_invoke;
    v20 = &unk_278C222B8;
    v21 = &v15;
    v7 = NetrbLibrary();
    v8 = dlsym(v7, "_NETRBClientGetGlobalServiceState");
    *(v21[1] + 24) = v8;
    get_NETRBClientGetGlobalServiceStateSymbolLoc_ptr = *(v21[1] + 24);
    v6 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"_Bool soft_NETRBClientGetGlobalServiceState(NETRBClientRef, netrbStateRef, netrbReasonRef)"}];
    [v11 handleFailureInFunction:v12 file:@"WFPersonalHotspotSettingsClient.m" lineNumber:22 description:{@"%s", dlerror()}];

    __break(1u);
  }

  v6(v5, &v14, &v13);
  v9 = getWFBundledIntentsLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[WFPersonalHotspotSettingsClient getStateWithCompletionHandler:]";
    *&buf[12] = 1024;
    *&buf[14] = v14;
    _os_log_impl(&dword_23DE30000, v9, OS_LOG_TYPE_INFO, "%s Retrieved Personal Hotspot state: %d", buf, 0x12u);
  }

  v4[2](v4, v14 == 1023, 0);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(WFPersonalHotspotSettingsClient *)self client];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v4 = get_NETRBClientDestroySymbolLoc_ptr;
  v17 = get_NETRBClientDestroySymbolLoc_ptr;
  if (!get_NETRBClientDestroySymbolLoc_ptr)
  {
    v9 = MEMORY[0x277D85DD0];
    v10 = 3221225472;
    v11 = __get_NETRBClientDestroySymbolLoc_block_invoke;
    v12 = &unk_278C222B8;
    v13 = &v14;
    v5 = NetrbLibrary();
    v15[3] = dlsym(v5, "_NETRBClientDestroy");
    get_NETRBClientDestroySymbolLoc_ptr = *(v13[1] + 24);
    v4 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v4)
  {
    v4(v3);
    v8.receiver = self;
    v8.super_class = WFPersonalHotspotSettingsClient;
    [(WFPersonalHotspotSettingsClient *)&v8 dealloc];
  }

  else
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_Bool soft_NETRBClientDestroy(NETRBClientRef)"];
    [v6 handleFailureInFunction:v7 file:@"WFPersonalHotspotSettingsClient.m" lineNumber:21 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

- (WFPersonalHotspotSettingsClient)initWithClient:(NETRBClient *)a3
{
  if (!a3)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFPersonalHotspotSettingsClient.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"client"}];
  }

  v11.receiver = self;
  v11.super_class = WFPersonalHotspotSettingsClient;
  v5 = [(WFPersonalHotspotSettingsClient *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v5->_client = a3;
    v7 = v5;
  }

  return v6;
}

+ (void)createClientWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D79F18] currentDevice];
  v6 = [v5 hasCapability:*MEMORY[0x277D7A3E8]];

  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v7 = get_NETRBClientCreateSymbolLoc_ptr;
  v16 = get_NETRBClientCreateSymbolLoc_ptr;
  if (!get_NETRBClientCreateSymbolLoc_ptr)
  {
    v8 = NetrbLibrary();
    v14[3] = dlsym(v8, "_NETRBClientCreate");
    get_NETRBClientCreateSymbolLoc_ptr = v14[3];
    v7 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (v7)
  {
    v9 = (v7)(0, 0, 0);
    if (v9)
    {
      v10 = [[a1 alloc] initWithClient:v9];
      v4[2](v4, v10, 0);
LABEL_8:

      return;
    }

LABEL_7:
    v10 = WFSettingsClientError();
    (v4)[2](v4, 0, v10);
    goto LABEL_8;
  }

  v11 = [MEMORY[0x277CCA890] currentHandler];
  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NETRBClientRef soft_NETRBClientCreate(__strong dispatch_queue_t, __strong NETRBEventHandler, __strong xpc_object_t)"}];
  [v11 handleFailureInFunction:v12 file:@"WFPersonalHotspotSettingsClient.m" lineNumber:20 description:{@"%s", dlerror()}];

  __break(1u);
}

@end