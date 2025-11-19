@interface ACHAwardsProfileExtension
- (ACHAwardsProfileExtension)initWithProfile:(id)a3;
- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)a3 provenance:(int64_t)a4;
- (HDProfile)profile;
- (void)daemonReady:(id)a3;
- (void)earnedInstanceEntityDidApplyJournalEntriesInsertedEarnedInstances:(id)a3 removedEarnedInstances:(id)a4;
- (void)keyValuePairsDidUpdate:(id)a3;
- (void)templateEntityDidReceiveSyncedTemplates:(id)a3 provenance:(int64_t)a4;
@end

@implementation ACHAwardsProfileExtension

- (ACHAwardsProfileExtension)initWithProfile:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ACHAwardsProfileExtension;
  v5 = [(ACHAwardsProfileExtension *)&v18 init];
  if (v5)
  {
    v6 = ACHLogDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_29E9F4000, v6, OS_LOG_TYPE_DEFAULT, "Starting Activity Awards Plugin", v17, 2u);
    }

    objc_storeWeak(&v5->_profile, v4);
    v7 = [objc_alloc(MEMORY[0x29EDBE0A8]) initWithProfile:v4];
    earnedInstanceEntityWrapper = v5->_earnedInstanceEntityWrapper;
    v5->_earnedInstanceEntityWrapper = v7;

    [(ACHEarnedInstanceEntityWrapper *)v5->_earnedInstanceEntityWrapper setSyncedEarnedInstancesObserver:v5];
    [MEMORY[0x29EDBE0A0] setJournalEntryAppliedObserver:v5];
    v9 = [objc_alloc(MEMORY[0x29EDBE0C0]) initWithProfile:v4];
    templateEntityWrapper = v5->_templateEntityWrapper;
    v5->_templateEntityWrapper = v9;

    [(ACHTemplateEntityWrapper *)v5->_templateEntityWrapper setSyncedTemplatesObserver:v5];
    v11 = HDCreateSerialUtilityDispatchQueue();
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v11;

    v13 = [MEMORY[0x29EDBA068] defaultCenter];
    [v13 addObserver:v5 selector:sel_keyValuePairsDidUpdate_ name:*MEMORY[0x29EDBE040] object:0];

    WeakRetained = objc_loadWeakRetained(&v5->_profile);
    v15 = [WeakRetained daemon];
    [v15 registerDaemonReadyObserver:v5 queue:v5->_databaseQueue];
  }

  return v5;
}

- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)a3 provenance:(int64_t)a4
{
  v32 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_29E9F58A4;
  v28 = sub_29E9F58B4;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v7 = [(ACHAwardsProfileExtension *)self databaseQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29E9F58BC;
  block[3] = &unk_29F376C60;
  v17 = &v20;
  v8 = v6;
  v15 = v8;
  v16 = self;
  v18 = &v24;
  v19 = a4;
  dispatch_sync(v7, block);

  if (v25[5] || (v21[3] & 1) == 0)
  {
    v9 = ACHLogDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v25[5];
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_29E9F4000, v9, OS_LOG_TYPE_DEFAULT, "Error inserting synced earned instances: %@", buf, 0xCu);
    }
  }

  notify_post([*MEMORY[0x29EDBE010] UTF8String]);
  v11 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  v12 = *MEMORY[0x29EDCA608];
  return v11 & 1;
}

- (void)earnedInstanceEntityDidApplyJournalEntriesInsertedEarnedInstances:(id)a3 removedEarnedInstances:(id)a4
{
  v4 = [*MEMORY[0x29EDBE010] UTF8String];

  notify_post(v4);
}

- (void)templateEntityDidReceiveSyncedTemplates:(id)a3 provenance:(int64_t)a4
{
  v30 = *MEMORY[0x29EDCA608];
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_29E9F58A4;
  v26 = sub_29E9F58B4;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 1;
  v7 = [(ACHAwardsProfileExtension *)self databaseQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29E9F5BE4;
  block[3] = &unk_29F376C60;
  v15 = &v18;
  v8 = v6;
  v13 = v8;
  v14 = self;
  v16 = &v22;
  v17 = a4;
  dispatch_sync(v7, block);

  if (v23[5] || (v19[3] & 1) == 0)
  {
    v9 = ACHLogDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v23[5];
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&dword_29E9F4000, v9, OS_LOG_TYPE_DEFAULT, "Error inserting synced templates: %@", buf, 0xCu);
    }
  }

  notify_post([*MEMORY[0x29EDBE020] UTF8String]);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  v11 = *MEMORY[0x29EDCA608];
}

- (void)keyValuePairsDidUpdate:(id)a3
{
  v3 = [*MEMORY[0x29EDBE018] UTF8String];

  notify_post(v3);
}

- (void)daemonReady:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v4 = [WeakRetained database];
  [v4 addProtectedDataObserver:self];

  v5 = [WeakRetained daemon];
  v6 = [v5 behavior];
  if ([v6 isAppleWatch])
  {
  }

  else
  {
    v7 = [MEMORY[0x29EDBAEC0] sharedBehavior];
    v8 = [v7 isStandalonePhoneFitnessMode];

    if (!v8)
    {
      goto LABEL_5;
    }
  }

  v9 = objc_alloc_init(MEMORY[0x29EDBE0C8]);
  v10 = [[AAPTriggerGenerator alloc] initWithProfile:WeakRetained awardsClient:v9];
  triggerGenerator = self->_triggerGenerator;
  self->_triggerGenerator = v10;

LABEL_5:
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end