@interface HDClinicalAccountCreateCredentialJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
@end

@implementation HDClinicalAccountCreateCredentialJournalEntry

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v7 = [v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v21 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v10 authResponse];
        v12 = [v10 accountIdentifier];
        v13 = [v10 requestedScope];
        v14 = [v6 database];
        v15 = [v10 event];
        v22 = 0;
        v16 = [HDClinicalAccountEntity createAccountCredentialFromAuthResponse:v11 accountIdentifier:v12 requestedScope:v13 profile:v6 healthDatabase:v14 event:v15 createdCredential:0 error:&v22];
        v17 = v22;

        if ((v16 & 1) == 0)
        {
          _HKInitializeLogging();
          v18 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v28 = a1;
            v29 = 2114;
            v30 = v17;
            _os_log_error_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled clinical account credential update: %{public}@", buf, 0x16u);
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }
}

@end