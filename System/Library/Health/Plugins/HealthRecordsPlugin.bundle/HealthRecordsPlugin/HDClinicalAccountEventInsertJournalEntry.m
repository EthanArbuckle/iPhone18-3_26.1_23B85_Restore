@interface HDClinicalAccountEventInsertJournalEntry
+ (void)applyEntries:(id)a3 withProfile:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToClinicalAccountEventInsertJournalEntry:(id)a3;
- (HDClinicalAccountEventInsertJournalEntry)initWithCoder:(id)a3;
- (HDClinicalAccountEventInsertJournalEntry)initWithEvent:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAccountEventInsertJournalEntry

- (HDClinicalAccountEventInsertJournalEntry)initWithEvent:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDClinicalAccountEventInsertJournalEntry;
  v5 = [(HDClinicalAccountEventInsertJournalEntry *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    event = v5->_event;
    v5->_event = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(HDClinicalAccountEventInsertJournalEntry *)self isEqualToClinicalAccountEventInsertJournalEntry:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToClinicalAccountEventInsertJournalEntry:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else if (v4)
  {
    v6 = [(HDClinicalAccountEventInsertJournalEntry *)self event];
    v7 = [(HDClinicalAccountEventInsertJournalEntry *)v5 event];
    if (v6 == v7)
    {
      v11 = 1;
    }

    else
    {
      v8 = [(HDClinicalAccountEventInsertJournalEntry *)v5 event];
      if (v8)
      {
        v9 = [(HDClinicalAccountEventInsertJournalEntry *)self event];
        v10 = [(HDClinicalAccountEventInsertJournalEntry *)v5 event];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)applyEntries:(id)a3 withProfile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v20;
    *&v8 = 138543618;
    v16 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = [*(*(&v19 + 1) + 8 * v11) event];
        v18 = 0;
        v13 = [HDClinicalAccountEventEntity insertEvent:v12 profile:v6 error:&v18];
        v14 = v18;

        if ((v13 & 1) == 0)
        {
          _HKInitializeLogging();
          v15 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v24 = a1;
            v25 = 2114;
            v26 = v14;
            _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled clinical account event: %{public}@", buf, 0x16u);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountEventInsertJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
  if (v5)
  {
    self = [(HDClinicalAccountEventInsertJournalEntry *)self initWithEvent:v5];
    v6 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalAccountEventInsertJournalEntry *)self event];
  [v4 encodeObject:v5 forKey:@"event"];

  v6.receiver = self;
  v6.super_class = HDClinicalAccountEventInsertJournalEntry;
  [(HDClinicalAccountEventInsertJournalEntry *)&v6 encodeWithCoder:v4];
}

@end