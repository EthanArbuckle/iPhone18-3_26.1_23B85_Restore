@interface HMNetworkRouterFirewallRuleManager
- (HMHomeManager)homeManager;
- (HMNetworkRouterFirewallRuleManager)initWithHomeManager:(id)manager;
- (void)__sendMessage:(id)message;
- (void)_dumpCloudRecordsForProductGroup:(id)group productNumber:(id)number rawOutput:(BOOL)output listOnly:(BOOL)only verifySignatures:(BOOL)signatures completion:(id)completion;
- (void)_dumpLocalRulesForProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version ignoreOverrides:(BOOL)overrides rawOutput:(BOOL)output completion:(id)completion;
- (void)_dumpPairedMetadataForProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version ignoreOverrides:(BOOL)overrides rawOutput:(BOOL)output completion:(id)completion;
- (void)_fetchCloudChangesWithForceChangesFound:(BOOL)found completion:(id)completion;
- (void)_removeOverridesForProductGroup:(id)group productNumber:(id)number completion:(id)completion;
- (void)removeAllLocalRulesWithCompletion:(id)completion;
@end

@implementation HMNetworkRouterFirewallRuleManager

- (HMHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)_fetchCloudChangesWithForceChangesFound:(BOOL)found completion:(id)completion
{
  foundCopy = found;
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = dictionary;
  if (foundCopy)
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerFetchCloudChangesForceChangeNotificationsKey"];
  }

  v9 = MEMORY[0x1E69A2A10];
  messageDestination = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v11 = [v8 copy];
  v12 = [v9 messageWithName:@"HMNetworkRouterFirewallRuleManagerFetchCloudChangesMessageKey" destination:messageDestination payload:v11];

  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __89__HMNetworkRouterFirewallRuleManager__fetchCloudChangesWithForceChangesFound_completion___block_invoke;
  v17 = &unk_1E754DE00;
  selfCopy = self;
  v19 = completionCopy;
  v13 = completionCopy;
  [v12 setResponseHandler:&v14];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v12, v14, v15, v16, v17, selfCopy];
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

- (void)_removeOverridesForProductGroup:(id)group productNumber:(id)number completion:(id)completion
{
  groupCopy = group;
  numberCopy = number;
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v12 = dictionary;
  if (groupCopy)
  {
    [dictionary setObject:groupCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductGroupKey"];
  }

  if (numberCopy)
  {
    [v12 setObject:numberCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductNumberKey"];
  }

  v13 = MEMORY[0x1E69A2A10];
  messageDestination = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v15 = [v12 copy];
  v16 = [v13 messageWithName:@"HMNetworkRouterFirewallRuleManagerRemoveOverridesMessageKey" destination:messageDestination payload:v15];

  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __95__HMNetworkRouterFirewallRuleManager__removeOverridesForProductGroup_productNumber_completion___block_invoke;
  v21 = &unk_1E754DE00;
  selfCopy = self;
  v23 = completionCopy;
  v17 = completionCopy;
  [v16 setResponseHandler:&v18];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v16, v18, v19, v20, v21, selfCopy];
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

- (void)removeAllLocalRulesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E69A2A10];
  messageDestination = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v7 = [v5 messageWithName:@"HMNetworkRouterFirewallRuleManagerRemoveLocalRulesMessageKey" destination:messageDestination payload:MEMORY[0x1E695E0F8]];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __72__HMNetworkRouterFirewallRuleManager_removeAllLocalRulesWithCompletion___block_invoke;
  v12 = &unk_1E754DE00;
  selfCopy = self;
  v14 = completionCopy;
  v8 = completionCopy;
  [v7 setResponseHandler:&v9];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v7, v9, v10, v11, v12, selfCopy];
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

- (void)_dumpPairedMetadataForProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version ignoreOverrides:(BOOL)overrides rawOutput:(BOOL)output completion:(id)completion
{
  outputCopy = output;
  overridesCopy = overrides;
  groupCopy = group;
  numberCopy = number;
  versionCopy = version;
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = dictionary;
  if (groupCopy)
  {
    [dictionary setObject:groupCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductGroupKey"];
  }

  if (numberCopy)
  {
    [v19 setObject:numberCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductNumberKey"];
  }

  if (versionCopy)
  {
    [v19 setObject:versionCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpPairedMetadataFirmwareVersionKey"];
  }

  if (overridesCopy)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpPairedMetadataIgnoreOverridesKey"];
  }

  if (outputCopy)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpRawOutputKey"];
  }

  v20 = MEMORY[0x1E69A2A10];
  messageDestination = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v22 = [v19 copy];
  v23 = [v20 messageWithName:@"HMNetworkRouterFirewallRuleManagerDumpPairedMetadataMessageKey" destination:messageDestination payload:v22];

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __140__HMNetworkRouterFirewallRuleManager__dumpPairedMetadataForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke;
  v28 = &unk_1E754DE00;
  selfCopy = self;
  v30 = completionCopy;
  v24 = completionCopy;
  [v23 setResponseHandler:&v25];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v23, v25, v26, v27, v28, selfCopy];
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

- (void)_dumpLocalRulesForProductGroup:(id)group productNumber:(id)number firmwareVersion:(id)version ignoreOverrides:(BOOL)overrides rawOutput:(BOOL)output completion:(id)completion
{
  outputCopy = output;
  overridesCopy = overrides;
  groupCopy = group;
  numberCopy = number;
  versionCopy = version;
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v19 = dictionary;
  if (groupCopy)
  {
    [dictionary setObject:groupCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductGroupKey"];
  }

  if (numberCopy)
  {
    [v19 setObject:numberCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductNumberKey"];
  }

  if (versionCopy)
  {
    [v19 setObject:versionCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpLocalRulesFirmwareVersionKey"];
  }

  if (overridesCopy)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpLocalRulesIgnoreOverridesKey"];
  }

  if (outputCopy)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpRawOutputKey"];
  }

  v20 = MEMORY[0x1E69A2A10];
  messageDestination = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v22 = [v19 copy];
  v23 = [v20 messageWithName:@"HMNetworkRouterFirewallRuleManagerDumpLocalRulesMessageKey" destination:messageDestination payload:v22];

  v25 = MEMORY[0x1E69E9820];
  v26 = 3221225472;
  v27 = __136__HMNetworkRouterFirewallRuleManager__dumpLocalRulesForProductGroup_productNumber_firmwareVersion_ignoreOverrides_rawOutput_completion___block_invoke;
  v28 = &unk_1E754DE00;
  selfCopy = self;
  v30 = completionCopy;
  v24 = completionCopy;
  [v23 setResponseHandler:&v25];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v23, v25, v26, v27, v28, selfCopy];
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

- (void)_dumpCloudRecordsForProductGroup:(id)group productNumber:(id)number rawOutput:(BOOL)output listOnly:(BOOL)only verifySignatures:(BOOL)signatures completion:(id)completion
{
  signaturesCopy = signatures;
  onlyCopy = only;
  outputCopy = output;
  groupCopy = group;
  numberCopy = number;
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18 = dictionary;
  if (groupCopy)
  {
    [dictionary setObject:groupCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductGroupKey"];
  }

  if (numberCopy)
  {
    [v18 setObject:numberCopy forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerProductNumberKey"];
  }

  if (!outputCopy)
  {
    if (!onlyCopy)
    {
      goto LABEL_7;
    }

LABEL_11:
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpCloudRecordsListOnlyKey"];
    if (!signaturesCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpRawOutputKey"];
  if (onlyCopy)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (signaturesCopy)
  {
LABEL_8:
    [v18 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"HMNetworkRouterFirewallRuleManagerDumpCloudRecordsVerifySignaturesKey"];
  }

LABEL_9:
  v19 = MEMORY[0x1E69A2A10];
  messageDestination = [(HMNetworkRouterFirewallRuleManager *)self messageDestination];
  v21 = [v18 copy];
  v22 = [v19 messageWithName:@"HMNetworkRouterFirewallRuleManagerDumpCloudRecordsMessageKey" destination:messageDestination payload:v21];

  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __132__HMNetworkRouterFirewallRuleManager__dumpCloudRecordsForProductGroup_productNumber_rawOutput_listOnly_verifySignatures_completion___block_invoke;
  v27 = &unk_1E754DE00;
  selfCopy = self;
  v29 = completionCopy;
  v23 = completionCopy;
  [v22 setResponseHandler:&v24];
  [(HMNetworkRouterFirewallRuleManager *)self __sendMessage:v22, v24, v25, v26, v27, selfCopy];
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

- (void)__sendMessage:(id)message
{
  messageCopy = message;
  homeManager = [(HMNetworkRouterFirewallRuleManager *)self homeManager];
  context = [homeManager context];
  queue = [context queue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__HMNetworkRouterFirewallRuleManager___sendMessage___block_invoke;
  v10[3] = &unk_1E754E5C0;
  v11 = messageCopy;
  v12 = homeManager;
  v8 = homeManager;
  v9 = messageCopy;
  dispatch_async(queue, v10);
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

- (HMNetworkRouterFirewallRuleManager)initWithHomeManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = HMNetworkRouterFirewallRuleManager;
  v5 = [(HMNetworkRouterFirewallRuleManager *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_homeManager, managerCopy);
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [managerCopy messageTargetUUID];
    v9 = [v7 initWithTarget:messageTargetUUID];
    messageDestination = v6->_messageDestination;
    v6->_messageDestination = v9;

    v11 = v6;
  }

  return v6;
}

@end