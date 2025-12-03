@interface BLSHInactiveBudgetBucketEntryCount
- (BLSHInactiveBudgetBucketEntryCount)init;
- (BOOL)countSpecifier:(id)specifier hasSecondsBudget:(BOOL)budget isCoalesceAllowed:(BOOL)allowed;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation BLSHInactiveBudgetBucketEntryCount

- (BLSHInactiveBudgetBucketEntryCount)init
{
  v6.receiver = self;
  v6.super_class = BLSHInactiveBudgetBucketEntryCount;
  v2 = [(BLSHInactiveBudgetBucketEntryCount *)&v6 init];
  if (v2)
  {
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastEntryFinalDate = v2->_lastEntryFinalDate;
    v2->_lastEntryFinalDate = distantPast;

    objc_storeStrong(&v2->_lastEntryInitialDate, distantPast);
  }

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_count withName:@"count"];
  bls_shortLoggingString = [(NSDate *)self->_lastEntryInitialDate bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"lastEntry"];

  if (![(NSDate *)self->_lastEntryInitialDate isEqualToDate:self->_lastEntryFinalDate])
  {
    bls_shortLoggingString2 = [(NSDate *)self->_lastEntryFinalDate bls_shortLoggingString];
    [v3 appendString:bls_shortLoggingString2 withName:@"lastEntryEnd"];
  }

  v7 = [v3 appendBool:self->_secondsFidelity withName:@"isSecondsFidelity" ifEqualTo:1];
  build = [v3 build];

  return build;
}

- (BOOL)countSpecifier:(id)specifier hasSecondsBudget:(BOOL)budget isCoalesceAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  budgetCopy = budget;
  specifierCopy = specifier;
  date = [specifierCopy date];
  fidelity = [specifierCopy fidelity];

  if (fidelity < 2)
  {
    if (allowedCopy && ([date timeIntervalSinceDate:self->_lastEntryInitialDate], v15 = fabs(v14), objc_msgSend(MEMORY[0x277CF0920], "animationCoalesceThreshold"), v15 < v16))
    {
      v17 = [date earlierDate:self->_lastEntryInitialDate];
      lastEntryInitialDate = self->_lastEntryInitialDate;
      self->_lastEntryInitialDate = v17;

      v19 = [date laterDate:self->_lastEntryFinalDate];
      lastEntryFinalDate = self->_lastEntryFinalDate;
      self->_lastEntryFinalDate = v19;

      LOBYTE(budgetCopy) = 1;
    }

    else if (budgetCopy || self->_count <= 2)
    {
      if ([(NSDate *)self->_lastEntryFinalDate compare:date]== NSOrderedAscending)
      {
        objc_storeStrong(&self->_lastEntryFinalDate, date);
        objc_storeStrong(&self->_lastEntryInitialDate, date);
      }

      count = self->_count;
      self->_count = count + 1;
      LOBYTE(budgetCopy) = 1;
      if (count >= 3)
      {
        self->_secondsFidelity = 1;
      }
    }

    else
    {
      LOBYTE(budgetCopy) = 0;
    }
  }

  else if (budgetCopy)
  {
    v12 = self->_lastEntryFinalDate;
    p_lastEntryFinalDate = &self->_lastEntryFinalDate;
    LOBYTE(budgetCopy) = 1;
    *(p_lastEntryFinalDate - 16) = 1;
    v13 = [date laterDate:v12];

    objc_storeStrong(p_lastEntryFinalDate, v13);
    objc_storeStrong(p_lastEntryFinalDate - 1, v13);
    ++*(p_lastEntryFinalDate - 3);
    date = v13;
  }

  return budgetCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(BLSHInactiveBudgetBucketEntryCount);
  objc_storeStrong(&v4->_lastEntryInitialDate, self->_lastEntryInitialDate);
  objc_storeStrong(&v4->_lastEntryFinalDate, self->_lastEntryFinalDate);
  v4->_count = self->_count;
  v4->_secondsFidelity = self->_secondsFidelity;
  return v4;
}

@end