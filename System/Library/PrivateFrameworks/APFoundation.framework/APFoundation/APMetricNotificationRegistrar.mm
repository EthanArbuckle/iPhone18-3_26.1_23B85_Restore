@interface APMetricNotificationRegistrar
- (APMetricNotificationRegistrar)init;
- (id)_closuresForPurpose:(int64_t)purpose andMetric:(int64_t)metric;
- (id)_metricRegistryForPurpose:(int64_t)purpose andMetric:(int64_t)metric;
- (int64_t)_registerHandlerInRegistry:(id)registry closure:(id)closure;
- (int64_t)registerHandlerForAllPurposesAndAllMetricsWithClosure:(id)closure;
- (int64_t)registerHandlerForExternalPurposesAndAllMetricsWithClosure:(id)closure;
- (int64_t)registerHandlerForInternalPurposesAndAllMetricsWithClosure:(id)closure;
- (int64_t)registerHandlerForPurpose:(int64_t)purpose andMetric:(int64_t)metric closure:(id)closure;
- (void)receivedMetric:(id)metric;
- (void)removeHandlerWithIdentifier:(int64_t)identifier;
@end

@implementation APMetricNotificationRegistrar

- (APMetricNotificationRegistrar)init
{
  v31.receiver = self;
  v31.super_class = APMetricNotificationRegistrar;
  v2 = [(APMetricNotificationRegistrar *)&v31 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF90]);
    v6 = objc_msgSend_initWithCapacity_(v3, v4, 4, v5);
    registryByPurpose = v2->_registryByPurpose;
    v2->_registryByPurpose = v6;

    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v11 = objc_msgSend_initWithCapacity_(v8, v9, 16, v10);
    registryByClosure = v2->_registryByClosure;
    v2->_registryByClosure = v11;

    v13 = objc_alloc(MEMORY[0x1E695DF90]);
    v16 = objc_msgSend_initWithCapacity_(v13, v14, 4, v15);
    registryToAllPurpose = v2->_registryToAllPurpose;
    v2->_registryToAllPurpose = v16;

    v18 = objc_alloc(MEMORY[0x1E695DF90]);
    v21 = objc_msgSend_initWithCapacity_(v18, v19, 4, v20);
    registryToInternalPurpose = v2->_registryToInternalPurpose;
    v2->_registryToInternalPurpose = v21;

    v23 = objc_alloc(MEMORY[0x1E695DF90]);
    v26 = objc_msgSend_initWithCapacity_(v23, v24, 4, v25);
    registryToExternalPurpose = v2->_registryToExternalPurpose;
    v2->_registryToExternalPurpose = v26;

    v2->_registrationCounter = 1;
    v28 = objc_alloc_init(MEMORY[0x1E696AD10]);
    registryLock = v2->_registryLock;
    v2->_registryLock = v28;
  }

  return v2;
}

- (id)_closuresForPurpose:(int64_t)purpose andMetric:(int64_t)metric
{
  v7 = objc_msgSend_registryLock(self, a2, purpose, metric);
  objc_msgSend_lock(v7, v8, v9, v10);
  v14 = objc_msgSend_registryByPurpose(self, v11, v12, v13);
  v17 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v15, purpose, v16);
  v20 = objc_msgSend_objectForKey_(v14, v18, v17, v19);
  v26 = objc_msgSend_objectForKey_(v20, v21, @"allMetrics", v22);
  if (metric >= 1)
  {
    v27 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v23, metric, v25);
    v30 = objc_msgSend_objectForKey_(v20, v28, v27, v29);
    v34 = v30;
    if (v26)
    {
      v35 = objc_msgSend_copy(v26, v31, v32, v33);

      objc_msgSend_unionHashTable_(v35, v36, v34, v37);
      v26 = v35;
    }

    else
    {
      v26 = v30;
    }
  }

  v38 = objc_msgSend_setRepresentation(v26, v23, v24, v25);
  objc_msgSend_unlock(v7, v39, v40, v41);

  return v38;
}

- (id)_metricRegistryForPurpose:(int64_t)purpose andMetric:(int64_t)metric
{
  v6 = objc_msgSend_registryByPurpose(self, a2, purpose, metric);
  v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v7, purpose, v8);
  v14 = objc_msgSend_objectForKey_(v6, v10, v9, v11);
  if (!v14)
  {
    v15 = objc_alloc(MEMORY[0x1E695DF90]);
    v14 = objc_msgSend_initWithCapacity_(v15, v16, 4, v17);
    objc_msgSend_setObject_forKey_(v6, v18, v14, v9);
  }

  if (metric < 1)
  {
    v22 = objc_msgSend_objectForKey_(v14, v12, @"allMetrics", v13);
    if (!v22)
    {
      v26 = objc_alloc(MEMORY[0x1E696AC70]);
      v22 = objc_msgSend_initWithOptions_capacity_(v26, v27, 5, 4);
      objc_msgSend_setObject_forKey_(v14, v28, v22, @"allMetrics");
    }
  }

  else
  {
    v19 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v12, metric, v13);
    v22 = objc_msgSend_objectForKey_(v14, v20, v19, v21);
    if (!v22)
    {
      v23 = objc_alloc(MEMORY[0x1E696AC70]);
      v22 = objc_msgSend_initWithOptions_capacity_(v23, v24, 5, 2);
      objc_msgSend_setObject_forKey_(v14, v25, v22, v19);
    }
  }

  return v22;
}

- (int64_t)registerHandlerForPurpose:(int64_t)purpose andMetric:(int64_t)metric closure:(id)closure
{
  closureCopy = closure;
  v12 = objc_msgSend_registryLock(self, v9, v10, v11);
  objc_msgSend_lock(v12, v13, v14, v15);
  registrationCounter = self->_registrationCounter;
  self->_registrationCounter = registrationCounter + 1;
  v18 = objc_msgSend__metricRegistryForPurpose_andMetric_(self, v17, purpose, metric);
  v22 = objc_msgSend_copy(closureCopy, v19, v20, v21);

  v26 = objc_msgSend_registryByClosure(self, v23, v24, v25);
  v29 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v27, registrationCounter, v28);
  v30 = _Block_copy(v22);
  objc_msgSend_addObject_(v18, v31, v30, v32);

  v33 = _Block_copy(v22);
  objc_msgSend_setObject_forKey_(v26, v34, v33, v29);

  objc_msgSend_unlock(v12, v35, v36, v37);
  return registrationCounter;
}

- (int64_t)registerHandlerForAllPurposesAndAllMetricsWithClosure:(id)closure
{
  closureCopy = closure;
  v8 = objc_msgSend_registryToAllPurpose(self, v5, v6, v7);
  v10 = objc_msgSend__registerHandlerInRegistry_closure_(self, v9, v8, closureCopy);

  return v10;
}

- (int64_t)registerHandlerForInternalPurposesAndAllMetricsWithClosure:(id)closure
{
  closureCopy = closure;
  v8 = objc_msgSend_registryToInternalPurpose(self, v5, v6, v7);
  v10 = objc_msgSend__registerHandlerInRegistry_closure_(self, v9, v8, closureCopy);

  return v10;
}

- (int64_t)registerHandlerForExternalPurposesAndAllMetricsWithClosure:(id)closure
{
  closureCopy = closure;
  v8 = objc_msgSend_registryToExternalPurpose(self, v5, v6, v7);
  v10 = objc_msgSend__registerHandlerInRegistry_closure_(self, v9, v8, closureCopy);

  return v10;
}

- (int64_t)_registerHandlerInRegistry:(id)registry closure:(id)closure
{
  closureCopy = closure;
  registryCopy = registry;
  v11 = objc_msgSend_registryLock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);
  registrationCounter = self->_registrationCounter;
  self->_registrationCounter = registrationCounter + 1;
  v19 = objc_msgSend_copy(closureCopy, v16, v17, v18);

  v22 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v20, registrationCounter, v21);
  v23 = _Block_copy(v19);
  objc_msgSend_setObject_forKey_(registryCopy, v24, v23, v22);

  objc_msgSend_unlock(v11, v25, v26, v27);
  return registrationCounter;
}

- (void)removeHandlerWithIdentifier:(int64_t)identifier
{
  v39 = objc_msgSend_registryLock(self, a2, identifier, v3);
  objc_msgSend_lock(v39, v6, v7, v8);
  v12 = objc_msgSend_registryByClosure(self, v9, v10, v11);
  v15 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, identifier, v14);
  objc_msgSend_removeObjectForKey_(v12, v16, v15, v17);
  v21 = objc_msgSend_registryToAllPurpose(self, v18, v19, v20);
  objc_msgSend_removeObjectForKey_(v21, v22, v15, v23);

  v27 = objc_msgSend_registryToInternalPurpose(self, v24, v25, v26);
  objc_msgSend_removeObjectForKey_(v27, v28, v15, v29);

  v33 = objc_msgSend_registryToExternalPurpose(self, v30, v31, v32);
  objc_msgSend_removeObjectForKey_(v33, v34, v15, v35);

  objc_msgSend_unlock(v39, v36, v37, v38);
}

- (void)receivedMetric:(id)metric
{
  v37 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  v8 = objc_msgSend_purpose(metricCopy, v5, v6, v7);
  v12 = objc_msgSend_metric(metricCopy, v9, v10, v11);
  v13 = MEMORY[0x1E695DFA8];
  v16 = objc_msgSend__closuresForRegisteredForNonSpecificPurposeInternal_(self, v14, v8 >> 63, v15);
  v19 = objc_msgSend_setWithArray_(v13, v17, v16, v18);

  v21 = objc_msgSend__closuresForPurpose_andMetric_(self, v20, v8, v12);
  objc_msgSend_unionSet_(v19, v22, v21, v23);

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = v19;
  v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v32, v36, 16);
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      v29 = 0;
      do
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v24);
        }

        (*(*(*(&v32 + 1) + 8 * v29) + 16))(*(*(&v32 + 1) + 8 * v29));
        ++v29;
      }

      while (v27 != v29);
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v30, &v32, v36, 16);
    }

    while (v27);
  }

  v31 = *MEMORY[0x1E69E9840];
}

@end