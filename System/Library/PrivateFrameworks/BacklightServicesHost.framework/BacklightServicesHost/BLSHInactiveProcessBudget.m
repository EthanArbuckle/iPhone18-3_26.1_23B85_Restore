@interface BLSHInactiveProcessBudget
- (BLSHInactiveProcessBudget)initWithIdentifier:(id)a3 osTimerProvider:(id)a4;
- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)validateAndChargeFutureSpecifier:(id)a3 nextSpecifier:(id)a4 expectedFidelity:(int64_t)a5;
- (int64_t)allowedFidelityAtDate:(id)a3 expectedFidelity:(int64_t)a4;
- (void)chargeRenderedSpecifier:(id)a3 expectedFidelity:(int64_t)a4;
- (void)dealloc;
- (void)invalidateAtRequestDate:(id)a3 expectedFidelity:(int64_t)a4 invalidationBlock:(id)a5;
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
  v12 = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:&stru_283373E60 block:&v7];
  v5 = [v4 build];

  return v5;
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

- (BLSHInactiveProcessBudget)initWithIdentifier:(id)a3 osTimerProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = BLSHInactiveProcessBudget;
  v8 = [(BLSHInactiveProcessBudget *)&v19 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [[BLSHInactiveProcessSecondsBudget alloc] initWithIdentifier:v6 osTimerProvider:v7];
    secondsBudget = v8->_secondsBudget;
    v8->_secondsBudget = v11;

    v13 = [[BLSHInactiveProcessMinutesBudget alloc] initWithIdentifier:v6 osTimerProvider:v7];
    minutesBudget = v8->_minutesBudget;
    v8->_minutesBudget = v13;

    objc_initWeak(&location, v8);
    v16 = v6;
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
  v12 = self;
  v4 = v3;
  [v4 appendBodySectionWithName:0 multilinePrefix:&stru_283373E60 block:&v7];
  v5 = [v4 build];

  return v5;
}

- (int64_t)allowedFidelityAtDate:(id)a3 expectedFidelity:(int64_t)a4
{
  if (a4 == 1)
  {
    return [(BLSHInactiveProcessMinutesBudget *)self->_minutesBudget allowedFidelityAtDate:a3 expectedFidelity:?];
  }

  else
  {
    return a4;
  }
}

- (id)validateAndChargeFutureSpecifier:(id)a3 nextSpecifier:(id)a4 expectedFidelity:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (a5)
  {
    if (a5 == 2)
    {
      secondsBudget = self->_secondsBudget;
      v12 = v8;
      v13 = v9;
      v14 = 2;
    }

    else
    {
      if (a5 == 3)
      {
        v10 = v8;
LABEL_11:
        v16 = v10;
        goto LABEL_12;
      }

      secondsBudget = self->_minutesBudget;
      v12 = v8;
      v13 = v9;
      v14 = a5;
    }

    v10 = [secondsBudget validateAndChargeFutureSpecifier:v12 nextSpecifier:v13 expectedFidelity:v14];
    goto LABEL_11;
  }

  v15 = bls_budget_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BLSHInactiveProcessBudget validateAndChargeFutureSpecifier:v8 nextSpecifier:v15 expectedFidelity:?];
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

- (void)chargeRenderedSpecifier:(id)a3 expectedFidelity:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  if (a4 == 2)
  {
    v8 = 16;
  }

  else
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v8 = 24;
  }

  v9 = v6;
  v6 = [*(&self->super.isa + v8) chargeRenderedSpecifier:v6 expectedFidelity:a4];
  v7 = v9;
LABEL_6:

  MEMORY[0x2821F96F8](v6, v7);
}

- (void)invalidateAtRequestDate:(id)a3 expectedFidelity:(int64_t)a4 invalidationBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 1)
  {
    minutesBudget = self->_minutesBudget;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __88__BLSHInactiveProcessBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_2;
    v14[3] = &unk_27841E998;
    v15 = v9;
    [(BLSHInactiveProcessMinutesBudget *)minutesBudget invalidateAtRequestDate:v8 expectedFidelity:1 invalidationBlock:v14];
    v12 = v15;
  }

  else
  {
    if (a4 != 2)
    {
      v9[2](v9);
      goto LABEL_7;
    }

    secondsBudget = self->_secondsBudget;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __88__BLSHInactiveProcessBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke;
    v16[3] = &unk_27841E998;
    v17 = v9;
    [(BLSHInactiveProcessSecondsBudget *)secondsBudget invalidateAtRequestDate:v8 expectedFidelity:2 invalidationBlock:v16];
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

- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)a3
{
  v4 = a3;
  v5 = [(BLSHInactiveProcessSecondsBudget *)self->_secondsBudget stillTrackingAfterPurgingStaleDataForNowDate:v4]|| [(BLSHInactiveProcessMinutesBudget *)self->_minutesBudget stillTrackingAfterPurgingStaleDataForNowDate:v4];

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