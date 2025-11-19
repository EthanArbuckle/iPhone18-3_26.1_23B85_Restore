@interface _TUITransaction
- (BOOL)isCommitted;
- (BOOL)isCommittedAndIfNotNotifyWithBlock:(id)a3;
- (_TUITransaction)initWithName:(id)a3 options:(id)a4;
- (id)_isDependentOn:(id)a3;
- (id)redactedDescription;
- (int64_t)compareIdentifier:(id)a3;
- (void)_addDependentOn:(id)a3;
- (void)addCategory:(id)a3;
- (void)addCompletion:(id)a3 queue:(id)a4;
- (void)addSubTransaction:(id)a3 completionQueue:(id)a4;
- (void)addSubTransactionCompletion:(id)a3 queue:(id)a4;
- (void)commit;
- (void)dependentOn:(id)a3;
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

- (int64_t)compareIdentifier:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  if (identifier >= [v4 identifier])
  {
    v7 = self->_identifier;
    v6 = v7 > [v4 identifier];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (_TUITransaction)initWithName:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v25.receiver = self;
  v25.super_class = _TUITransaction;
  v8 = [(_TUITransaction *)&v25 init];
  v9 = v8;
  if (v8)
  {
    v8->_stateLock._os_unfair_lock_opaque = 0;
    v8->_identifier = atomic_fetch_add(&qword_2E5F98, 1uLL);
    v10 = [v6 copy];
    name = v9->_name;
    v9->_name = v10;

    v12 = [v7 copy];
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

- (void)addCompletion:(id)a3 queue:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = v10;
  v8 = v6;
  if (v10)
  {
    if (!v6)
    {
      v8 = &_dispatch_main_q;
      v9 = &_dispatch_main_q;
      v7 = v10;
    }

    TUIDispatchGroupNotifyViaRunloopIfMain(self->_completionGroup, v8, v7);
  }
}

- (id)_isDependentOn:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_opt_new();
  v7 = [_TUITransactionPathComponent alloc];
  v8 = [NSSet setWithObject:self];
  v9 = [v8 objectEnumerator];
  v10 = [(_TUITransactionPathComponent *)v7 initWithTransaction:0 enumerator:v9];
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

      v11 = [v6 lastObject];
      v12 = [v11 enumerator];
      v8 = [v12 nextObject];

      if (v8)
      {
        break;
      }

      [v6 removeLastObject];
    }

    if (v8 == v4)
    {
      break;
    }

    v13 = [v8 predecessors];
    if ([v13 count])
    {
      v14 = [_TUITransactionPathComponent alloc];
      v15 = [v13 objectEnumerator];
      v16 = [(_TUITransactionPathComponent *)v14 initWithTransaction:v8 enumerator:v15];
      [v6 addObject:v16];
    }
  }

  v28 = v5;
  v18 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  [v18 addObject:v8];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = [v6 reverseObjectEnumerator];
  v20 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v29 + 1) + 8 * i);
        v25 = [v24 transaction];

        if (v25)
        {
          v26 = [v24 transaction];
          [v18 addObject:v26];
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v21);
  }

  [v18 addObject:v4];
  v17 = [v18 copy];

  v5 = v28;
LABEL_20:

  objc_autoreleasePoolPop(v5);

  return v17;
}

- (void)_addDependentOn:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = [(_TUITransaction *)v4 _isDependentOn:self];
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
      v16 = self;
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

- (void)dependentOn:(id)a3
{
  if (a3)
  {
    [(_TUITransaction *)self _addDependentOn:?];
  }
}

- (void)addSubTransaction:(id)a3 completionQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    if (self->_flags)
    {
      [v6 setFlags:{objc_msgSend(v6, "flags") | 1}];
    }

    [v6 setFlags:{objc_msgSend(v6, "flags") | 2}];
    dispatch_group_enter(self->_subTransactionCompletionGroup);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_147F4;
    v9[3] = &unk_25DE30;
    v9[4] = self;
    [v6 addSubTransactionCompletion:v9 queue:v7];
    dispatch_group_enter(self->_notifyAppliedGroup);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_14800;
    v8[3] = &unk_25DE30;
    v8[4] = self;
    [v6 notifyWhenAppliedWithBlock:v8];
  }
}

- (void)addSubTransactionCompletion:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && a4)
  {
    subTransactionCompletionGroup = self->_subTransactionCompletionGroup;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_148BC;
    v9[3] = &unk_25DE58;
    v10 = v6;
    TUIDispatchGroupNotifyViaRunloopIfMain(subTransactionCompletionGroup, a4, v9);
  }
}

- (void)addCategory:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
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
    v4 = v8;
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

- (BOOL)isCommittedAndIfNotNotifyWithBlock:(id)a3
{
  v4 = a3;
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

    v9 = [v4 copy];
    v10 = objc_retainBlock(v9);
    [(NSMutableArray *)commitBlocks addObject:v10];
  }

  os_unfair_lock_unlock(&self->_stateLock);

  return state & 1;
}

@end