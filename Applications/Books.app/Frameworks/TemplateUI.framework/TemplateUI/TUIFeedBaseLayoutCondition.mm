@interface TUIFeedBaseLayoutCondition
- (TUIFeedBaseLayoutCondition)initWithCompletion:(id)completion;
- (void)completed;
- (void)dealloc;
- (void)invalidate;
- (void)onInvalidate:(id)invalidate;
@end

@implementation TUIFeedBaseLayoutCondition

- (TUIFeedBaseLayoutCondition)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v10.receiver = self;
  v10.super_class = TUIFeedBaseLayoutCondition;
  v5 = [(TUIFeedBaseLayoutCondition *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    *&v5->_state &= ~1u;
    v7 = [completionCopy copy];
    completion = v6->_completion;
    v6->_completion = v7;
  }

  return v6;
}

- (void)dealloc
{
  [(TUIFeedBaseLayoutCondition *)self invalidate];
  v3.receiver = self;
  v3.super_class = TUIFeedBaseLayoutCondition;
  [(TUIFeedBaseLayoutCondition *)&v3 dealloc];
}

- (void)onInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  if (invalidateCopy)
  {
    v9 = invalidateCopy;
    os_unfair_lock_lock_with_options();
    if (*&self->_state)
    {
      os_unfair_lock_unlock(&self->_lock);
      v9[2]();
    }

    else
    {
      onInvalidateBlocks = self->_onInvalidateBlocks;
      if (!onInvalidateBlocks)
      {
        v6 = objc_opt_new();
        v7 = self->_onInvalidateBlocks;
        self->_onInvalidateBlocks = v6;

        onInvalidateBlocks = self->_onInvalidateBlocks;
      }

      v8 = objc_retainBlock(v9);
      [(NSMutableArray *)onInvalidateBlocks addObject:v8];

      os_unfair_lock_unlock(&self->_lock);
    }

    invalidateCopy = v9;
  }
}

- (void)invalidate
{
  os_unfair_lock_lock_with_options();
  if (*&self->_state)
  {
    os_unfair_lock_unlock(&self->_lock);
    v3 = 0;
  }

  else
  {
    v3 = self->_onInvalidateBlocks;
    onInvalidateBlocks = self->_onInvalidateBlocks;
    self->_onInvalidateBlocks = 0;

    *&self->_state |= 1u;
    os_unfair_lock_unlock(&self->_lock);
    if (v3)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v3 = v3;
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v3);
            }

            (*(*(*(&v9 + 1) + 8 * v8) + 16))(*(*(&v9 + 1) + 8 * v8));
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }

  [(TUIFeedBaseLayoutCondition *)self completed];
}

- (void)completed
{
  os_unfair_lock_lock_with_options();
  v5 = objc_retainBlock(self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  os_unfair_lock_unlock(&self->_lock);
  v4 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5);
    v4 = v5;
  }
}

@end