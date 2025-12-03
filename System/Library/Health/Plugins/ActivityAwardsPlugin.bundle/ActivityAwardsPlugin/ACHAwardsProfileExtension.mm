@interface ACHAwardsProfileExtension
- (ACHAwardsProfileExtension)initWithProfile:(id)profile;
- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)instances provenance:(int64_t)provenance;
- (HDProfile)profile;
- (void)daemonReady:(id)ready;
- (void)earnedInstanceEntityDidApplyJournalEntriesInsertedEarnedInstances:(id)instances removedEarnedInstances:(id)earnedInstances;
- (void)keyValuePairsDidUpdate:(id)update;
- (void)templateEntityDidReceiveSyncedTemplates:(id)templates provenance:(int64_t)provenance;
@end

@implementation ACHAwardsProfileExtension

- (ACHAwardsProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
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

    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = [objc_alloc(MEMORY[0x29EDBE0A8]) initWithProfile:profileCopy];
    earnedInstanceEntityWrapper = v5->_earnedInstanceEntityWrapper;
    v5->_earnedInstanceEntityWrapper = v7;

    [(ACHEarnedInstanceEntityWrapper *)v5->_earnedInstanceEntityWrapper setSyncedEarnedInstancesObserver:v5];
    [MEMORY[0x29EDBE0A0] setJournalEntryAppliedObserver:v5];
    v9 = [objc_alloc(MEMORY[0x29EDBE0C0]) initWithProfile:profileCopy];
    templateEntityWrapper = v5->_templateEntityWrapper;
    v5->_templateEntityWrapper = v9;

    [(ACHTemplateEntityWrapper *)v5->_templateEntityWrapper setSyncedTemplatesObserver:v5];
    v11 = HDCreateSerialUtilityDispatchQueue();
    databaseQueue = v5->_databaseQueue;
    v5->_databaseQueue = v11;

    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel_keyValuePairsDidUpdate_ name:*MEMORY[0x29EDBE040] object:0];

    WeakRetained = objc_loadWeakRetained(&v5->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v5 queue:v5->_databaseQueue];
  }

  return v5;
}

- (BOOL)earnedInstanceEntityDidReceiveSyncedEarnedInstances:(id)instances provenance:(int64_t)provenance
{
  v32 = *MEMORY[0x29EDCA608];
  instancesCopy = instances;
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
  databaseQueue = [(ACHAwardsProfileExtension *)self databaseQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29E9F58BC;
  block[3] = &unk_29F376C60;
  v17 = &v20;
  v8 = instancesCopy;
  v15 = v8;
  selfCopy = self;
  v18 = &v24;
  provenanceCopy = provenance;
  dispatch_sync(databaseQueue, block);

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

- (void)earnedInstanceEntityDidApplyJournalEntriesInsertedEarnedInstances:(id)instances removedEarnedInstances:(id)earnedInstances
{
  uTF8String = [*MEMORY[0x29EDBE010] UTF8String];

  notify_post(uTF8String);
}

- (void)templateEntityDidReceiveSyncedTemplates:(id)templates provenance:(int64_t)provenance
{
  v30 = *MEMORY[0x29EDCA608];
  templatesCopy = templates;
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
  databaseQueue = [(ACHAwardsProfileExtension *)self databaseQueue];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_29E9F5BE4;
  block[3] = &unk_29F376C60;
  v15 = &v18;
  v8 = templatesCopy;
  v13 = v8;
  selfCopy = self;
  v16 = &v22;
  provenanceCopy = provenance;
  dispatch_sync(databaseQueue, block);

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

- (void)keyValuePairsDidUpdate:(id)update
{
  uTF8String = [*MEMORY[0x29EDBE018] UTF8String];

  notify_post(uTF8String);
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  [database addProtectedDataObserver:self];

  daemon = [WeakRetained daemon];
  behavior = [daemon behavior];
  if ([behavior isAppleWatch])
  {
  }

  else
  {
    mEMORY[0x29EDBAEC0] = [MEMORY[0x29EDBAEC0] sharedBehavior];
    isStandalonePhoneFitnessMode = [mEMORY[0x29EDBAEC0] isStandalonePhoneFitnessMode];

    if (!isStandalonePhoneFitnessMode)
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