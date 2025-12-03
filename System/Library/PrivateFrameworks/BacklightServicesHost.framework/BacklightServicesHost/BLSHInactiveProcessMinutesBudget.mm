@interface BLSHInactiveProcessMinutesBudget
- (BLSHInactiveProcessMinutesBudget)initWithIdentifier:(id)identifier osTimerProvider:(id)provider;
- (BOOL)chargeSpecifier:(void *)specifier withChargeBlock:(void *)block fitInBucketBlock:(void *)bucketBlock exceededBudgetBlock:(void *)budgetBlock missedBucketBlock:;
- (BOOL)hasSecondsBudgetAtDate:(id)date;
- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)date;
- (NSArray)buckets;
- (NSString)debugDescription;
- (NSString)description;
- (double)delayTimeToAddInvalidation:(char)invalidation hasSecondsBudget:;
- (double)intervalSinceLastInvalidation;
- (id)validateAndChargeFutureSpecifier:(id)specifier nextSpecifier:(id)nextSpecifier expectedFidelity:(int64_t)fidelity;
- (int64_t)allowedFidelityAtDate:(id)date expectedFidelity:(int64_t)fidelity;
- (uint64_t)lock_hasSecondsBudgetAtDate:(uint64_t)date;
- (unint64_t)bucketCount;
- (unint64_t)secondsBucketCount;
- (void)chargeRenderedSpecifier:(id)specifier expectedFidelity:(int64_t)fidelity;
- (void)dealloc;
- (void)invalidateAtRequestDate:(id)date expectedFidelity:(int64_t)fidelity invalidationBlock:(id)block;
- (void)performInvalidation;
- (void)resetFutureSpecifiers;
@end

@implementation BLSHInactiveProcessMinutesBudget

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  [v3 appendArraySection:self->_lock_buckets withName:@"buckets" multilinePrefix:@"    " skipIfEmpty:1 objectTransformer:&__block_literal_global_28];
  if ([(BSTimerScheduleQuerying *)self->_lock_invalidationTimer isScheduled])
  {
    [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer timeRemaining];
    v5 = [v3 appendTimeInterval:@"pendingInvalidation" withName:1 decomposeUnits:?];
  }

  if (self->_lock_lastInvalidationTimestamp)
  {
    v6 = BLSLoggingStringForMachTime();
    [v3 appendString:v6 withName:@"lastInvalidation" skipIfEmpty:0];
  }

  build = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return build;
}

- (BLSHInactiveProcessMinutesBudget)initWithIdentifier:(id)identifier osTimerProvider:(id)provider
{
  identifierCopy = identifier;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = BLSHInactiveProcessMinutesBudget;
  v8 = [(BLSHInactiveProcessMinutesBudget *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_osTimerProvider, provider);
    v9->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    lock_buckets = v9->_lock_buckets;
    v9->_lock_buckets = array;

    v12 = [identifierCopy copy];
    identifier = v9->_identifier;
    v9->_identifier = v12;
  }

  return v9;
}

- (void)dealloc
{
  [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer invalidate];
  v3.receiver = self;
  v3.super_class = BLSHInactiveProcessMinutesBudget;
  [(BLSHInactiveProcessMinutesBudget *)&v3 dealloc];
}

- (NSString)description
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  [v3 appendArraySection:self->_lock_buckets withName:@"buckets" multilinePrefix:@"    " skipIfEmpty:1];
  if ([(BSTimerScheduleQuerying *)self->_lock_invalidationTimer isScheduled])
  {
    [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer timeRemaining];
    v5 = [v3 appendTimeInterval:@"pendingInvalidation" withName:1 decomposeUnits:?];
  }

  build = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return build;
}

- (int64_t)allowedFidelityAtDate:(id)date expectedFidelity:(int64_t)fidelity
{
  dateCopy = date;
  if (fidelity != 1)
  {
    [BLSHInactiveProcessMinutesBudget allowedFidelityAtDate:a2 expectedFidelity:?];
  }

  v8 = dateCopy;
  if ([(BLSHInactiveProcessMinutesBudget *)self hasSecondsBudgetAtDate:dateCopy])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)chargeSpecifier:(void *)specifier withChargeBlock:(void *)block fitInBucketBlock:(void *)bucketBlock exceededBudgetBlock:(void *)budgetBlock missedBucketBlock:
{
  v88 = *MEMORY[0x277D85DE8];
  v11 = a2;
  specifierCopy = specifier;
  blockCopy = block;
  bucketBlockCopy = bucketBlock;
  v40 = v11;
  budgetBlockCopy = budgetBlock;
  if (self)
  {
    os_unfair_lock_lock((self + 48));
    v71 = 0;
    v72 = &v71;
    v73 = 0x2020000000;
    v74 = 0;
    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy__12;
    v69 = __Block_byref_object_dispose__12;
    v70 = 0;
    v61 = 0;
    v62 = &v61;
    v63 = 0x2020000000;
    v64 = 0x7FF8000000000000;
    v57 = 0;
    v58 = &v57;
    v59 = 0x2020000000;
    v60 = 0;
    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0;
    v15 = *(self + 24);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __123__BLSHInactiveProcessMinutesBudget_chargeSpecifier_withChargeBlock_fitInBucketBlock_exceededBudgetBlock_missedBucketBlock___block_invoke;
    v46[3] = &unk_2784208E0;
    v48 = &v61;
    v47 = specifierCopy;
    v49 = &v57;
    v50 = &v53;
    v51 = &v65;
    v52 = &v71;
    [v15 enumerateObjectsWithOptions:2 usingBlock:v46];
    if (*(v58 + 24) == 1)
    {
      bucketBlockCopy[2](bucketBlockCopy, v66[5]);
      v16 = blockCopy;
      v39 = 0;
    }

    else
    {
      v17 = v66[5];
      if (*(v54 + 24) == 1)
      {
        (*(blockCopy + 2))(blockCopy, v17);
        v16 = blockCopy;
        v39 = 1;
      }

      else
      {
        v16 = blockCopy;
        v18 = budgetBlockCopy[2](budgetBlockCopy, v17, v62[3]);
        v39 = v18 != 0;
        if (v18)
        {
          [*(self + 24) insertObject:v18 atIndex:v72[3]];
          if (os_variant_has_internal_diagnostics())
          {
            v19 = bls_budget_log();
            v38 = v18;
            v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG);

            if (v20)
            {
              v44 = 0u;
              v45 = 0u;
              v42 = 0u;
              v43 = 0u;
              v21 = *(self + 24);
              v22 = 0;
              v23 = [v21 countByEnumeratingWithState:&v42 objects:v87 count:16];
              if (v23)
              {
                v24 = *v43;
                do
                {
                  v25 = 0;
                  v26 = v22;
                  do
                  {
                    if (*v43 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v27 = *(*(&v42 + 1) + 8 * v25);
                    if (v26 && [v26 compare:*(*(&v42 + 1) + 8 * v25)] != -1)
                    {
                      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"(internal only) unsorted buckets %@", *(self + 24)];
                      v31 = MEMORY[0x277D86220];
                      v32 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                      {
                        v33 = NSStringFromSelector(sel_chargeSpecifier_withChargeBlock_fitInBucketBlock_exceededBudgetBlock_missedBucketBlock_);
                        v34 = objc_opt_class();
                        v35 = NSStringFromClass(v34);
                        *buf = 138544642;
                        v76 = v33;
                        v77 = 2114;
                        v78 = v35;
                        v79 = 2048;
                        selfCopy = self;
                        v81 = 2114;
                        v82 = @"BLSHInactiveProcessMinutesBudget.m";
                        v83 = 1024;
                        v84 = 141;
                        v85 = 2114;
                        v86 = v30;
                        _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
                      }

                      v36 = v30;
                      [v30 UTF8String];
                      v37 = _bs_set_crash_log_message();
                      [BLSHFlipbook cancelAllFramesWithError:v37];
                    }

                    v22 = v27;

                    ++v25;
                    v26 = v22;
                  }

                  while (v23 != v25);
                  v23 = [v21 countByEnumeratingWithState:&v42 objects:v87 count:16];
                }

                while (v23);
              }

              v18 = v38;
            }
          }
        }
      }
    }

    os_unfair_lock_unlock((self + 48));

    _Block_object_dispose(&v53, 8);
    _Block_object_dispose(&v57, 8);
    _Block_object_dispose(&v61, 8);
    _Block_object_dispose(&v65, 8);

    _Block_object_dispose(&v71, 8);
  }

  else
  {
    v16 = blockCopy;
    v39 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v39;
}

void __123__BLSHInactiveProcessMinutesBudget_chargeSpecifier_withChargeBlock_fitInBucketBlock_exceededBudgetBlock_missedBucketBlock___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  *(*(a1[5] + 8) + 24) = (*(a1[4] + 16))(a1[4], v7, a3 == 0);
  v8 = *(*(a1[5] + 8) + 24);
  *(*(a1[6] + 8) + 24) = 0;
  *(*(a1[7] + 8) + 24) = *(*(a1[5] + 8) + 24) == 0.0;
  v9 = *(*(a1[5] + 8) + 24);
  if (v9 > 0.0 && *(*(a1[8] + 8) + 40) && (*(a1[4] + 16))() == 0.0)
  {
    *(*(a1[7] + 8) + 24) = 1;
  }

  if (*(*(a1[6] + 8) + 24))
  {
    v10 = 1;
  }

  else
  {
    v10 = (v9 > 0.0) | *(*(a1[7] + 8) + 24);
  }

  *a4 = v10 & 1;
  if (v9 <= 0.0)
  {
    if (a3)
    {
      goto LABEL_13;
    }

    v11 = 0;
  }

  else
  {
    v11 = a3 + 1;
  }

  *(*(a1[9] + 8) + 24) = v11;
LABEL_13:
  v12 = *(a1[8] + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v7;
}

- (id)validateAndChargeFutureSpecifier:(id)specifier nextSpecifier:(id)nextSpecifier expectedFidelity:(int64_t)fidelity
{
  specifierCopy = specifier;
  nextSpecifierCopy = nextSpecifier;
  if (fidelity != 1)
  {
    [BLSHInactiveProcessMinutesBudget validateAndChargeFutureSpecifier:a2 nextSpecifier:? expectedFidelity:?];
  }

  v11 = nextSpecifierCopy;
  fidelity = [specifierCopy fidelity];
  if ((fidelity - 4) <= 0xFFFFFFFFFFFFFFFALL)
  {
    [BLSHInactiveProcessMinutesBudget validateAndChargeFutureSpecifier:fidelity nextSpecifier:a2 expectedFidelity:?];
  }

  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__12;
  v54 = __Block_byref_object_dispose__12;
  v13 = specifierCopy;
  v55 = v13;
  [MEMORY[0x277CF0920] secondsFidelityThreshold];
  v15 = v14;
  os_unfair_lock_lock(&self->_lock);
  date = [v13 date];
  v17 = [(BLSHInactiveProcessMinutesBudget *)self lock_hasSecondsBudgetAtDate:date];
  date2 = [v11 date];
  [date2 timeIntervalSinceDate:date];
  v20 = v19;

  if (v20 > v15 + v15)
  {
    v21 = 1;
  }

  else
  {
    v21 = v17;
  }

  v22 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke;
  v47[3] = &unk_278420908;
  v48 = v13;
  v49 = v21;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_2;
  v44[3] = &unk_278420930;
  v44[4] = self;
  v45 = v22;
  v46 = v48;
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_39;
  v39[3] = &unk_278420958;
  v39[4] = self;
  v40 = v45;
  v41 = v46;
  v43 = v20;
  v42 = v11;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43;
  v29[3] = &unk_278420980;
  v35 = v15;
  v36 = v20;
  v38 = v17;
  v34 = &v50;
  v23 = v41;
  v30 = v23;
  selfCopy = self;
  v24 = v40;
  v32 = v24;
  v25 = v42;
  v33 = v25;
  v37 = a2;
  if (![(BLSHInactiveProcessMinutesBudget *)self chargeSpecifier:v23 withChargeBlock:v47 fitInBucketBlock:v44 exceededBudgetBlock:v39 missedBucketBlock:v29])
  {
    v26 = v51[5];
    v51[5] = 0;
  }

  v27 = v51[5];

  _Block_object_dispose(&v50, 8);

  return v27;
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = bls_budget_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_2_cold_1(a1);
  }
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_39(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = bls_budget_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = a1[4];
    v6 = a1[5];
    v8 = a1[7];
    v7 = a1[8];
    v9 = a1[6];
    v10 = [*(v5 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_42];
    v12 = 134219522;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    v16 = 2114;
    v17 = v9;
    v18 = 2048;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v3;
    v24 = 2114;
    v25 = v10;
    _os_log_impl(&dword_21FD11000, v4, OS_LOG_TYPE_INFO, "%p:%{public}@ budget full will skip specifier:%{public}@ %.3lfs after nextSpecifier:%{public}@ bucket:%{public}@ existing:%{public}@", &v12, 0x48u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

BLSHInactiveBudgetBucket *__100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43(uint64_t a1, void *a2, double a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = -v6;
  if ((*(a1 + 96) & 1) == 0)
  {
    v9 = v8 > a3 || v6 < a3;
    if (!v9 && v7 <= v6)
    {
      v11 = bls_budget_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
        v14 = *(a1 + 80);
        v16 = *(a1 + 48);
        v15 = *(a1 + 56);
        v17 = [*(v12 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_62];
        *buf = 134219522;
        v41 = v12;
        v42 = 2114;
        v43 = v16;
        v44 = 2114;
        v45 = v13;
        v46 = 2048;
        v47 = a3;
        v48 = 2048;
        v49 = v14;
        v50 = 2114;
        v51 = v15;
        v52 = 2114;
        v53 = v17;
        _os_log_impl(&dword_21FD11000, v11, OS_LOG_TYPE_INFO, "%p:%{public}@ will skip - out of budget specifier:%{public}@ %.3lfs after oldBucket %.3lfs before nextSpecifier:%{public}@ existing:%{public}@", buf, 0x48u);
      }

      v18 = 0;
      goto LABEL_26;
    }
  }

  if ((*(a1 + 96) & 1) == 0)
  {
    v19 = [*(a1 + 32) newSpecifierWithMaxFidelity:1];
    v20 = *(*(a1 + 64) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v18 = [[BLSHInactiveBudgetBucket alloc] initWithFutureSpecifier:*(*(*(a1 + 64) + 8) + 40)];
  if (*(a1 + 96) == 1)
  {
    v11 = bls_budget_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43_cold_2(a1, v18, v11);
    }

    goto LABEL_26;
  }

  if (v6 < a3)
  {
    v11 = bls_budget_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      v24 = *(*(*(a1 + 64) + 8) + 40);
      v25 = [*(v22 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_50];
      *buf = 134219266;
      v41 = v22;
      v42 = 2114;
      v43 = v23;
      v44 = 2114;
      v45 = v24;
      v46 = 2048;
      v47 = a3;
      v48 = 2114;
      v49 = v18;
      v50 = 2114;
      v51 = v25;
      v26 = "%p:%{public}@ specifier:%{public}@ %.3lfs after oldBucket newBucket:%{public}@ existing:%{public}@";
LABEL_30:
      v32 = v11;
      v33 = 62;
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  if (v7 > v6)
  {
    v11 = bls_budget_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 48);
      v29 = *(a1 + 56);
      v30 = *(*(*(a1 + 64) + 8) + 40);
      v31 = *(a1 + 80);
      v25 = [*(v27 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_53];
      *buf = 134219522;
      v41 = v27;
      v42 = 2114;
      v43 = v28;
      v44 = 2114;
      v45 = v30;
      v46 = 2048;
      v47 = v31;
      v48 = 2114;
      v49 = v29;
      v50 = 2114;
      v51 = v18;
      v52 = 2114;
      v53 = v25;
      v26 = "%p:%{public}@ specifier:%{public}@ %.3lfs before nextSpecifier:%{public}@ newBucket:%{public}@ existing:%{public}@";
      v32 = v11;
      v33 = 72;
LABEL_31:
      _os_log_debug_impl(&dword_21FD11000, v32, OS_LOG_TYPE_DEBUG, v26, buf, v33);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  if (v8 > a3)
  {
    v11 = bls_budget_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v36 = *(a1 + 40);
      v37 = *(a1 + 48);
      v38 = *(*(*(a1 + 64) + 8) + 40);
      v25 = [*(v36 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_56];
      *buf = 134219266;
      v41 = v36;
      v42 = 2114;
      v43 = v37;
      v44 = 2114;
      v45 = v38;
      v46 = 2048;
      v47 = a3;
      v48 = 2114;
      v49 = v18;
      v50 = 2114;
      v51 = v25;
      v26 = "%p:%{public}@ specifier:%{public}@ %.3lfs before oldBucket newBucket:%{public}@ existing:%{public}@";
      goto LABEL_30;
    }

LABEL_26:

    v34 = *MEMORY[0x277D85DE8];

    return v18;
  }

  v39 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"false"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43_cold_1(a1, v39);
  }

  [v39 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)resetFutureSpecifiers
{
  os_unfair_lock_lock(&self->_lock);
  lock_buckets = self->_lock_buckets;
  v4 = [(NSMutableArray *)lock_buckets indexesOfObjectsPassingTest:&__block_literal_global_66];
  [(NSMutableArray *)lock_buckets removeObjectsAtIndexes:v4];

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __57__BLSHInactiveProcessMinutesBudget_resetFutureSpecifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 resetFutureSpecifiers];
  if ([v2 hasBeenRendered])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 containsInvalidation] ^ 1;
  }

  return v3;
}

- (void)chargeRenderedSpecifier:(id)specifier expectedFidelity:(int64_t)fidelity
{
  specifierCopy = specifier;
  v8 = self->_identifier;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke;
  v24[3] = &unk_2784209C8;
  v25 = specifierCopy;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_2;
  v21[3] = &unk_278420930;
  v21[4] = self;
  v22 = v8;
  v23 = v25;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_67;
  v16[3] = &unk_2784209F0;
  fidelityCopy = fidelity;
  v20 = a2;
  v17 = v23;
  selfCopy = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_71;
  v11[3] = &unk_278420A18;
  v12 = v17;
  selfCopy2 = self;
  v14 = v22;
  v15 = a2;
  v9 = v22;
  v10 = v17;
  [(BLSHInactiveProcessMinutesBudget *)self chargeSpecifier:v10 withChargeBlock:v24 fitInBucketBlock:v21 exceededBudgetBlock:v16 missedBucketBlock:v11];
}

void __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = bls_budget_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_2_cold_1(a1);
  }
}

void __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_67(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = NSStringFromBLSUpdateFidelity();
  v8 = [v4 stringWithFormat:@"applyRenderedSpecifier: should never exceed budget:%@ specifier:%@ expectedFidelity:%@", v3, v5, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(*(a1 + 56));
    v10 = *(a1 + 40);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = *(a1 + 40);
    *buf = 138544642;
    v15 = v9;
    v16 = 2114;
    v17 = v12;
    v18 = 2048;
    v19 = v13;
    v20 = 2114;
    v21 = @"BLSHInactiveProcessMinutesBudget.m";
    v22 = 1024;
    v23 = 251;
    v24 = 2114;
    v25 = v8;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

BLSHInactiveBudgetBucket *__77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_71(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[BLSHInactiveBudgetBucket alloc] initWithFutureSpecifier:*(a1 + 32)];
  [(BLSHInactiveBudgetBucket *)v4 applyRenderedSpecifier:*(a1 + 32) allowBeforeStart:0];
  if (v5 != 0.0)
  {
    v13 = v5;
    v14 = MEMORY[0x277CCACA8];
    v15 = *(a1 + 32);
    v16 = [(BLSHInactiveBudgetBucket *)v4 startDate];
    v17 = [v16 bls_shortLoggingString];
    v18 = [*(a1 + 32) date];
    [v18 timeIntervalSinceReferenceDate];
    v20 = v19;
    v21 = [(BLSHInactiveBudgetBucket *)v4 startDate];
    [v21 timeIntervalSinceReferenceDate];
    v23 = [v14 stringWithFormat:@"newly allocated bucket failed to apply rendered specifier bucket:%@ specifier:%@ interval:%lf startDate:%@ (specifier:%a startDate:%a)", v4, v15, *&v13, v17, v20, v22];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_71_cold_1(a1, v23);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x21FD6FB74);
  }

  v6 = bls_budget_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = [*(v10 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_77];
    *buf = 134219010;
    v25 = v10;
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = v4;
    v32 = 2114;
    v33 = v12;
    _os_log_debug_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEBUG, "%p:%{public}@ rendered specifier:%{public}@ not found, applied to new bucket:%{public}@ existing:%{public}@", buf, 0x34u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

void __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = bls_budget_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_2_cold_1(a1);
  }
}

void __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_78(void *a1)
{
  v2 = bls_budget_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_78_cold_1(a1, v2);
  }
}

BLSHInactiveBudgetBucket *__80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_82(void *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [[BLSHInactiveBudgetBucket alloc] initWithInvalidation:a1[4]];
  v5 = bls_budget_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = a1[5];
    v8 = a1[6];
    v10 = a1[4];
    v11 = [*(v9 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_85];
    v12 = 134219010;
    v13 = v9;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v10;
    v18 = 2114;
    v19 = v3;
    v20 = 2114;
    v21 = v11;
    _os_log_debug_impl(&dword_21FD11000, v5, OS_LOG_TYPE_DEBUG, "%p:%{public}@ invalidation:%{public}@ applied to new bucket:%{public}@ existing:%{public}@", &v12, 0x34u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke(uint64_t a1)
{
  if ((*(a1 + 64) & 1) == 0)
  {
    __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_cold_1(a1);
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_91(uint64_t a1, void *a2)
{
  [a2 invalidate];
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)performInvalidation
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_lastInvalidationTimestamp = mach_continuous_time();
  [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer invalidate];
  lock_invalidationTimer = self->_lock_invalidationTimer;
  self->_lock_invalidationTimer = 0;

  lock_buckets = self->_lock_buckets;
  v5 = [(NSMutableArray *)lock_buckets indexesOfObjectsPassingTest:&__block_literal_global_94];
  [(NSMutableArray *)lock_buckets removeObjectsAtIndexes:v5];

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __55__BLSHInactiveProcessMinutesBudget_performInvalidation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 resetFutureAndRenderedSpecifiers];
  v3 = [v2 containsInvalidation];

  return v3 ^ 1u;
}

- (BOOL)stillTrackingAfterPurgingStaleDataForNowDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  lock_buckets = self->_lock_buckets;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__BLSHInactiveProcessMinutesBudget_stillTrackingAfterPurgingStaleDataForNowDate___block_invoke;
  v9[3] = &unk_278420A90;
  v10 = dateCopy;
  v6 = dateCopy;
  v7 = [(NSMutableArray *)lock_buckets indexesOfObjectsPassingTest:v9];
  [(NSMutableArray *)lock_buckets removeObjectsAtIndexes:v7];

  LOBYTE(lock_buckets) = [(NSMutableArray *)self->_lock_buckets count]!= 0;
  os_unfair_lock_unlock(&self->_lock);

  return lock_buckets;
}

- (unint64_t)bucketCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_buckets count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (unint64_t)secondsBucketCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_buckets bs_filter:&__block_literal_global_97];
  v4 = [v3 count];

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (NSArray)buckets
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_lock_buckets copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (uint64_t)lock_hasSecondsBudgetAtDate:(uint64_t)date
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (date)
  {
    [MEMORY[0x277CF0920] secondsFidelityThreshold];
    v5 = llround(150.0 / v4);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = *(date + 24);
    v7 = [v6 countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          if ([v11 validAtDate:{v3, v26}])
          {
            if ([v11 isSecondsFidelity])
            {
              v12 = __OFSUB__(v5--, 1);
              if ((v5 < 0) ^ v12 | (v5 == 0))
              {
                v13 = bls_budget_log();
                if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
                {
                  v16 = *(date + 8);
                  bls_shortLoggingString = [v3 bls_shortLoggingString];
                  bls_boundedDescription = [*(date + 24) bls_boundedDescription];
                  OUTLINED_FUNCTION_5_8();
                  v31 = v19;
                  *v32 = bls_shortLoggingString;
                  *&v32[8] = 2112;
                  *&v32[10] = v20;
                  _os_log_debug_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEBUG, "%p:%{public}@ budget full at date:%{public}@ buckets:%@", buf, 0x2Au);
                }

                date = 0;
                goto LABEL_18;
              }
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v26 objects:v33 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v6 = bls_budget_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(date + 8);
      bls_shortLoggingString2 = [v3 bls_shortLoggingString];
      v23 = [*(date + 24) bls_boundedDescriptionWithMax:16 transformer:&__block_literal_global_99];
      OUTLINED_FUNCTION_5_8();
      v31 = 1024;
      *v32 = v5;
      *&v32[4] = v24;
      *&v32[6] = bls_shortLoggingString2;
      *&v32[14] = 2112;
      *&v32[16] = v25;
      _os_log_debug_impl(&dword_21FD11000, v6, OS_LOG_TYPE_DEBUG, "%p:%{public}@ budget available (%d) at date:%{public}@ buckets:%@", buf, 0x30u);
    }

    date = 1;
LABEL_18:
  }

  v14 = *MEMORY[0x277D85DE8];
  return date;
}

- (double)delayTimeToAddInvalidation:(char)invalidation hasSecondsBudget:
{
  v5 = a2;
  if (self)
  {
    v6 = *(self + 8);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke;
    v21[3] = &unk_278420908;
    v22 = v5;
    invalidationCopy = invalidation;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_2;
    v18[3] = &unk_278420930;
    v18[4] = self;
    v19 = v6;
    v20 = v22;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_78;
    v15[3] = &unk_278420930;
    v15[4] = self;
    v16 = v19;
    v17 = v20;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_82;
    v11[3] = &unk_278420A40;
    v12 = v17;
    selfCopy = self;
    v7 = v16;
    v14 = v7;
    if ([(BLSHInactiveProcessMinutesBudget *)self chargeSpecifier:v12 withChargeBlock:v21 fitInBucketBlock:v18 exceededBudgetBlock:v15 missedBucketBlock:v11])
    {
      if ([(BLSHInactiveProcessMinutesBudget *)self intervalSinceLastInvalidation]>= 0.9)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }
    }

    else
    {
      [MEMORY[0x277CF0920] secondsFidelityThreshold];
      v9 = v8;
    }
  }

  else
  {
    v9 = 0.0;
  }

  return v9;
}

- (double)intervalSinceLastInvalidation
{
  if (!self)
  {
    return 0.0;
  }

  os_unfair_lock_lock((self + 48));
  v2 = *(self + 40);
  mach_continuous_time();
  BSTimeDifferenceFromMachTimeToMachTime();
  v4 = v3;
  os_unfair_lock_unlock((self + 48));
  return v4;
}

- (void)invalidateAtRequestDate:(id)date expectedFidelity:(int64_t)fidelity invalidationBlock:(id)block
{
  v60 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  blockCopy = block;
  v10 = [objc_alloc(MEMORY[0x277CF0848]) initWithDate:dateCopy fidelity:fidelity];
  v11 = [(BLSHInactiveProcessMinutesBudget *)self delayTimeToAddInvalidation:v10 hasSecondsBudget:[(BLSHInactiveProcessMinutesBudget *)self hasSecondsBudgetAtDate:dateCopy]];
  v12 = self->_osTimerProvider;
  v44 = MEMORY[0x277D85DD0];
  v45 = 3221225472;
  v46 = __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke;
  v47 = &unk_278420A68;
  LOBYTE(v52) = v11 == 0.0;
  selfCopy = self;
  v13 = v12;
  v49 = v13;
  fidelityCopy = fidelity;
  v14 = blockCopy;
  v50 = v14;
  v15 = MEMORY[0x223D70730](&v44);
  os_unfair_lock_lock(&self->_lock);
  if (v11 == 0.0)
  {
    os_unfair_lock_unlock(&self->_lock);
    v15[2](v15);
  }

  else
  {
    isScheduled = [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer isScheduled];
    v17 = bls_budget_log();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (isScheduled)
    {
      if (v18)
      {
        identifier = self->_identifier;
        bls_loggingString = [dateCopy bls_loggingString];
        [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer timeRemaining];
        HIDWORD(v53) = HIDWORD(self);
        v54 = 2114;
        v55 = identifier;
        v56 = 2114;
        v57 = bls_loggingString;
        v58 = 2048;
        v59 = v27;
        OUTLINED_FUNCTION_8_4(&dword_21FD11000, v28, v29, "%p:%{public}@ will ignore budgeted invalidation at requesteDate:%{public}@ already have scheduled invalidation in %.3lfs", v30, v31, v32, v33, v39, v40, v41, v42, v43, v44, v45, v46, v47, selfCopy, v49, v50, fidelityCopy, v52, 2u);
      }
    }

    else
    {
      if (v18)
      {
        v34 = self->_identifier;
        HIDWORD(v53) = HIDWORD(self);
        v54 = 2114;
        v55 = v34;
        v56 = 2114;
        v57 = v10;
        v58 = 2048;
        v59 = v11;
        OUTLINED_FUNCTION_8_4(&dword_21FD11000, v19, v20, "%p:%{public}@ will schedule budgeted invalidation specifier:%{public}@ in %.0lfs", v21, v22, v23, v24, v39, v40, v41, v42, v43, v44, v45, v46, v47, selfCopy, v49, v50, fidelityCopy, v52, 2u);
      }

      [(BSTimerScheduleQuerying *)self->_lock_invalidationTimer invalidate];
      osTimerProvider = self->_osTimerProvider;
      v39 = MEMORY[0x277D85DD0];
      v40 = 3221225472;
      v41 = __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_91;
      v42 = &unk_27841F3C8;
      v43 = v15;
      v36 = [(BLSHOSTimerProviding *)osTimerProvider scheduledTimerWithIdentifier:@"MinutesInvalidationBudgetExceeded" interval:&v39 leewayInterval:v11 handler:v11 * 0.25];
      lock_invalidationTimer = self->_lock_invalidationTimer;
      self->_lock_invalidationTimer = v36;

      v17 = v43;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSecondsBudgetAtDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BLSHInactiveProcessMinutesBudget *)self lock_hasSecondsBudgetAtDate:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)allowedFidelityAtDate:(const char *)a1 expectedFidelity:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"expectedFidelity == BLSUpdateFidelityMinutes", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)validateAndChargeFutureSpecifier:(const char *)a1 nextSpecifier:expectedFidelity:.cold.1(const char *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"expectedFidelity == BLSUpdateFidelityMinutes", v12, v13);
  }

  v11 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)validateAndChargeFutureSpecifier:(uint64_t)a1 nextSpecifier:(const char *)a2 expectedFidelity:.cold.2(uint64_t a1, const char *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"fidelity out of range:%ld"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, v14, v15);
  }

  v12 = v3;
  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_2_cold_1(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_3_10(&dword_21FD11000, v1, v2, "%p:%{public}@ specifier:%{public}@ fits in bucket:%{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43_cold_1(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(*(a1 + 88));
  v5 = *(a1 + 40);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_1_17();
  v12 = @"BLSHInactiveProcessMinutesBudget.m";
  v13 = 1024;
  v14 = 215;
  v15 = v9;
  v16 = a2;
  _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, 0x3Au);

  v10 = *MEMORY[0x277D85DE8];
}

void __100__BLSHInactiveProcessMinutesBudget_validateAndChargeFutureSpecifier_nextSpecifier_expectedFidelity___block_invoke_43_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a1[4];
  v8 = [*(v6 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_47];
  v12 = 134219010;
  v13 = v6;
  OUTLINED_FUNCTION_7_5();
  v14 = v7;
  v15 = v9;
  v16 = a2;
  v17 = v9;
  v18 = v10;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p:%{public}@ have budget for specifier:%{public}@ created new newBucket:%{public}@ existing:%{public}@", &v12, 0x34u);

  v11 = *MEMORY[0x277D85DE8];
}

void __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_2_cold_1(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_3_10(&dword_21FD11000, v1, v2, "%p:%{public}@ rendered specifier:%{public}@ applied to bucket:%{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __77__BLSHInactiveProcessMinutesBudget_chargeRenderedSpecifier_expectedFidelity___block_invoke_71_cold_1(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromSelector(*(a1 + 56));
  v5 = *(a1 + 40);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *(a1 + 40);
  OUTLINED_FUNCTION_1_17();
  v12 = @"BLSHInactiveProcessMinutesBudget.m";
  v13 = 1024;
  v14 = 255;
  v15 = v9;
  v16 = a2;
  _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v11, 0x3Au);

  v10 = *MEMORY[0x277D85DE8];
}

void __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_2_cold_1(void *a1)
{
  OUTLINED_FUNCTION_4_9(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_3_10(&dword_21FD11000, v1, v2, "%p:%{public}@ invalidation:%{public}@ applied to bucket:%{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __80__BLSHInactiveProcessMinutesBudget_delayTimeToAddInvalidation_hasSecondsBudget___block_invoke_78_cold_1(void *a1, NSObject *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = [*(v3 + 24) bls_boundedDescriptionWithTransformer:&__block_literal_global_81];
  v10 = 134218754;
  v11 = v3;
  OUTLINED_FUNCTION_7_5();
  v12 = v5;
  v13 = v7;
  v14 = v8;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p:%{public}@ invalidation:%{public}@ exceeded budget existing:%{public}@", &v10, 0x2Au);

  v9 = *MEMORY[0x277D85DE8];
}

void __95__BLSHInactiveProcessMinutesBudget_invalidateAtRequestDate_expectedFidelity_invalidationBlock___block_invoke_cold_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_alloc(MEMORY[0x277CF0848]);
  v5 = [*(a1 + 40) now];
  v4 = [v3 initWithDate:v5 fidelity:*(a1 + 56)];
  [(BLSHInactiveProcessMinutesBudget *)v2 delayTimeToAddInvalidation:v4 hasSecondsBudget:1];
}

@end