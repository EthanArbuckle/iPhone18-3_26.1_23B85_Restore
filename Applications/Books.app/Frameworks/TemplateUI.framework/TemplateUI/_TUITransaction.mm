@interface _TUITransaction
- (BOOL)isCommitted;
- (BOOL)isCommittedAndIfNotNotifyWithBlock:(id)block;
- (_TUITransaction)initWithName:(id)name options:(id)options;
- (id)_isDependentOn:(id)on;
- (id)redactedDescription;
- (int64_t)compareIdentifier:(id)identifier;
- (void)_addDependentOn:(id)on;
- (void)addCategory:(id)category;
- (void)addCompletion:(id)completion queue:(id)queue;
- (void)addSubTransaction:(id)transaction completionQueue:(id)queue;
- (void)addSubTransactionCompletion:(id)completion queue:(id)queue;
- (void)commit;
- (void)dependentOn:(id)on;
@end

@implementation _TUITransaction

- (id)redactedDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = v4;
  options = self->_options;
  identifier = self->_identifier;
  flags = self->_flags;
  if (self->_name)
  {
    v9 = [NSString stringWithFormat:@" name=%@", self->_name];
    v10 = [NSString stringWithFormat:@"<%@ %p id=%lu flags=%lu options=%@ %@>", v5, self, identifier, flags, options, v9];
  }

  else
  {
    v10 = [NSString stringWithFormat:@"<%@ %p id=%lu flags=%lu options=%@ %@>", v4, self, identifier, flags, self->_options, &stru_264550];
  }

  return v10;
}

- (int64_t)compareIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifier = self->_identifier;
  if (identifier >= [identifierCopy identifier])
  {
    v7 = self->_identifier;
    v6 = v7 > [identifierCopy identifier];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (_TUITransaction)initWithName:(id)name options:(id)options
{
  nameCopy = name;
  optionsCopy = options;
  v25.receiver = self;
  v25.super_class = _TUITransaction;
  v8 = [(_TUITransaction *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_stateLock._os_unfair_lock_opaque = 0;
    v8->_identifier = atomic_fetch_add(&qword_2E5F98, 1uLL);
    v10 = [nameCopy copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [optionsCopy copy];
    options = v9->_options;
    v9->_options = v12;

    v14 = dispatch_group_create();
    completionGroup = v9->_completionGroup;
    v9->_completionGroup = v14;

    v16 = dispatch_group_create();
    subTransactionCompletionGroup = v9->_subTransactionCompletionGroup;
    v9->_subTransactionCompletionGroup = v16;

    v18 = dispatch_group_create();
    notifyAppliedGroup = v9->_notifyAppliedGroup;
    v9->_notifyAppliedGroup = v18;

    v20 = +[NSDate date];
    creationDate = v9->_creationDate;
    v9->_creationDate = v20;

    if (qword_2E5FA8 != -1)
    {
      sub_19930C();
    }

    if (byte_2E5FA0 == 1)
    {
      v22 = +[NSThread callStackSymbols];
      callstack = v9->_callstack;
      v9->_callstack = v22;
    }

    *&v9->_state = 0;
    dispatch_group_enter(v9->_notifyAppliedGroup);
  }

  return v9;
}

- (void)addCompletion:(id)completion queue:(id)queue
{
  completionCopy = completion;
  queueCopy = queue;
  v7 = completionCopy;
  v8 = queueCopy;
  if (completionCopy)
  {
    if (!queueCopy)
    {
      v8 = &_dispatch_main_q;
      v9 = &_dispatch_main_q;
      v7 = completionCopy;
    }

    TUIDispatchGroupNotifyViaRunloopIfMain(self->_completionGroup, v8, v7);
  }
}

- (id)_isDependentOn:(id)on
{
  onCopy = on;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = [_TUITransactionPathComponent alloc];
  nextObject = [NSSet setWithObject:self];
  objectEnumerator = [nextObject objectEnumerator];
  v10 = [(_TUITransactionPathComponent *)v7 initWithTransaction:0 enumerator:objectEnumerator];
  [v6 addObject:v10];

  while (1)
  {
    while (1)
    {

      if (![v6 count])
      {
        v17 = 0;
        goto LABEL_20;
      }

      lastObject = [v6 lastObject];
      enumerator = [lastObject enumerator];
      nextObject = [enumerator nextObject];

      if (nextObject)
      {
        break;
      }

      [v6 removeLastObject];
    }

    if (nextObject == onCopy)
    {
      break;
    }

    predecessors = [nextObject predecessors];
    if ([predecessors count])
    {
      v14 = [_TUITransactionPathComponent alloc];
      objectEnumerator2 = [predecessors objectEnumerator];
      v16 = [(_TUITransactionPathComponent *)v14 initWithTransaction:nextObject enumerator:objectEnumerator2];
      [v6 addObject:v16];
    }
  }

  v28 = v5;
  v18 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  [v18 addObject:nextObject];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  reverseObjectEnumerator = [v6 reverseObjectEnumerator];
  v20 = [reverseObjectEnumerator countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        transaction = [v24 transaction];

        if (transaction)
        {
          transaction2 = [v24 transaction];
          [v18 addObject:transaction2];
        }
      }

      v21 = [reverseObjectEnumerator countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v21);
  }

  [v18 addObject:onCopy];
  v17 = [v18 copy];

  v5 = v28;
LABEL_20:

  objc_autoreleasePoolPop(v5);

  return v17;
}

- (void)_addDependentOn:(id)on
{
  onCopy = on;
  v5 = onCopy;
  if (onCopy != self)
  {
    v6 = [(_TUITransaction *)onCopy _isDependentOn:self];
    v7 = TUITransactionLog();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_199334(self, v5, v8);
      }

      [v6 enumerateObjectsUsingBlock:&stru_25DE08];
      v12 = [NSString stringWithFormat:@"%@ <--> %@", self, v5];
      v13 = [NSException exceptionWithName:@"TemplateUI.CyclicTransactionDependency" reason:v12 userInfo:0];
      v14 = v13;

      objc_exception_throw(v13);
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy = self;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "adding dependency: %{public}@ <-- %{public}@", buf, 0x16u);
    }

    os_unfair_lock_lock(&self->_stateLock);
    dependees = self->_dependees;
    if (!dependees)
    {
      v10 = [NSHashTable hashTableWithOptions:517];
      v11 = self->_dependees;
      self->_dependees = v10;

      dependees = self->_dependees;
    }

    [(NSHashTable *)dependees addObject:v5];
    os_unfair_lock_unlock(&self->_stateLock);
  }
}

- (void)dependentOn:(id)on
{
  if (on)
  {
    [(_TUITransaction *)self _addDependentOn:?];
  }
}

- (void)addSubTransaction:(id)transaction completionQueue:(id)queue
{
  transactionCopy = transaction;
  queueCopy = queue;
  if (transactionCopy)
  {
    if (self->_flags)
    {
      [transactionCopy setFlags:{objc_msgSend(transactionCopy, "flags") | 1}];
    }

    [transactionCopy setFlags:{objc_msgSend(transactionCopy, "flags") | 2}];
    dispatch_group_enter(self->_subTransactionCompletionGroup);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_147F4;
    v9[3] = &unk_25DE30;
    v9[4] = self;
    [transactionCopy addSubTransactionCompletion:v9 queue:queueCopy];
    dispatch_group_enter(self->_notifyAppliedGroup);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_14800;
    v8[3] = &unk_25DE30;
    v8[4] = self;
    [transactionCopy notifyWhenAppliedWithBlock:v8];
  }
}

- (void)addSubTransactionCompletion:(id)completion queue:(id)queue
{
  completionCopy = completion;
  v7 = completionCopy;
  if (completionCopy && queue)
  {
    subTransactionCompletionGroup = self->_subTransactionCompletionGroup;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_148BC;
    v9[3] = &unk_25DE58;
    v10 = completionCopy;
    TUIDispatchGroupNotifyViaRunloopIfMain(subTransactionCompletionGroup, queue, v9);
  }
}

- (void)addCategory:(id)category
{
  categoryCopy = category;
  if (categoryCopy)
  {
    v8 = categoryCopy;
    os_unfair_lock_lock_with_options();
    categories = self->_categories;
    if (!categories)
    {
      v6 = objc_opt_new();
      v7 = self->_categories;
      self->_categories = v6;

      categories = self->_categories;
    }

    [(NSMutableSet *)categories addObject:v8];
    os_unfair_lock_unlock(&self->_stateLock);
    categoryCopy = v8;
  }
}

- (void)commit
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  *&self->_state = state | 1;
  v4 = self->_commitBlocks;
  commitBlocks = self->_commitBlocks;
  self->_commitBlocks = 0;

  os_unfair_lock_unlock(&self->_stateLock);
  if ((state & 1) == 0)
  {
    subTransactionCompletionGroup = self->_subTransactionCompletionGroup;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_14B10;
    v16[3] = &unk_25DE30;
    v16[4] = self;
    TUIDispatchGroupNotifyViaRunloopIfMain(subTransactionCompletionGroup, &_dispatch_main_q, v16);
    if (v4)
    {
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v7 = v4;
      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v13;
        do
        {
          v11 = 0;
          do
          {
            if (*v13 != v10)
            {
              objc_enumerationMutation(v7);
            }

            (*(*(*(&v12 + 1) + 8 * v11) + 16))(*(*(&v12 + 1) + 8 * v11));
            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
        }

        while (v9);
      }
    }
  }
}

- (BOOL)isCommitted
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_stateLock);
  return state & 1;
}

- (BOOL)isCommittedAndIfNotNotifyWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock_with_options();
  state = self->_state;
  if ((state & 1) == 0)
  {
    commitBlocks = self->_commitBlocks;
    if (!commitBlocks)
    {
      v7 = objc_opt_new();
      v8 = self->_commitBlocks;
      self->_commitBlocks = v7;

      commitBlocks = self->_commitBlocks;
    }

    v9 = [blockCopy copy];
    v10 = objc_retainBlock(v9);
    [(NSMutableArray *)commitBlocks addObject:v10];
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return state & 1;
}

@end