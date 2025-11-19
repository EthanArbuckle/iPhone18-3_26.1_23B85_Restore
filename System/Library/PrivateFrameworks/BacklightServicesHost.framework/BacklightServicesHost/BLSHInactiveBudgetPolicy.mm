@interface BLSHInactiveBudgetPolicy
- (BLSHInactiveBudgetPolicy)initWithBudgetFactory:(id)a3;
- (BLSHInactiveBudgetPolicy)initWithOSTimerProvider:(id)a3;
- (NSString)description;
- (id)budgetForEnvironment:(uint64_t)a1;
- (id)validateAndChargeFutureSpecifier:(id)a3 nextSpecifier:(id)a4 forEnvironment:(id)a5;
- (int64_t)allowedFidelityAtDate:(id)a3 forEnvironment:(id)a4 expectedFidelity:(int64_t)a5;
- (void)chargeRenderedSpecifier:(id)a3;
- (void)invalidateAtRequestDate:(id)a3 forEnvironment:(id)a4 invalidationBlock:(id)a5;
- (void)performInvalidation;
- (void)purgeStaleDataForNowDate:(id)a3;
- (void)resetAllBudgetsForReason:(id)a3;
- (void)resetBudgetForProcess:(id)a3 reason:(id)a4;
- (void)resetFutureSpecifiers;
@end

@implementation BLSHInactiveBudgetPolicy

- (BLSHInactiveBudgetPolicy)initWithOSTimerProvider:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__BLSHInactiveBudgetPolicy_initWithOSTimerProvider___block_invoke;
  v8[3] = &unk_27841F3F0;
  v9 = v4;
  v5 = v4;
  v6 = [(BLSHInactiveBudgetPolicy *)self initWithBudgetFactory:v8];

  return v6;
}

BLSHInactiveProcessBudget *__52__BLSHInactiveBudgetPolicy_initWithOSTimerProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [BLSHInactiveProcessBudget alloc];
  v5 = [v3 identifier];

  v6 = [(BLSHInactiveProcessBudget *)v4 initWithIdentifier:v5 osTimerProvider:*(a1 + 32)];

  return v6;
}

- (BLSHInactiveBudgetPolicy)initWithBudgetFactory:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = BLSHInactiveBudgetPolicy;
  v5 = [(BLSHInactiveBudgetPolicy *)&v13 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    budgets = v5->_budgets;
    v5->_budgets = v6;

    v8 = MEMORY[0x223D70730](v4);
    budgetFactory = v5->_budgetFactory;
    v5->_budgetFactory = v8;

    v10 = objc_alloc_init(BLSHNullInactiveProcessBudget);
    nullBudget = v5->_nullBudget;
    v5->_nullBudget = v10;

    v5->_lock._os_unfair_lock_opaque = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendDictionarySection:self->_budgets withName:@"budgets" skipIfEmpty:1];
  v4 = [v3 build];

  return v4;
}

- (int64_t)allowedFidelityAtDate:(id)a3 forEnvironment:(id)a4 expectedFidelity:(int64_t)a5
{
  v8 = a3;
  v9 = [(BLSHInactiveBudgetPolicy *)self budgetForEnvironment:a4];
  v10 = [v9 allowedFidelityAtDate:v8 expectedFidelity:a5];

  return v10;
}

- (void)resetFutureSpecifiers
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_budgets enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)chargeRenderedSpecifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__BLSHInactiveBudgetPolicy_chargeRenderedSpecifier___block_invoke;
  v6[3] = &unk_27841F438;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 enumerateDateSpecifiersUsingBlock:v6];
}

- (void)performInvalidation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_budgets copy];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)resetBudgetForProcess:(id)a3 reason:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = bls_budget_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134218498;
      v11 = self;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = v7;
      _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_INFO, "%p will reset budget for process:%{public}@ reason:%{public}@", &v10, 0x20u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_budgets removeObjectForKey:v6];
    os_unfair_lock_unlock(&self->_lock);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetAllBudgetsForReason:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = bls_budget_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218242;
    v8 = self;
    v9 = 2114;
    v10 = v4;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "%p will reset all budgets for reason:%{public}@", &v7, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_budgets removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)purgeStaleDataForNowDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_budgets copy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BLSHInactiveBudgetPolicy_purgeStaleDataForNowDate___block_invoke;
  v7[3] = &unk_27841F460;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];

  os_unfair_lock_unlock(&self->_lock);
}

void __53__BLSHInactiveBudgetPolicy_purgeStaleDataForNowDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 stillTrackingAfterPurgingStaleDataForNowDate:*(a1 + 32)] & 1) == 0)
  {
    [*(*(a1 + 40) + 8) removeObjectForKey:v5];
  }
}

- (id)budgetForEnvironment:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 budgetProcessIdentity];
    if (v5)
    {
      os_unfair_lock_lock((a1 + 32));
      v6 = [*(a1 + 8) objectForKey:v5];
      if (!v6)
      {
        v6 = (*(*(a1 + 16) + 16))();
        [*(a1 + 8) setObject:v6 forKey:v5];
      }

      os_unfair_lock_unlock((a1 + 32));
    }

    else
    {
      v6 = *(a1 + 24);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)validateAndChargeFutureSpecifier:(id)a3 nextSpecifier:(id)a4 forEnvironment:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = BLSDefaultFidelityForBacklightState(1, v8);
  v12 = [(BLSHInactiveBudgetPolicy *)self budgetForEnvironment:v8];

  v13 = [v12 validateAndChargeFutureSpecifier:v10 nextSpecifier:v9 expectedFidelity:v11];

  return v13;
}

void __52__BLSHInactiveBudgetPolicy_chargeRenderedSpecifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = bls_budget_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v13 = 134218498;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_21FD11000, v7, OS_LOG_TYPE_INFO, "%p charge rendered specifier:%{public}@ environment:%{public}@", &v13, 0x20u);
  }

  v10 = BLSDefaultFidelityForBacklightState(1, v5);
  v11 = [(BLSHInactiveBudgetPolicy *)*(a1 + 32) budgetForEnvironment:v5];
  [v11 chargeRenderedSpecifier:v6 expectedFidelity:v10];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAtRequestDate:(id)a3 forEnvironment:(id)a4 invalidationBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = BLSDefaultFidelityForBacklightState(1, v9);
  v12 = [(BLSHInactiveBudgetPolicy *)self budgetForEnvironment:v9];

  [v12 invalidateAtRequestDate:v10 expectedFidelity:v11 invalidationBlock:v8];
}

@end