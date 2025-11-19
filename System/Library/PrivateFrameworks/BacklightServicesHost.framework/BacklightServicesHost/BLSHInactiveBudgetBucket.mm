@interface BLSHInactiveBudgetBucket
- (BLSHInactiveBudgetBucket)initWithFutureSpecifier:(id)a3;
- (BLSHInactiveBudgetBucket)initWithInvalidation:(id)a3;
- (BOOL)validAtDate:(id)a3;
- (double)addSpecifier:(char)a3 allowBeforeStart:(void *)a4 withCountBlock:;
- (double)applyRenderedSpecifier:(id)a3 allowBeforeStart:(BOOL)a4;
- (id)debugDescription;
- (id)description;
- (id)shortLoggingString;
- (void)initWithStartDate:(void *)a1;
- (void)recomputeMinuteBoundary;
- (void)resetFutureAndRenderedSpecifiers;
- (void)resetFutureSpecifiers;
@end

@implementation BLSHInactiveBudgetBucket

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSDate *)self->_startDate bls_shortLoggingString];
  [v3 appendString:v4 withName:@"start"];

  v5 = [v3 appendInt:-[BLSHInactiveBudgetBucketEntryCount count](self->_entryCount withName:{"count"), @"count"}];
  v6 = [v3 appendBool:-[BLSHInactiveBudgetBucketEntryCount isSecondsFidelity](self->_entryCount withName:"isSecondsFidelity") ifEqualTo:{@"isSecondsFidelity", 1}];
  v7 = [v3 appendBool:self->_containsInvalidation withName:@"containsInvalidation" ifEqualTo:1];
  v8 = [v3 build];

  return v8;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [(NSDate *)self->_startDate bls_shortLoggingString];
  [v3 appendString:v4 withName:@"start"];

  v5 = [v3 appendInt:-[BLSHInactiveBudgetBucketEntryCount count](self->_entryCount withName:{"count"), @"count"}];
  v6 = [v3 appendBool:-[BLSHInactiveBudgetBucketEntryCount isSecondsFidelity](self->_entryCount withName:"isSecondsFidelity") ifEqualTo:{@"isSecondsFidelity", 1}];
  v7 = [v3 appendBool:self->_containsInvalidation withName:@"containsInvalidation" ifEqualTo:1];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __44__BLSHInactiveBudgetBucket_debugDescription__block_invoke;
  v14 = &unk_27841E538;
  v15 = v3;
  v16 = self;
  v8 = v3;
  [v8 appendBodySectionWithName:0 multilinePrefix:@"        " block:&v11];
  v9 = [v8 build];

  return v9;
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
  v4 = [(NSDate *)self->_startDate bls_shortLoggingString];
  v5 = [(BLSHInactiveBudgetBucketEntryCount *)self->_entryCount count];
  v6 = [(BLSHInactiveBudgetBucketEntryCount *)self->_entryCount isSecondsFidelity];
  v7 = "";
  v8 = " seconds";
  if (!v6)
  {
    v8 = "";
  }

  if (self->_containsInvalidation)
  {
    v7 = " invalidation(s)";
  }

  v9 = [v3 stringWithFormat:@"<%p %@ (%ld)%s%s>", self, v4, v5, v8, v7];;

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

- (BOOL)validAtDate:(id)a3
{
  v4 = a3;
  v5 = [(BLSHInactiveBudgetBucket *)self isSecondsFidelity];
  v6 = -60.0;
  if (v5)
  {
    v6 = -3600.0;
  }

  v7 = [v4 dateByAddingTimeInterval:v6];

  v8 = [v7 isBeforeDate:self->_startDate];
  return v8;
}

- (void)initWithStartDate:(void *)a1
{
  v4 = a2;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = BLSHInactiveBudgetBucket;
    v5 = objc_msgSendSuper2(&v13, sel_init);
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 2, a2);
      v7 = objc_alloc_init(BLSHInactiveBudgetBucketEntryCount);
      v8 = a1[4];
      a1[4] = v7;

      v9 = objc_alloc_init(BLSHInactiveBudgetBucketEntryCount);
      v10 = a1[5];
      a1[5] = v9;

      v11 = objc_alloc_init(BLSHInactiveBudgetBucketEntryCount);
      v12 = a1[6];
      a1[6] = v11;

      [(BLSHInactiveBudgetBucket *)a1 recomputeMinuteBoundary];
    }
  }

  return a1;
}

- (void)recomputeMinuteBoundary
{
  if (a1)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v9 setSecond:0];
    v2 = [MEMORY[0x277CBEA80] autoupdatingCurrentCalendar];
    v3 = [v2 nextDateAfterDate:*(a1 + 16) matchingComponents:v9 options:5120];

    [v3 timeIntervalSinceDate:*(a1 + 16)];
    v5 = v4;
    [MEMORY[0x277CF0920] secondsFidelityThreshold];
    if (v5 < v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v8 = *(a1 + 24);
    *(a1 + 24) = v7;
  }
}

- (BLSHInactiveBudgetBucket)initWithFutureSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 date];
  v6 = [(BLSHInactiveBudgetBucket *)self initWithStartDate:v5];

  if (v6)
  {
    [(BLSHInactiveBudgetBucketEntryCount *)v6->_entryCount countSpecifier:v4 hasSecondsBudget:1 isCoalesceAllowed:1];
  }

  return v6;
}

- (BLSHInactiveBudgetBucket)initWithInvalidation:(id)a3
{
  v4 = a3;
  v5 = [v4 date];
  v6 = [(BLSHInactiveBudgetBucket *)self initWithStartDate:v5];

  if (v6)
  {
    OUTLINED_FUNCTION_2_9(v6->_entryCount, v7);
    OUTLINED_FUNCTION_2_9(v6->_renderedEntryCount, v8);
    OUTLINED_FUNCTION_2_9(v6->_invalidatedEntryCount, v9);
  }

  return v6;
}

- (double)addSpecifier:(char)a3 allowBeforeStart:(void *)a4 withCountBlock:
{
  v45 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (!a1)
  {
    v16 = 0.0;
    goto LABEL_19;
  }

  v9 = [v7 date];
  [MEMORY[0x277CF0920] secondsFidelityThreshold];
  v11 = v10;
  [v9 timeIntervalSinceDate:*(a1 + 16)];
  v13 = v12;
  [*(a1 + 32) timeIntervalFromLastEntryToDate:v9];
  v15 = v14;
  if (v13 >= 0.0)
  {
    if (v13 >= v11)
    {
      v16 = v14;
      goto LABEL_18;
    }

LABEL_7:
    v17 = [*(a1 + 32) count];
    v18 = v8[2](v8);
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
        v21 = *(a1 + 16);
        [v21 timeIntervalSinceDate:v9];
        v23 = v22;
        v24 = [*(a1 + 32) count];
        v27 = 134220034;
        v28 = a1;
        v29 = 2114;
        v30 = v7;
        v31 = 2114;
        v32 = v21;
        v33 = 2114;
        v34 = v9;
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

      objc_storeStrong((a1 + 16), v9);
      [(BLSHInactiveBudgetBucket *)a1 recomputeMinuteBoundary];
      v16 = 0.0;
    }

    goto LABEL_18;
  }

  if (v14 > -v11 && (a3 & 1) != 0)
  {
    goto LABEL_7;
  }

  v16 = v13;
LABEL_18:

LABEL_19:
  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

- (double)applyRenderedSpecifier:(id)a3 allowBeforeStart:(BOOL)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__BLSHInactiveBudgetBucket_applyRenderedSpecifier_allowBeforeStart___block_invoke;
  v10[3] = &unk_27841FCA0;
  v10[4] = self;
  v11 = v6;
  v7 = v6;
  v8 = [(BLSHInactiveBudgetBucket *)self addSpecifier:v7 allowBeforeStart:a4 withCountBlock:v10];

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