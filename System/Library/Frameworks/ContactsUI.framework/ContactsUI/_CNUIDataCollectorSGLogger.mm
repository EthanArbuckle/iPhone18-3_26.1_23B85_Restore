@interface _CNUIDataCollectorSGLogger
- (_CNUIDataCollectorSGLogger)initWithSuggestionsServiceProvider:(id)a3 schedulerProvider:(id)a4;
- (void)logContactCreated:(id)a3 contactIdentifier:(id)a4 bundleID:(id)a5;
- (void)logContactSearchResultSelected:(id)a3 contactIdentifier:(id)a4 bundleID:(id)a5;
- (void)logSearchResultsIncludedPureSuggestionsWithBundleID:(id)a3;
- (void)logSuggestedContactDetailShown:(id)a3 contactIdentifier:(id)a4 bundleID:(id)a5;
- (void)logSuggestedContactDetailUsed:(id)a3 contactIdentifier:(id)a4 bundleID:(id)a5;
- (void)performBlockWithService:(id)a3;
@end

@implementation _CNUIDataCollectorSGLogger

- (void)logSearchResultsIncludedPureSuggestionsWithBundleID:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82___CNUIDataCollectorSGLogger_logSearchResultsIncludedPureSuggestionsWithBundleID___block_invoke;
  v6[3] = &unk_1E74E23C8;
  v7 = v4;
  v5 = v4;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v6];
}

- (void)logContactCreated:(id)a3 contactIdentifier:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75___CNUIDataCollectorSGLogger_logContactCreated_contactIdentifier_bundleID___block_invoke;
  v14[3] = &unk_1E74E23A0;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v14];
}

- (void)logSuggestedContactDetailUsed:(id)a3 contactIdentifier:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87___CNUIDataCollectorSGLogger_logSuggestedContactDetailUsed_contactIdentifier_bundleID___block_invoke;
  v14[3] = &unk_1E74E23A0;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v14];
}

- (void)logSuggestedContactDetailShown:(id)a3 contactIdentifier:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88___CNUIDataCollectorSGLogger_logSuggestedContactDetailShown_contactIdentifier_bundleID___block_invoke;
  v14[3] = &unk_1E74E23A0;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v14];
}

- (void)logContactSearchResultSelected:(id)a3 contactIdentifier:(id)a4 bundleID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88___CNUIDataCollectorSGLogger_logContactSearchResultSelected_contactIdentifier_bundleID___block_invoke;
  v14[3] = &unk_1E74E23A0;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  [(_CNUIDataCollectorSGLogger *)self performBlockWithService:v14];
}

- (void)performBlockWithService:(id)a3
{
  v4 = a3;
  v5 = [(_CNUIDataCollectorSGLogger *)self serviceProvider];
  v6 = [(_CNUIDataCollectorSGLogger *)self workQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54___CNUIDataCollectorSGLogger_performBlockWithService___block_invoke;
  v9[3] = &unk_1E74E2378;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  [v6 performBlock:v9 qualityOfService:2];
}

- (_CNUIDataCollectorSGLogger)initWithSuggestionsServiceProvider:(id)a3 schedulerProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = _CNUIDataCollectorSGLogger;
  v8 = [(_CNUIDataCollectorSGLogger *)&v15 init];
  if (v8)
  {
    v9 = [v7 newSerialSchedulerWithName:@"com.apple.contacts.ContactsUI.CNUIDataCollectorSGLogger"];
    workQueue = v8->_workQueue;
    v8->_workQueue = v9;

    v11 = [v6 copy];
    serviceProvider = v8->_serviceProvider;
    v8->_serviceProvider = v11;

    v13 = v8;
  }

  return v8;
}

@end