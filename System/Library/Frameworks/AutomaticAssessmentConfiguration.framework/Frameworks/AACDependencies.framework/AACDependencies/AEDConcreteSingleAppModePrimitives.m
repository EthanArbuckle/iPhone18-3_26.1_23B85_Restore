@interface AEDConcreteSingleAppModePrimitives
- (void)activateSingleAppModeSessionWithConfiguration:(id)a3 completion:(id)a4;
@end

@implementation AEDConcreteSingleAppModePrimitives

- (void)activateSingleAppModeSessionWithConfiguration:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277D751B0];
  v7 = a3;
  v8 = [v6 defaultConfigurationForStyle:1];
  [v8 setAutomaticallyRelaunchesAfterAppCrash:0];
  v9 = [v7 MCSingleAppModeConfigurationRepresentation];
  v10 = [v9 dictionaryValue];
  v11 = [v10 mutableCopy];

  v12 = MEMORY[0x277CBEC28];
  [v11 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D26100]];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D25F00]];
  v13 = [v11 copy];
  [v8 setManagedConfigurationSettings:v13];

  v14 = [v7 showsUserConfirmationPromptsAndBanners];
  [v8 setShowsUserConfirmationPromptsAndBanners:v14];
  v15 = MEMORY[0x277D751B8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __95__AEDConcreteSingleAppModePrimitives_activateSingleAppModeSessionWithConfiguration_completion___block_invoke;
  v17[3] = &unk_278A0C3F0;
  v18 = v5;
  v16 = v5;
  [v15 requestSessionWithConfiguration:v8 completion:v17];
}

void __95__AEDConcreteSingleAppModePrimitives_activateSingleAppModeSessionWithConfiguration_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  if (v9)
  {
    v5 = a2;
    v6 = [[AEDConcreteSingleAppModeSession alloc] initWithSession:v9];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 16);
    v6 = a2;
    v8(v7, 0, v6);
  }
}

@end