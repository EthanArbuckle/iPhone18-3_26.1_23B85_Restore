@interface DCAppAttestController
- (BOOL)isSupported;
- (BOOL)isSupportedWithError:(id *)a3;
- (DCAppAttestController)initWithType:(unint64_t)a3;
- (NSUserDefaults)legacyUserDefaults;
- (NSUserDefaults)userDefaults;
- (id)loadAppUUID;
- (id)rewrapAsDCError:(id)a3;
- (void)attestKey:(id)a3 keyAttributes:(id)a4 clientDataHash:(id)a5 authData:(id)a6 options:(id)a7 completionHandler:(id)a8;
- (void)attestKey:(id)a3 teamIdentifier:(id)a4 clientDataHash:(id)a5 completionHandler:(id)a6;
- (void)dispatchCompletionHandler:(id)a3 ontoQueue:(id)a4;
- (void)generateAssertion:(id)a3 teamIdentifier:(id)a4 clientDataHash:(id)a5 completionHandler:(id)a6;
- (void)generateKeyWithTeamIdentifier:(id)a3 completion:(id)a4;
- (void)getPropertiesForKeyId:(id)a3 teamIdentifier:(id)a4 completionHandler:(id)a5;
- (void)saveAppUUID:(id)a3;
- (void)sign:(id)a3 withKey:(id)a4 teamIdentifier:(id)a5 completionHandler:(id)a6;
@end

@implementation DCAppAttestController

- (BOOL)isSupported
{
  v16 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v2 = [(DCAppAttestController *)self isSupportedWithError:&v9];
  v3 = v9;
  if (v3)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v4 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 localizedDescription];
      *buf = 136315650;
      v11 = "DCAppAttestController.m";
      v12 = 1024;
      v13 = 75;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_238044000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to check if AppAttest is supported. { error=%@ }", buf, 0x1Cu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

- (DCAppAttestController)initWithType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = DCAppAttestController;
  v4 = [(DCAppAttestController *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(DCAppAttestController *)v4 setAppAttestType:a3];
  }

  return v5;
}

- (NSUserDefaults)legacyUserDefaults
{
  legacyUserDefaults = self->_legacyUserDefaults;
  if (!legacyUserDefaults)
  {
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = self->_legacyUserDefaults;
    self->_legacyUserDefaults = v4;

    legacyUserDefaults = self->_legacyUserDefaults;
  }

  return legacyUserDefaults;
}

- (NSUserDefaults)userDefaults
{
  userDefaults = self->_userDefaults;
  if (!userDefaults)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AppAttest.client"];
    v5 = self->_userDefaults;
    self->_userDefaults = v4;

    userDefaults = self->_userDefaults;
  }

  return userDefaults;
}

- (void)generateKeyWithTeamIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_current_queue();
  v9 = clientProcessingQueue();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke;
  v13[3] = &unk_278A45F58;
  v13[4] = self;
  v14 = v8;
  v15 = v6;
  v16 = v7;
  v10 = v6;
  v11 = v8;
  v12 = v7;
  dispatch_async(v9, v13);
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue();
    *buf = 136315650;
    *&buf[4] = "DCAppAttestController.m";
    *&buf[12] = 1024;
    *&buf[14] = 88;
    *&buf[18] = 2080;
    *&buf[20] = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching generate key onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v5 = *(*&buf[8] + 40);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_21;
  v21[3] = &unk_278A45EB8;
  v22 = *(a1 + 56);
  v6 = [v5 remoteObjectProxy:v21];
  v7 = [*(a1 + 32) loadAppUUID];
  if (![*(a1 + 32) appAttestType])
  {
    v12 = +[DCAnalytics shared];
    [v12 sendPerformanceForCategory:6 eventType:0];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_2;
    v17[3] = &unk_278A45F08;
    v17[4] = *(a1 + 32);
    v18 = v7;
    v20[0] = *(a1 + 56);
    v20[1] = buf;
    v19 = *(a1 + 40);
    [v6 appAttestationCreateKey:v18 completion:v17];

    v10 = &v18;
    v11 = v20;
    goto LABEL_9;
  }

  if ([*(a1 + 32) appAttestType] == 1)
  {
    v8 = +[DCAnalytics shared];
    [v8 sendPerformanceForCategory:6 eventType:0];

    v9 = *(a1 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_4;
    v14[3] = &unk_278A45F30;
    v14[4] = *(a1 + 32);
    v15 = v7;
    v16[0] = *(a1 + 56);
    v16[1] = buf;
    [v6 appAttestationCreateKeyWithTeamIdentifier:v9 appUUID:v15 completion:v14];
    v10 = &v15;
    v11 = v16;
LABEL_9:
  }

  _Block_object_dispose(buf, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_21(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_3;
  v16[3] = &unk_278A45EE0;
  v16[4] = v10;
  v17 = v9;
  v18 = *(a1 + 40);
  v19 = v7;
  v11 = *(a1 + 56);
  v20 = v8;
  v21 = v11;
  v22 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = v8;
  v14 = v7;
  v15 = v9;
  [v10 dispatchCompletionHandler:v16 ontoQueue:v12];
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_3(uint64_t a1)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rewrapAsDCError:*(a1 + 40)];
  v3 = +[DCAnalytics shared];
  [v3 sendPerformanceForCategory:6 eventType:1];

  v10[0] = @"appUUIDLoaded";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) != 0];
  v10[1] = @"serviceType";
  v11[0] = v4;
  v11[1] = @"default";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v6 = +[DCAnalytics shared];
  [v6 sendPayload:v5 forEvent:@"com.apple.devicecheck.appattest.generateKey" withError:v2];

  [*(a1 + 32) saveAppUUID:*(a1 + 56)];
  v7 = *(a1 + 64);
  (*(*(a1 + 72) + 16))();
  v8 = [*(*(*(a1 + 80) + 8) + 40) connection];
  [v8 invalidate];

  v9 = *MEMORY[0x277D85DE8];
}

void __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 rewrapAsDCError:v8];
  v12 = +[DCAnalytics shared];
  [v12 sendPerformanceForCategory:6 eventType:1];

  v20[0] = @"appUUIDLoaded";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
  v20[1] = @"serviceType";
  v21[0] = v13;
  v21[1] = @"priv";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

  v15 = +[DCAnalytics shared];
  [v15 sendPayload:v14 forEvent:@"com.apple.devicecheck.appattest.generateKey" withError:v11];

  [*(a1 + 32) saveAppUUID:v10];
  v16 = *(a1 + 48);
  v17 = [*(a1 + 32) rewrapAsDCError:v8];

  (*(v16 + 16))(v16, v9, v17);
  v18 = [*(*(*(a1 + 56) + 8) + 40) connection];
  [v18 invalidate];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)attestKey:(id)a3 teamIdentifier:(id)a4 clientDataHash:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_get_current_queue();
  v15 = clientProcessingQueue();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke;
  v21[3] = &unk_278A45FF8;
  v21[4] = self;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v11;
  v26 = v13;
  v16 = v11;
  v17 = v14;
  v18 = v12;
  v19 = v10;
  v20 = v13;
  dispatch_async(v15, v21);
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue();
    *buf = 136315650;
    *&buf[4] = "DCAppAttestController.m";
    *&buf[12] = 1024;
    *&buf[14] = 158;
    *&buf[18] = 2080;
    *&buf[20] = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching attest key onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v5 = *(*&buf[8] + 40);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_41;
  v35[3] = &unk_278A45EB8;
  v36 = *(a1 + 72);
  v6 = [v5 remoteObjectProxy:v35];
  v7 = [*(a1 + 32) loadAppUUID];
  if (!v7)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v37 = 136315394;
      v38 = "DCAppAttestController.m";
      v39 = 1024;
      v40 = 166;
      _os_log_impl(&dword_238044000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch App UUID.", v37, 0x12u);
    }
  }

  if ([*(a1 + 32) appAttestType])
  {
    if ([*(a1 + 32) appAttestType] != 1)
    {
      goto LABEL_15;
    }

    v9 = +[DCAnalytics shared];
    [v9 sendPerformanceForCategory:8 eventType:0];

    v10 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_3;
    v25 = &unk_278A45FD0;
    v26 = *(a1 + 32);
    v27 = v7;
    v28 = *(a1 + 48);
    v29[0] = *(a1 + 72);
    v29[1] = buf;
    [v6 appAttestationAttestKeyWithTeamIdentifier:v10 appUUID:v27 keyId:v11 clientDataHash:v12 completion:&v22];
    v13 = &v27;
    v14 = &v28;
    v15 = v29;
  }

  else
  {
    v16 = +[DCAnalytics shared];
    [v16 sendPerformanceForCategory:8 eventType:0];

    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_42;
    v30[3] = &unk_278A45FA8;
    v30[4] = *(a1 + 32);
    v31 = v7;
    v32 = *(a1 + 48);
    v34[0] = *(a1 + 72);
    v34[1] = buf;
    v33 = *(a1 + 56);
    [v6 appAttestationAttestKey:v31 keyId:v17 clientDataHash:v18 completion:v30];

    v13 = &v31;
    v14 = &v32;
    v15 = v34;
  }

LABEL_15:
  if ([*(a1 + 32) appAttestType] == 2)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v19 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v37 = 136315394;
      v38 = "DCAppAttestController.m";
      v39 = 1024;
      v40 = 217;
      _os_log_impl(&dword_238044000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeWeb.", v37, 0x12u);
    }
  }

  if ([*(a1 + 32) appAttestType] == 3)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v20 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v37 = 136315394;
      v38 = "DCAppAttestController.m";
      v39 = 1024;
      v40 = 218;
      _os_log_impl(&dword_238044000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeDevice.", v37, 0x12u);
    }
  }

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_41(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_2;
  v13[3] = &unk_278A45F80;
  v13[4] = v7;
  v14 = v6;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = v5;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v18 = v8;
  v19 = v9;
  v10 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  [v7 dispatchCompletionHandler:v13 ontoQueue:v10];
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_2(uint64_t a1)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rewrapAsDCError:*(a1 + 40)];
  v3 = +[DCAnalytics shared];
  [v3 sendPerformanceForCategory:8 eventType:1];

  v12[0] = @"appUUIDLoaded";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) != 0];
  v13[0] = v4;
  v12[1] = @"clientDataHashValid";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56) != 0];
  v13[1] = v5;
  v12[2] = @"attestedKey";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64) != 0];
  v12[3] = @"serviceType";
  v13[2] = v6;
  v13[3] = @"default";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];

  v8 = +[DCAnalytics shared];
  [v8 sendPayload:v7 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v2];

  v9 = *(a1 + 64);
  (*(*(a1 + 72) + 16))();
  v10 = [*(*(*(a1 + 80) + 8) + 40) connection];
  [v10 invalidate];

  v11 = *MEMORY[0x277D85DE8];
}

void __83__DCAppAttestController_attestKey_teamIdentifier_clientDataHash_completionHandler___block_invoke_3(void *a1, void *a2, uint64_t a3)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v5 = a1[4];
  v6 = a2;
  v7 = [v5 rewrapAsDCError:a3];
  v8 = +[DCAnalytics shared];
  [v8 sendPerformanceForCategory:8 eventType:1];

  v16[0] = @"appUUIDLoaded";
  v9 = [MEMORY[0x277CCABB0] numberWithInt:a1[5] != 0];
  v17[0] = v9;
  v16[1] = @"clientDataHashValid";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:a1[6] != 0];
  v17[1] = v10;
  v16[2] = @"attestedKey";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v6 != 0];
  v16[3] = @"serviceType";
  v17[2] = v11;
  v17[3] = @"priv";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v13 = +[DCAnalytics shared];
  [v13 sendPayload:v12 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v7];

  (*(a1[7] + 16))();
  v14 = [*(*(a1[8] + 8) + 40) connection];
  [v14 invalidate];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)attestKey:(id)a3 keyAttributes:(id)a4 clientDataHash:(id)a5 authData:(id)a6 options:(id)a7 completionHandler:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = clientProcessingQueue();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke;
  v24[3] = &unk_278A45FF8;
  v24[4] = self;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v17;
  dispatch_async(v18, v24);
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue();
    label = dispatch_queue_get_label(v4);
    *buf = 136315650;
    v43 = "DCAppAttestController.m";
    v44 = 1024;
    v45 = 225;
    v46 = 2080;
    v47 = label;
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching attest key onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  v6 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_50;
  v40[3] = &unk_278A45EB8;
  v41 = *(a1 + 72);
  v7 = [(DCDeviceMetadataDaemonConnection *)v6 remoteObjectProxy:v40];
  if ([*(a1 + 32) appAttestType] == 2)
  {
    v8 = +[DCAnalytics shared];
    [v8 sendPerformanceForCategory:10 eventType:0];

    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_2;
    v36[3] = &unk_278A46090;
    v12 = &v37;
    v13 = v9;
    v37 = v13;
    v14 = v38;
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    v38[0] = v15;
    v38[1] = v16;
    v17 = &v39;
    v39 = *(a1 + 72);
    [v7 appAttestationWebAttestKey:v13 clientDataHash:v10 authData:v11 completion:v36];
  }

  else
  {
    if ([*(a1 + 32) appAttestType] != 3)
    {
      goto LABEL_10;
    }

    v18 = +[DCAnalytics shared];
    [v18 sendPerformanceForCategory:11 eventType:0];

    v19 = *(a1 + 40);
    v20 = *(a1 + 48);
    v21 = *(a1 + 64);
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_66;
    v31 = &unk_278A46108;
    v12 = &v32;
    v22 = v19;
    v32 = v22;
    v35 = 0;
    v14 = v33;
    v23 = *(a1 + 48);
    v24 = *(a1 + 32);
    v33[0] = v23;
    v33[1] = v24;
    v17 = &v34;
    v34 = *(a1 + 72);
    [v7 appAttestationDeviceAttestKey:v22 useSystemKeychain:0 clientDataHash:v20 options:v21 completion:&v28];
  }

LABEL_10:
  if ([*(a1 + 32) appAttestType] == 1)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v25 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "DCAppAttestController.m";
      v44 = 1024;
      v45 = 380;
      _os_log_impl(&dword_238044000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypePriv.", buf, 0x12u);
    }
  }

  if (![*(a1 + 32) appAttestType])
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v26 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v43 = "DCAppAttestController.m";
      v44 = 1024;
      v45 = 381;
      _os_log_impl(&dword_238044000, v26, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeDefault.", buf, 0x12u);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_50(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v32 = a3;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_3;
  v43[3] = &unk_278A46020;
  v44 = *(a1 + 32);
  v31 = MEMORY[0x2383E6220](v43);
  if (a2 < 1)
  {
    v25 = +[DCAnalytics shared];
    [v25 sendPerformanceForCategory:10 eventType:1];

    v46[0] = @"2";
    v45[0] = @"appUUIDLoaded";
    v45[1] = @"clientDataHashValid";
    v26 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
    v46[1] = v26;
    v46[2] = &unk_284AE94C8;
    v45[2] = @"attestedKey";
    v45[3] = @"serviceType";
    v46[3] = @"web";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];

    v28 = +[DCAnalytics shared];
    v29 = [*(a1 + 48) rewrapAsDCError:v32];
    [v28 sendPayload:v27 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v29];

    (*(*(a1 + 56) + 16))();
    goto LABEL_25;
  }

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = 0;
  allocator = *MEMORY[0x277CBECE8];
  v33 = a1;
  do
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%d", *(a1 + 32), @"cert", v4];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_56;
    v40[3] = &unk_278A46048;
    v6 = v5;
    v41 = v6;
    v42 = *(a1 + 32);
    v7 = MEMORY[0x2383E6220](v40);
    v39 = -1;
    v38 = 0;
    v8 = copy_keychain_data(@"appattest-webauthn", v6, &v39, &v38);
    v9 = v38;
    v10 = v9;
    if (v8 && !v39 && !v9)
    {
      goto LABEL_11;
    }

    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v11 = DCLogSystem_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v10 localizedDescription];
      *buf = 136316162;
      v50 = "DCAppAttestController.m";
      v51 = 1024;
      v52 = 258;
      v53 = 2112;
      v54 = v12;
      v55 = 1024;
      v56 = v39;
      v57 = 2112;
      v58 = v6;
      _os_log_impl(&dword_238044000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to copy certificate data. { error=%@, err=%d, label=%@ }", buf, 0x2Cu);
    }

    if (v8)
    {
LABEL_11:
      v13 = SecCertificateCreateWithData(allocator, v8);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_57;
      v37[3] = &__block_descriptor_40_e5_v8__0l;
      v37[4] = v13;
      v14 = MEMORY[0x2383E6220](v37);
      if (v13)
      {
        if (DCLogSystem_onceToken != -1)
        {
          [DCAppAttestController isSupported];
        }

        v15 = DCLogSystem_log;
        if (!os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_21;
        }

        *buf = 136315650;
        v50 = "DCAppAttestController.m";
        v51 = 1024;
        v52 = 265;
        v53 = 2112;
        v54 = v6;
        v16 = v15;
        v17 = "%25s:%-5d Created cert. { label=%@ }";
      }

      else
      {
        if (DCLogSystem_onceToken != -1)
        {
          [DCAppAttestController isSupported];
        }

        v18 = DCLogSystem_log;
        if (!os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_21;
        }

        *buf = 136315650;
        v50 = "DCAppAttestController.m";
        v51 = 1024;
        v52 = 264;
        v53 = 2112;
        v54 = v6;
        v16 = v18;
        v17 = "%25s:%-5d Failed to create cert. { label=%@ }";
      }

      _os_log_impl(&dword_238044000, v16, OS_LOG_TYPE_DEBUG, v17, buf, 0x1Cu);
LABEL_21:
      [v35 addObject:v13];
      v14[2](v14);
      a1 = v33;
    }

    v7[2](v7);
    v4 = (v4 + 1);
  }

  while (a2 != v4);
  v19 = +[DCAnalytics shared];
  [v19 sendPerformanceForCategory:10 eventType:1];

  v48[0] = @"2";
  v47[0] = @"appUUIDLoaded";
  v47[1] = @"clientDataHashValid";
  v20 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
  v48[1] = v20;
  v47[2] = @"attestedKey";
  v21 = [MEMORY[0x277CCABB0] numberWithInt:v35 != 0];
  v47[3] = @"serviceType";
  v48[2] = v21;
  v48[3] = @"web";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:4];

  v23 = +[DCAnalytics shared];
  v24 = [*(a1 + 48) rewrapAsDCError:v32];
  [v23 sendPayload:v22 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v24];

  (*(*(a1 + 56) + 16))();
LABEL_25:
  v31[2]();

  v30 = *MEMORY[0x277D85DE8];
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_3(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = delete_keychain_item(@"appattest-webauthn", v2, &v12);
  v4 = v12;
  v5 = v4;
  if (!v3 || v4 != 0)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v7 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v5 localizedDescription];
      *buf = 136315906;
      v14 = "DCAppAttestController.m";
      v15 = 1024;
      v16 = 240;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_238044000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete key from keychain. { keyId=%@, error=%@ }", buf, 0x26u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_56(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = delete_keychain_item(@"appattest-webauthn", v2, &v12);
  v4 = v12;
  v5 = v4;
  if (!v3 || v4 != 0)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v7 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 40);
      v9 = v7;
      v10 = [v5 localizedDescription];
      *buf = 136315906;
      v14 = "DCAppAttestController.m";
      v15 = 1024;
      v16 = 252;
      v17 = 2112;
      v18 = v8;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_238044000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete cert from keychain. { keyId=%@, error=%@ }", buf, 0x26u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_57(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_66(uint64_t a1, int a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v29 = a3;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_2_67;
  v40[3] = &unk_278A460B8;
  v41 = *(a1 + 32);
  v42 = *(a1 + 64);
  v28 = MEMORY[0x2383E6220](v40);
  if (a2 < 1)
  {
    v22 = +[DCAnalytics shared];
    [v22 sendPerformanceForCategory:11 eventType:1];

    v44[0] = @"2";
    v43[0] = @"appUUIDLoaded";
    v43[1] = @"clientDataHashValid";
    v23 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
    v44[1] = v23;
    v43[2] = @"attestedKey";
    v43[3] = @"serviceType";
    v44[2] = &unk_284AE94C8;
    v44[3] = @"device";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:4];

    v25 = +[DCAnalytics shared];
    v26 = [*(a1 + 48) rewrapAsDCError:v29];
    [v25 sendPayload:v24 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v26];

    v28[2]();
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = 0;
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:%d", *(a1 + 32), @"cert", v4];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_68;
      v36[3] = &unk_278A460E0;
      v6 = v5;
      v37 = v6;
      v39 = *(a1 + 64);
      v38 = *(a1 + 32);
      v7 = MEMORY[0x2383E6220](v36);
      v35 = -1;
      v34 = 0;
      v8 = copy_keychain_data(@"appattest-device", v6, &v35, &v34);
      v9 = v34;
      v10 = v9;
      if (v8 && !v35 && !v9)
      {
        goto LABEL_11;
      }

      if (DCLogSystem_onceToken != -1)
      {
        [DCAppAttestController isSupported];
      }

      v11 = DCLogSystem_log;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v10 localizedDescription];
        *buf = 136316162;
        v48 = "DCAppAttestController.m";
        v49 = 1024;
        v50 = 333;
        v51 = 2112;
        v52 = v12;
        v53 = 1024;
        v54 = v35;
        v55 = 2112;
        v56 = v6;
        _os_log_impl(&dword_238044000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to copy certificate data. { error=%@, err=%d, label=%@ }", buf, 0x2Cu);
      }

      if (v8)
      {
LABEL_11:
        v13 = SecCertificateCreateWithData(allocator, v8);
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_69;
        v33[3] = &__block_descriptor_40_e5_v8__0l;
        v33[4] = v13;
        v14 = MEMORY[0x2383E6220](v33);
        if (!v13)
        {
          if (DCLogSystem_onceToken != -1)
          {
            [DCAppAttestController isSupported];
          }

          v15 = DCLogSystem_log;
          if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v48 = "DCAppAttestController.m";
            v49 = 1024;
            v50 = 339;
            v51 = 2112;
            v52 = v6;
            _os_log_impl(&dword_238044000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d Failed to create cert. { label=%@ }", buf, 0x1Cu);
          }
        }

        [v31 addObject:v13];
        v14[2](v14);
      }

      v7[2](v7);
      v4 = (v4 + 1);
    }

    while (a2 != v4);
    v16 = +[DCAnalytics shared];
    [v16 sendPerformanceForCategory:11 eventType:1];

    v46[0] = @"2";
    v45[0] = @"appUUIDLoaded";
    v45[1] = @"clientDataHashValid";
    v17 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
    v46[1] = v17;
    v45[2] = @"attestedKey";
    v18 = [MEMORY[0x277CCABB0] numberWithInt:v31 != 0];
    v46[2] = v18;
    v45[3] = @"serviceType";
    v46[3] = @"device";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:4];

    v20 = +[DCAnalytics shared];
    v21 = [*(a1 + 48) rewrapAsDCError:v29];
    [v20 sendPayload:v19 forEvent:@"com.apple.devicecheck.appattest.attestKey" withError:v21];

    v28[2]();
    (*(*(a1 + 56) + 16))();
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_2_67(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v13 = 0;
  v4 = delete_keychain_item_for_system_keychain(@"appattest-device", v2, v3, &v13);
  v5 = v13;
  v6 = v5;
  if (!v4 || v5 != 0)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v6 localizedDescription];
      *buf = 136315906;
      v15 = "DCAppAttestController.m";
      v16 = 1024;
      v17 = 315;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_238044000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete key from keychain. { keyId=%@, error=%@ }", buf, 0x26u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_68(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v13 = 0;
  v4 = delete_keychain_item_for_system_keychain(@"appattest-device", v2, v3, &v13);
  v5 = v13;
  v6 = v5;
  if (!v4 || v5 != 0)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      v11 = [v6 localizedDescription];
      *buf = 136315906;
      v15 = "DCAppAttestController.m";
      v16 = 1024;
      v17 = 327;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_238044000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to delete cert from keychain. { keyId=%@, error=%@ }", buf, 0x26u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __99__DCAppAttestController_attestKey_keyAttributes_clientDataHash_authData_options_completionHandler___block_invoke_69(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)generateAssertion:(id)a3 teamIdentifier:(id)a4 clientDataHash:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = dispatch_get_current_queue();
  v15 = clientProcessingQueue();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke;
  v21[3] = &unk_278A45FF8;
  v21[4] = self;
  v22 = v10;
  v23 = v12;
  v24 = v14;
  v25 = v11;
  v26 = v13;
  v16 = v11;
  v17 = v14;
  v18 = v12;
  v19 = v10;
  v20 = v13;
  dispatch_async(v15, v21);
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue();
    *buf = 136315650;
    *&buf[4] = "DCAppAttestController.m";
    *&buf[12] = 1024;
    *&buf[14] = 393;
    *&buf[18] = 2080;
    *&buf[20] = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching generate assertion onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v5 = *(*&buf[8] + 40);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_73;
  v37[3] = &unk_278A45EB8;
  v38 = *(a1 + 72);
  v6 = [v5 remoteObjectProxy:v37];
  v7 = [*(a1 + 32) loadAppUUID];
  if ([*(a1 + 32) appAttestType])
  {
    if ([*(a1 + 32) appAttestType] != 1)
    {
      goto LABEL_10;
    }

    v8 = +[DCAnalytics shared];
    [v8 sendPerformanceForCategory:13 eventType:0];

    v9 = *(a1 + 64);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_4;
    v25 = &unk_278A46180;
    v26 = *(a1 + 32);
    v27 = v7;
    v28 = *(a1 + 40);
    v29 = *(a1 + 48);
    v30[0] = *(a1 + 72);
    v30[1] = buf;
    [v6 appAttestationAssertWithTeamIdentifier:v9 appUUID:v27 keyId:v10 clientDataHash:v11 completion:&v22];
    v12 = &v27;
    v13 = &v28;
    v14 = &v29;
    v15 = v30;
  }

  else
  {
    v16 = +[DCAnalytics shared];
    [v16 sendPerformanceForCategory:12 eventType:0];

    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_2;
    v31[3] = &unk_278A46158;
    v31[4] = *(a1 + 32);
    v32 = v7;
    v33 = *(a1 + 40);
    v34 = *(a1 + 48);
    v36[0] = *(a1 + 72);
    v36[1] = buf;
    v35 = *(a1 + 56);
    [v6 appAttestationAssert:v32 keyId:v17 clientDataHash:v18 completion:v31];

    v12 = &v32;
    v13 = &v33;
    v14 = &v34;
    v15 = v36;
  }

LABEL_10:
  if ([*(a1 + 32) appAttestType] == 2)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v19 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v39 = 136315394;
      v40 = "DCAppAttestController.m";
      v41 = 1024;
      v42 = 453;
      _os_log_impl(&dword_238044000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeWeb.", v39, 0x12u);
    }
  }

  if ([*(a1 + 32) appAttestType] == 3)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v20 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v39 = 136315394;
      v40 = "DCAppAttestController.m";
      v41 = 1024;
      v42 = 454;
      _os_log_impl(&dword_238044000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid usage, cannot use this method for AppAttestTypeDevice.", v39, 0x12u);
    }
  }

  _Block_object_dispose(buf, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_73(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_3;
  v13[3] = &unk_278A46130;
  v13[4] = v7;
  v14 = v6;
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v18 = v5;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v19 = v8;
  v20 = v9;
  v10 = *(a1 + 64);
  v11 = v5;
  v12 = v6;
  [v7 dispatchCompletionHandler:v13 ontoQueue:v10];
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_3(uint64_t a1)
{
  v16[5] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) rewrapAsDCError:*(a1 + 40)];
  v3 = +[DCAnalytics shared];
  [v3 sendPerformanceForCategory:12 eventType:1];

  v15[0] = @"appUUIDLoaded";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) != 0];
  v16[0] = v4;
  v15[1] = @"keyIdValid";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56) != 0];
  v16[1] = v5;
  v15[2] = @"clientDataHashValid";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 64) != 0];
  v16[2] = v6;
  v15[3] = @"generatedAssertion";
  v7 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 72) != 0];
  v15[4] = @"serviceType";
  v16[3] = v7;
  v16[4] = @"default";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:5];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.generateAssertion" withError:v2];

  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = [*(a1 + 32) rewrapAsDCError:*(a1 + 40)];
  (*(v10 + 16))(v10, v11, v12);

  v13 = [*(*(*(a1 + 88) + 8) + 40) connection];
  [v13 invalidate];

  v14 = *MEMORY[0x277D85DE8];
}

void __91__DCAppAttestController_generateAssertion_teamIdentifier_clientDataHash_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v21[5] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 rewrapAsDCError:v6];
  v9 = +[DCAnalytics shared];
  [v9 sendPerformanceForCategory:13 eventType:1];

  v20[0] = @"appUUIDLoaded";
  v10 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40) != 0];
  v21[0] = v10;
  v20[1] = @"keyIdValid";
  v11 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) != 0];
  v21[1] = v11;
  v20[2] = @"clientDataHashValid";
  v12 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56) != 0];
  v21[2] = v12;
  v20[3] = @"generatedAssertion";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:v7 != 0];
  v20[4] = @"serviceType";
  v21[3] = v13;
  v21[4] = @"priv";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];

  v15 = +[DCAnalytics shared];
  [v15 sendPayload:v14 forEvent:@"com.apple.devicecheck.appattest.generateAssertion" withError:v8];

  v16 = *(a1 + 64);
  v17 = [*(a1 + 32) rewrapAsDCError:v6];

  (*(v16 + 16))(v16, v7, v17);
  v18 = [*(*(*(a1 + 72) + 8) + 40) connection];
  [v18 invalidate];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)sign:(id)a3 withKey:(id)a4 teamIdentifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = clientProcessingQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278A461D0;
  v22 = v12;
  v23 = v13;
  block[4] = self;
  v20 = v10;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v13;
  dispatch_async(v14, block);
}

void __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue();
    *buf = 136315650;
    *&buf[4] = "DCAppAttestController.m";
    *&buf[12] = 1024;
    *&buf[14] = 461;
    *&buf[18] = 2080;
    *&buf[20] = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching sign onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  *&buf[24] = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v5 = *(*&buf[8] + 40);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke_80;
  v17[3] = &unk_278A45EB8;
  v18 = *(a1 + 64);
  v6 = [v5 remoteObjectProxy:v17];
  v7 = [*(a1 + 32) loadAppUUID];
  if (!v7)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      v20 = "DCAppAttestController.m";
      v21 = 1024;
      v22 = 469;
      _os_log_impl(&dword_238044000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch App UUID.", v19, 0x12u);
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke_81;
  v14[3] = &unk_278A461A8;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v14[4] = *(a1 + 32);
  v15 = v12;
  v16 = buf;
  [v6 appAttestationSign:v9 appUUID:v7 keyId:v10 teamId:v11 completion:v14];

  _Block_object_dispose(buf, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke_80(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __71__DCAppAttestController_sign_withKey_teamIdentifier_completionHandler___block_invoke_81(void *a1, void *a2, uint64_t a3)
{
  v6 = a1[4];
  v5 = a1[5];
  v7 = a2;
  v8 = [v6 rewrapAsDCError:a3];
  (*(v5 + 16))(v5, v7, v8);

  v9 = [*(*(a1[6] + 8) + 40) connection];
  [v9 invalidate];
}

- (void)getPropertiesForKeyId:(id)a3 teamIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = clientProcessingQueue();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_278A45F58;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  dispatch_async(v11, v15);
}

void __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  if (DCLogSystem_onceToken != -1)
  {
    __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
  }

  v2 = DCLogSystem_log;
  if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = clientProcessingQueue();
    *buf = 136315650;
    v17 = "DCAppAttestController.m";
    v18 = 1024;
    v19 = 481;
    v20 = 2080;
    label = dispatch_queue_get_label(v4);
    _os_log_impl(&dword_238044000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching get properties for key onto client processing queue. { label=%s }", buf, 0x1Cu);
  }

  v5 = objc_alloc_init(DCDeviceMetadataDaemonConnection);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke_82;
  v14[3] = &unk_278A45EB8;
  v15 = *(a1 + 56);
  v6 = [(DCDeviceMetadataDaemonConnection *)v5 remoteObjectProxy:v14];
  v7 = [*(a1 + 32) loadAppUUID];
  if (!v7)
  {
    if (DCLogSystem_onceToken != -1)
    {
      [DCAppAttestController isSupported];
    }

    v8 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "DCAppAttestController.m";
      v18 = 1024;
      v19 = 489;
      _os_log_impl(&dword_238044000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to fetch App UUID.", buf, 0x12u);
    }
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke_83;
  v12[3] = &unk_278A461F8;
  v12[4] = *(a1 + 32);
  v13 = *(a1 + 56);
  [v6 getKeyProxyEndpoint:v7 keyId:v9 teamIdentifier:v10 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke_82(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] dc_errorWithCode:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __80__DCAppAttestController_getPropertiesForKeyId_teamIdentifier_completionHandler___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v7 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      v9 = [v6 localizedDescription];
      *buf = 136315650;
      v21 = "DCAppAttestController.m";
      v22 = 1024;
      v23 = 493;
      v24 = 2112;
      v25 = v9;
      _os_log_impl(&dword_238044000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get key proxy endpoint. { error=%@ }", buf, 0x1Cu);
    }

    v10 = [*(a1 + 32) rewrapAsDCError:v6];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v11 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v21 = "DCAppAttestController.m";
      v22 = 1024;
      v23 = 499;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_238044000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Received key proxy endpoint. { endpoint=%@ }", buf, 0x1Cu);
    }

    v19 = 0;
    v12 = [MEMORY[0x277CDBD80] createKeyFromEndpoint:v5 error:&v19];
    v10 = v19;
    if (v12)
    {
      v13 = SecKeyCopyAttributes(v12);
      if (DCLogSystem_onceToken != -1)
      {
        [DCAppAttestController isSupported];
      }

      v14 = DCLogSystem_log;
      if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v21 = "DCAppAttestController.m";
        v22 = 1024;
        v23 = 510;
        v24 = 2112;
        v25 = v5;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_238044000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Fetched key properties. { endpoint=%@, properties=%@ }", buf, 0x26u);
      }

      v15 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (DCLogSystem_onceToken != -1)
      {
        [DCAppAttestController isSupported];
      }

      v16 = DCLogSystem_log;
      if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "DCAppAttestController.m";
        v22 = 1024;
        v23 = 504;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_238044000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to create key from key proxy endpoint. { endpoint=%@ }", buf, 0x1Cu);
      }

      v17 = *(a1 + 40);
      v13 = [MEMORY[0x277CCA9B8] dc_errorWithCode:2];
      v15 = *(v17 + 16);
    }

    v15();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSupportedWithError:(id *)a3
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v5 = objc_opt_new();
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke;
  v18[3] = &unk_278A46220;
  v18[4] = &v25;
  v18[5] = &v19;
  v6 = [v5 synchronousRemoteObjectProxy:v18];
  if (![(DCAppAttestController *)self appAttestType])
  {
    v9 = +[DCAnalytics shared];
    [v9 sendPerformanceForCategory:2 eventType:0];

    v8 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke_86;
    v17[3] = &unk_278A46248;
    v17[5] = &v25;
    v17[6] = &v19;
    v17[4] = v5;
    [v6 appAttestationIsSupportedWithCompletion:v17];
    goto LABEL_9;
  }

  if ([(DCAppAttestController *)self appAttestType]== 1)
  {
    v7 = +[DCAnalytics shared];
    [v7 sendPerformanceForCategory:3 eventType:0];

    v8 = v16;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke_2;
    v16[3] = &unk_278A46248;
    v16[5] = &v25;
    v16[6] = &v19;
    v16[4] = v5;
    [v6 appAttestationPrivIsSupportedWithCompletion:v16];
LABEL_9:

    goto LABEL_10;
  }

  if ([(DCAppAttestController *)self appAttestType]== 2)
  {
    v10 = +[DCAnalytics shared];
    [v10 sendPerformanceForCategory:4 eventType:0];

    v8 = v15;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke_3;
    v15[3] = &unk_278A46248;
    v15[5] = &v25;
    v15[6] = &v19;
    v15[4] = v5;
    [v6 appAttestationWebIsSupportedWithCompletion:v15];
    goto LABEL_9;
  }

  if ([(DCAppAttestController *)self appAttestType]== 3)
  {
    v11 = +[DCAnalytics shared];
    [v11 sendPerformanceForCategory:5 eventType:0];

    v8 = v14;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__DCAppAttestController_isSupportedWithError___block_invoke_4;
    v14[3] = &unk_278A46248;
    v14[5] = &v25;
    v14[6] = &v19;
    v14[4] = v5;
    [v6 appAttestationDeviceIsSupportedWithCompletion:v14];
    goto LABEL_9;
  }

LABEL_10:
  *a3 = v20[5];
  v12 = *(v26 + 24);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v12;
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v4 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      v6 = [v3 localizedDescription];
      v10 = 136315650;
      v11 = "DCAppAttestController.m";
      v12 = 1024;
      v13 = 527;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_238044000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to setup synchronous remote object proxy to daemon. { error=%@ }", &v10, 0x1Cu);
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 0;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v3;

  v9 = *MEMORY[0x277D85DE8];
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke_86(uint64_t a1, uint64_t a2, void *a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:2 eventType:1];

  v15[0] = @"isSupported";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v15[1] = @"serviceType";
  v16[0] = v7;
  v16[1] = @"default";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.isSupported" withError:v5];

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = [*(a1 + 32) connection];

  [v13 invalidate];
  v14 = *MEMORY[0x277D85DE8];
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:3 eventType:1];

  v15[0] = @"isSupported";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v15[1] = @"serviceType";
  v16[0] = v7;
  v16[1] = @"priv";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.isSupported" withError:v5];

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = [*(a1 + 32) connection];

  [v13 invalidate];
  v14 = *MEMORY[0x277D85DE8];
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:4 eventType:1];

  v15[0] = @"isSupported";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v15[1] = @"serviceType";
  v16[0] = v7;
  v16[1] = @"web";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.isSupported" withError:v5];

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = [*(a1 + 32) connection];

  [v13 invalidate];
  v14 = *MEMORY[0x277D85DE8];
}

void __46__DCAppAttestController_isSupportedWithError___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[DCAnalytics shared];
  [v6 sendPerformanceForCategory:5 eventType:1];

  v15[0] = @"isSupported";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v15[1] = @"serviceType";
  v16[0] = v7;
  v16[1] = @"device";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = +[DCAnalytics shared];
  [v9 sendPayload:v8 forEvent:@"com.apple.devicecheck.appattest.isSupported" withError:v5];

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
  v12 = v5;

  v13 = [*(a1 + 32) connection];

  [v13 invalidate];
  v14 = *MEMORY[0x277D85DE8];
}

- (id)loadAppUUID
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(DCAppAttestController *)self legacyUserDefaults];
  v4 = [v3 stringForKey:@"com.apple.DC.AppAttestAppUUID"];

  v5 = [(DCAppAttestController *)self userDefaults];
  v6 = [v5 stringForKey:@"com.apple.DC.AppAttestAppUUID"];

  if (v4 && !v6)
  {
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v7 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "DCAppAttestController.m";
      v15 = 1024;
      v16 = 640;
      _os_log_impl(&dword_238044000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Fetched UUID from legacy suite, transferring value to new suite.", &v13, 0x12u);
    }

    [(DCAppAttestController *)self saveAppUUID:v4];
    v8 = [(DCAppAttestController *)self legacyUserDefaults];
    [v8 removeObjectForKey:@"com.apple.DC.AppAttestAppUUID"];

    v6 = v4;
  }

  v9 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)saveAppUUID:(id)a3
{
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  v6 = a3;
  _CFPreferencesSetBackupDisabled();
  v7 = [(DCAppAttestController *)self userDefaults];
  [v7 setObject:v6 forKey:@"com.apple.DC.AppAttestAppUUID"];

  CFPreferencesSynchronize(@"com.apple.AppAttest.client", v4, v5);
}

- (id)rewrapAsDCError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 domain];
    v6 = [v5 isEqualToString:@"com.apple.appattest.error"];

    if (v6 && (v7 = [v4 code], (v7 + 7) <= 5))
    {
      v8 = *(&unk_23804FDF8 + v7 + 7);
    }

    else
    {
      v8 = 0;
    }

    v9 = [MEMORY[0x277CCA9B8] dc_errorWithCode:v8];
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v10 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315906;
      v14 = "DCAppAttestController.m";
      v15 = 1024;
      v16 = 703;
      v17 = 2112;
      v18 = v9;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_238044000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d Re-mapped error. { mapped=%@, internal=%@ }", &v13, 0x26u);
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)dispatchCompletionHandler:(id)a3 ontoQueue:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = copy_current_process_name();
  v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{@"CommCenter", 0}];
  v9 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.DeviceCheck"];
  if ([v9 BOOLForKey:@"dispatchTestDaemonToCallingQueue"])
  {
    [v8 addObject:@"dctestd"];
  }

  if ([v8 containsObject:v7] && v6)
  {
    label = dispatch_queue_get_label(v6);
    if (DCLogSystem_onceToken != -1)
    {
      __66__DCAppAttestController_generateKeyWithTeamIdentifier_completion___block_invoke_cold_1();
    }

    v11 = DCLogSystem_log;
    if (os_log_type_enabled(DCLogSystem_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v16 = "DCAppAttestController.m";
      v17 = 1024;
      v18 = 726;
      v19 = 2080;
      v20 = label;
      _os_log_impl(&dword_238044000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dispatching completion handler onto calling queue. { queueLabel=%s }", buf, 0x1Cu);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__DCAppAttestController_dispatchCompletionHandler_ontoQueue___block_invoke;
    block[3] = &unk_278A46270;
    v14 = v5;
    dispatch_async(v6, block);
  }

  else
  {
    v5[2](v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end