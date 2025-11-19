@interface CLSQuery
+ (id)queryWithObjectType:(Class)a3 predicate:(id)a4;
+ (id)queryWithObjectType:(Class)a3 predicate:(id)a4 error:(id *)a5;
+ (id)queryWithQuerySpecification:(id)a3 completion:(id)a4 error:(id *)a5;
+ (id)queryWithSearchSpecification:(id)a3;
- (CLSQuery)initWithObjectType:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 error:(id *)a6;
- (CLSQuery)initWithQuerySpecification:(id)a3 completion:(id)a4 error:(id *)a5;
- (CLSQuery)initWithQuerySpecification:(id)a3 error:(id *)a4;
- (CLSQuery)initWithSearchSpecification:(id)a3 error:(id *)a4;
- (NSString)description;
- (void)_faultResultsAndComplete;
- (void)_notifyOfCompletionWithError:(id)a3;
- (void)_notifyOfCompletionWithResults:(id)a3 error:(id)a4;
- (void)clientRemote_deliverObject:(id)a3;
- (void)clientRemote_finishWithOffset:(unint64_t)a3 error:(id)a4;
- (void)clientRemote_invalidate;
- (void)reset;
- (void)setFetchLimit:(int64_t)a3;
@end

@implementation CLSQuery

+ (id)queryWithQuerySpecification:(id)a3 completion:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a1 alloc];
  Specification_completion_error = objc_msgSend_initWithQuerySpecification_completion_error_(v10, v11, v9, v8, a5);

  return Specification_completion_error;
}

+ (id)queryWithObjectType:(Class)a3 predicate:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v4 = objc_msgSend_queryWithObjectType_predicate_error_(a1, a2, a3, a4, &v9);
  v5 = v9;
  if (v5)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v6 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v11 = v5;
      _os_log_impl(&dword_236F71000, v6, OS_LOG_TYPE_INFO, "Error validating predicate: %{public}@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)queryWithObjectType:(Class)a3 predicate:(id)a4 error:(id *)a5
{
  v7 = objc_msgSend_querySpecificationWithObjectType_predicate_(CLSQuerySpecification, a2, a3, a4);
  v9 = objc_msgSend_queryWithQuerySpecification_completion_error_(a1, v8, v7, &unk_284A07848, a5);

  return v9;
}

+ (id)queryWithSearchSpecification:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 alloc];
  v12 = 0;
  v7 = objc_msgSend_initWithSearchSpecification_error_(v5, v6, v4, &v12);

  v8 = v12;
  if (v8)
  {
    if (qword_280B2A720 != -1)
    {
      dispatch_once(&qword_280B2A720, &unk_284A07B28);
    }

    v9 = CLSLogDefault;
    if (os_log_type_enabled(CLSLogDefault, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v14 = v8;
      _os_log_impl(&dword_236F71000, v9, OS_LOG_TYPE_INFO, "Error creating searchQuery: %{public}@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v7;
}

- (CLSQuery)initWithQuerySpecification:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CLSQuery;
  v7 = [(CLSDataObserver *)&v13 initWithQuerySpecification:v6 error:a4];
  if (v7)
  {
    v8 = objc_opt_new();
    objc_msgSend_setResults_(v7, v9, v8);

    v7->_shouldAddResultsToDataStore = 1;
    v7->_shouldFaultResults = 1;
    v7->_lock._os_unfair_lock_opaque = 0;
    v7->_fetchLimit = objc_msgSend_limit(v6, v10, v11);
  }

  return v7;
}

- (CLSQuery)initWithQuerySpecification:(id)a3 completion:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = CLSQuery;
  v10 = [(CLSDataObserver *)&v17 initWithQuerySpecification:v8 error:a5];
  if (v10)
  {
    v11 = objc_opt_new();
    objc_msgSend_setResults_(v10, v12, v11);

    v10->_shouldAddResultsToDataStore = 1;
    v10->_shouldFaultResults = 1;
    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_fetchLimit = objc_msgSend_limit(v8, v13, v14);
    objc_msgSend_setCompletion_(v10, v15, v9);
  }

  return v10;
}

- (CLSQuery)initWithSearchSpecification:(id)a3 error:(id *)a4
{
  v7 = a3;
  v8 = objc_opt_class();
  v10 = objc_msgSend_querySpecificationWithObjectType_predicate_(CLSQuerySpecification, v9, v8, 0);
  Specification_error = objc_msgSend_initWithQuerySpecification_error_(self, v11, v10, a4);
  v13 = Specification_error;
  if (Specification_error)
  {
    objc_storeStrong((Specification_error + 136), a3);
  }

  return v13;
}

- (CLSQuery)initWithObjectType:(Class)a3 predicate:(id)a4 sortDescriptors:(id)a5 error:(id *)a6
{
  v10 = a5;
  v12 = objc_msgSend_querySpecificationWithObjectType_predicate_(CLSQuerySpecification, v11, a3, a4);
  objc_msgSend_setSortDescriptors_(v12, v13, v10);

  Specification_error = objc_msgSend_initWithQuerySpecification_error_(self, v14, v12, a6);
  return Specification_error;
}

- (NSString)description
{
  v17.receiver = self;
  v17.super_class = CLSQuery;
  v3 = [(CLSDataObserver *)&v17 description];
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);

  searchSpec = self->_searchSpec;
  if (searchSpec)
  {
    v10 = objc_msgSend_description(searchSpec, v7, v8);
    objc_msgSend_appendString_(v6, v11, v10);
  }

  objc_msgSend_appendString_(v6, v7, @" (executing: ");
  if (objc_msgSend_isExecuting(self, v12, v13))
  {
    objc_msgSend_appendString_(v6, v14, @"YES");
  }

  else
  {
    objc_msgSend_appendString_(v6, v14, @"NO");
  }

  objc_msgSend_appendString_(v6, v15, @""));

  return v6;
}

- (void)setFetchLimit:(int64_t)a3
{
  v5 = objc_msgSend_querySpec(self, a2, a3);
  objc_msgSend_setLimit_(v5, v6, a3);

  self->_fetchLimit = a3;
}

- (void)reset
{
  v4 = objc_msgSend_querySpec(self, a2, v2);
  objc_msgSend_setOffset_(v4, v3, 0);
}

- (void)clientRemote_invalidate
{
  objc_msgSend_lock(self, a2, v2);
  v6 = objc_msgSend_results(self, v4, v5);
  objc_msgSend_removeAllObjects(v6, v7, v8);

  v14 = MEMORY[0x2383C3E80](self->_completion);
  objc_msgSend_unlock(self, v9, v10);
  if (v14)
  {
    v12 = objc_msgSend_cls_createErrorWithCode_description_(MEMORY[0x277CCA9B8], v11, 100, @"Query invalidated");
    objc_msgSend_setExecuting_(self, v13, 0);
    v14[2](v14, 0, v12);
  }

  else
  {
    objc_msgSend_setExecuting_(self, v11, 0);
  }
}

- (void)clientRemote_deliverObject:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_lock(self, v5, v6);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v24, v28, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * v12);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_dataStore(self, v14, v15, v24), v16 = objc_claimAutoreleasedReturnValue(), isRemovedObject = objc_msgSend_isRemovedObject_(v16, v17, v13), v16, (isRemovedObject & 1) == 0))
        {
          v19 = objc_msgSend_results(self, v14, v15, v24);
          objc_msgSend_addObject_(v19, v20, v13);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v24, v28, 16);
    }

    while (v10);
  }

  objc_msgSend_unlock(self, v21, v22);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)clientRemote_finishWithOffset:(unint64_t)a3 error:(id)a4
{
  v24 = a4;
  objc_msgSend_lock(self, v6, v7);
  v10 = objc_msgSend_querySpec(self, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_querySpec(self, v11, v12);
    objc_msgSend_setOffset_(v13, v14, a3);
  }

  objc_msgSend_unlock(self, v11, v12);
  v17 = objc_msgSend_objectType(self, v15, v16);
  v19 = objc_msgSend_conformsToProtocol_(v17, v18, &unk_284A1E680);
  v21 = v24;
  if (!v24 && v19 && (shouldFaultResults = objc_msgSend_shouldFaultResults(self, 0, v20), v21 = 0, (shouldFaultResults & 1) != 0))
  {
    objc_msgSend__faultResultsAndComplete(self, v24, v23);
  }

  else
  {
    objc_msgSend__notifyOfCompletionWithError_(self, v21, v21);
  }
}

- (void)_faultResultsAndComplete
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_236F92738;
  v20 = sub_236F92748;
  v3 = [CLSFaultProcessor alloc];
  v6 = objc_msgSend_dataStore(self, v4, v5);
  v21 = objc_msgSend_initWithDelegate_(v3, v7, v6);

  v8 = v17[5];
  v11 = objc_msgSend_results(self, v9, v10);
  objc_msgSend_faultObjects_(v8, v12, v11);

  v13 = v17[5];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236F92750;
  v15[3] = &unk_278A18238;
  v15[4] = self;
  v15[5] = &v16;
  objc_msgSend_completionNotify_(v13, v14, v15);
  _Block_object_dispose(&v16, 8);
}

- (void)_notifyOfCompletionWithError:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_msgSend_lock(self, v5, v6);
  v9 = objc_msgSend_results(self, v7, v8);
  v12 = objc_msgSend_copy(v9, v10, v11);

  v15 = objc_msgSend_results(self, v13, v14);
  objc_msgSend_removeAllObjects(v15, v16, v17);

  objc_msgSend_unlock(self, v18, v19);
  v22 = objc_msgSend_objectType(self, v20, v21);
  v23 = objc_opt_class();
  if (objc_msgSend_isSubclassOfClass_(v22, v24, v23) && self->_shouldAddResultsToDataStore)
  {
    v26 = objc_opt_new();
    v29 = objc_msgSend_dataStore(self, v27, v28);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v30 = v12;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v43, v47, 16);
    if (v32)
    {
      v34 = v32;
      v35 = *v44;
      do
      {
        v36 = 0;
        do
        {
          if (*v44 != v35)
          {
            objc_enumerationMutation(v30);
          }

          v37 = objc_msgSend_addObject_(v29, v33, *(*(&v43 + 1) + 8 * v36), v43);
          v40 = v37;
          if (v37 && (objc_msgSend_isDeleted(v37, v38, v39) & 1) == 0)
          {
            objc_msgSend_addObject_(v26, v41, v40);
          }

          ++v36;
        }

        while (v34 != v36);
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v33, &v43, v47, 16);
      }

      while (v34);
    }
  }

  else
  {
    v26 = v12;
  }

  objc_msgSend__notifyOfCompletionWithResults_error_(self, v25, v26, v4, v43);

  v42 = *MEMORY[0x277D85DE8];
}

- (void)_notifyOfCompletionWithResults:(id)a3 error:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (qword_280B2A720 != -1)
  {
    dispatch_once(&qword_280B2A720, &unk_284A07B28);
  }

  v8 = CLSLogConnection;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = objc_msgSend_date(MEMORY[0x277CBEAA8], v9, v10);
    v22 = objc_msgSend_startDate(self, v20, v21);
    objc_msgSend_timeIntervalSinceDate_(v19, v23, v22);
    v27 = v26;
    if (v6)
    {
      v28 = objc_msgSend_count(v6, v24, v25);
    }

    else
    {
      v28 = 0;
    }

    *buf = 138412802;
    v34 = self;
    v35 = 2048;
    v36 = v27;
    v37 = 2048;
    v38 = v28;
    _os_log_debug_impl(&dword_236F71000, v8, OS_LOG_TYPE_DEBUG, "query: %@; took: %.3f count: %ld", buf, 0x20u);
  }

  objc_msgSend_lock(self, v11, v12);
  v13 = MEMORY[0x2383C3E80](self->_completion);
  objc_msgSend_unlock(self, v14, v15);
  if (v13)
  {
    v17 = dispatch_get_global_queue(33, 0);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_236F92D2C;
    v29[3] = &unk_278A18260;
    v29[4] = self;
    v30 = v7;
    v32 = v13;
    v31 = v6;
    dispatch_async(v17, v29);
  }

  else
  {
    objc_msgSend_setExecuting_(self, v16, 0);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end