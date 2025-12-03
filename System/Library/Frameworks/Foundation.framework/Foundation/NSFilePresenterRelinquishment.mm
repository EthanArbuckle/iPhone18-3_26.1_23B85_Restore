@interface NSFilePresenterRelinquishment
- (BOOL)_locked_addRelinquishReply:(id)reply;
- (void)_locked_addPrerelinquishReply:(id)reply;
- (void)dealloc;
- (void)didRelinquish;
- (void)performRelinquishmentToAccessClaimIfNecessary:(id)necessary usingBlock:(id)block withReply:(id)reply;
- (void)performRemoteDeletePrerelinquishmentIfNecessaryUsingBlock:(id)block withReply:(id)reply;
- (void)removeAllBlockingAccessClaimIDs;
- (void)removeBlockingAccessClaimID:(id)d thenContinue:(id)continue;
- (void)setReacquirer:(id)reacquirer;
@end

@implementation NSFilePresenterRelinquishment

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSFilePresenterRelinquishment;
  [(NSFilePresenterRelinquishment *)&v3 dealloc];
}

- (void)performRemoteDeletePrerelinquishmentIfNecessaryUsingBlock:(id)block withReply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSCountedSet *)self->_blockingAccessClaimIDs count];
  prerelinquishInProgress = self->_prerelinquishInProgress;
  v10 = _NSFCPresenterLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (prerelinquishInProgress)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "Prerelinquishment already in progress. Adding a new prelinquishment reply", buf, 2u);
      if (!v8)
      {
        goto LABEL_4;
      }
    }

    else if (!v8)
    {
LABEL_4:
      [(NSFilePresenterRelinquishment *)self _locked_addPrerelinquishReply:reply];
      os_unfair_lock_unlock(&self->_lock);
      return;
    }

    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFilePresenterRelinquishment.m" description:39, @"Somehow relinquishment and prerelinquishment are happening concurrently?"];
    goto LABEL_4;
  }

  if (v8)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "Prelinquishment requested, but already asked to relinquish. Adding a new relinquishment reply", buf, 2u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __101__NSFilePresenterRelinquishment_performRemoteDeletePrerelinquishmentIfNecessaryUsingBlock_withReply___block_invoke;
    v14[3] = &unk_1E69F40C0;
    v14[4] = reply;
    v12 = [(NSFilePresenterRelinquishment *)self _locked_addRelinquishReply:v14];
    os_unfair_lock_unlock(&self->_lock);
    if (!v12)
    {
      (*(reply + 2))(reply, 1);
    }
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "Starting prelinquishment for remote deletion request", buf, 2u);
    }

    if (self->_blockingPrerelinquishReplies)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFilePresenterRelinquishment.m" description:56, @"A presenter previously finished prerelinquishment without clearing its prerelinquishment replies"];
    }

    self->_prerelinquishInProgress = 1;
    self->_blockingPrerelinquishReplies = objc_alloc_init(MEMORY[0x1E695DF70]);
    os_unfair_lock_unlock(&self->_lock);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __101__NSFilePresenterRelinquishment_performRemoteDeletePrerelinquishmentIfNecessaryUsingBlock_withReply___block_invoke_9;
    v13[3] = &unk_1E69F90A8;
    v13[4] = self;
    v13[5] = reply;
    (*(block + 2))(block, v13);
  }
}

void __101__NSFilePresenterRelinquishment_performRemoteDeletePrerelinquishmentIfNecessaryUsingBlock_withReply___block_invoke_9(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((*(a1 + 32) + 8));
  *(*(a1 + 32) + 48) = 0;
  v2 = [*(*(a1 + 32) + 40) copy];

  *(*(a1 + 32) + 40) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  (*(*(a1 + 40) + 16))();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (void)performRelinquishmentToAccessClaimIfNecessary:(id)necessary usingBlock:(id)block withReply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_prerelinquishInProgress)
  {
    v10 = _NSFCPresenterLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      necessaryCopy3 = necessary;
      _os_log_debug_impl(&dword_18075C000, v10, OS_LOG_TYPE_DEBUG, "Deferring relinquishment to %{public}@ because of pre-relinquishment in progress", buf, 0xCu);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __100__NSFilePresenterRelinquishment_performRelinquishmentToAccessClaimIfNecessary_usingBlock_withReply___block_invoke;
    v18[3] = &unk_1E69F9E10;
    v18[4] = self;
    v18[5] = necessary;
    v18[6] = block;
    v18[7] = reply;
    [(NSFilePresenterRelinquishment *)self _locked_addPrerelinquishReply:v18];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v11 = [(NSCountedSet *)self->_blockingAccessClaimIDs count];
    blockingAccessClaimIDs = self->_blockingAccessClaimIDs;
    if (!blockingAccessClaimIDs)
    {
      blockingAccessClaimIDs = objc_alloc_init(NSCountedSet);
      self->_blockingAccessClaimIDs = blockingAccessClaimIDs;
    }

    [(NSCountedSet *)blockingAccessClaimIDs addObject:necessary];
    v13 = _NSFCPresenterLog();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
    if (v11)
    {
      if (v14)
      {
        *buf = 138543362;
        necessaryCopy3 = necessary;
        _os_log_debug_impl(&dword_18075C000, v13, OS_LOG_TYPE_DEBUG, "Not explicitly asking presenter to relinquish to claim %{public}@ because it has already relinquished", buf, 0xCu);
      }

      v15 = [(NSFilePresenterRelinquishment *)self _locked_addRelinquishReply:reply];
      os_unfair_lock_unlock(&self->_lock);
      if (!v15)
      {
        (*(reply + 2))(reply);
      }
    }

    else
    {
      if (v14)
      {
        *buf = 138543362;
        necessaryCopy3 = necessary;
        _os_log_debug_impl(&dword_18075C000, v13, OS_LOG_TYPE_DEBUG, "Starting relinquishment to claim %{public}@", buf, 0xCu);
      }

      if (self->_relinquishReplies)
      {
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFilePresenterRelinquishment.m" description:107, @"A presenter previously relinquished without clearing its relinquishment replies"];
      }

      self->_relinquishReplies = objc_alloc_init(MEMORY[0x1E695DF70]);
      v16 = [(NSFilePresenterRelinquishment *)self _locked_addRelinquishReply:reply];
      os_unfair_lock_unlock(&self->_lock);
      if (!v16)
      {
        (*(reply + 2))(reply);
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __100__NSFilePresenterRelinquishment_performRelinquishmentToAccessClaimIfNecessary_usingBlock_withReply___block_invoke_15;
      v17[3] = &unk_1E69F2C00;
      v17[4] = self;
      (*(block + 2))(block, v17);
    }
  }
}

- (void)setReacquirer:(id)reacquirer
{
  v7 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if ([(NSCountedSet *)self->_blockingAccessClaimIDs count])
  {
    self->_reacquirer = [reacquirer copy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = _NSFCPresenterLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_18075C000, v5, OS_LOG_TYPE_DEBUG, "Reacquiring immediately, because there are no more claims", v6, 2u);
    }

    (*(reacquirer + 2))(reacquirer, &__block_literal_global_81);
  }
}

- (void)removeBlockingAccessClaimID:(id)d thenContinue:(id)continue
{
  v10 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  [(NSCountedSet *)self->_blockingAccessClaimIDs removeObject:d];
  if ([(NSCountedSet *)self->_blockingAccessClaimIDs count])
  {
    goto LABEL_2;
  }

  v7 = _NSFCPresenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *v9 = 0;
    _os_log_debug_impl(&dword_18075C000, v7, OS_LOG_TYPE_DEBUG, "Invoking reacquirer, because no claims remain", v9, 2u);
  }

  reacquirer = self->_reacquirer;
  if (!reacquirer)
  {
LABEL_2:
    os_unfair_lock_unlock(&self->_lock);
    (*(continue + 2))(continue);
  }

  else
  {
    self->_reacquirer = 0;
    os_unfair_lock_unlock(&self->_lock);
    reacquirer[2](reacquirer, continue);
  }
}

- (void)removeAllBlockingAccessClaimIDs
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);

  self->_blockingAccessClaimIDs = 0;
  if (self->_reacquirer)
  {
    v3 = _NSFCPresenterLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&dword_18075C000, v3, OS_LOG_TYPE_DEBUG, "Invoking reacquirer because all claims were removed", v5, 2u);
    }

    reacquirer = self->_reacquirer;
    self->_reacquirer = 0;
    os_unfair_lock_unlock(&self->_lock);
    if (reacquirer)
    {
      reacquirer[2](reacquirer, &__block_literal_global_19);
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)_locked_addRelinquishReply:(id)reply
{
  os_unfair_lock_assert_owner(&self->_lock);
  relinquishReplies = self->_relinquishReplies;
  if (relinquishReplies)
  {
    v6 = [reply copy];
    [(NSMutableArray *)self->_relinquishReplies addObject:v6];
  }

  return relinquishReplies != 0;
}

- (void)_locked_addPrerelinquishReply:(id)reply
{
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_blockingPrerelinquishReplies)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFilePresenterRelinquishment.m" description:226, @"addPrerelinquishReply called, but we're not in the middle of prerelinquishing"];
  }

  v6 = [reply copy];
  [(NSMutableArray *)self->_blockingPrerelinquishReplies addObject:v6];
}

- (void)didRelinquish
{
  v13 = *MEMORY[0x1E69E9840];
  if (!self->_relinquishReplies)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"NSFilePresenterRelinquishment.m" description:234, @"didRelinquish called, but there are no replies"];
  }

  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_relinquishReplies copy];

  self->_relinquishReplies = 0;
  os_unfair_lock_unlock(&self->_lock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        (*(*(*(&v9 + 1) + 8 * i) + 16))();
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v8 count:16];
    }

    while (v5);
  }
}

@end