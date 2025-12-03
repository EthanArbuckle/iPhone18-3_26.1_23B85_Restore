@interface HDClinicalAccountEventInsertJournalEntry
+ (void)applyEntries:(id)entries withProfile:(id)profile;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToClinicalAccountEventInsertJournalEntry:(id)entry;
- (HDClinicalAccountEventInsertJournalEntry)initWithCoder:(id)coder;
- (HDClinicalAccountEventInsertJournalEntry)initWithEvent:(id)event;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountEventInsertJournalEntry

- (HDClinicalAccountEventInsertJournalEntry)initWithEvent:(id)event
{
  eventCopy = event;
  v9.receiver = self;
  v9.super_class = HDClinicalAccountEventInsertJournalEntry;
  v5 = [(HDClinicalAccountEventInsertJournalEntry *)&v9 init];
  if (v5)
  {
    v6 = [eventCopy copy];
    event = v5->_event;
    v5->_event = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(HDClinicalAccountEventInsertJournalEntry *)self isEqualToClinicalAccountEventInsertJournalEntry:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToClinicalAccountEventInsertJournalEntry:(id)entry
{
  entryCopy = entry;
  v5 = entryCopy;
  if (self == entryCopy)
  {
    v11 = 1;
  }

  else if (entryCopy)
  {
    event = [(HDClinicalAccountEventInsertJournalEntry *)self event];
    event2 = [(HDClinicalAccountEventInsertJournalEntry *)v5 event];
    if (event == event2)
    {
      v11 = 1;
    }

    else
    {
      event3 = [(HDClinicalAccountEventInsertJournalEntry *)v5 event];
      if (event3)
      {
        event4 = [(HDClinicalAccountEventInsertJournalEntry *)self event];
        event5 = [(HDClinicalAccountEventInsertJournalEntry *)v5 event];
        v11 = [event4 isEqual:event5];
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

+ (void)applyEntries:(id)entries withProfile:(id)profile
{
  entriesCopy = entries;
  profileCopy = profile;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [entriesCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(entriesCopy);
        }

        event = [*(*(&v19 + 1) + 8 * v11) event];
        v18 = 0;
        v13 = [HDClinicalAccountEventEntity insertEvent:event profile:profileCopy error:&v18];
        v14 = v18;

        if ((v13 & 1) == 0)
        {
          _HKInitializeLogging();
          v15 = HKLogHealthRecords;
          if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            selfCopy = self;
            v25 = 2114;
            v26 = v14;
            _os_log_error_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ failed to insert journaled clinical account event: %{public}@", buf, 0x16u);
          }
        }

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [entriesCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v9);
  }
}

- (HDClinicalAccountEventInsertJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
  if (v5)
  {
    self = [(HDClinicalAccountEventInsertJournalEntry *)self initWithEvent:v5];
    selfCopy = self;
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
  event = [(HDClinicalAccountEventInsertJournalEntry *)self event];
  [coderCopy encodeObject:event forKey:@"event"];

  v6.receiver = self;
  v6.super_class = HDClinicalAccountEventInsertJournalEntry;
  [(HDClinicalAccountEventInsertJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end