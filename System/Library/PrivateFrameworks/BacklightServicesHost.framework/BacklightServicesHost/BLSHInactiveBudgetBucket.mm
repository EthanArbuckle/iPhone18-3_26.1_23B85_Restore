@interface BLSHInactiveBudgetBucket
- (BLSHInactiveBudgetBucket)initWithFutureSpecifier:(id)specifier;
- (BLSHInactiveBudgetBucket)initWithInvalidation:(id)invalidation;
- (BOOL)validAtDate:(id)date;
- (double)addSpecifier:(char)specifier allowBeforeStart:(void *)start withCountBlock:;
- (double)applyRenderedSpecifier:(id)specifier allowBeforeStart:(BOOL)start;
- (id)debugDescription;
- (id)description;
- (id)shortLoggingString;
- (void)initWithStartDate:(void *)date;
- (void)recomputeMinuteBoundary;
- (void)resetFutureAndRenderedSpecifiers;
- (void)resetFutureSpecifiers;
@end

@implementation BLSHInactiveBudgetBucket

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_shortLoggingString = [(NSDate *)self->_startDate bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"start"];

  v5 = [v3 appendInt:-[BLSHInactiveBudgetBucketEntryCount count](self->_entryCount withName:{"count"), @"count"}];
  v6 = [v3 appendBool:-[BLSHInactiveBudgetBucketEntryCount isSecondsFidelity](self->_entryCount withName:"isSecondsFidelity") ifEqualTo:{@"isSecondsFidelity", 1}];
  v7 = [v3 appendBool:self->_containsInvalidation withName:@"containsInvalidation" ifEqualTo:1];
  build = [v3 build];

  return build;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  bls_shortLoggingString = [(NSDate *)self->_startDate bls_shortLoggingString];
  [v3 appendString:bls_shortLoggingString withName:@"start"];

  v5 = [v3 appendInt:-[BLSHInactiveBudgetBucketEntryCount count](self->_entryCount withName:{"count"), @"count"}];
  v6 = [v3 appendBool:-[BLSHInactiveBudgetBucketEntryCount isSecondsFidelity](self->_entryCount withName:"isSecondsFidelity") ifEqualTo:{@"isSecondsFidelity", 1}];
  v7 = [v3 appendBool:self->_containsInvalidation withName:@"containsInvalidation" ifEqualTo:1];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __44__BLSHInactiveBudgetBucket_debugDescription__block_invoke;
  v14 = &unk_27841E538;
  v15 = v3;
  selfCopy = self;
  v8 = v3;
  [v8 appendBodySectionWithName:0 multilinePrefix:@"        " block:&v11];
  build = [v8 build];

  return build;
}

id __44__BLSHInactiveBudgetBucket_debugDescription__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"futureEntries"];
  v3 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 40) withName:@"renderedEntries"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"invalidationEntries"];
}

- (id)shortLoggingString
{
  v3 = MEMORY[0x277CCACA8];
  bls_shortLoggingString = [(NSDate *)self->_startDate bls_shortLoggingString];
  v5 = [(BLSHInactiveBudgetBucketEntryCount *)self->_entryCount count];
  isSecondsFidelity = [(BLSHInactiveBudgetBucketEntryCount *)self->_entryCount isSecondsFidelity];
  v7 = "";
  v8 = " seconds";
  if (!isSecondsFidelity)
  {
    v8 = "";
  }

  if (self->_containsInvalidation)
  {
    v7 = " invalidation(s)";
  }

  v9 = [v3 stringWithFormat:@"<%p %@ (%ld)%s%s>", self, bls_shortLoggingString, v5, v8, v7];;

  return v9;
}

uint64_t __81__BLSHInactiveBudgetBucket_addFutureSpecifier_hasSecondsBudget_allowBeforeStart___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(*(a1 + 32) + 24);
  v4 = [*(a1 + 40) date];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  v7 = v6 >= 0.0;
  if (v6 >= 1.0)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 32);

  return [v9 countSpecifier:v8 hasSecondsBudget:(v7 | v2) & 1 isCoalesceAllowed:1];
}

uint64_t __68__BLSHInactiveBudgetBucket_applyRenderedSpecifier_allowBeforeStart___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 40) countSpecifier:*(a1 + 40) hasSecondsBudget:1 isCoalesceAllowed:1];
  *(*(a1 + 32) + 8) = 1;
  return 1;
}

uint64_t __78__BLSHInactiveBudgetBucket_addInvalidation_hasSecondsBudget_allowBeforeStart___block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 32) countSpecifier:*(a1 + 40) hasSecondsBudget:*(a1 + 48) isCoalesceAllowed:0];
  if (v3)
  {
    [*(*v1 + 40) countSpecifier:*v2 hasSecondsBudget:1 isCoalesceAllowed:0];
    [*(*v1 + 48) countSpecifier:*v2 hasSecondsBudget:1 isCoalesceAllowed:0];
    *(*v1 + 9) = 1;
    v4 = bls_budget_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __78__BLSHInactiveBudgetBucket_addInvalidation_hasSecondsBudget_allowBeforeStart___block_invoke_cold_1(v1, v1 + 1, v4);
    }
  }

  return v3;
}

- (void)resetFutureSpecifiers
{
  v3 = [(BLSHInactiveBudgetBucketEntryCount *)self->_renderedEntryCount copy];
  entryCount = self->_entryCount;
  self->_entryCount = v3;

  MEMORY[0x2821F96F8](v3, entryCount);
}

- (void)resetFutureAndRenderedSpecifiers
{
  v3 = [(BLSHInactiveBudgetBucketEntryCount *)self->_invalidatedEntryCount copy];
  entryCount = self->_entryCount;
  self->_entryCount = v3;

  v5 = [(BLSHInactiveBudgetBucketEntryCount *)self->_invalidatedEntryCount copy];
  renderedEntryCount = self->_renderedEntryCount;
  self->_renderedEntryCount = v5;

  self->_rendered = 0;
}

- (BOOL)validAtDate:(id)date
{
  dateCopy = date;
  isSecondsFidelity = [(BLSHInactiveBudgetBucket *)self isSecondsFidelity];
  v6 = -60.0;
  if (isSecondsFidelity)
  {
    v6 = -3600.0;
  }

  v7 = [dateCopy dateByAddingTimeInterval:v6];

  v8 = [v7 isBeforeDate:self->_startDate];
  return v8;
}

- (void)initWithStartDate:(void *)date
{
  v4 = a2;
  if (date)
  {
    v13.receiver = date;
    v13.super_class = BLSHInactiveBudgetBucket;
    v5 = objc_msgSendSuper2(&v13, sel_init);
    date = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      v7 = objc_alloc_init(BLSHInactiveBudgetBucketEntryCount);
      v8 = date[4];
      date[4] = v7;

      v9 = objc_alloc_init(BLSHInactiveBudgetBucketEntryCount);
      v10 = date[5];
      date[5] = v9;

      v11 = objc_alloc_init(BLSHInactiveBudgetBucketEntryCount);
      v12 = date[6];
      date[6] = v11;

      [(BLSHInactiveBudgetBucket *)date recomputeMinuteBoundary];
    }
  }

  return date;
}

- (void)recomputeMinuteBoundary
{
  if (self)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v9 setSecond:0];
    autoupdatingCurrentCalendar = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v3 = [autoupdatingCurrentCalendar nextDateAfterDate:*(self + 16) matchingComponents:v9 options:5120];

    [v3 timeIntervalSinceDate:*(self + 16)];
    v5 = v4;
    [MEMORY[0x277CF0920] secondsFidelityThreshold];
    if (v5 < v6)
    {
      distantFuture = v3;
    }

    else
    {
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v8 = *(self + 24);
    *(self + 24) = distantFuture;
  }
}

- (BLSHInactiveBudgetBucket)initWithFutureSpecifier:(id)specifier
{
  specifierCopy = specifier;
  date = [specifierCopy date];
  v6 = [(BLSHInactiveBudgetBucket *)self initWithStartDate:date];

  if (v6)
  {
    [(BLSHInactiveBudgetBucketEntryCount *)v6->_entryCount countSpecifier:specifierCopy hasSecondsBudget:1 isCoalesceAllowed:1];
  }

  return v6;
}

- (BLSHInactiveBudgetBucket)initWithInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;
  date = [invalidationCopy date];
  v6 = [(BLSHInactiveBudgetBucket *)self initWithStartDate:date];

  if (v6)
  {
    OUTLINED_FUNCTION_2_9(v6->_entryCount, v7);
    OUTLINED_FUNCTION_2_9(v6->_renderedEntryCount, v8);
    OUTLINED_FUNCTION_2_9(v6->_invalidatedEntryCount, v9);
  }

  return v6;
}

- (double)addSpecifier:(char)specifier allowBeforeStart:(void *)start withCountBlock:
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  startCopy = start;
  if (!self)
  {
    v16 = 0.0;
    goto LABEL_19;
  }

  date = [v7 date];
  [MEMORY[0x277CF0920] secondsFidelityThreshold];
  v11 = v10;
  [date timeIntervalSinceDate:*(self + 16)];
  v13 = v12;
  [*(self + 32) timeIntervalFromLastEntryToDate:date];
  v15 = v14;
  if (v13 >= 0.0)
  {
    if (v13 >= v11)
    {
      v16 = v14;
      goto LABEL_18;
    }

LABEL_7:
    v17 = [*(self + 32) count];
    v18 = startCopy[2](startCopy);
    if (v18)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = NAN;
    }

    if (v13 < 0.0 && v18 != 0)
    {
      v20 = bls_budget_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = *(self + 16);
        [v21 timeIntervalSinceDate:date];
        v23 = v22;
        v24 = [*(self + 32) count];
        v27 = 134220034;
        selfCopy = self;
        v29 = 2114;
        v30 = v7;
        v31 = 2114;
        v32 = v21;
        v33 = 2114;
        v34 = date;
        v35 = 2048;
        v36 = v23;
        v37 = 2048;
        v38 = v13;
        v39 = 2048;
        v40 = v15;
        v41 = 1024;
        v42 = v17;
        v43 = 1024;
        v44 = v24;
        _os_log_debug_impl(&dword_21FD11000, v20, OS_LOG_TYPE_DEBUG, "%p added addSpecifier:%{public}@ start date will change:%{public}@->%{public}@ (%.3lfs) (intervalSinceStart:%lf; intervalAfterEnd:%lf) (count:%d->%d)", &v27, 0x54u);
      }

      objc_storeStrong((self + 16), date);
      [(BLSHInactiveBudgetBucket *)self recomputeMinuteBoundary];
      v16 = 0.0;
    }

    goto LABEL_18;
  }

  if (v14 > -v11 && (specifier & 1) != 0)
  {
    goto LABEL_7;
  }

  v16 = v13;
LABEL_18:

LABEL_19:
  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (double)applyRenderedSpecifier:(id)specifier allowBeforeStart:(BOOL)start
{
  specifierCopy = specifier;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__BLSHInactiveBudgetBucket_applyRenderedSpecifier_allowBeforeStart___block_invoke;
  v10[3] = &unk_27841FCA0;
  v10[4] = self;
  v11 = specifierCopy;
  v7 = specifierCopy;
  v8 = [(BLSHInactiveBudgetBucket *)self addSpecifier:v7 allowBeforeStart:start withCountBlock:v10];

  return v8;
}

void __78__BLSHInactiveBudgetBucket_addInvalidation_hasSecondsBudget_allowBeforeStart___block_invoke_cold_1(uint64_t *a1, uint64_t *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *a2;
  v6 = [*(*a1 + 32) count];
  v8 = 134218498;
  v9 = v4;
  v10 = 2114;
  v11 = v5;
  v12 = 1024;
  v13 = v6;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p added invalidation:%{public}@ total bucket count:%d", &v8, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

@end