@interface HDClinicalAccountEntityUpdateJournalEntry
- (HDClinicalAccountEntityUpdateJournalEntry)initWithAccountIdentifier:(id)identifier;
- (HDClinicalAccountEntityUpdateJournalEntry)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAccountEntityUpdateJournalEntry

- (HDClinicalAccountEntityUpdateJournalEntry)initWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HDClinicalAccountEntityUpdateJournalEntry;
  v5 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;
  }

  return v5;
}

- (HDClinicalAccountEntityUpdateJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAccountEntityUpdateJournalEntry;
    v6 = [(HDClinicalAccountEntityUpdateJournalEntry *)&v11 initWithCoder:coderCopy];

    if (v6)
    {
      v7 = [v5 copy];
      accountIdentifier = v6->_accountIdentifier;
      v6->_accountIdentifier = v7;
    }

    self = v6;
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
  accountIdentifier = [(HDClinicalAccountEntityUpdateJournalEntry *)self accountIdentifier];
  [coderCopy encodeObject:accountIdentifier forKey:@"accountIdentifier"];

  v6.receiver = self;
  v6.super_class = HDClinicalAccountEntityUpdateJournalEntry;
  [(HDClinicalAccountEntityUpdateJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end