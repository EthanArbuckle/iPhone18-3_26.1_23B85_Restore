@interface AMFIConnection
- ($42C382FA7217128787D761316B161BF9)getSEPStateWithError:(SEL)error;
- (AMFIConnection)init;
- (id)commitProfileForUuid:(id)uuid;
- (id)getStagedProfileWithError:(id *)error;
- (id)initiateDataMigration;
- (id)initiateDeveloperModeDaemons;
- (id)removeManagedState;
- (id)removeTrustforTeamID:(id)d;
- (id)setManagedState:(id)state;
- (id)stageProfileForUuid:(id)uuid;
- (void)dealloc;
@end

@implementation AMFIConnection

- (AMFIConnection)init
{
  v7.receiver = self;
  v7.super_class = AMFIConnection;
  v2 = [(AMFIConnection *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.amfi.nsxpc" options:4096];
    connection = v2->connection;
    v2->connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2852CC5F8];
    [(NSXPCConnection *)v2->connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->connection invalidate];
  connection = self->connection;
  self->connection = 0;

  v4.receiver = self;
  v4.super_class = AMFIConnection;
  [(AMFIConnection *)&v4 dealloc];
}

- (id)initiateDataMigration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  connection = self->connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__AMFIConnection_initiateDataMigration__block_invoke;
  v7[3] = &unk_278CBBE08;
  v7[4] = &v8;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__AMFIConnection_initiateDataMigration__block_invoke_32;
  v6[3] = &unk_278CBBE08;
  v6[4] = &v8;
  [v3 initiateDataMigrationWithReply:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __39__AMFIConnection_initiateDataMigration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__AMFIConnection_initiateDataMigration__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __39__AMFIConnection_initiateDataMigration__block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__AMFIConnection_initiateDataMigration__block_invoke_32_cold_1();
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)initiateDeveloperModeDaemons
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  connection = self->connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke;
  v7[3] = &unk_278CBBE08;
  v7[4] = &v8;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_33;
  v6[3] = &unk_278CBBE08;
  v6[4] = &v8;
  [v3 initiateDeveloperModeDaemonsWithReply:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_33_cold_1();
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- ($42C382FA7217128787D761316B161BF9)getSEPStateWithError:(SEL)error
{
  v28 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v21 = &v20;
  v22 = 0x5810000000;
  v23 = &unk_240EF9661;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  connection = self->connection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __39__AMFIConnection_getSEPStateWithError___block_invoke;
  v13[3] = &unk_278CBBE08;
  v13[4] = &v14;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__AMFIConnection_getSEPStateWithError___block_invoke_35;
  v12[3] = &unk_278CBBE30;
  v12[4] = &v20;
  v12[5] = &v14;
  [v7 getSEPStateWithReply:v12];

  if (a4)
  {
    *a4 = v15[5];
  }

  v8 = v21;
  v9 = *(v21 + 3);
  *&retstr->var0 = *(v21 + 2);
  *&retstr->var3.var1.var0 = v9;
  *&retstr->var3.var1.var1[12] = *(v8 + 4);
  retstr->var3.var1.var1[28] = *(v8 + 80);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __39__AMFIConnection_getSEPStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__AMFIConnection_getSEPStateWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

__n128 __39__AMFIConnection_getSEPStateWithError___block_invoke_35(uint64_t a1, __int128 *a2, id obj)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(v3 + 80) = *(a2 + 48);
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  *(v3 + 32) = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  return result;
}

void __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)stageProfileForUuid:(id)uuid
{
  uuidCopy = uuid;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = self->connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__AMFIConnection_stageProfileForUuid___block_invoke;
  v10[3] = &unk_278CBBE08;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__AMFIConnection_stageProfileForUuid___block_invoke_39;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v11;
  [v6 stageProfileForUuid:uuidCopy withReply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __38__AMFIConnection_stageProfileForUuid___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__AMFIConnection_stageProfileForUuid___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getStagedProfileWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  connection = self->connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__AMFIConnection_getStagedProfileWithError___block_invoke;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v16;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__AMFIConnection_getStagedProfileWithError___block_invoke_40;
  v8[3] = &unk_278CBBE80;
  v8[4] = &v10;
  v8[5] = &v16;
  [v5 getStagedProfileWithReply:v8];

  if (error)
  {
    *error = v17[5];
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __44__AMFIConnection_getStagedProfileWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__AMFIConnection_getStagedProfileWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __44__AMFIConnection_getStagedProfileWithError___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)commitProfileForUuid:(id)uuid
{
  uuidCopy = uuid;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = self->connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__AMFIConnection_commitProfileForUuid___block_invoke;
  v10[3] = &unk_278CBBE08;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__AMFIConnection_commitProfileForUuid___block_invoke_42;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v11;
  [v6 commitProfileForUuid:uuidCopy withReply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __39__AMFIConnection_commitProfileForUuid___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__AMFIConnection_commitProfileForUuid___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __63__AMFIConnection_setTrustForTeamID_withSignature_withSignType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__AMFIConnection_setTrustForTeamID_withSignature_withSignType___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)removeTrustforTeamID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = self->connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__AMFIConnection_removeTrustforTeamID___block_invoke;
  v10[3] = &unk_278CBBE08;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__AMFIConnection_removeTrustforTeamID___block_invoke_44;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v11;
  [v6 removeTrustforTeamID:dCopy withReply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __39__AMFIConnection_removeTrustforTeamID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__AMFIConnection_removeTrustforTeamID___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __37__AMFIConnection_setSupervisedState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __37__AMFIConnection_setSupervisedState___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __31__AMFIConnection_setDemoState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __31__AMFIConnection_setDemoState___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)setManagedState:(id)state
{
  stateCopy = state;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = self->connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__AMFIConnection_setManagedState___block_invoke;
  v10[3] = &unk_278CBBE08;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__AMFIConnection_setManagedState___block_invoke_47;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v11;
  [v6 setManagedState:stateCopy withReply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __34__AMFIConnection_setManagedState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__AMFIConnection_setManagedState___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)removeManagedState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  connection = self->connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__AMFIConnection_removeManagedState__block_invoke;
  v7[3] = &unk_278CBBE08;
  v7[4] = &v8;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__AMFIConnection_removeManagedState__block_invoke_48;
  v6[3] = &unk_278CBBE08;
  v6[4] = &v8;
  [v3 removeManagedStateWithReply:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __36__AMFIConnection_removeManagedState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __36__AMFIConnection_removeManagedState__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __39__AMFIConnection_initiateDataMigration__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__AMFIConnection_initiateDataMigration__block_invoke_32_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] data migration error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_33_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] developer mode daemons error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__AMFIConnection_getSEPStateWithError___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__AMFIConnection_stageProfileForUuid___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __44__AMFIConnection_getStagedProfileWithError___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__AMFIConnection_commitProfileForUuid___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__AMFIConnection_setTrustForTeamID_withSignature_withSignType___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __39__AMFIConnection_removeTrustforTeamID___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __37__AMFIConnection_setSupervisedState___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __31__AMFIConnection_setDemoState___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __34__AMFIConnection_setManagedState___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

void __36__AMFIConnection_removeManagedState__block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end