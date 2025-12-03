@interface HDClinicalAccountCreateCredentialJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
@end

@implementation HDClinicalAccountCreateCredentialJournalEntry

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = entriesCopy;
  v7 = [entriesCopy countByEnumeratingWithState:&v23 objects:v31 count:16];
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
        authResponse = [v10 authResponse];
        accountIdentifier = [v10 accountIdentifier];
        requestedScope = [v10 requestedScope];
        database = [profileCopy database];
        event = [v10 event];
        v22 = 0;
        v16 = [HDClinicalAccountEntity createAccountCredentialFromAuthResponse:authResponse accountIdentifier:accountIdentifier requestedScope:requestedScope profile:profileCopy healthDatabase:database event:event createdCredential:0 error:&v22];
        v17 = v22;

        if ((v16 & 1) == 0)
        {
          _HKInitializeLogging();
          v18 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy = self;
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