@interface __NSObserver
+ (void)observerWithCenter:(uint64_t)a1;
- (void)dealloc;
@end

@implementation __NSObserver

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&_MergedGlobals_9);
  nc = self->nc;
  self->nc = 0;
  os_unfair_lock_unlock(&_MergedGlobals_9);
  block = self->_block;
  if (block)
  {
    _Block_release(block);
  }

  [(NSNotificationCenter *)nc removeObserver:self];

  v5.receiver = self;
  v5.super_class = __NSObserver;
  [(__NSObserver *)&v5 dealloc];
}

+ (void)observerWithCenter:(uint64_t)a1
{
  objc_opt_self();
  v3 = objc_opt_new();
  v3[1] = a2;
  if (qword_1ED43F2C8 != -1)
  {
    dispatch_once(&qword_1ED43F2C8, &__block_literal_global_26);
  }

  os_unfair_lock_lock(&_MergedGlobals_9);
  CFSetAddValue(qword_1ED43F2D0, v3);
  os_unfair_lock_unlock(&_MergedGlobals_9);
  return v3;
}

@end