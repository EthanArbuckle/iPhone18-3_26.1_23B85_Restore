@interface HMNetworkRouterFirewallRuleManager
- (HMHomeManager)homeManager;
- (HMNetworkRouterFirewallRuleManager)initWithHomeManager:(id)a3;
- (void)__sendMessage:(id)a3;
- (void)_dumpCloudRecordsForProductGroup:(id)a3 productNumber:(id)a4 rawOutput:(BOOL)a5 listOnly:(BOOL)a6 verifySignatures:(BOOL)a7 completion:(id)a8;
- (void)_dumpLocalRulesForProductGroup:(id)a3 productNumber:(id)a4 firmwareVersion:(id)a5 ignoreOverrides:(BOOL)a6 rawOutput:(BOOL)a7 completion:(id)a8;
- (void)_dumpPairedMetadataForProductGroup:(id)a3 productNumber:(id)a4 firmwareVersion:(id)a5 ignoreOverrides:(BOOL)a6 rawOutput:(BOOL)a7 completion:(id)a8;
- (void)_fetchCloudChangesWithForceChangesFound:(BOOL)a3 completion:(id)a4;
- (void)_removeOverridesForProductGroup:(id)a3 productNumber:(id)a4 completion:(id)a5;
- (void)removeAllLocalRulesWithCompletion:(id)a3;
@end

@implementation HMNetworkRouterFirewallRuleManager

- (HMHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)_fetchCloudChangesWithForceChangesFound:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = v7;
  if (v4)
  {
    [v7 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerFetchCloudChangesForceChangeNotificationsKey"];
  }

  v9 = MEMORY[0x1E69A2A10];
  v10 = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v11 = [v8 copy];
  v12 = [v9 messageWithName:@"HMNetworkRouterFirewallRuleManagerFetchCloudChangesMessageKey" destination:v10 payload:v11];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __89__HMNetworkRouterFirewallRuleManager__fetchCloudChangesWithForceChangesFound_completion___block_invoke;
  v17 = &unk_1E754DE00;
  v18 = self;
  v19 = v6;
  v13 = v6;
  [v12 setResponseHandler:&v14];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v12, v14, v15, v16, v17, v18];
}

void __89__HMNetworkRouterFirewallRuleManager__fetchCloudChangesWithForceChangesFound_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 homeManager];
  v5 = [v7 context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v4];
}

- (void)_removeOverridesForProductGroup:(id)a3 productNumber:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v12 = v11;
  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductGroupKey"];
  }

  if (v9)
  {
    [v12 setObject:v9 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductNumberKey"];
  }

  v13 = MEMORY[0x1E69A2A10];
  v14 = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v15 = [v12 copy];
  v16 = [v13 messageWithName:@"HMNetworkRouterFirewallRuleManagerRemoveOverridesMessageKey" destination:v14 payload:v15];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __95__HMNetworkRouterFirewallRuleManager__removeOverridesForProductGroup_productNumber_completion___block_invoke;
  v21 = &unk_1E754DE00;
  v22 = self;
  v23 = v10;
  v17 = v10;
  [v16 setResponseHandler:&v18];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v16, v18, v19, v20, v21, v22];
}

void __95__HMNetworkRouterFirewallRuleManager__removeOverridesForProductGroup_productNumber_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 homeManager];
  v5 = [v7 context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v4];
}

void __71__HMNetworkRouterFirewallRuleManager__addOverrides_replace_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 homeManager];
  v5 = [v7 context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v4];
}

- (void)removeAllLocalRulesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69A2A10];
  v6 = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v7 = [v5 messageWithName:@"HMNetworkRouterFirewallRuleManagerRemoveLocalRulesMessageKey" destination:v6 payload:MEMORY[0x1E695E0F8]];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __72__HMNetworkRouterFirewallRuleManager_removeAllLocalRulesWithCompletion___block_invoke;
  v12 = &unk_1E754DE00;
  v13 = self;
  v14 = v4;
  v8 = v4;
  [v7 setResponseHandler:&v9];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v7, v9, v10, v11, v12, v13];
}

void __72__HMNetworkRouterFirewallRuleManager_removeAllLocalRulesWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 homeManager];
  v5 = [v7 context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v4];
}

- (void)_dumpPairedMetadataForProductGroup:(id)a3 productNumber:(id)a4 firmwareVersion:(id)a5 ignoreOverrides:(BOOL)a6 rawOutput:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = v18;
  if (v14)
  {
    [v18 setObject:v14 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductGroupKey"];
  }

  if (v15)
  {
    [v19 setObject:v15 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductNumberKey"];
  }

  if (v16)
  {
    [v19 setObject:v16 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpPairedMetadataFirmwareVersionKey"];
  }

  if (v10)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpPairedMetadataIgnoreOverridesKey"];
  }

  if (v9)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpRawOutputKey"];
  }

  v20 = MEMORY[0x1E69A2A10];
  v21 = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v22 = [v19 copy];
  v23 = [v20 messageWithName:@"HMNetworkRouterFirewallRuleManagerDumpPairedMetadataMessageKey" destination:v21 payload:v22];

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __140__HMNetworkRouterFirewallRuleManager__dumpPairedMetadataForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke;
  v28 = &unk_1E754DE00;
  v29 = self;
  v30 = v17;
  v24 = v17;
  [v23 setResponseHandler:&v25];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v23, v25, v26, v27, v28, v29];
}

void __140__HMNetworkRouterFirewallRuleManager__dumpPairedMetadataForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (a3)
  {
    a3 = [a3 objectForKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpResponseKey"];
  }

  v5 = [*(a1 + 32) homeManager];
  v6 = [v5 context];
  v7 = [v6 delegateCaller];
  [v7 callCompletion:*(a1 + 40) error:v8 obj:a3];
}

- (void)_dumpLocalRulesForProductGroup:(id)a3 productNumber:(id)a4 firmwareVersion:(id)a5 ignoreOverrides:(BOOL)a6 rawOutput:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v10 = a6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a8;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v19 = v18;
  if (v14)
  {
    [v18 setObject:v14 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductGroupKey"];
  }

  if (v15)
  {
    [v19 setObject:v15 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductNumberKey"];
  }

  if (v16)
  {
    [v19 setObject:v16 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpLocalRulesFirmwareVersionKey"];
  }

  if (v10)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpLocalRulesIgnoreOverridesKey"];
  }

  if (v9)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpRawOutputKey"];
  }

  v20 = MEMORY[0x1E69A2A10];
  v21 = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v22 = [v19 copy];
  v23 = [v20 messageWithName:@"HMNetworkRouterFirewallRuleManagerDumpLocalRulesMessageKey" destination:v21 payload:v22];

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __136__HMNetworkRouterFirewallRuleManager__dumpLocalRulesForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke;
  v28 = &unk_1E754DE00;
  v29 = self;
  v30 = v17;
  v24 = v17;
  [v23 setResponseHandler:&v25];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v23, v25, v26, v27, v28, v29];
}

void __136__HMNetworkRouterFirewallRuleManager__dumpLocalRulesForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (a3)
  {
    a3 = [a3 objectForKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpResponseKey"];
  }

  v5 = [*(a1 + 32) homeManager];
  v6 = [v5 context];
  v7 = [v6 delegateCaller];
  [v7 callCompletion:*(a1 + 40) error:v8 obj:a3];
}

- (void)_dumpCloudRecordsForProductGroup:(id)a3 productNumber:(id)a4 rawOutput:(BOOL)a5 listOnly:(BOOL)a6 verifySignatures:(BOOL)a7 completion:(id)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v14 = a3;
  v15 = a4;
  v16 = a8;
  v17 = [MEMORY[0x1E695DF90] dictionary];
  v18 = v17;
  if (v14)
  {
    [v17 setObject:v14 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductGroupKey"];
  }

  if (v15)
  {
    [v18 setObject:v15 forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductNumberKey"];
  }

  if (!v11)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

LABEL_11:
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpCloudRecordsListOnlyKey"];
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpRawOutputKey"];
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v9)
  {
LABEL_8:
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpCloudRecordsVerifySignaturesKey"];
  }

LABEL_9:
  v19 = MEMORY[0x1E69A2A10];
  v20 = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v21 = [v18 copy];
  v22 = [v19 messageWithName:@"HMNetworkRouterFirewallRuleManagerDumpCloudRecordsMessageKey" destination:v20 payload:v21];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __132__HMNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke;
  v27 = &unk_1E754DE00;
  v28 = self;
  v29 = v16;
  v23 = v16;
  [v22 setResponseHandler:&v24];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v22, v24, v25, v26, v27, v28];
}

void __132__HMNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  if (a3)
  {
    a3 = [a3 objectForKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpResponseKey"];
  }

  v5 = [*(a1 + 32) homeManager];
  v6 = [v5 context];
  v7 = [v6 delegateCaller];
  [v7 callCompletion:*(a1 + 40) error:v8 obj:a3];
}

- (void)__sendMessage:(id)a3
{
  v4 = a3;
  v5 = [(HMNetworkRouterFirewallRuleManager *)self homeManager];
  v6 = [v5 context];
  v7 = [v6 queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__HMNetworkRouterFirewallRuleManager___sendMessage___block_invoke;
  v10[3] = &unk_1E754E5C0;
  v11 = v4;
  v12 = v5;
  v8 = v5;
  v9 = v4;
  dispatch_async(v7, v10);
}

void __52__HMNetworkRouterFirewallRuleManager___sendMessage___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) responseHandler];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __52__HMNetworkRouterFirewallRuleManager___sendMessage___block_invoke_2;
  v10 = &unk_1E754DE00;
  v11 = *(a1 + 40);
  v12 = v2;
  v3 = *(a1 + 32);
  v4 = v2;
  [v3 setResponseHandler:&v7];
  v5 = [*(a1 + 40) context];
  v6 = [v5 messageDispatcher];
  [v6 sendMessage:*(a1 + 32) completionHandler:0];
}

void __52__HMNetworkRouterFirewallRuleManager___sendMessage___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) context];
  v8 = [v7 queue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__HMNetworkRouterFirewallRuleManager___sendMessage___block_invoke_3;
  v12[3] = &unk_1E754D208;
  v13 = *(a1 + 32);
  v9 = *(a1 + 40);
  v15 = v6;
  v16 = v9;
  v14 = v5;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, v12);
}

- (HMNetworkRouterFirewallRuleManager)initWithHomeManager:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = HMNetworkRouterFirewallRuleManager;
  v5 = [(HMNetworkRouterFirewallRuleManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homeManager, v4);
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    v8 = [v4 messageTargetUUID];
    v9 = [v7 initWithTarget:v8];
    messageDestination = v6->_messageDestination;
    v6->_messageDestination = v9;

    v11 = v6;
  }

  return v6;
}

@end