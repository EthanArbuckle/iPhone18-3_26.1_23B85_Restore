@interface _GCDevicePhysicalInput
- (BOOL)_commitTransaction:(_GCDevicePhysicalInput *)a1;
- (_GCDevicePhysicalInput)_handleEventTransaction:(_GCDevicePhysicalInput *)result;
- (_GCDevicePhysicalInput)handleMouseEvent:(_GCDevicePhysicalInput *)result;
- (_GCDevicePhysicalInput)initWithFacade:(id)a3 elements:(id)a4;
- (_GCDevicePhysicalInput)initWithFacade:(id)a3 elements:(id)a4 attributes:(id)a5;
- (_GCDevicePhysicalInput)updateWithElements:(_GCDevicePhysicalInput *)result;
- (double)lastEventTimestamp;
- (id)elementValueDidChangeHandler;
- (id)inputStateAvailableHandler;
- (id)popTransaction;
- (id)popTransactionNotExceedingTimestamp:(double)a3;
- (id)queue;
- (uint64_t)currentTransaction;
- (uint64_t)handleCollectionEvent:(uint64_t)result;
- (uint64_t)handleGamepadEvent:(uint64_t)result;
- (uint64_t)pendingTransaction;
- (uint64_t)transactionQueueDepth;
- (void)dealloc;
- (void)setDataSource:(id)a3;
- (void)setDevice:(id)a3;
- (void)setElementValueDidChangeHandler:(uint64_t)a3;
- (void)setInputStateAvailableHandler:(uint64_t)a3;
- (void)setQueue:(void *)result;
- (void)setTransactionQueueDepth:(void *)result;
- (void)updateViewStateIfNeeded;
@end

@implementation _GCDevicePhysicalInput

- (_GCDevicePhysicalInput)initWithFacade:(id)a3 elements:(id)a4 attributes:(id)a5
{
  v9 = objc_opt_new();
  v24.receiver = self;
  v24.super_class = _GCDevicePhysicalInput;
  v10 = -[_GCDevicePhysicalInputBase _initWithFacadeTemplate:elementsTemplates:attributes:context:](&v24, sel__initWithFacadeTemplate_elementsTemplates_attributes_context_, a3, [a4 allObjects], a5, v9);
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v13 = [(_GCDevicePhysicalInputBase *)v10 viewConfiguration];
  v15 = [(_GCDevicePhysicalInputBase *)v10 viewState];
  v16 = [_GCDevicePhysicalInputTransaction transactionWithImplementation:v10 configuration:v13 state:v15];
  [(NSMutableArray *)v11 addObject:v16];
  v18 = [(_GCDevicePhysicalInputBase *)v10 viewConfiguration];
  v20 = [(_GCDevicePhysicalInputBase *)v10 viewState];
  v21 = [_GCDevicePhysicalInputStateTable stateTableWithCopyOfStateTable:v20];
  v22 = [_GCDevicePhysicalInputTransaction transactionWithImplementation:v10 configuration:v18 state:v21];
  [(NSMutableArray *)v11 addObject:v22];
  v10->_allTransactions = v11;
  v10->_currentTransaction = v16;
  v10->_pendingTransaction = v22;
  v10->_bufferedTransactionsQueueDepth = 1;
  v10->_bufferedTransactions = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];

  return v10;
}

- (_GCDevicePhysicalInput)initWithFacade:(id)a3 elements:(id)a4
{
  v7 = [MEMORY[0x1E695DFD8] set];

  return [(_GCDevicePhysicalInput *)self initWithFacade:a3 elements:a4 attributes:v7];
}

- (BOOL)_commitTransaction:(_GCDevicePhysicalInput *)a1
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    objc_sync_enter(a1);
    if (a2)
    {
      v19 = [(_GCDevicePhysicalInputBase *)a1->_pendingTransaction viewConfiguration];
      [(_GCDevicePhysicalInputBase *)a1 setViewConfiguration:v19];
    }

    v5 = [(_GCDevicePhysicalInputBase *)a1->_pendingTransaction viewState];
    [(_GCDevicePhysicalInputBase *)a1 setViewState:v5];
    objc_storeStrong(&a1->_currentTransaction, a1->_pendingTransaction);
    objc_storeStrong(&a1->_pendingTransaction, 0);
    [(NSMutableArray *)a1->_bufferedTransactions addObject:a1->_currentTransaction];
    while ([(NSMutableArray *)a1->_bufferedTransactions count]> a1->_bufferedTransactionsQueueDepth)
    {
      [(NSMutableArray *)a1->_bufferedTransactions removeObjectAtIndex:0];
      [(_GCDevicePhysicalInputTransaction *)[(NSMutableArray *)a1->_bufferedTransactions firstObject] invalidateAllUpdateContexts];
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    allTransactions = a1->_allTransactions;
    v8 = [(NSMutableArray *)allTransactions countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = *v27;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(allTransactions);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          if ([v11 retainCount] == 1)
          {
            objc_storeStrong(&a1->_pendingTransaction, v11);
            goto LABEL_17;
          }
        }

        v8 = [(NSMutableArray *)allTransactions countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
    pendingTransaction = a1->_pendingTransaction;
    if (pendingTransaction)
    {
      if (a2)
      {
        v25 = [(_GCDevicePhysicalInputBase *)a1 viewConfiguration];
        [(_GCDevicePhysicalInputBase *)a1->_pendingTransaction setViewConfiguration:v25];
        pendingTransaction = a1->_pendingTransaction;
      }

      v13 = [(_GCDevicePhysicalInputBase *)pendingTransaction viewState];
      v15 = [(_GCDevicePhysicalInputBase *)a1->_currentTransaction viewState];
      [(_GCDevicePhysicalInputStateTable *)v13 updateStateTableWithContentsOf:v15];
    }

    else
    {
      v20 = [(_GCDevicePhysicalInputBase *)a1 viewConfiguration];
      v22 = [(_GCDevicePhysicalInputBase *)a1 viewState];
      v23 = [_GCDevicePhysicalInputStateTable stateTableWithCopyOfStateTable:v22];
      v24 = [_GCDevicePhysicalInputTransaction transactionWithImplementation:a1 configuration:v20 state:v23];
      [(NSMutableArray *)a1->_allTransactions addObject:v24];
      a1->_pendingTransaction = v24;
    }

    v16 = [(NSMutableArray *)a1->_bufferedTransactions count]== 1;
    objc_sync_exit(a1);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allTransactions = self->_allTransactions;
  v4 = [(NSMutableArray *)allTransactions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(allTransactions);
        }

        [(_GCDevicePhysicalInputTransaction *)*(*(&v10 + 1) + 8 * i) detach];
      }

      v5 = [(NSMutableArray *)allTransactions countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_storeStrong(&self->_pendingTransaction, 0);
  objc_storeStrong(&self->_currentTransaction, 0);
  [(NSMutableArray *)self->_bufferedTransactions removeAllObjects];
  objc_storeStrong(&self->_bufferedTransactions, 0);
  [(NSMutableArray *)self->_allTransactions removeAllObjects];
  objc_storeStrong(&self->_allTransactions, 0);

  self->_inputStateAvailableHandler = 0;
  self->_elementValueDidChangeHandler = 0;
  objc_setAssociatedObject(self, GCDevicePhysicalInputQueueKey, 0, 0x301);
  v9.receiver = self;
  v9.super_class = _GCDevicePhysicalInput;
  [(_GCDevicePhysicalInputBase *)&v9 dealloc];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDevice:(id)a3
{
  v5.receiver = self;
  v5.super_class = _GCDevicePhysicalInput;
  [(_GCDevicePhysicalInputBase *)&v5 setDevice:?];
  [(NSMutableArray *)self->_allTransactions makeObjectsPerformSelector:sel_setDevice_ withObject:a3];
}

- (void)setDataSource:(id)a3
{
  if (!a3 && [(_GCDevicePhysicalInputBase *)self dataSource])
  {
    [_GCDevicePhysicalInput setDataSource:?];
  }

  v5.receiver = self;
  v5.super_class = _GCDevicePhysicalInput;
  [(_GCDevicePhysicalInputBase *)&v5 setDataSource:a3];
}

- (id)popTransaction
{
  [(_GCDevicePhysicalInputDataSource *)[(_GCDevicePhysicalInputBase *)self dataSource] physicalInputPoll:self forLatest:0];
  objc_sync_enter(self);
  v3 = [(NSMutableArray *)self->_bufferedTransactions firstObject];
  if (v3)
  {
    v4 = v3;
    [(NSMutableArray *)self->_bufferedTransactions removeObjectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  [v4 lastEventHostTimestamp];
  [-[_GCDevicePhysicalInputBase attributes](self) count];
  kdebug_trace();
  objc_sync_exit(self);
  return v4;
}

- (id)popTransactionNotExceedingTimestamp:(double)a3
{
  [(_GCDevicePhysicalInputDataSource *)[(_GCDevicePhysicalInputBase *)self dataSource] physicalInputPoll:self forLatest:0];
  objc_sync_enter(self);
  v5 = [(NSMutableArray *)self->_bufferedTransactions firstObject];
  v6 = v5;
  if (v5)
  {
    [v5 lastEventTimestamp];
    if (v7 <= a3)
    {
      v6 = v6;
      [(NSMutableArray *)self->_bufferedTransactions removeObjectAtIndex:0];
      [v6 lastEventHostTimestamp];
      [-[_GCDevicePhysicalInputBase attributes](self) count];
      kdebug_trace();
    }

    else
    {
      v6 = 0;
    }
  }

  objc_sync_exit(self);
  return v6;
}

- (void)updateViewStateIfNeeded
{
  v3 = [(_GCDevicePhysicalInputBase *)self dataSource];

  [(_GCDevicePhysicalInputDataSource *)v3 physicalInputPoll:self forLatest:1];
}

- (_GCDevicePhysicalInput)_handleEventTransaction:(_GCDevicePhysicalInput *)result
{
  v58 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = 0;
    atomic_compare_exchange_strong(&result->_isHandlingEvent, &v3, 1u);
    if (v3)
    {
      [_GCDevicePhysicalInput _handleEventTransaction:];
    }

    pendingTransaction = result->_pendingTransaction;
    v5 = (*(a2 + 16))(a2, pendingTransaction);
    [(_GCDevicePhysicalInputTransaction *)pendingTransaction setLastEventHostTimestamp:v5];
    v6 = [(_GCDevicePhysicalInputBase *)v2 elements];
    v7 = [(_GCDevicePhysicalInputBase *)v2 facade];
    [(_GCDevicePhysicalInputView *)v7 _willChangeValueForKey:?];
    v8 = [(_GCDevicePhysicalInputBase *)v2 facade];
    [(_GCDevicePhysicalInputView *)v8 _willChangeValueForKey:?];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v9 = [v6 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v52;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v52 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v51 + 1) + 8 * i);
          v50 = 0;
          v15 = [(_GCDevicePhysicalInputTransaction *)pendingTransaction updateContextForElementAtIndex:v11 size:&v50 onlyIfChanged:1];
          if (v15)
          {
            [v14 preCommit:v15 sender:v2];
          }

          ++v11;
        }

        v10 = [v6 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v10);
    }

    v41 = [(_GCDevicePhysicalInput *)v2 _commitTransaction:?];
    objc_sync_enter(v2);
    currentTransaction = v2->_currentTransaction;
    objc_sync_exit(v2);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v17 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = *v47;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v47 != v20)
          {
            objc_enumerationMutation(v6);
          }

          v22 = *(*(&v46 + 1) + 8 * j);
          v50 = 0;
          v23 = [(_GCDevicePhysicalInputTransaction *)currentTransaction updateContextForElementAtIndex:v19 size:&v50 onlyIfChanged:1];
          if (v23)
          {
            [v22 postCommit:v23 sender:v2];
          }

          ++v19;
        }

        v18 = [v6 countByEnumeratingWithState:&v46 objects:v56 count:16];
      }

      while (v18);
    }

    v24 = [(_GCDevicePhysicalInputBase *)v2 facade];
    [(_GCDevicePhysicalInputView *)v24 _didChangeValueForKey:?];
    v25 = [(_GCDevicePhysicalInputBase *)v2 facade];
    [(_GCDevicePhysicalInputView *)v25 _didChangeValueForKey:?];
    Property = objc_getProperty(v2, v26, 112, 1);
    if (Property)
    {
      v29 = Property;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v30 = [v6 countByEnumeratingWithState:&v42 objects:v55 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = 0;
        v33 = *v43;
        do
        {
          for (k = 0; k != v31; ++k)
          {
            if (*v43 != v33)
            {
              objc_enumerationMutation(v6);
            }

            v35 = *(*(&v42 + 1) + 8 * k);
            if ([(_GCDevicePhysicalInputTransaction *)currentTransaction updateContextForElementAtIndex:v32 size:0 onlyIfChanged:1])
            {
              v36 = [(_GCDevicePhysicalInputBase *)v2 facade];
              v29[2](v29, v36, v35);
            }

            ++v32;
          }

          v31 = [v6 countByEnumeratingWithState:&v42 objects:v55 count:16];
        }

        while (v31);
      }
    }

    result = objc_getProperty(v2, v28, 120, 1);
    v37 = v41;
    if (!result)
    {
      v37 = 0;
    }

    if (v37)
    {
      v38 = result;
      v39 = [(_GCDevicePhysicalInputBase *)v2 facade];
      result = (v38->super._dataSource)(v38, v39);
    }

    atomic_store(0, &v2->_isHandlingEvent);
  }

  v40 = *MEMORY[0x1E69E9840];
  return result;
}

- (_GCDevicePhysicalInput)updateWithElements:(_GCDevicePhysicalInput *)result
{
  v97 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    pendingTransaction = result->_pendingTransaction;
    v5 = [(_GCDevicePhysicalInputBase *)pendingTransaction elements];
    v6 = [v5 count];
    if (v6 != [a2 count])
    {
      v58 = v5;
      v60 = a2;
      [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    }

    v67 = a2;
    v8 = [(_GCDevicePhysicalInputBase *)v3->_pendingTransaction viewConfiguration];
    v9 = [_GCDevicePhysicalInputStateTable stateTableWithCopyOfStateTable:v8];
    [(_GCDevicePhysicalInputBase *)v3->_pendingTransaction setViewConfiguration:v9];
    objc_sync_enter(v3);
    currentTransaction = v3->_currentTransaction;
    v65 = v3;
    objc_sync_exit(v3);
    [(_GCDevicePhysicalInputTransaction *)pendingTransaction setLastEventHostTimestamp:?];
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v11 = [v5 countByEnumeratingWithState:&v90 objects:v96 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v91;
      do
      {
        v15 = v5;
        v16 = 0;
        v17 = v13;
        do
        {
          if (*v91 != v14)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v90 + 1) + 8 * v16);
          v19 = [v67 gc_member:{objc_msgSend(v18, "identifier")}];
          if (!v19)
          {
            v58 = v15;
            v60 = v67;
            [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
          }

          v13 = v17 + 1;
          v84 = MEMORY[0x1E69E9820];
          v85 = 3221225472;
          v86 = __45___GCDevicePhysicalInput_updateWithElements___block_invoke;
          v87 = &unk_1E841AE30;
          v88 = v18;
          v89 = v19;
          [(_GCDevicePhysicalInputTransaction *)pendingTransaction mutableUpdateContextForElementAtIndex:v17 withHandler:&v84];
          ++v16;
          ++v17;
        }

        while (v12 != v16);
        v5 = v15;
        v12 = [v15 countByEnumeratingWithState:&v90 objects:v96 count:16];
      }

      while (v12);
    }

    v20 = v65;
    v21 = [(_GCDevicePhysicalInputBase *)v65 elements];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v80 objects:v95 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v81;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v81 != v25)
          {
            objc_enumerationMutation(v21);
          }

          v27 = *(*(&v80 + 1) + 8 * i);
          v79 = 0;
          v28 = [(_GCDevicePhysicalInputTransaction *)pendingTransaction updateContextForElementAtIndex:v24 size:&v79 onlyIfChanged:1];
          if (v28)
          {
            [v27 preCommit:v28 sender:v65];
          }

          ++v24;
        }

        v23 = [v21 countByEnumeratingWithState:&v80 objects:v95 count:16];
      }

      while (v23);
    }

    v29 = [(_GCDevicePhysicalInput *)v65 _commitTransaction:?];
    objc_sync_enter(v65);
    v30 = v65->_currentTransaction;
    v31 = objc_sync_exit(v65);
    v39 = OUTLINED_FUNCTION_5_11(v31, v32, v33, v34, v35, v36, v37, v38, v58, v60, v62, sel_updateWithElements_, v65, v67, 0, 0, 0, 0, 0, 0, 0, 0, v77, v79, v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), v84, v85, v86, v87, v88, v89, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94);
    if (v39)
    {
      v41 = v39;
      v42 = 0;
      v43 = *v71;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v71 != v43)
          {
            objc_enumerationMutation(v21);
          }

          v45 = *(v70 + 8 * j);
          v79 = 0;
          v46 = [(_GCDevicePhysicalInputTransaction *)v30 updateContextForElementAtIndex:v42 size:&v79 onlyIfChanged:1];
          if (v46)
          {
            v46 = [v45 postCommit:v46 sender:v20];
          }

          ++v42;
        }

        v41 = OUTLINED_FUNCTION_5_11(v46, v47, v48, v49, v50, v51, v52, v53, v59, v61, v63, v64, v66, v68, v69, v70, v71, v72, v73, v74, v75, v76, v78, v79, v80, *(&v80 + 1), v81, *(&v81 + 1), v82, *(&v82 + 1), v83, *(&v83 + 1), v84, v85, v86, v87, v88, v89, v90, *(&v90 + 1), v91, *(&v91 + 1), v92, *(&v92 + 1), v93, *(&v93 + 1), v94);
      }

      while (v41);
    }

    result = objc_getProperty(v20, v40, 120, 1);
    if (result)
    {
      v54 = v29;
    }

    else
    {
      v54 = 0;
    }

    if (v54)
    {
      v55 = result;
      v56 = [(_GCDevicePhysicalInputBase *)v20 facade];
      result = (v55->super._dataSource)(v55, v56);
    }
  }

  v57 = *MEMORY[0x1E69E9840];
  return result;
}

- (uint64_t)currentTransaction
{
  if (!a1)
  {
    return 0;
  }

  objc_sync_enter(a1);
  v2 = a1[17];
  objc_sync_exit(a1);
  return v2;
}

- (id)inputStateAvailableHandler
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_2(result, a2, 120);
  }

  return result;
}

- (id)queue
{
  if (result)
  {
    v1 = result;
    v2 = [result dataSource];
    if (v2)
    {

      return [v2 physicalInputQueue:v1];
    }

    else
    {
      v3 = GCDevicePhysicalInputQueueKey;

      return objc_getAssociatedObject(v1, v3);
    }
  }

  return result;
}

- (void)setQueue:(void *)result
{
  if (result)
  {
    v3 = result;
    v4 = [result dataSource];
    if (v4)
    {

      return [v4 physicalInput:v3 setQueue:a2];
    }

    else
    {
      [-[_GCDevicePhysicalInputBase facade](v3) willChangeValueForKey:@"queue"];
      objc_setAssociatedObject(v3, GCDevicePhysicalInputQueueKey, a2, 0x301);
      v5 = [(_GCDevicePhysicalInputBase *)v3 facade];

      return [v5 didChangeValueForKey:@"queue"];
    }
  }

  return result;
}

- (uint64_t)transactionQueueDepth
{
  if (!a1)
  {
    return 0;
  }

  objc_sync_enter(a1);
  v2 = a1[20];
  objc_sync_exit(a1);
  return v2;
}

- (void)setTransactionQueueDepth:(void *)result
{
  if (result)
  {
    v2 = result;
    if (a2 <= 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = a2;
    }

    objc_sync_enter(result);
    if (v3 != v2[20])
    {
      v2[20] = v3;
    }

    objc_sync_exit(v2);
    v4 = [v2 dataSource];

    return [v4 physicalInputTransactionQueueDepthDidChange:v2];
  }

  return result;
}

- (uint64_t)pendingTransaction
{
  if (!a1)
  {
    return 0;
  }

  objc_sync_enter(a1);
  v2 = a1[18];
  objc_sync_exit(a1);
  return v2;
}

- (double)lastEventTimestamp
{
  [(_GCDevicePhysicalInput *)self updateViewStateIfNeeded];
  v3 = [(_GCDevicePhysicalInput *)self currentTransaction];

  [v3 lastEventTimestamp];
  return result;
}

- (id)elementValueDidChangeHandler
{
  if (result)
  {
    return OUTLINED_FUNCTION_2_2(result, a2, 112);
  }

  return result;
}

- (void)setElementValueDidChangeHandler:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_24(a1, a2, a3, 112);
  }
}

- (void)setInputStateAvailableHandler:(uint64_t)a3
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_24(a1, a2, a3, 120);
  }
}

- (uint64_t)handleGamepadEvent:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [a2 timestamp];
    [-[_GCDevicePhysicalInputBase attributes](v3) count];
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_0_30();
    v5 = 3221225472;
    v6 = __60___GCDevicePhysicalInput_EventHandling__handleGamepadEvent___block_invoke;
    v7 = &unk_1E841AE80;
    v8 = a2;
    [(_GCDevicePhysicalInput *)v3 _handleEventTransaction:v4];
    [a2 timestamp];
    [-[_GCDevicePhysicalInputBase attributes](v3) count];
    return OUTLINED_FUNCTION_4_10();
  }

  return result;
}

- (_GCDevicePhysicalInput)handleMouseEvent:(_GCDevicePhysicalInput *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_0_30();
    v4 = 3221225472;
    v5 = __58___GCDevicePhysicalInput_EventHandling__handleMouseEvent___block_invoke;
    v6 = &__block_descriptor_56_e43_Q16__0___GCDevicePhysicalInputTransaction_8l;
    v7 = *v1;
    v8 = *(v1 + 2);
    return [(_GCDevicePhysicalInput *)v2 _handleEventTransaction:v3];
  }

  return result;
}

- (uint64_t)handleCollectionEvent:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [a2 timestamp];
    [-[_GCDevicePhysicalInputBase attributes](v3) count];
    OUTLINED_FUNCTION_3_11();
    OUTLINED_FUNCTION_0_30();
    v5 = 3221225472;
    v6 = __63___GCDevicePhysicalInput_EventHandling__handleCollectionEvent___block_invoke;
    v7 = &unk_1E841AE80;
    v8 = a2;
    [(_GCDevicePhysicalInput *)v3 _handleEventTransaction:v4];
    [a2 timestamp];
    [-[_GCDevicePhysicalInputBase attributes](v3) count];
    return OUTLINED_FUNCTION_4_10();
  }

  return result;
}

- (void)setDataSource:(void *)a1 .cold.1(void *a1)
{
  v2 = GCDevicePhysicalInputQueueKey;
  v3 = [0 physicalInputQueue:a1];

  objc_setAssociatedObject(a1, v2, v3, 0x301);
}

@end