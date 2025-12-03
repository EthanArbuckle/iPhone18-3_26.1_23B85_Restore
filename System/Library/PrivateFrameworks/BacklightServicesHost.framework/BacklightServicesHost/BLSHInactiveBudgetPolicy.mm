@interface BLSHInactiveBudgetPolicy
- (BLSHInactiveBudgetPolicy)initWithBudgetFactory:(id)factory;
- (BLSHInactiveBudgetPolicy)initWithOSTimerProvider:(id)provider;
- (NSString)description;
- (id)budgetForEnvironment:(uint64_t)environment;
- (id)validateAndChargeFutureSpecifier:(id)specifier nextSpecifier:(id)nextSpecifier forEnvironment:(id)environment;
- (int64_t)allowedFidelityAtDate:(id)date forEnvironment:(id)environment expectedFidelity:(int64_t)fidelity;
- (void)chargeRenderedSpecifier:(id)specifier;
- (void)invalidateAtRequestDate:(id)date forEnvironment:(id)environment invalidationBlock:(id)block;
- (void)performInvalidation;
- (void)purgeStaleDataForNowDate:(id)date;
- (void)resetAllBudgetsForReason:(id)reason;
- (void)resetBudgetForProcess:(id)process reason:(id)reason;
- (void)resetFutureSpecifiers;
@end

@implementation BLSHInactiveBudgetPolicy

- (BLSHInactiveBudgetPolicy)initWithOSTimerProvider:(id)provider
{
  providerCopy = provider;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__BLSHInactiveBudgetPolicy_initWithOSTimerProvider___block_invoke;
  v8[3] = &unk_27841F3F0;
  v9 = providerCopy;
  v5 = providerCopy;
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

- (BLSHInactiveBudgetPolicy)initWithBudgetFactory:(id)factory
{
  factoryCopy = factory;
  v13.receiver = self;
  v13.super_class = BLSHInactiveBudgetPolicy;
  v5 = [(BLSHInactiveBudgetPolicy *)&v13 init];
  if (v5)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    budgets = v5->_budgets;
    v5->_budgets = dictionary;

    v8 = MEMORY[0x223D70730](factoryCopy);
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
  build = [v3 build];

  return build;
}

- (int64_t)allowedFidelityAtDate:(id)date forEnvironment:(id)environment expectedFidelity:(int64_t)fidelity
{
  dateCopy = date;
  v9 = [(BLSHInactiveBudgetPolicy *)self budgetForEnvironment:environment];
  v10 = [v9 allowedFidelityAtDate:dateCopy expectedFidelity:fidelity];

  return v10;
}

- (void)resetFutureSpecifiers
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_budgets enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)chargeRenderedSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__BLSHInactiveBudgetPolicy_chargeRenderedSpecifier___block_invoke;
  v6[3] = &unk_27841F438;
  v6[4] = self;
  v7 = specifierCopy;
  v5 = specifierCopy;
  [v5 enumerateDateSpecifiersUsingBlock:v6];
}

- (void)performInvalidation
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableDictionary *)self->_budgets copy];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_8];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)resetBudgetForProcess:(id)process reason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  processCopy = process;
  reasonCopy = reason;
  if (processCopy)
  {
    v8 = bls_budget_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 134218498;
      selfCopy = self;
      v12 = 2114;
      v13 = processCopy;
      v14 = 2114;
      v15 = reasonCopy;
      _os_log_impl(&dword_21FD11000, v8, OS_LOG_TYPE_INFO, "%p will reset budget for process:%{public}@ reason:%{public}@", &v10, 0x20u);
    }

    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_budgets removeObjectForKey:processCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)resetAllBudgetsForReason:(id)reason
{
  v11 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = bls_budget_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = reasonCopy;
    _os_log_impl(&dword_21FD11000, v5, OS_LOG_TYPE_INFO, "%p will reset all budgets for reason:%{public}@", &v7, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_budgets removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)purgeStaleDataForNowDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_budgets copy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__BLSHInactiveBudgetPolicy_purgeStaleDataForNowDate___block_invoke;
  v7[3] = &unk_27841F460;
  v8 = dateCopy;
  selfCopy = self;
  v6 = dateCopy;
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

- (id)budgetForEnvironment:(uint64_t)environment
{
  v3 = a2;
  v4 = v3;
  if (environment)
  {
    budgetProcessIdentity = [v3 budgetProcessIdentity];
    if (budgetProcessIdentity)
    {
      os_unfair_lock_lock((environment + 32));
      v6 = [*(environment + 8) objectForKey:budgetProcessIdentity];
      if (!v6)
      {
        v6 = (*(*(environment + 16) + 16))();
        [*(environment + 8) setObject:v6 forKey:budgetProcessIdentity];
      }

      os_unfair_lock_unlock((environment + 32));
    }

    else
    {
      v6 = *(environment + 24);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)validateAndChargeFutureSpecifier:(id)specifier nextSpecifier:(id)nextSpecifier forEnvironment:(id)environment
{
  environmentCopy = environment;
  nextSpecifierCopy = nextSpecifier;
  specifierCopy = specifier;
  v11 = BLSDefaultFidelityForBacklightState(1, environmentCopy);
  v12 = [(BLSHInactiveBudgetPolicy *)self budgetForEnvironment:environmentCopy];

  v13 = [v12 validateAndChargeFutureSpecifier:specifierCopy nextSpecifier:nextSpecifierCopy expectedFidelity:v11];

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

- (void)invalidateAtRequestDate:(id)date forEnvironment:(id)environment invalidationBlock:(id)block
{
  blockCopy = block;
  environmentCopy = environment;
  dateCopy = date;
  v11 = BLSDefaultFidelityForBacklightState(1, environmentCopy);
  v12 = [(BLSHInactiveBudgetPolicy *)self budgetForEnvironment:environmentCopy];

  [v12 invalidateAtRequestDate:dateCopy expectedFidelity:v11 invalidationBlock:blockCopy];
}

@end