@interface BLSHEnvironmentDatesModel
- (BLSHBacklightSceneHostEnvironment)environment;
- (BLSHEnvironmentDatesModel)initWithEnvironment:(id)environment;
- (NSArray)specifiers;
- (NSDateInterval)dateInterval;
- (id)missingIntervalForDateInterval:(id)interval;
- (id)specifierForDate:(id)date;
- (int64_t)count;
- (void)clearAllSpecifiers;
- (void)purgeSpecifiersBefore:(id)before;
- (void)registerSpecifiers:(id)specifiers forDateInterval:(id)interval;
@end

@implementation BLSHEnvironmentDatesModel

- (BLSHEnvironmentDatesModel)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v10.receiver = self;
  v10.super_class = BLSHEnvironmentDatesModel;
  v5 = [(BLSHEnvironmentDatesModel *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v5->_environment, environmentCopy);
    array = [MEMORY[0x277CBEB18] array];
    specifiers = v6->_specifiers;
    v6->_specifiers = array;
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

- (id)specifierForDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  specifiers = self->_specifiers;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__BLSHEnvironmentDatesModel_specifierForDate___block_invoke;
  v16[3] = &unk_278420280;
  v6 = dateCopy;
  v17 = v6;
  v7 = [(NSMutableArray *)specifiers indexOfObjectWithOptions:2 passingTest:v16];
  v8 = self->_specifiers;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    firstObject = [(NSMutableArray *)v8 firstObject];
    v10 = firstObject;
    if (firstObject && ([firstObject date], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "timeIntervalSinceDate:", v6), v13 = v12, v11, v13 < 1.0))
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

- (id)missingIntervalForDateInterval:(id)interval
{
  v49 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_dateInterval;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  os_unfair_lock_unlock(&self->_lock);
  if (v5)
  {
    if ([intervalCopy isEqual:v5])
    {
      v7 = bls_flipbook_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        identifier = [WeakRetained identifier];
        bls_shortLoggingString = [intervalCopy bls_shortLoggingString];
        *buf = 134218498;
        selfCopy4 = self;
        v41 = 2114;
        v42 = identifier;
        v43 = 2114;
        v44 = bls_shortLoggingString;
        _os_log_debug_impl(&dword_21FD11000, v7, OS_LOG_TYPE_DEBUG, "%p:%{public}@ already have all specifiers in interval:%{public}@, will skip", buf, 0x20u);
      }

      v8 = 0;
      date = 0;
      goto LABEL_21;
    }

    endDate = [(NSDateInterval *)v5 endDate];
    startDate = [intervalCopy startDate];
    v12 = [endDate isEqualToDate:startDate];

    if (v12)
    {
      v8 = 0;
      goto LABEL_8;
    }

    startDate2 = [intervalCopy startDate];
    v17 = [(NSDateInterval *)v5 containsDate:startDate2];

    if (v17)
    {
      endDate2 = [intervalCopy endDate];
      endDate3 = [(NSDateInterval *)v5 endDate];
      if ([endDate3 compare:endDate2] != 1)
      {
        v8 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:endDate3 endDate:endDate2];
        v29 = bls_flipbook_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          identifier2 = [WeakRetained identifier];
          bls_shortLoggingString2 = [intervalCopy bls_shortLoggingString];
          bls_shortLoggingString3 = [(NSDateInterval *)v5 bls_shortLoggingString];
          [v8 bls_shortLoggingString];
          *buf = 134219010;
          selfCopy4 = self;
          v41 = 2114;
          v42 = identifier2;
          v43 = 2114;
          v44 = bls_shortLoggingString2;
          v45 = 2114;
          v46 = bls_shortLoggingString3;
          v48 = v47 = 2114;
          v36 = v48;
          _os_log_debug_impl(&dword_21FD11000, v29, OS_LOG_TYPE_DEBUG, "%p:%{public}@ truncating interval:%{public}@ due to current interval:%{public}@ - to new interval:%{public}@", buf, 0x34u);
        }

LABEL_8:
        startDate3 = [v8 startDate];
        v14 = [(BLSHEnvironmentDatesModel *)self specifierForDate:startDate3];
        date = [v14 date];

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
        identifier3 = [WeakRetained identifier];
        bls_shortLoggingString4 = [intervalCopy bls_shortLoggingString];
        bls_shortLoggingString5 = [(NSDateInterval *)v5 bls_shortLoggingString];
        *buf = 134219010;
        selfCopy4 = self;
        v41 = 2114;
        v42 = identifier3;
        v43 = 2114;
        v44 = bls_shortLoggingString4;
        v45 = 2114;
        v46 = bls_shortLoggingString5;
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
        identifier4 = [WeakRetained identifier];
        bls_shortLoggingString6 = [intervalCopy bls_shortLoggingString];
        bls_shortLoggingString7 = [(NSDateInterval *)v5 bls_shortLoggingString];
        *buf = 134219010;
        selfCopy4 = self;
        v41 = 2114;
        v42 = identifier4;
        v43 = 2114;
        v44 = bls_shortLoggingString6;
        v45 = 2114;
        v46 = bls_shortLoggingString7;
        v47 = 1024;
        LODWORD(v48) = [(BLSHEnvironmentDatesModel *)self count];
        _os_log_impl(&dword_21FD11000, v21, OS_LOG_TYPE_INFO, "%p:%{public}@ new interval:%{public}@ does not intersect current interval:%{public}@ - will invalidate %d old dates", buf, 0x30u);
      }

      [(BLSHEnvironmentDatesModel *)self clearAllSpecifiers];
    }
  }

  date = 0;
  v15 = 1;
LABEL_19:
  v8 = intervalCopy;
  if (!v8)
  {
LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

LABEL_20:
  v25 = [BLSHEnvironmentDateInterval intervalWithPresentationInterval:v8 previousPresentationDate:date shouldReset:v15 environment:WeakRetained];
LABEL_22:
  v26 = v25;

  v27 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)registerSpecifiers:(id)specifiers forDateInterval:(id)interval
{
  v36 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  specifiersCopy = specifiers;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v9 = self->_dateInterval;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  endDate = [(NSDateInterval *)v9 endDate];
  startDate = [intervalCopy startDate];
  v13 = [endDate isEqualToDate:startDate];

  if ((v13 & 1) == 0)
  {
    v18 = bls_flipbook_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      identifier = [WeakRetained identifier];
      bls_shortLoggingString = [intervalCopy bls_shortLoggingString];
      bls_shortLoggingString2 = [(NSDateInterval *)v10 bls_shortLoggingString];
      v25 = [(NSMutableArray *)self->_specifiers count];
      v26 = 134219010;
      selfCopy = self;
      v28 = 2114;
      v29 = identifier;
      v30 = 2114;
      v31 = bls_shortLoggingString;
      v32 = 2114;
      v33 = bls_shortLoggingString2;
      v34 = 1024;
      v35 = v25;
      _os_log_fault_impl(&dword_21FD11000, v18, OS_LOG_TYPE_FAULT, "%p:%{public}@ new interval:%{public}@ does not follow current interval:%{public}@ - will invalidate %d old specifiers", &v26, 0x30u);
    }

    [(NSMutableArray *)self->_specifiers removeAllObjects];
    goto LABEL_8;
  }

  v14 = objc_alloc(MEMORY[0x277CCA970]);
  startDate2 = [(NSDateInterval *)v10 startDate];
  endDate2 = [intervalCopy endDate];
  v17 = [v14 initWithStartDate:startDate2 endDate:endDate2];

  if (!v17)
  {
LABEL_8:
    v17 = intervalCopy;
  }

  dateInterval = self->_dateInterval;
  self->_dateInterval = v17;
  v20 = v17;

  [(NSMutableArray *)self->_specifiers addObjectsFromArray:specifiersCopy];
  os_unfair_lock_unlock(&self->_lock);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)clearAllSpecifiers
{
  v17 = *MEMORY[0x277D85DE8];
  identifier = [a2 identifier];
  v6 = [*(self + 8) count];
  bls_shortLoggingString = [*(self + 16) bls_shortLoggingString];
  v9 = 134218754;
  selfCopy = self;
  v11 = 2114;
  v12 = identifier;
  v13 = 1024;
  v14 = v6;
  v15 = 2114;
  v16 = bls_shortLoggingString;
  _os_log_debug_impl(&dword_21FD11000, a3, OS_LOG_TYPE_DEBUG, "%p:%{public}@ will clear %d specifiers from interval:%{public}@", &v9, 0x26u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)purgeSpecifiersBefore:(id)before
{
  *&v27[13] = *MEMORY[0x277D85DE8];
  beforeCopy = before;
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [(NSMutableArray *)self->_specifiers count];
  specifiers = self->_specifiers;
  v8 = [objc_alloc(MEMORY[0x277CF0848]) initWithDate:beforeCopy fidelity:0];
  v9 = [(NSMutableArray *)specifiers indexOfObject:v8 inSortedRange:0 options:v6 usingComparator:1024, &__block_literal_global_18];

  if (!v9)
  {
    goto LABEL_6;
  }

  if (v9 < v6)
  {
    v10 = [(NSMutableArray *)self->_specifiers objectAtIndex:v9];
    date = [v10 date];
    v12 = [beforeCopy isEqualToDate:date];

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

    identifier = [WeakRetained identifier];
    bls_shortLoggingString = [beforeCopy bls_shortLoggingString];
    v20 = 134218754;
    selfCopy2 = self;
    v22 = 2114;
    v23 = identifier;
    v24 = 1024;
    v25 = v6;
    v26 = 2114;
    *v27 = bls_shortLoggingString;
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
    identifier = [WeakRetained identifier];
    v18 = [(NSMutableArray *)self->_specifiers count];
    bls_shortLoggingString2 = [beforeCopy bls_shortLoggingString];
    v20 = 134219010;
    selfCopy2 = self;
    v22 = 2114;
    v23 = identifier;
    v24 = 1024;
    v25 = v16;
    v26 = 1024;
    *v27 = v18;
    v27[2] = 2114;
    *&v27[3] = bls_shortLoggingString2;
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