@interface HDClinicalAuthorizationSessionDeleteJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
@end

@implementation HDClinicalAuthorizationSessionDeleteJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138543874;
    v20 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 state];
        v21 = 0;
        v14 = [HDClinicalAuthorizationSessionEntity deleteSessionWithState:v13 profile:v6 error:&v21];
        v15 = v21;

        if ((v14 & 1) == 0)
        {
          _HKInitializeLogging();
          v16 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
          {
            v17 = v16;
            v18 = objc_opt_class();
            v19 = [v12 state];
            *buf = v20;
            v27 = v18;
            v28 = 2114;
            v29 = v19;
            v30 = 2114;
            v31 = v15;
            _os_log_fault_impl(&dword_0, v17, OS_LOG_TYPE_FAULT, "<%{public}@:%{public}@> Failed to perform journaled session deletion: %{public}@", buf, 0x20u);
          }
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v9);
  }
}

@end