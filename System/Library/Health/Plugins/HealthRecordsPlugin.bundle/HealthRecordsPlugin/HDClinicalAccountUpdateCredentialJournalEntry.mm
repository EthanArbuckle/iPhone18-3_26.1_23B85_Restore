@interface HDClinicalAccountUpdateCredentialJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDClinicalAccountUpdateCredentialJournalEntry)initWithAuthResponse:(id)a3 accountIdentifier:(id)a4 requestedScope:(id)a5 event:(id)a6;
- (HDClinicalAccountUpdateCredentialJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAccountUpdateCredentialJournalEntry

- (HDClinicalAccountUpdateCredentialJournalEntry)initWithAuthResponse:(id)a3 accountIdentifier:(id)a4 requestedScope:(id)a5 event:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = HDClinicalAccountUpdateCredentialJournalEntry;
  v13 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v21 initWithAccountIdentifier:a4];
  if (v13)
  {
    v14 = [v10 copy];
    authResponse = v13->_authResponse;
    v13->_authResponse = v14;

    v16 = [v11 copy];
    requestedScope = v13->_requestedScope;
    v13->_requestedScope = v16;

    v18 = [v12 copy];
    event = v13->_event;
    v13->_event = v18;
  }

  return v13;
}

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
        v16 = [HDClinicalAccountEntity updateAccountCredentialFromAuthResponse:v11 accountIdentifier:v12 requestedScope:v13 profile:v6 healthDatabase:v14 event:v15 updatedCredential:0 error:&v22];
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

- (HDClinicalAccountUpdateCredentialJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"authResponse"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedScope"];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
      if (v7)
      {
        v17.receiver = self;
        v17.super_class = HDClinicalAccountUpdateCredentialJournalEntry;
        v8 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v17 initWithCoder:v4];
        if (v8)
        {
          v9 = [v5 copy];
          authResponse = v8->_authResponse;
          v8->_authResponse = v9;

          v11 = [v6 copy];
          requestedScope = v8->_requestedScope;
          v8->_requestedScope = v11;

          v13 = [v7 copy];
          event = v8->_event;
          v8->_event = v13;
        }

        self = v8;
        v15 = self;
      }

      else
      {
        [v4 hrs_failWithCocoaValueNotFoundError];
        v15 = 0;
      }
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v15 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v15 = 0;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalAccountUpdateCredentialJournalEntry *)self authResponse];
  [v4 encodeObject:v5 forKey:@"authResponse"];

  v6 = [(HDClinicalAccountUpdateCredentialJournalEntry *)self requestedScope];
  [v4 encodeObject:v6 forKey:@"requestedScope"];

  v7 = [(HDClinicalAccountUpdateCredentialJournalEntry *)self event];
  [v4 encodeObject:v7 forKey:@"event"];

  v8.receiver = self;
  v8.super_class = HDClinicalAccountUpdateCredentialJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v8 encodeWithCoder:v4];
}

@end