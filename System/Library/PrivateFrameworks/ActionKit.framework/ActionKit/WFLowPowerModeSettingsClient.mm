@interface WFLowPowerModeSettingsClient
+ (id)energyModeStream;
+ (id)reversalArbiter;
+ (void)createClientWithCompletionHandler:(id)a3;
+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)a3;
+ (void)getBookmarkForFirstEventAfterBookmark:(id)a3 completionHandler:(id)a4;
+ (void)getReversalStateWithBookmark:(id)a3 completionHandler:(id)a4;
- (WFLowPowerModeSettingsClient)initWithLowPowerMode:(id)a3;
- (void)getStateWithCompletionHandler:(id)a3;
- (void)setState:(BOOL)a3 completionHandler:(id)a4;
@end

@implementation WFLowPowerModeSettingsClient

- (void)setState:(BOOL)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__WFLowPowerModeSettingsClient_setState_completionHandler___block_invoke;
  v8[3] = &unk_278C1D8F8;
  v8[4] = self;
  v9 = v6;
  v10 = a3;
  v7 = v6;
  [(WFLowPowerModeSettingsClient *)self getStateWithCompletionHandler:v8];
}

void __59__WFLowPowerModeSettingsClient_setState_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277CF1180]);
    if (a2)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    v8 = [v6 initWithMode:v7 reason:0];
    v9 = *(a1 + 32);
    v10 = [objc_opt_class() energyModeStream];
    v11 = [v10 source];
    [v11 sendEvent:v8];

    v12 = *(a1 + 48);
    v13 = *(*(a1 + 32) + 8);
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v14 = getkPMLPMSourceSiriSymbolLoc_ptr;
    v37 = getkPMLPMSourceSiriSymbolLoc_ptr;
    if (!getkPMLPMSourceSiriSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getkPMLPMSourceSiriSymbolLoc_block_invoke;
      v39 = &unk_278C222B8;
      v40 = &v34;
      v15 = LowPowerModeLibrary();
      v16 = dlsym(v15, "kPMLPMSourceSiri");
      *(v40[1] + 24) = v16;
      getkPMLPMSourceSiriSymbolLoc_ptr = *(v40[1] + 24);
      v14 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (!v14)
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkPMLPMSourceSiri(void)"];
      [v32 handleFailureInFunction:v33 file:@"WFLowPowerModeSettingsClient.m" lineNumber:24 description:{@"%s", dlerror()}];

      __break(1u);
    }

    if ([v13 setPowerMode:v12 fromSource:*v14])
    {
      v17 = *(a1 + 32);
      v18 = [objc_opt_class() reversalArbiter];
      v19 = [v18 lastEventEquals:v8];

      if (v19)
      {
        v20 = getWFBundledIntentsLogObject();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          *&buf[4] = "[WFLowPowerModeSettingsClient setState:completionHandler:]_block_invoke";
          _os_log_impl(&dword_23DE30000, v20, OS_LOG_TYPE_INFO, "%s powerd doesn't seem to be writing to Biome, handling the write ourselves", buf, 0xCu);
        }

        v21 = objc_alloc(MEMORY[0x277CF1180]);
        if (*(a1 + 48))
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        v23 = [v21 initWithMode:v22 reason:2];
        v24 = *(a1 + 32);
        v25 = [objc_opt_class() energyModeStream];
        v26 = [v25 source];
        [v26 sendEvent:v23];
      }

      v27 = getWFBundledIntentsLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = *(a1 + 48);
        *buf = 136315394;
        *&buf[4] = "[WFLowPowerModeSettingsClient setState:completionHandler:]_block_invoke";
        *&buf[12] = 1024;
        *&buf[14] = v28;
        _os_log_impl(&dword_23DE30000, v27, OS_LOG_TYPE_INFO, "%s Set Low Power Mode state to %d", buf, 0x12u);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v29 = *(a1 + 40);
      v30 = WFSettingsClientError();
      (*(v29 + 16))(v29, v30);
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)getStateWithCompletionHandler:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAC38];
  v4 = a3;
  v5 = [v3 processInfo];
  v6 = [v5 isLowPowerModeEnabled];

  v7 = getWFBundledIntentsLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136315394;
    v10 = "[WFLowPowerModeSettingsClient getStateWithCompletionHandler:]";
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_INFO, "%s Retrieved Low Power Mode state: %d", &v9, 0x12u);
  }

  v4[2](v4, v6, 0);
  v8 = *MEMORY[0x277D85DE8];
}

- (WFLowPowerModeSettingsClient)initWithLowPowerMode:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"WFLowPowerModeSettingsClient.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"lowPowerMode"}];
  }

  v12.receiver = self;
  v12.super_class = WFLowPowerModeSettingsClient;
  v7 = [(WFLowPowerModeSettingsClient *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_lowPowerMode, a3);
    v9 = v8;
  }

  return v8;
}

+ (void)getReversalStateWithBookmark:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 reversalArbiter];
  v9 = [v7 biomeBookmark];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79__WFLowPowerModeSettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke;
  v11[3] = &unk_278C19A68;
  v12 = v6;
  v10 = v6;
  [v8 getReversalStateWithBookmark:v9 completionHandler:v11];
}

void __79__WFLowPowerModeSettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 mode] == 1;
    v4 = *(a1 + 32);
    v7 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    (*(v4 + 16))(v4, v7, 0);
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 32) + 16);

    v6();
  }
}

+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [a1 reversalArbiter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__WFLowPowerModeSettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C1D920;
  v8 = v4;
  v6 = v4;
  [v5 getBookmarkForCurrentStateWithCompletionHandler:v7];
}

void __80__WFLowPowerModeSettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D7C858]) initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (void)getBookmarkForFirstEventAfterBookmark:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 reversalArbiter];
  v9 = [v7 biomeBookmark];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __88__WFLowPowerModeSettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke;
  v11[3] = &unk_278C1D920;
  v12 = v6;
  v10 = v6;
  [v8 getBookmarkForFirstEventAfterBookmark:v9 completionHandler:v11];
}

void __88__WFLowPowerModeSettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D7C858]) initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (id)reversalArbiter
{
  v3 = objc_alloc(MEMORY[0x277D7C850]);
  v4 = [a1 energyModeStream];
  v5 = [v3 initWithBiomeStream:v4];

  return v5;
}

+ (id)energyModeStream
{
  v2 = BiomeLibrary();
  v3 = [v2 Device];
  v4 = [v3 Power];
  v5 = [v4 EnergyMode];

  return v5;
}

+ (void)createClientWithCompletionHandler:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = get_PMLowPowerModeClass_softClass;
  v13 = get_PMLowPowerModeClass_softClass;
  if (!get_PMLowPowerModeClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __get_PMLowPowerModeClass_block_invoke;
    v9[3] = &unk_278C222B8;
    v9[4] = &v10;
    __get_PMLowPowerModeClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  v7 = [v5 sharedInstance];
  if (v7)
  {
    v8 = [[a1 alloc] initWithLowPowerMode:v7];
    v4[2](v4, v8, 0);
  }

  else
  {
    v8 = WFSettingsClientError();
    (v4)[2](v4, 0, v8);
  }
}

@end