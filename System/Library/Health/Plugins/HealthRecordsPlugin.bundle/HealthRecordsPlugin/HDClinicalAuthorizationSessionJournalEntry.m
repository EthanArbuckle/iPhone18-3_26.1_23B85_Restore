@interface HDClinicalAuthorizationSessionJournalEntry
- (HDClinicalAuthorizationSessionJournalEntry)initWithCoder:(id)a3;
- (HDClinicalAuthorizationSessionJournalEntry)initWithState:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDClinicalAuthorizationSessionJournalEntry

- (HDClinicalAuthorizationSessionJournalEntry)initWithState:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDClinicalAuthorizationSessionJournalEntry;
  v5 = [(HDClinicalAuthorizationSessionJournalEntry *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    state = v5->_state;
    v5->_state = v6;
  }

  return v5;
}

- (HDClinicalAuthorizationSessionJournalEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAuthorizationSessionJournalEntry;
    v6 = [(HDClinicalAuthorizationSessionJournalEntry *)&v11 initWithCoder:v4];

    if (v6)
    {
      v7 = [v5 copy];
      state = v6->_state;
      v6->_state = v7;
    }

    self = v6;
    v9 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];

    v9 = 0;
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HDClinicalAuthorizationSessionJournalEntry *)self state];
  [v4 encodeObject:v5 forKey:@"state"];

  v6.receiver = self;
  v6.super_class = HDClinicalAuthorizationSessionJournalEntry;
  [(HDClinicalAuthorizationSessionJournalEntry *)&v6 encodeWithCoder:v4];
}

@end