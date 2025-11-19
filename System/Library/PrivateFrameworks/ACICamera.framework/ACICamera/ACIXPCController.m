@interface ACIXPCController
- (ACIXPCController)initWithDelegate:(void *)a3 connection:(id)a4;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (int)start;
- (int)stop;
- (void)dealloc;
- (void)newEvent:(id)a3;
@end

@implementation ACIXPCController

- (ACIXPCController)initWithDelegate:(void *)a3 connection:(id)a4
{
  v7 = a4;
  v23.receiver = self;
  v23.super_class = ACIXPCController;
  v8 = [(ACIXPCController *)&v23 init];
  if (v8)
  {
    v9 = fixedPriorityDispatchQueue();
    v10 = *(v8 + 5);
    *(v8 + 5) = v9;

    aci::SP<aci::SourceManager,&(void ACISPRetain<aci::SourceManager>(aci::SourceManager &)),&(void ACISPRelease<aci::SourceManager>(aci::SourceManager &))>::setPtr(v8 + 8, a3);
    v11 = *(*(*(v8 + 8) + 200) + 24);
    v12 = aci2nsString();
    v13 = *(v8 + 1);
    *(v8 + 1) = v12;

    v14 = [MEMORY[0x277CCAD78] UUID];
    v15 = [v14 UUIDString];
    v16 = *(v8 + 2);
    *(v8 + 2) = v15;

    objc_storeStrong(v8 + 3, a4);
    v17 = [*(v8 + 3) synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_2];
    v18 = *(v8 + 7);
    *(v8 + 7) = v17;

    v19 = [MEMORY[0x277CCAE98] anonymousListener];
    v20 = *(v8 + 4);
    *(v8 + 4) = v19;

    [*(v8 + 4) setDelegate:v8];
    [*(v8 + 4) resume];
    v21 = v8;
  }

  return v8;
}

void __48__ACIXPCController_initWithDelegate_connection___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _aciLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_23C3F5000, v3, OS_LOG_TYPE_ERROR, "Sync remote object failed, (error: %@)!", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = ACIXPCController;
  [(ACIXPCController *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[ACIXPCProvider remoteServiceReceiverInterface];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:self];
  v7 = +[ACIXPCProvider remoteServiceSenderInterface];
  [v5 setRemoteObjectInterface:v7];

  [v5 _setQueue:self->_queue];
  [v5 resume];

  return 1;
}

- (void)newEvent:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _aciLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[ACIXPCController newEvent:]";
    v7 = 1024;
    v8 = 76;
    _os_log_impl(&dword_23C3F5000, v3, OS_LOG_TYPE_DEFAULT, " === %s:%d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (int)start
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v3 = self->_name;
  syncServiceManagerProxy = self->_syncServiceManagerProxy;
  name = self->_name;
  uuid = self->_uuid;
  v7 = [(NSXPCListener *)self->_listener endpoint];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __25__ACIXPCController_start__block_invoke;
  v16[3] = &unk_278BBBE80;
  v16[4] = self;
  v16[5] = &v17;
  [(ACIRemoteServiceManagerProtocol *)syncServiceManagerProxy subscribeService:name uuid:uuid endpoint:v7 withReply:v16];

  v8 = *(v18 + 6);
  if (!v8)
  {
    v9 = self->_syncServiceManagerProxy;
    v11 = self->_name;
    v10 = self->_uuid;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __25__ACIXPCController_start__block_invoke_2;
    v13[3] = &unk_278BBBEA8;
    v14 = v3;
    v15 = &v17;
    [(ACIRemoteServiceManagerProtocol *)v9 startService:v11 uuid:v10 withReply:v13];
    v8 = *(v18 + 6);
  }

  _Block_object_dispose(&v17, 8);
  return v8;
}

void __25__ACIXPCController_start__block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = a3;
  if (!a2)
  {
    v7 = v6;
    objc_storeStrong((*(a1 + 32) + 48), a3);
    v6 = v7;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

void __25__ACIXPCController_start__block_invoke_2(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_23C3F5000, v4, OS_LOG_TYPE_DEFAULT, "Start service %@, errCode(%d)!", &v7, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v6 = *MEMORY[0x277D85DE8];
}

- (int)stop
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v3 = self->_name;
  syncServiceManagerProxy = self->_syncServiceManagerProxy;
  name = self->_name;
  uuid = self->_uuid;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __24__ACIXPCController_stop__block_invoke;
  v15[3] = &unk_278BBBEA8;
  v7 = v3;
  v16 = v7;
  v17 = &v18;
  [(ACIRemoteServiceManagerProtocol *)syncServiceManagerProxy deactivateService:name uuid:uuid withReply:v15];
  v8 = *(v19 + 6);
  if (v8 == -8 || v8 == 0)
  {
    v10 = self->_syncServiceManagerProxy;
    v11 = self->_name;
    v12 = self->_uuid;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __24__ACIXPCController_stop__block_invoke_8;
    v14[3] = &unk_278BBBEA8;
    v14[4] = self;
    v14[5] = &v18;
    [(ACIRemoteServiceManagerProtocol *)v10 unsubscribeService:v11 uuid:v12 withReply:v14];
    v8 = *(v19 + 6);
  }

  _Block_object_dispose(&v18, 8);
  return v8;
}

void __24__ACIXPCController_stop__block_invoke(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = _aciLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_23C3F5000, v4, OS_LOG_TYPE_DEFAULT, "Stop service %@, errCode(%d)!", &v7, 0x12u);
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v6 = *MEMORY[0x277D85DE8];
}

void __24__ACIXPCController_stop__block_invoke_8(uint64_t a1, int a2)
{
  if (!a2)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

@end