@interface BLSHEnvironmentDatesModel
- (BLSHBacklightSceneHostEnvironment)environment;
- (BLSHEnvironmentDatesModel)initWithEnvironment:(id)a3;
- (NSArray)specifiers;
- (NSDateInterval)dateInterval;
- (id)missingIntervalForDateInterval:(id)a3;
- (id)specifierForDate:(id)a3;
- (int64_t)count;
- (void)clearAllSpecifiers;
- (void)purgeSpecifiersBefore:(id)a3;
- (void)registerSpecifiers:(id)a3 forDateInterval:(id)a4;
@end

@implementation BLSHEnvironmentDatesModel

- (BLSHEnvironmentDatesModel)initWithEnvironment:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BLSHEnvironmentDatesModel;
  v5 = [(BLSHEnvironmentDatesModel *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_environment, v4);
    v7 = [MEMORY[0x277CBEB18] array];
    specifiers = v6->_specifiers;
    v6->_specifiers = v7;
  }

  return v6;
}

- (NSDateInterval)dateInterval
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_dateInterval;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)specifiers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_specifiers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)count
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_specifiers count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)specifierForDate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  specifiers = self->_specifiers;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__BLSHEnvironmentDatesModel_specifierForDate___block_invoke;
  v16[3] = &unk_278420280;
  v6 = v4;
  v17 = v6;
  v7 = [(NSMutableArray *)specifiers indexOfObjectWithOptions:2 passingTest:v16];
  v8 = self->_specifiers;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [(NSMutableArray *)v8 firstObject];
    v10 = v9;
    if (v9 && ([v9 date], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", v6), v13 = v12, v11, v13 < 1.0))
    {
      v14 = v10;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = [(NSMutableArray *)v8 objectAtIndex:?];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v14;
}

BOOL __46__BLSHEnvironmentDatesModel_specifierForDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 date];
  v4 = [v3 compare:*(a1 + 32)] != 1;

  return v4;
}

- (id)missingIntervalForDateInterval:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_dateInterval;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    if ([v4 isEqual:v5])
    {
      v7 = bls_flipbook_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v30 = [WeakRetained identifier];
        v31 = [v4 bls_shortLoggingString];
        *buf = 134218498;
        v40 = self;
        v41 = 2114;
        v42 = v30;
        v43 = 2114;
        v44 = v31;
        _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, "%p:%{public}@ already have all specifiers in interval:%{public}@, will skip", buf, 0x20u);
      }

      v8 = 0;
      v9 = 0;
      goto LABEL_21;
    }

    v10 = [(NSDateInterval *)v5 endDate];
    v11 = [v4 startDate];
    v12 = [v10 isEqualToDate:v11];

    if (v12)
    {
      v8 = 0;
      goto LABEL_8;
    }

    v16 = [v4 startDate];
    v17 = [(NSDateInterval *)v5 containsDate:v16];

    if (v17)
    {
      v18 = [v4 endDate];
      v19 = [(NSDateInterval *)v5 endDate];
      if ([v19 compare:v18] != 1)
      {
        v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v19 endDate:v18];
        v29 = bls_flipbook_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v38 = [WeakRetained identifier];
          v37 = [v4 bls_shortLoggingString];
          v35 = [(NSDateInterval *)v5 bls_shortLoggingString];
          [v8 bls_shortLoggingString];
          *buf = 134219010;
          v40 = self;
          v41 = 2114;
          v42 = v38;
          v43 = 2114;
          v44 = v37;
          v45 = 2114;
          v46 = v35;
          v48 = v47 = 2114;
          v36 = v48;
          _os_log_debug_impl(&dword_21FD11000, v29, OS_LOG_TYPE_DEBUG, "%p:%{public}@ truncating interval:%{public}@ due to current interval:%{public}@ - to new interval:%{public}@", buf, 0x34u);
        }

LABEL_8:
        v13 = [v8 startDate];
        v14 = [(BLSHEnvironmentDatesModel *)self specifierForDate:v13];
        v9 = [v14 date];

        v15 = 0;
        if (v8)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v20 = bls_flipbook_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        v32 = [WeakRetained identifier];
        v33 = [v4 bls_shortLoggingString];
        v34 = [(NSDateInterval *)v5 bls_shortLoggingString];
        *buf = 134219010;
        v40 = self;
        v41 = 2114;
        v42 = v32;
        v43 = 2114;
        v44 = v33;
        v45 = 2114;
        v46 = v34;
        v47 = 1024;
        LODWORD(v48) = [(BLSHEnvironmentDatesModel *)self count];
        _os_log_fault_impl(&dword_21FD11000, v20, OS_LOG_TYPE_FAULT, "%p:%{public}@ interval:%{public}@ ends before or same as current interval:%{public}@ - will invalidate %d old dates", buf, 0x30u);
      }

      [(BLSHEnvironmentDatesModel *)self clearAllSpecifiers];
    }

    else
    {
      v21 = bls_flipbook_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [WeakRetained identifier];
        v23 = [v4 bls_shortLoggingString];
        v24 = [(NSDateInterval *)v5 bls_shortLoggingString];
        *buf = 134219010;
        v40 = self;
        v41 = 2114;
        v42 = v22;
        v43 = 2114;
        v44 = v23;
        v45 = 2114;
        v46 = v24;
        v47 = 1024;
        LODWORD(v48) = [(BLSHEnvironmentDatesModel *)self count];
        _os_log_impl(&dword_21FD11000, v21, OS_LOG_TYPE_INFO, "%p:%{public}@ new interval:%{public}@ does not intersect current interval:%{public}@ - will invalidate %d old dates", buf, 0x30u);
      }

      [(BLSHEnvironmentDatesModel *)self clearAllSpecifiers];
    }
  }

  v9 = 0;
  v15 = 1;
LABEL_19:
  v8 = v4;
  if (!v8)
  {
LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

LABEL_20:
  v25 = [BLSHEnvironmentDateInterval intervalWithPresentationInterval:v8 previousPresentationDate:v9 shouldReset:v15 environment:WeakRetained];
LABEL_22:
  v26 = v25;

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)registerSpecifiers:(id)a3 forDateInterval:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v9 = self->_dateInterval;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  v11 = [(NSDateInterval *)v9 endDate];
  v12 = [v6 startDate];
  v13 = [v11 isEqualToDate:v12];

  if ((v13 & 1) == 0)
  {
    v18 = bls_flipbook_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v22 = [WeakRetained identifier];
      v23 = [v6 bls_shortLoggingString];
      v24 = [(NSDateInterval *)v10 bls_shortLoggingString];
      v25 = [(NSMutableArray *)self->_specifiers count];
      v26 = 134219010;
      v27 = self;
      v28 = 2114;
      v29 = v22;
      v30 = 2114;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      v34 = 1024;
      v35 = v25;
      _os_log_fault_impl(&dword_21FD11000, v18, OS_LOG_TYPE_FAULT, "%p:%{public}@ new interval:%{public}@ does not follow current interval:%{public}@ - will invalidate %d old specifiers", &v26, 0x30u);
    }

    [(NSMutableArray *)self->_specifiers removeAllObjects];
    goto LABEL_8;
  }

  v14 = objc_alloc(MEMORY[0x277CCA970]);
  v15 = [(NSDateInterval *)v10 startDate];
  v16 = [v6 endDate];
  v17 = [v14 initWithStartDate:v15 endDate:v16];

  if (!v17)
  {
LABEL_8:
    v17 = v6;
  }

  dateInterval = self->_dateInterval;
  self->_dateInterval = v17;
  v20 = v17;

  [(NSMutableArray *)self->_specifiers addObjectsFromArray:v7];
  os_unfair_lock_unlock(&self->_lock);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)clearAllSpecifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = [a2 identifier];
  v6 = [*(a1 + 8) count];
  v7 = [*(a1 + 16) bls_shortLoggingString];
  v9 = 134218754;
  v10 = a1;
  v11 = 2114;
  v12 = v5;
  v13 = 1024;
  v14 = v6;
  v15 = 2114;
  v16 = v7;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p:%{public}@ will clear %d specifiers from interval:%{public}@", &v9, 0x26u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)purgeSpecifiersBefore:(id)a3
{
  *&v27[13] = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [(NSMutableArray *)self->_specifiers count];
  specifiers = self->_specifiers;
  v8 = [objc_alloc(MEMORY[0x277CF0848]) initWithDate:v4 fidelity:0];
  v9 = [(NSMutableArray *)specifiers indexOfObject:v8 inSortedRange:0 options:v6 usingComparator:1024, &__block_literal_global_18];

  if (!v9)
  {
    goto LABEL_6;
  }

  if (v9 < v6)
  {
    v10 = [(NSMutableArray *)self->_specifiers objectAtIndex:v9];
    v11 = [v10 date];
    v12 = [v4 isEqualToDate:v11];

    if (v12)
    {
      ++v9;
      goto LABEL_8;
    }
  }

  if (v9 == 1)
  {
LABEL_6:
    v13 = bls_flipbook_log();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    v14 = [WeakRetained identifier];
    v15 = [v4 bls_shortLoggingString];
    v20 = 134218754;
    v21 = self;
    v22 = 2114;
    v23 = v14;
    v24 = 1024;
    v25 = v6;
    v26 = 2114;
    *v27 = v15;
    _os_log_debug_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEBUG, "%p:%{public}@ no dates to purge (remaining:%d) before:%{public}@", &v20, 0x26u);

LABEL_14:
    goto LABEL_12;
  }

LABEL_8:
  if (v9 - 1 >= v6)
  {
    v16 = v6 - 1;
  }

  else
  {
    v16 = v9 - 1;
  }

  [(NSMutableArray *)self->_specifiers removeObjectsInRange:0, v16];
  v13 = bls_flipbook_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [WeakRetained identifier];
    v18 = [(NSMutableArray *)self->_specifiers count];
    v19 = [v4 bls_shortLoggingString];
    v20 = 134219010;
    v21 = self;
    v22 = 2114;
    v23 = v14;
    v24 = 1024;
    v25 = v16;
    v26 = 1024;
    *v27 = v18;
    v27[2] = 2114;
    *&v27[3] = v19;
    _os_log_debug_impl(&dword_21FD11000, v13, OS_LOG_TYPE_DEBUG, "%p:%{public}@ did purge:%d dates (remaining:%d) before:%{public}@", &v20, 0x2Cu);

    goto LABEL_14;
  }

LABEL_12:

  os_unfair_lock_unlock(&self->_lock);
  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __51__BLSHEnvironmentDatesModel_purgeSpecifiersBefore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 date];
  v6 = [v4 date];

  v7 = [v5 compare:v6];
  return v7;
}

- (BLSHBacklightSceneHostEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end