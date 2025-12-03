@interface _CNUIDataCollectorSGLogger
- (_CNUIDataCollectorSGLogger)initWithSuggestionsServiceProvider:(id)provider schedulerProvider:(id)schedulerProvider;
- (void)logContactCreated:(id)created contactIdentifier:(id)identifier bundleID:(id)d;
- (void)logContactSearchResultSelected:(id)selected contactIdentifier:(id)identifier bundleID:(id)d;
- (void)logSearchResultsIncludedPureSuggestionsWithBundleID:(id)d;
- (void)logSuggestedContactDetailShown:(id)shown contactIdentifier:(id)identifier bundleID:(id)d;
- (void)logSuggestedContactDetailUsed:(id)used contactIdentifier:(id)identifier bundleID:(id)d;
- (void)performBlockWithService:(id)service;
@end

@implementation _CNUIDataCollectorSGLogger

- (void)logSearchResultsIncludedPureSuggestionsWithBundleID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82___CNUIDataCollectorSGLogger_logSearchResultsIncludedPureSuggestionsWithBundleID___block_invoke;
  v6[3] = &unk_1E74E23C8;
  v7 = dCopy;
  v5 = dCopy;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v6];
}

- (void)logContactCreated:(id)created contactIdentifier:(id)identifier bundleID:(id)d
{
  createdCopy = created;
  identifierCopy = identifier;
  dCopy = d;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75___CNUIDataCollectorSGLogger_logContactCreated_contactIdentifier_bundleID___block_invoke;
  v14[3] = &unk_1E74E23A0;
  v15 = createdCopy;
  v16 = identifierCopy;
  v17 = dCopy;
  v11 = dCopy;
  v12 = identifierCopy;
  v13 = createdCopy;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v14];
}

- (void)logSuggestedContactDetailUsed:(id)used contactIdentifier:(id)identifier bundleID:(id)d
{
  usedCopy = used;
  identifierCopy = identifier;
  dCopy = d;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87___CNUIDataCollectorSGLogger_logSuggestedContactDetailUsed_contactIdentifier_bundleID___block_invoke;
  v14[3] = &unk_1E74E23A0;
  v15 = usedCopy;
  v16 = identifierCopy;
  v17 = dCopy;
  v11 = dCopy;
  v12 = identifierCopy;
  v13 = usedCopy;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v14];
}

- (void)logSuggestedContactDetailShown:(id)shown contactIdentifier:(id)identifier bundleID:(id)d
{
  shownCopy = shown;
  identifierCopy = identifier;
  dCopy = d;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88___CNUIDataCollectorSGLogger_logSuggestedContactDetailShown_contactIdentifier_bundleID___block_invoke;
  v14[3] = &unk_1E74E23A0;
  v15 = shownCopy;
  v16 = identifierCopy;
  v17 = dCopy;
  v11 = dCopy;
  v12 = identifierCopy;
  v13 = shownCopy;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v14];
}

- (void)logContactSearchResultSelected:(id)selected contactIdentifier:(id)identifier bundleID:(id)d
{
  selectedCopy = selected;
  identifierCopy = identifier;
  dCopy = d;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88___CNUIDataCollectorSGLogger_logContactSearchResultSelected_contactIdentifier_bundleID___block_invoke;
  v14[3] = &unk_1E74E23A0;
  v15 = selectedCopy;
  v16 = identifierCopy;
  v17 = dCopy;
  v11 = dCopy;
  v12 = identifierCopy;
  v13 = selectedCopy;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v14];
}

- (void)performBlockWithService:(id)service
{
  serviceCopy = service;
  serviceProvider = [(_CNUIDataCollectorSGLogger *)self serviceProvider];
  workQueue = [(_CNUIDataCollectorSGLogger *)self workQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54___CNUIDataCollectorSGLogger_performBlockWithService___block_invoke;
  v9[3] = &unk_1E74E2378;
  v10 = serviceProvider;
  v11 = serviceCopy;
  v7 = serviceCopy;
  v8 = serviceProvider;
  [workQueue performBlock:v9 qualityOfService:2];
}

- (_CNUIDataCollectorSGLogger)initWithSuggestionsServiceProvider:(id)provider schedulerProvider:(id)schedulerProvider
{
  providerCopy = provider;
  schedulerProviderCopy = schedulerProvider;
  v15.receiver = self;
  v15.super_class = _CNUIDataCollectorSGLogger;
  v8 = [(_CNUIDataCollectorSGLogger *)&v15 init];
  if (v8)
  {
    v9 = [schedulerProviderCopy newSerialSchedulerWithName:@"com.apple.contacts.ContactsUI.CNUIDataCollectorSGLogger"];
    workQueue = v8->_workQueue;
    v8->_workQueue = v9;

    v11 = [providerCopy copy];
    serviceProvider = v8->_serviceProvider;
    v8->_serviceProvider = v11;

    v13 = v8;
  }

  return v8;
}

@end