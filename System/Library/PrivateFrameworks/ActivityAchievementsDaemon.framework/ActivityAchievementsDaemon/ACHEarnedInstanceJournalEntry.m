@interface ACHEarnedInstanceJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (ACHEarnedInstanceJournalEntry)initWithCoder:(id)a3;
- (ACHEarnedInstanceJournalEntry)initWithEarnedInstance:(id)a3 provenance:(int64_t)a4 useLegacySyncIdentity:(BOOL)a5 action:(int64_t)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ACHEarnedInstanceJournalEntry

- (ACHEarnedInstanceJournalEntry)initWithEarnedInstance:(id)a3 provenance:(int64_t)a4 useLegacySyncIdentity:(BOOL)a5 action:(int64_t)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = ACHEarnedInstanceJournalEntry;
  v12 = [(ACHEarnedInstanceJournalEntry *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_action = a6;
    objc_storeStrong(&v12->_earnedInstance, a3);
    v13->_provenance = a4;
    v13->_useLegacySyncIdentity = a5;
  }

  return v13;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [v6 database];
  v30 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __58__ACHEarnedInstanceJournalEntry_applyEntries_withProfile___block_invoke;
  v25[3] = &unk_278490FC0;
  v26 = v5;
  v27 = v6;
  v10 = v7;
  v28 = v10;
  v11 = v8;
  v29 = v11;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__ACHEarnedInstanceJournalEntry_applyEntries_withProfile___block_invoke_2;
  v22[3] = &unk_278490E30;
  v12 = v27;
  v23 = v12;
  v13 = v26;
  v24 = v13;
  v14 = [(HDHealthEntity *)ACHEarnedInstanceEntity performWriteTransactionWithHealthDatabase:v9 error:&v30 block:v25 inaccessibilityHandler:v22];
  v15 = v30;

  if (v14)
  {
    os_unfair_lock_lock(&journalAppliedObserverLock);
    WeakRetained = objc_loadWeakRetained(&_journalEntryAppliedObserver);

    if (WeakRetained)
    {
      v17 = objc_loadWeakRetained(&_journalEntryAppliedObserver);
      v18 = [v10 copy];
      v19 = [v11 copy];
      [v17 earnedInstanceEntityDidApplyJournalEntriesInsertedEarnedInstances:v18 removedEarnedInstances:v19];
    }

    os_unfair_lock_unlock(&journalAppliedObserverLock);
  }

  else
  {
    v20 = ACHLogDatabase();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v32 = v13;
      v33 = 2114;
      v34 = v15;
      _os_log_impl(&dword_221DDC000, v20, OS_LOG_TYPE_DEFAULT, "Error applying journaled earned instances: %@: %{public}@", buf, 0x16u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __58__ACHEarnedInstanceJournalEntry_applyEntries_withProfile___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = 0x278490000uLL;
  v27 = a2;
  v26 = [v27 databaseForEntityClass:objc_opt_class()];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    LOBYTE(v29) = 1;
    while (1)
    {
      v8 = 0;
      v28 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        v10 = [v9 action];
        if (v10 != 1)
        {
          if (v10)
          {
            goto LABEL_16;
          }

          v11 = [v9 earnedInstance];
          v12 = ACHEarnedInstanceSyncIdentityFromEarnedInstance(v11, [v9 useLegacySyncIdentity], *(a1 + 40), v27);

          v13 = v4;
          v14 = *(v4 + 248);
          v15 = [v9 earnedInstance];
          v16 = [v9 provenance];
          [v12 entity];
          v18 = v17 = a1;
          v19 = [v14 _insertEarnedInstance:v15 provenance:v16 syncIdentity:objc_msgSend(v18 database:"persistentID") error:{v26, a3}];

          if (v19)
          {
            v20 = [v9 earnedInstance];
            v21 = [v20 copy];

            [v21 setKey:{objc_msgSend(v19, "persistentID")}];
            [*(v17 + 48) addObject:v21];
          }

          else
          {
            LOBYTE(v29) = 0;
          }

          v4 = v13;
          a1 = v17;
          v6 = v28;
          goto LABEL_14;
        }

        v22 = [v9 earnedInstance];
        v36 = v22;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];

        v29 = [*(v4 + 248) removeEarnedInstances:v12 profile:*(a1 + 40) error:a3];
        if (v29)
        {
          v23 = *(a1 + 56);
          v19 = [v9 earnedInstance];
          [v23 addObject:v19];
LABEL_14:
        }

LABEL_16:
        ++v8;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (!v6)
      {
        goto LABEL_20;
      }
    }
  }

  LOBYTE(v29) = 1;
LABEL_20:

  v24 = *MEMORY[0x277D85DE8];
  return v29 & 1;
}

uint64_t __58__ACHEarnedInstanceJournalEntry_applyEntries_withProfile___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) database];
  v6 = [v5 addJournalEntries:*(a1 + 40) error:a3];

  return v6;
}

- (ACHEarnedInstanceJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ACHEarnedInstanceJournalEntry;
  v5 = [(HDJournalEntry *)&v11 initWithCoder:v4];
  if (v5)
  {
    v5->_action = [v4 decodeIntegerForKey:@"action"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"earnedInstance"];
    if ([v6 length])
    {
      v7 = [objc_alloc(MEMORY[0x277CE8CF8]) initWithData:v6];
      if (v7)
      {
        v8 = [objc_alloc(MEMORY[0x277CE8D38]) initWithCodable:v7];
        earnedInstance = v5->_earnedInstance;
        v5->_earnedInstance = v8;

        -[ACHEarnedInstance setKey:](v5->_earnedInstance, "setKey:", [v4 decodeInt64ForKey:@"persistentID"]);
      }
    }

    v5->_provenance = [v4 decodeInt64ForKey:@"provenance"];
    v5->_useLegacySyncIdentity = 1;
    if ([v4 containsValueForKey:@"useLegacySyncIdentity"])
    {
      v5->_useLegacySyncIdentity = [v4 decodeBoolForKey:@"useLegacySyncIdentity"];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  [v8 encodeInteger:self->_action forKey:@"action"];
  v4 = [(ACHEarnedInstanceJournalEntry *)self earnedInstance];
  v5 = ACHCodableFromEarnedInstance();

  v6 = [v5 data];
  if ([v6 length])
  {
    [v8 encodeObject:v6 forKey:@"earnedInstance"];
    v7 = [(ACHEarnedInstanceJournalEntry *)self earnedInstance];
    [v8 encodeInt64:objc_msgSend(v7 forKey:{"key"), @"persistentID"}];
  }

  [v8 encodeInt64:self->_provenance forKey:@"provenance"];
  [v8 encodeBool:self->_useLegacySyncIdentity forKey:@"useLegacySyncIdentity"];
}

@end