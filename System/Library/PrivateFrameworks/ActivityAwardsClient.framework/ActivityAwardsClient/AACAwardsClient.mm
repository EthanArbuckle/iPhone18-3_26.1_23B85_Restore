@interface AACAwardsClient
- (AACAwardsClient)init;
- (id)allAchievementsWithError:(id *)a3;
- (id)ephemeralAchievementWithTemplateUniqueName:(id)a3 error:(id *)a4;
- (id)initialHistoricalRunStatusWithError:(id *)a3;
- (void)achievementsForTemplateNames:(id)a3 completion:(id)a4;
- (void)addEarnedInstances:(id)a3 completion:(id)a4;
- (void)addTemplates:(id)a3 completion:(id)a4;
- (void)allAchievementsWithCompletion:(id)a3;
- (void)anniversaryAchievementsForDate:(id)a3 templateNames:(id)a4 completion:(id)a5;
- (void)dealloc;
- (void)earnedAchievementsForDateInterval:(id)a3 completion:(id)a4;
- (void)provideAchievementProgressUpdates:(id)a3 completion:(id)a4;
- (void)removeEarnedInstances:(id)a3 completion:(id)a4;
- (void)removeTemplates:(id)a3 completion:(id)a4;
- (void)removeTemplatesForSource:(id)a3 completion:(id)a4;
- (void)removeTemplatesWithUniqueNames:(id)a3 completion:(id)a4;
- (void)requestAwardingWithTriggers:(unint64_t)a3 completion:(id)a4;
- (void)requestProgressUpdateForProgressProviderIdentifier:(id)a3 completion:(id)a4;
- (void)scheduleAwardingWithCompletion:(id)a3;
- (void)templatesForSource:(id)a3 completion:(id)a4;
@end

@implementation AACAwardsClient

- (AACAwardsClient)init
{
  v6.receiver = self;
  v6.super_class = AACAwardsClient;
  v2 = [(AACAwardsClient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(AACXPCClient);
    client = v2->_client;
    v2->_client = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(AACXPCClient *)self->_client invalidate];
  v3.receiver = self;
  v3.super_class = AACAwardsClient;
  [(AACAwardsClient *)&v3 dealloc];
}

- (void)scheduleAwardingWithCompletion:(id)a3
{
  v4 = a3;
  client = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__AACAwardsClient_scheduleAwardingWithCompletion___block_invoke;
  v7[3] = &unk_278C45808;
  v8 = v4;
  v6 = v4;
  [(AACXPCClient *)client sendRequest:0 completion:v7];
}

- (void)requestAwardingWithTriggers:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  client = self->_client;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__AACAwardsClient_requestAwardingWithTriggers_completion___block_invoke;
  v10[3] = &unk_278C45808;
  v11 = v6;
  v9 = v6;
  [(AACXPCClient *)client sendRequest:1 payload:v8 completion:v10];
}

void __58__AACAwardsClient_requestAwardingWithTriggers_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:4 error:&v8];
    v7 = v8;
    [v6 BOOLValue];
    (*(*(a1 + 32) + 16))();
  }
}

- (id)initialHistoricalRunStatusWithError:(id *)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v5 = ACHLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AACAwardsClient initialHistoricalRunStatusWithError:];
  }

  client = self->_client;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__AACAwardsClient_initialHistoricalRunStatusWithError___block_invoke;
  v13[3] = &unk_278C45830;
  v13[4] = &v14;
  v13[5] = &v20;
  [(AACXPCClient *)client sendSynchronousRequest:23 resultHandler:v13];
  v7 = v15[5];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  if (v15[5])
  {
    v10 = 0;
  }

  else
  {
    v11 = [AACInitialHistoricalRunStatus alloc];
    v10 = [(AACInitialHistoricalRunStatus *)v11 initWithIsComplete:*(v21 + 24)];
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);

  return v10;
}

void __55__AACAwardsClient_initialHistoricalRunStatusWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ACHLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __55__AACAwardsClient_initialHistoricalRunStatusWithError___block_invoke_cold_1();
  }

  if (v6)
  {
    v8 = *(*(a1 + 32) + 8);
    v9 = v6;
    v10 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else if (v5)
  {
    v12 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v5 options:4 error:&v12];
    v11 = v12;
    *(*(*(a1 + 40) + 8) + 24) = [v10 BOOLValue];
  }

  else
  {
    v10 = ACHLogXPC();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__AACAwardsClient_initialHistoricalRunStatusWithError___block_invoke_cold_2();
    }
  }
}

- (void)allAchievementsWithCompletion:(id)a3
{
  v4 = a3;
  client = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__AACAwardsClient_allAchievementsWithCompletion___block_invoke;
  v7[3] = &unk_278C45808;
  v8 = v4;
  v6 = v4;
  [(AACXPCClient *)client sendRequest:2 completion:v7];
}

void __49__AACAwardsClient_allAchievementsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 32);
    v10 = [v7 copy];
    (*(v9 + 16))(v9, v10, v6);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = [objc_alloc(MEMORY[0x277CE8CE8]) initWithData:v5];
    v11 = [v20 achievements];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:*(*(&v21 + 1) + 8 * v15)];
          [v8 addObject:v16];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v17 = *(a1 + 32);
    v18 = [v8 copy];
    (*(v17 + 16))(v17, v18, 0);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)allAchievementsWithError:(id *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v5 = ACHLogXPC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [AACAwardsClient allAchievementsWithError:];
  }

  client = self->_client;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__AACAwardsClient_allAchievementsWithError___block_invoke;
  v15[3] = &unk_278C45830;
  v15[4] = &v16;
  v15[5] = &v22;
  [(AACXPCClient *)client sendSynchronousRequest:2 resultHandler:v15];
  v7 = v17[5];
  v8 = v7;
  if (v7)
  {
    if (a3)
    {
      v9 = v7;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v10 = ACHLogXPC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v23[5] count];
    *buf = 134217984;
    v29 = v11;
    _os_log_impl(&dword_23E4F1000, v10, OS_LOG_TYPE_DEFAULT, "Returning %lu achievements from synchronous allAchievementsWithError", buf, 0xCu);
  }

  v12 = [v23[5] copy];
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __44__AACAwardsClient_allAchievementsWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ACHLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __44__AACAwardsClient_allAchievementsWithError___block_invoke_cold_1();
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = [objc_alloc(MEMORY[0x277CE8CE8]) initWithData:v5];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [v8 achievements];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:*(*(&v16 + 1) + 8 * v13)];
        [*(*(*(a1 + 40) + 8) + 40) addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)earnedAchievementsForDateInterval:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = ACHCodableFromDateInterval();
  v7 = [v6 data];
  v8 = ACHLogXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AACAwardsClient earnedAchievementsForDateInterval:completion:];
  }

  client = self->_client;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__AACAwardsClient_earnedAchievementsForDateInterval_completion___block_invoke;
  v11[3] = &unk_278C45808;
  v12 = v5;
  v10 = v5;
  [(AACXPCClient *)client sendRequest:3 payloadData:v7 completion:v11];
}

void __64__AACAwardsClient_earnedAchievementsForDateInterval_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 32);
    v10 = [v7 copy];
    (*(v9 + 16))(v9, v10, v6);
  }

  else
  {
    v11 = ACHLogXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __64__AACAwardsClient_earnedAchievementsForDateInterval_completion___block_invoke_cold_1();
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = [objc_alloc(MEMORY[0x277CE8CE8]) initWithData:v5];
    v12 = [v21 achievements];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:*(*(&v22 + 1) + 8 * v16)];
          [v8 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    v18 = *(a1 + 32);
    v19 = [v8 copy];
    (*(v18 + 16))(v18, v19, 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)anniversaryAchievementsForDate:(id)a3 templateNames:(id)a4 completion:(id)a5
{
  v6 = a5;
  v7 = ACHCodableFromAnniversaryRequest();
  v8 = [v7 data];
  v9 = ACHLogXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [AACAwardsClient anniversaryAchievementsForDate:templateNames:completion:];
  }

  client = self->_client;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__AACAwardsClient_anniversaryAchievementsForDate_templateNames_completion___block_invoke;
  v12[3] = &unk_278C45808;
  v13 = v6;
  v11 = v6;
  [(AACXPCClient *)client sendRequest:22 payloadData:v8 completion:v12];
}

void __75__AACAwardsClient_anniversaryAchievementsForDate_templateNames_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 32);
    v10 = [v7 copy];
    (*(v9 + 16))(v9, v10, v6);
  }

  else
  {
    v11 = ACHLogXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __75__AACAwardsClient_anniversaryAchievementsForDate_templateNames_completion___block_invoke_cold_1();
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = [objc_alloc(MEMORY[0x277CE8CE8]) initWithData:v5];
    v12 = [v21 achievements];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:*(*(&v22 + 1) + 8 * v16)];
          [v8 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    v18 = *(a1 + 32);
    v19 = [v8 copy];
    (*(v18 + 16))(v18, v19, 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)achievementsForTemplateNames:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = ACHCodableFromTemplateNameArray();
  v7 = [v6 data];
  v8 = ACHLogXPC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [AACAwardsClient achievementsForTemplateNames:completion:];
  }

  client = self->_client;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__AACAwardsClient_achievementsForTemplateNames_completion___block_invoke;
  v11[3] = &unk_278C45808;
  v12 = v5;
  v10 = v5;
  [(AACXPCClient *)client sendRequest:21 payloadData:v7 completion:v11];
}

void __59__AACAwardsClient_achievementsForTemplateNames_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v7;
  if (v6)
  {
    v9 = *(a1 + 32);
    v10 = [v7 copy];
    (*(v9 + 16))(v9, v10, v6);
  }

  else
  {
    v11 = ACHLogXPC();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __59__AACAwardsClient_achievementsForTemplateNames_completion___block_invoke_cold_1();
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = [objc_alloc(MEMORY[0x277CE8CE8]) initWithData:v5];
    v12 = [v21 achievements];
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        v16 = 0;
        do
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:*(*(&v22 + 1) + 8 * v16)];
          [v8 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    v18 = *(a1 + 32);
    v19 = [v8 copy];
    (*(v18 + 16))(v18, v19, 0);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (id)ephemeralAchievementWithTemplateUniqueName:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v7 = ACHLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [AACAwardsClient ephemeralAchievementWithTemplateUniqueName:error:];
  }

  client = self->_client;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68__AACAwardsClient_ephemeralAchievementWithTemplateUniqueName_error___block_invoke;
  v17[3] = &unk_278C45830;
  v17[4] = &v18;
  v17[5] = &v24;
  [(AACXPCClient *)client sendSynchronousRequest:18 payload:v6 resultHandler:v17];
  v9 = v19[5];
  v10 = v9;
  if (v9)
  {
    if (a4)
    {
      v11 = v9;
      *a4 = v10;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v12 = ACHLogXPC();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v25[5];
    *buf = 138412546;
    v31 = v6;
    v32 = 2112;
    v33 = v13;
    _os_log_impl(&dword_23E4F1000, v12, OS_LOG_TYPE_DEFAULT, "Returning ephermeral achievement for template name %@: %@", buf, 0x16u);
  }

  v14 = v25[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __68__AACAwardsClient_ephemeralAchievementWithTemplateUniqueName_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ACHLogXPC();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __68__AACAwardsClient_ephemeralAchievementWithTemplateUniqueName_error___block_invoke_cold_1();
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x277CE8CE0]) initWithData:v5];
    v9 = [objc_alloc(MEMORY[0x277CE8CB0]) initWithCodable:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

- (void)templatesForSource:(id)a3 completion:(id)a4
{
  v6 = a4;
  client = self->_client;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__AACAwardsClient_templatesForSource_completion___block_invoke;
  v9[3] = &unk_278C45808;
  v10 = v6;
  v8 = v6;
  [(AACXPCClient *)client sendRequest:11 payload:a3 completion:v9];
}

void __49__AACAwardsClient_templatesForSource_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (v6)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v15 = [objc_alloc(MEMORY[0x277CE8D20]) initWithData:v5];
    v8 = [v15 templates];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [objc_alloc(MEMORY[0x277CE8D50]) initWithCodable:*(*(&v16 + 1) + 8 * v12)];
          [v7 addObject:v13];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addTemplates:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = ACHCodableFromTemplate();
        [v8 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc_init(MEMORY[0x277CE8D20]);
  [v16 setTemplates:v8];
  v17 = [v16 data];
  client = self->_client;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __43__AACAwardsClient_addTemplates_completion___block_invoke;
  v21[3] = &unk_278C45808;
  v22 = v7;
  v19 = v7;
  [(AACXPCClient *)client sendRequest:12 payloadData:v17 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __43__AACAwardsClient_addTemplates_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:4 error:&v8];
    v7 = v8;
    [v6 BOOLValue];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)removeTemplates:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = ACHCodableFromTemplate();
        [v8 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc_init(MEMORY[0x277CE8D20]);
  [v16 setTemplates:v8];
  v17 = [v16 data];
  client = self->_client;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__AACAwardsClient_removeTemplates_completion___block_invoke;
  v21[3] = &unk_278C45808;
  v22 = v7;
  v19 = v7;
  [(AACXPCClient *)client sendRequest:13 payloadData:v17 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __46__AACAwardsClient_removeTemplates_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:4 error:&v8];
    v7 = v8;
    [v6 BOOLValue];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)removeTemplatesForSource:(id)a3 completion:(id)a4
{
  v6 = a4;
  client = self->_client;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__AACAwardsClient_removeTemplatesForSource_completion___block_invoke;
  v9[3] = &unk_278C45808;
  v10 = v6;
  v8 = v6;
  [(AACXPCClient *)client sendRequest:14 payload:a3 completion:v9];
}

void __55__AACAwardsClient_removeTemplatesForSource_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:4 error:&v8];
    v7 = v8;
    [v6 BOOLValue];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)removeTemplatesWithUniqueNames:(id)a3 completion:(id)a4
{
  v6 = a4;
  client = self->_client;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__AACAwardsClient_removeTemplatesWithUniqueNames_completion___block_invoke;
  v9[3] = &unk_278C45808;
  v10 = v6;
  v8 = v6;
  [(AACXPCClient *)client sendRequest:15 payload:a3 completion:v9];
}

void __61__AACAwardsClient_removeTemplatesWithUniqueNames_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:4 error:&v8];
    v7 = v8;
    [v6 BOOLValue];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)addEarnedInstances:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = ACHCodableFromEarnedInstance();
        [v8 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc_init(MEMORY[0x277CE8D00]);
  [v16 setEarnedInstances:v8];
  v17 = [v16 data];
  client = self->_client;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__AACAwardsClient_addEarnedInstances_completion___block_invoke;
  v21[3] = &unk_278C45808;
  v22 = v7;
  v19 = v7;
  [(AACXPCClient *)client sendRequest:16 payloadData:v17 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __49__AACAwardsClient_addEarnedInstances_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:4 error:&v8];
    v7 = v8;
    [v6 BOOLValue];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)removeEarnedInstances:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = ACHCodableFromEarnedInstance();
        [v8 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc_init(MEMORY[0x277CE8D00]);
  [v16 setEarnedInstances:v8];
  v17 = [v16 data];
  client = self->_client;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__AACAwardsClient_removeEarnedInstances_completion___block_invoke;
  v21[3] = &unk_278C45808;
  v22 = v7;
  v19 = v7;
  [(AACXPCClient *)client sendRequest:17 payloadData:v17 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __52__AACAwardsClient_removeEarnedInstances_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:4 error:&v8];
    v7 = v8;
    [v6 BOOLValue];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)requestProgressUpdateForProgressProviderIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  client = self->_client;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__AACAwardsClient_requestProgressUpdateForProgressProviderIdentifier_completion___block_invoke;
  v9[3] = &unk_278C45808;
  v10 = v6;
  v8 = v6;
  [(AACXPCClient *)client sendRequest:20 payload:a3 completion:v9];
}

void __81__AACAwardsClient_requestProgressUpdateForProgressProviderIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:4 error:&v8];
    v7 = v8;
    [v6 BOOLValue];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)provideAchievementProgressUpdates:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = ACHCodableFromAchievementProgressUpdate();
        [v8 addObject:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = objc_alloc_init(MEMORY[0x277CE8CF0]);
  [v16 setAchievementProgressUpdates:v8];
  v17 = [v16 data];
  client = self->_client;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __64__AACAwardsClient_provideAchievementProgressUpdates_completion___block_invoke;
  v21[3] = &unk_278C45808;
  v22 = v7;
  v19 = v7;
  [(AACXPCClient *)client sendRequest:19 payloadData:v17 completion:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __64__AACAwardsClient_provideAchievementProgressUpdates_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v8 = 0;
    v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a2 options:4 error:&v8];
    v7 = v8;
    [v6 BOOLValue];
    (*(*(a1 + 32) + 16))();
  }
}

@end