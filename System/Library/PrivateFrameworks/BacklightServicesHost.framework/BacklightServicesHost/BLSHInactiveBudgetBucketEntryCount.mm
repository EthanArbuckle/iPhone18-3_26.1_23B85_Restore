@interface BLSHInactiveBudgetBucketEntryCount
- (BLSHInactiveBudgetBucketEntryCount)init;
- (BOOL)countSpecifier:(id)a3 hasSecondsBudget:(BOOL)a4 isCoalesceAllowed:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
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
    v3 = [MEMORY[0x277CBEAA8] distantPast];
    lastEntryFinalDate = v2->_lastEntryFinalDate;
    v2->_lastEntryFinalDate = v3;

    objc_storeStrong(&v2->_lastEntryInitialDate, v3);
  }

  return v2;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendInt:self->_count withName:@"count"];
  v5 = [(NSDate *)self->_lastEntryInitialDate bls_shortLoggingString];
  [v3 appendString:v5 withName:@"lastEntry"];

  if (![(NSDate *)self->_lastEntryInitialDate isEqualToDate:self->_lastEntryFinalDate])
  {
    v6 = [(NSDate *)self->_lastEntryFinalDate bls_shortLoggingString];
    [v3 appendString:v6 withName:@"lastEntryEnd"];
  }

  v7 = [v3 appendBool:self->_secondsFidelity withName:@"isSecondsFidelity" ifEqualTo:1];
  v8 = [v3 build];

  return v8;
}

- (BOOL)countSpecifier:(id)a3 hasSecondsBudget:(BOOL)a4 isCoalesceAllowed:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = [v8 date];
  v10 = [v8 fidelity];

  if (v10 < 2)
  {
    if (v5 && ([v9 timeIntervalSinceDate:self->_lastEntryInitialDate], v15 = fabs(v14), objc_msgSend(MEMORY[0x277CF0920], "animationCoalesceThreshold"), v15 < v16))
    {
      v17 = [v9 earlierDate:self->_lastEntryInitialDate];
      lastEntryInitialDate = self->_lastEntryInitialDate;
      self->_lastEntryInitialDate = v17;

      v19 = [v9 laterDate:self->_lastEntryFinalDate];
      lastEntryFinalDate = self->_lastEntryFinalDate;
      self->_lastEntryFinalDate = v19;

      LOBYTE(v6) = 1;
    }

    else if (v6 || self->_count <= 2)
    {
      if ([(NSDate *)self->_lastEntryFinalDate compare:v9]== NSOrderedAscending)
      {
        objc_storeStrong(&self->_lastEntryFinalDate, v9);
        objc_storeStrong(&self->_lastEntryInitialDate, v9);
      }

      count = self->_count;
      self->_count = count + 1;
      LOBYTE(v6) = 1;
      if (count >= 3)
      {
        self->_secondsFidelity = 1;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  else if (v6)
  {
    v12 = self->_lastEntryFinalDate;
    p_lastEntryFinalDate = &self->_lastEntryFinalDate;
    LOBYTE(v6) = 1;
    *(p_lastEntryFinalDate - 16) = 1;
    v13 = [v9 laterDate:v12];

    objc_storeStrong(p_lastEntryFinalDate, v13);
    objc_storeStrong(p_lastEntryFinalDate - 1, v13);
    ++*(p_lastEntryFinalDate - 3);
    v9 = v13;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BLSHInactiveBudgetBucketEntryCount);
  objc_storeStrong(&v4->_lastEntryInitialDate, self->_lastEntryInitialDate);
  objc_storeStrong(&v4->_lastEntryFinalDate, self->_lastEntryFinalDate);
  v4->_count = self->_count;
  v4->_secondsFidelity = self->_secondsFidelity;
  return v4;
}

@end