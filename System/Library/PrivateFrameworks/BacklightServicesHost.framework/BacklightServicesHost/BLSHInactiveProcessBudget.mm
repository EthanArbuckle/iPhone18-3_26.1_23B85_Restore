@interface BLSHInactiveProcessBudget
- (BLSHInactiveProcessBudget)initWithIdentifier:(id)identifier osTimerProvider:(id)provider;
- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)date;
- (NSString)debugDescription;
- (NSString)description;
- (id)validateAndChargeFutureSpecifier:(id)specifier nextSpecifier:(id)nextSpecifier expectedFidelity:(int64_t)fidelity;
- (int64_t)allowedFidelityAtDate:(id)date expectedFidelity:(int64_t)fidelity;
- (void)chargeRenderedSpecifier:(id)specifier expectedFidelity:(int64_t)fidelity;
- (void)dealloc;
- (void)invalidateAtRequestDate:(id)date expectedFidelity:(int64_t)fidelity invalidationBlock:(id)block;
- (void)performInvalidation;
- (void)resetFutureSpecifiers;
@end

@implementation BLSHInactiveProcessBudget

- (NSString)debugDescription
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __45__BLSHInactiveProcessBudget_debugDescription__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:&stru_283373E60 block:&v7];
  build = [v4 build];

  return build;
}

void __45__BLSHInactiveProcessBudget_debugDescription__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 24) debugDescription];
  v4 = [v2 appendObject:v3 withName:@"minutesBudget"];

  v5 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 16) debugDescription];
  v6 = [v5 appendObject:v7 withName:@"secondsBudget"];
}

- (BLSHInactiveProcessBudget)initWithIdentifier:(id)identifier osTimerProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = BLSHInactiveProcessBudget;
  v8 = [(BLSHInactiveProcessBudget *)&v19 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [[BLSHInactiveProcessSecondsBudget alloc] initWithIdentifier:identifierCopy osTimerProvider:providerCopy];
    secondsBudget = v8->_secondsBudget;
    v8->_secondsBudget = v11;

    v13 = [[BLSHInactiveProcessMinutesBudget alloc] initWithIdentifier:identifierCopy osTimerProvider:providerCopy];
    minutesBudget = v8->_minutesBudget;
    v8->_minutesBudget = v13;

    objc_initWeak(&location, v8);
    v16 = identifierCopy;
    objc_copyWeak(&v17, &location);
    v8->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v17);

    objc_destroyWeak(&location);
  }

  return v8;
}

uint64_t __64__BLSHInactiveProcessBudget_initWithIdentifier_osTimerProvider___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"BLSHInactiveProcessBudget : %@", *(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained debugDescription];
  v5 = BLSStateDataWithTitleDescriptionAndHints();

  return v5;
}

- (void)dealloc
{
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BLSHInactiveProcessBudget;
  [(BLSHInactiveProcessBudget *)&v3 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __40__BLSHInactiveProcessBudget_description__block_invoke;
  v10 = &unk_27841E538;
  v11 = v3;
  selfCopy = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:&stru_283373E60 block:&v7];
  build = [v4 build];

  return build;
}

- (int64_t)allowedFidelityAtDate:(id)date expectedFidelity:(int64_t)fidelity
{
  if (fidelity == 1)
  {
    return [(BLSHInactiveProcessMinutesBudget *)self->_minutesBudget allowedFidelityAtDate:date expectedFidelity:?];
  }

  else
  {
    return fidelity;
  }
}

- (id)validateAndChargeFutureSpecifier:(id)specifier nextSpecifier:(id)nextSpecifier expectedFidelity:(int64_t)fidelity
{
  specifierCopy = specifier;
  nextSpecifierCopy = nextSpecifier;
  if (fidelity)
  {
    if (fidelity == 2)
    {
      secondsBudget = self->_secondsBudget;
      v12 = specifierCopy;
      v13 = nextSpecifierCopy;
      fidelityCopy = 2;
    }

    else
    {
      if (fidelity == 3)
      {
        v10 = specifierCopy;
LABEL_11:
        v16 = v10;
        goto LABEL_12;
      }

      secondsBudget = self->_minutesBudget;
      v12 = specifierCopy;
      v13 = nextSpecifierCopy;
      fidelityCopy = fidelity;
    }

    v10 = [secondsBudget validateAndChargeFutureSpecifier:v12 nextSpecifier:v13 expectedFidelity:fidelityCopy];
    goto LABEL_11;
  }

  v15 = bls_budget_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BLSHInactiveProcessBudget validateAndChargeFutureSpecifier:specifierCopy nextSpecifier:v15 expectedFidelity:?];
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (void)resetFutureSpecifiers
{
  [(BLSHInactiveProcessSecondsBudget *)self->_secondsBudget resetFutureSpecifiers];
  minutesBudget = self->_minutesBudget;

  [(BLSHInactiveProcessMinutesBudget *)minutesBudget resetFutureSpecifiers];
}

- (void)chargeRenderedSpecifier:(id)specifier expectedFidelity:(int64_t)fidelity
{
  specifierCopy = specifier;
  v7 = specifierCopy;
  if (fidelity == 2)
  {
    v8 = 16;
  }

  else
  {
    if (fidelity != 1)
    {
      goto LABEL_6;
    }

    v8 = 24;
  }

  v9 = specifierCopy;
  specifierCopy = [*(&self->super.isa + v8) chargeRenderedSpecifier:specifierCopy expectedFidelity:fidelity];
  v7 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](specifierCopy, v7);
}

- (void)invalidateAtRequestDate:(id)date expectedFidelity:(int64_t)fidelity invalidationBlock:(id)block
{
  dateCopy = date;
  blockCopy = block;
  v10 = blockCopy;
  if (fidelity == 1)
  {
    minutesBudget = self->_minutesBudget;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__BLSHInactiveProcessBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_2;
    v14[3] = &unk_27841E998;
    v15 = blockCopy;
    [(BLSHInactiveProcessMinutesBudget *)minutesBudget invalidateAtRequestDate:dateCopy expectedFidelity:1 invalidationBlock:v14];
    v12 = v15;
  }

  else
  {
    if (fidelity != 2)
    {
      blockCopy[2](blockCopy);
      goto LABEL_7;
    }

    secondsBudget = self->_secondsBudget;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__BLSHInactiveProcessBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke;
    v16[3] = &unk_27841E998;
    v17 = blockCopy;
    [(BLSHInactiveProcessSecondsBudget *)secondsBudget invalidateAtRequestDate:dateCopy expectedFidelity:2 invalidationBlock:v16];
    v12 = v17;
  }

LABEL_7:
}

- (void)performInvalidation
{
  [(BLSHInactiveProcessMinutesBudget *)self->_minutesBudget performInvalidation];
  secondsBudget = self->_secondsBudget;

  [(BLSHInactiveProcessSecondsBudget *)secondsBudget performInvalidation];
}

- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)date
{
  dateCopy = date;
  v5 = [(BLSHInactiveProcessSecondsBudget *)self->_secondsBudget stillTrackingAfterPurgingStaleDataForNowDate:dateCopy]|| [(BLSHInactiveProcessMinutesBudget *)self->_minutesBudget stillTrackingAfterPurgingStaleDataForNowDate:dateCopy];

  return v5;
}

- (void)validateAndChargeFutureSpecifier:(uint64_t)a1 nextSpecifier:(uint64_t)a2 expectedFidelity:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v5 = 134218498;
  v6 = a1;
  v7 = 2114;
  v8 = v3;
  v9 = 2114;
  v10 = a2;
  _os_log_debug_impl(&dword_21FD11000, log, OS_LOG_TYPE_DEBUG, "%p:%{public}@ expectedFidelity:BLSUpdateFidelityNever specifier:%{public}@ denied", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

@end