@interface HDClinicalAccountUpdateCredentialJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountUpdateCredentialJournalEntry)initWithAuthResponse:(id)response accountIdentifier:(id)identifier requestedScope:(id)scope event:(id)event;
- (HDClinicalAccountUpdateCredentialJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountUpdateCredentialJournalEntry

- (HDClinicalAccountUpdateCredentialJournalEntry)initWithAuthResponse:(id)response accountIdentifier:(id)identifier requestedScope:(id)scope event:(id)event
{
  responseCopy = response;
  scopeCopy = scope;
  eventCopy = event;
  v21.receiver = self;
  v21.super_class = HDClinicalAccountUpdateCredentialJournalEntry;
  v13 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v21 initWithAccountIdentifier:identifier];
  if (v13)
  {
    v14 = [responseCopy copy];
    authResponse = v13->_authResponse;
    v13->_authResponse = v14;

    v16 = [scopeCopy copy];
    requestedScope = v13->_requestedScope;
    v13->_requestedScope = v16;

    v18 = [eventCopy copy];
    event = v13->_event;
    v13->_event = v18;
  }

  return v13;
}

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
        v16 = [HDClinicalAccountEntity updateAccountCredentialFromAuthResponse:authResponse accountIdentifier:accountIdentifier requestedScope:requestedScope profile:profileCopy healthDatabase:database event:event updatedCredential:0 error:&v22];
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

- (HDClinicalAccountUpdateCredentialJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"authResponse"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedScope"];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
      if (v7)
      {
        v17.receiver = self;
        v17.super_class = HDClinicalAccountUpdateCredentialJournalEntry;
        v8 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v17 initWithCoder:coderCopy];
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
        selfCopy = self;
      }

      else
      {
        [coderCopy hrs_failWithCocoaValueNotFoundError];
        selfCopy = 0;
      }
    }

    else
    {
      [coderCopy hrs_failWithCocoaValueNotFoundError];
      selfCopy = 0;
    }
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  authResponse = [(HDClinicalAccountUpdateCredentialJournalEntry *)self authResponse];
  [coderCopy encodeObject:authResponse forKey:@"authResponse"];

  requestedScope = [(HDClinicalAccountUpdateCredentialJournalEntry *)self requestedScope];
  [coderCopy encodeObject:requestedScope forKey:@"requestedScope"];

  event = [(HDClinicalAccountUpdateCredentialJournalEntry *)self event];
  [coderCopy encodeObject:event forKey:@"event"];

  v8.receiver = self;
  v8.super_class = HDClinicalAccountUpdateCredentialJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v8 encodeWithCoder:coderCopy];
}

@end