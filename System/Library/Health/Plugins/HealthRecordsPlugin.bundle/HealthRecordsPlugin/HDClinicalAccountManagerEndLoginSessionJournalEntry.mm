@interface HDClinicalAccountManagerEndLoginSessionJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (HDClinicalAccountManagerEndLoginSessionJournalEntry)initWithCode:(id)code state:(id)state;
- (HDClinicalAccountManagerEndLoginSessionJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountManagerEndLoginSessionJournalEntry

- (HDClinicalAccountManagerEndLoginSessionJournalEntry)initWithCode:(id)code state:(id)state
{
  codeCopy = code;
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = HDClinicalAccountManagerEndLoginSessionJournalEntry;
  v8 = [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)&v14 init];
  if (v8)
  {
    v9 = [codeCopy copy];
    code = v8->_code;
    v8->_code = v9;

    v11 = [stateCopy copy];
    state = v8->_state;
    v8->_state = v11;
  }

  return v8;
}

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  healthRecordsExtension = [profileCopy healthRecordsExtension];
  accountManager = [healthRecordsExtension accountManager];

  if (accountManager)
  {
    v18 = profileCopy;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = entriesCopy;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          state = [v14 state];
          code = [v14 code];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_360B8;
          v19[3] = &unk_1070A0;
          v20 = state;
          v17 = state;
          [accountManager endLoginSessionWithState:v17 code:code completion:v19];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    profileCopy = v18;
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_FAULT))
    {
      sub_A13E4();
    }
  }
}

- (HDClinicalAccountManagerEndLoginSessionJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"code"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    if (v6)
    {
      v14.receiver = self;
      v14.super_class = HDClinicalAccountManagerEndLoginSessionJournalEntry;
      v7 = [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)&v14 initWithCoder:coderCopy];
      if (v7)
      {
        v8 = [v5 copy];
        code = v7->_code;
        v7->_code = v8;

        v10 = [v6 copy];
        state = v7->_state;
        v7->_state = v10;
      }

      self = v7;
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

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  code = [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)self code];
  [coderCopy encodeObject:code forKey:@"code"];

  state = [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  v7.receiver = self;
  v7.super_class = HDClinicalAccountManagerEndLoginSessionJournalEntry;
  [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)&v7 encodeWithCoder:coderCopy];
}

@end