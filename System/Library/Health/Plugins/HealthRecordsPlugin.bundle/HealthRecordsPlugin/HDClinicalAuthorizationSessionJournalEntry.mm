@interface HDClinicalAuthorizationSessionJournalEntry
- (HDClinicalAuthorizationSessionJournalEntry)initWithCoder:(id)coder;
- (HDClinicalAuthorizationSessionJournalEntry)initWithState:(id)state;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDClinicalAuthorizationSessionJournalEntry

- (HDClinicalAuthorizationSessionJournalEntry)initWithState:(id)state
{
  stateCopy = state;
  v9.receiver = self;
  v9.super_class = HDClinicalAuthorizationSessionJournalEntry;
  v5 = [(HDClinicalAuthorizationSessionJournalEntry *)&v9 init];
  if (v5)
  {
    v6 = [stateCopy copy];
    state = v5->_state;
    v5->_state = v6;
  }

  return v5;
}

- (HDClinicalAuthorizationSessionJournalEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
  if (v5)
  {
    v11.receiver = self;
    v11.super_class = HDClinicalAuthorizationSessionJournalEntry;
    v6 = [(HDClinicalAuthorizationSessionJournalEntry *)&v11 initWithCoder:coderCopy];

    if (v6)
    {
      v7 = [v5 copy];
      state = v6->_state;
      v6->_state = v7;
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
  state = [(HDClinicalAuthorizationSessionJournalEntry *)self state];
  [coderCopy encodeObject:state forKey:@"state"];

  v6.receiver = self;
  v6.super_class = HDClinicalAuthorizationSessionJournalEntry;
  [(HDClinicalAuthorizationSessionJournalEntry *)&v6 encodeWithCoder:coderCopy];
}

@end