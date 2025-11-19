@interface HDClinicalAccountManagerEndLoginSessionJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (HDClinicalAccountManagerEndLoginSessionJournalEntry)initWithCode:(id)a3 state:(id)a4;
- (HDClinicalAccountManagerEndLoginSessionJournalEntry)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAccountManagerEndLoginSessionJournalEntry

- (HDClinicalAccountManagerEndLoginSessionJournalEntry)initWithCode:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDClinicalAccountManagerEndLoginSessionJournalEntry;
  v8 = [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    code = v8->_code;
    v8->_code = v9;

    v11 = [v7 copy];
    state = v8->_state;
    v8->_state = v11;
  }

  return v8;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 healthRecordsExtension];
  v8 = [v7 accountManager];

  if (v8)
  {
    v18 = v6;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v5;
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
          v15 = [v14 state];
          v16 = [v14 code];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_360B8;
          v19[3] = &unk_1070A0;
          v20 = v15;
          v17 = v15;
          [v8 endLoginSessionWithState:v17 code:v16 completion:v19];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v6 = v18;
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

- (HDClinicalAccountManagerEndLoginSessionJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"code"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    if (v6)
    {
      v14.receiver = self;
      v14.super_class = HDClinicalAccountManagerEndLoginSessionJournalEntry;
      v7 = [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)&v14 initWithCoder:v4];
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
      v12 = self;
    }

    else
    {
      [v4 hrs_failWithCocoaValueNotFoundError];
      v12 = 0;
    }
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)self code];
  [v4 encodeObject:v5 forKey:@"code"];

  v6 = [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)self state];
  [v4 encodeObject:v6 forKey:@"state"];

  v7.receiver = self;
  v7.super_class = HDClinicalAccountManagerEndLoginSessionJournalEntry;
  [(HDClinicalAccountManagerEndLoginSessionJournalEntry *)&v7 encodeWithCoder:v4];
}

@end