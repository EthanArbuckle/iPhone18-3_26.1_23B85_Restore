@interface BLSFrameSpecifierModel
- (BLSFrameSpecifierModel)init;
- (BOOL)hasSpecifiers;
- (NSArray)specifiers;
- (id)debugDescription;
- (id)description;
- (id)specifierAtPresentationDate:(id)date;
- (unint64_t)specifierCount;
- (void)addSpecifiers:(id)specifiers;
- (void)dealloc;
- (void)purgeAllButOneSpecifiersBeforeDate:(id)date;
- (void)purgeAllSpecifiersOnOrAfterDate:(id)date;
- (void)withLock_purgeAllSpecifiersOnOrAfterDate:(uint64_t)date;
@end

@implementation BLSFrameSpecifierModel

- (BLSFrameSpecifierModel)init
{
  v9.receiver = self;
  v9.super_class = BLSFrameSpecifierModel;
  v2 = [(BLSFrameSpecifierModel *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    array = [MEMORY[0x277CBEB18] array];
    specifiers = v3->_specifiers;
    v3->_specifiers = array;

    objc_initWeak(&location, v3);
    objc_copyWeak(&v7, &location);
    v3->_stateHandler = os_state_add_handler();
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  return v3;
}

_DWORD *__30__BLSFrameSpecifierModel_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([(BLSFrameSpecifierModel *)WeakRetained hasSpecifiers])
  {
    v2 = [WeakRetained debugDescription];
    v3 = BLSStateDataWithTitleDescriptionAndHints(@"BLSFrameSpecifierModel", v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_stateHandler)
  {
    os_state_remove_handler();
  }

  v3.receiver = self;
  v3.super_class = BLSFrameSpecifierModel;
  [(BLSFrameSpecifierModel *)&v3 dealloc];
}

- (id)description
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUnsignedInteger:-[NSMutableArray count](self->_specifiers withName:{"count"), @"count"}];
  firstObject = [(NSMutableArray *)self->_specifiers firstObject];
  v6 = [v3 appendObject:firstObject withName:@"first"];

  lastObject = [(NSMutableArray *)self->_specifiers lastObject];
  v8 = [v3 appendObject:lastObject withName:@"last"];

  build = [v3 build];
  os_unfair_lock_unlock(&self->_lock);

  return build;
}

- (id)debugDescription
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_specifiers count];
  v4 = objc_opt_new();
  [v4 appendProem:self block:&__block_literal_global_15];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"specifiers (%u)", v3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__BLSFrameSpecifierModel_debugDescription__block_invoke_2;
  v9[3] = &unk_278429150;
  v10 = v4;
  v11 = v3;
  v9[4] = self;
  v6 = v4;
  [v6 appendBodySectionWithName:v5 openDelimiter:@" {" closeDelimiter:@"} " block:v9];

  os_unfair_lock_unlock(&self->_lock);
  v7 = [v6 description];

  return v7;
}

void __42__BLSFrameSpecifierModel_debugDescription__block_invoke_2(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (v2 <= 0x5A)
  {
    v3 = a1[6];
  }

  else
  {
    v3 = 85;
  }

  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1[4] + 8);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        if (v10 < v3 || v10 >= v2 - 6)
        {
          v12 = *(*(&v15 + 1) + 8 * v9);
          v11 = a1[5];
        }

        else
        {
          if (v3 != v10)
          {
            goto LABEL_15;
          }

          v11 = a1[5];
          v12 = @"...";
        }

        v13 = [v11 appendObject:v12 withName:{0, v15}];
LABEL_15:
        ++v10;
        ++v9;
      }

      while (v6 != v9);
      v7 += v6;
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (NSArray)specifiers
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_specifiers copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)specifierCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_specifiers count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)addSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  if ([specifiersCopy count])
  {
    os_unfair_lock_lock(&self->_lock);
    firstObject = [specifiersCopy firstObject];
    presentationInterval = [firstObject presentationInterval];
    startDate = [presentationInterval startDate];

    [(BLSFrameSpecifierModel *)self withLock_purgeAllSpecifiersOnOrAfterDate:startDate];
    lastObject = [(NSMutableArray *)self->_specifiers lastObject];
    v9 = lastObject;
    if (firstObject && lastObject)
    {
      v10 = [lastObject correctedSpecifierWithNextSpecifier:firstObject];
      if (v10)
      {
        [(NSMutableArray *)self->_specifiers removeLastObject];
        [(NSMutableArray *)self->_specifiers addObject:v10];
      }
    }

    [(NSMutableArray *)self->_specifiers addObjectsFromArray:specifiersCopy];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    firstObject = bls_environment_log();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
    {
      [(BLSFrameSpecifierModel *)self addSpecifiers:specifiersCopy, firstObject];
    }
  }
}

- (void)purgeAllButOneSpecifiersBeforeDate:(id)date
{
  v20 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (dateCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableArray *)self->_specifiers count];
    if (v5 >= 2)
    {
      specifiers = self->_specifiers;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__BLSFrameSpecifierModel_purgeAllButOneSpecifiersBeforeDate___block_invoke;
      v12[3] = &unk_278429178;
      v13 = dateCopy;
      v7 = [(NSMutableArray *)specifiers indexOfObjectPassingTest:v12];
      if (v7)
      {
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v8 = v5 - 1;
        }

        else
        {
          v8 = v7;
        }

        [(NSMutableArray *)self->_specifiers removeObjectsInRange:0, v8];
      }
    }

    v9 = [(NSMutableArray *)self->_specifiers count];
    os_unfair_lock_unlock(&self->_lock);
    v10 = bls_environment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      selfCopy = self;
      v16 = 2048;
      v17 = v5 - v9;
      v18 = 2114;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_21FE25000, v10, OS_LOG_TYPE_DEBUG, "<BLSFrameSpecifierModel %p> purged %lu specifiers — %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v10 = bls_environment_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(BLSFrameSpecifierModel *)self purgeAllButOneSpecifiersBeforeDate:v10];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

BOOL __61__BLSFrameSpecifierModel_purgeAllButOneSpecifiersBeforeDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 presentationInterval];
  v4 = [v3 endDate];
  v5 = [v4 compare:*(a1 + 32)] != -1;

  return v5;
}

BOOL __67__BLSFrameSpecifierModel_withLock_purgeAllSpecifiersOnOrAfterDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 presentationInterval];
  v4 = [v3 startDate];
  v5 = [v4 compare:*(a1 + 32)] != -1;

  return v5;
}

- (id)specifierAtPresentationDate:(id)date
{
  v51 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (dateCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    specifiers = self->_specifiers;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __54__BLSFrameSpecifierModel_specifierAtPresentationDate___block_invoke;
    v33[3] = &unk_278429178;
    v6 = dateCopy;
    v34 = v6;
    v7 = [(NSMutableArray *)specifiers indexOfObjectWithOptions:1 passingTest:v33];
    v8 = self->_specifiers;
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      lastObject = [(NSMutableArray *)v8 lastObject];
      v10 = lastObject;
      if (lastObject && ([lastObject presentationInterval], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "startDate"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "bls_compare:withEpsilon:", v6, 0.0001), v12, v11, v13 != 1))
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

    v15 = bls_environment_log();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);

    if (v16 && !v14 && [(NSMutableArray *)self->_specifiers count])
    {
      firstObject = [(NSMutableArray *)self->_specifiers firstObject];
      presentationInterval = [firstObject presentationInterval];
      startDate = [presentationInterval startDate];
      v20 = [startDate compare:v6];

      endDate = [presentationInterval endDate];
      v22 = [endDate compare:v6];

      [v6 timeIntervalSinceReferenceDate];
      v24 = v23;
      startDate2 = [presentationInterval startDate];
      [startDate2 timeIntervalSinceReferenceDate];
      v27 = v26;

      v28 = bls_environment_log();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        bls_shortLoggingString = [v6 bls_shortLoggingString];
        v32 = [(NSMutableArray *)self->_specifiers bls_boundedDescriptionWithTransformer:&__block_literal_global_32];
        *buf = 134219778;
        selfCopy = self;
        v37 = 2114;
        v38 = bls_shortLoggingString;
        v39 = 2114;
        v40 = v32;
        v41 = 2114;
        v42 = firstObject;
        v43 = 2048;
        v44 = v20;
        v45 = 2048;
        v46 = v22;
        v47 = 2048;
        v48 = v24;
        v49 = 2048;
        v50 = v27;
        _os_log_debug_impl(&dword_21FE25000, v28, OS_LOG_TYPE_DEBUG, "%p:specifier:nil presentationDate:%{public}@ specifiers:%{public}@ firstSpecifier:%{public}@ startCompare:%ld, endCompare:%ld, presentationDateTimeInterval:%lf firstPresentationIntervalStartDateTimeInterval:%lf", buf, 0x52u);
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v14 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v14;
}

BOOL __54__BLSFrameSpecifierModel_specifierAtPresentationDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 presentationInterval];
  v4 = [v3 startDate];
  if ([v4 bls_compare:*(a1 + 32) withEpsilon:0.0001] == 1)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 endDate];
    v5 = [v6 bls_compare:*(a1 + 32) withEpsilon:0.0001] == 1;
  }

  return v5;
}

id __54__BLSFrameSpecifierModel_specifierAtPresentationDate___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 presentationInterval];
  v3 = [v2 bls_loggingString];

  return v3;
}

- (BOOL)hasSpecifiers
{
  if (!self)
  {
    return 0;
  }

  os_unfair_lock_lock((self + 16));
  v2 = [*(self + 8) count] != 0;
  os_unfair_lock_unlock((self + 16));
  return v2;
}

- (void)withLock_purgeAllSpecifiersOnOrAfterDate:(uint64_t)date
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (date)
  {
    if (v3)
    {
      v5 = *(date + 8);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __67__BLSFrameSpecifierModel_withLock_purgeAllSpecifiersOnOrAfterDate___block_invoke;
      v9[3] = &unk_278429178;
      v10 = v3;
      v6 = [v5 indexOfObjectPassingTest:v9];
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(date + 8) removeObjectsInRange:{v6, objc_msgSend(*(date + 8), "count") - v6}];
      }

      v7 = v10;
    }

    else
    {
      v7 = bls_environment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        dateCopy = date;
        _os_log_error_impl(&dword_21FE25000, v7, OS_LOG_TYPE_ERROR, "<BLSFrameSpecifierModel %p> tried to purge specifiers on or after a nil date", buf, 0xCu);
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)purgeAllSpecifiersOnOrAfterDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock(&self->_lock);
  [(BLSFrameSpecifierModel *)self withLock_purgeAllSpecifiersOnOrAfterDate:dateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addSpecifiers:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_21FE25000, log, OS_LOG_TYPE_ERROR, "<BLSFrameSpecifierModel %p> tried to add empty specifiers %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)purgeAllButOneSpecifiersBeforeDate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_21FE25000, a2, OS_LOG_TYPE_ERROR, "<BLSFrameSpecifierModel %p> tried to purge specifiers before a nil date", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end