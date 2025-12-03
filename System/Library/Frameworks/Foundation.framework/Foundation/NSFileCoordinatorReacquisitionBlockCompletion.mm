@interface NSFileCoordinatorReacquisitionBlockCompletion
+ (id)completionWithBlock:(id)block queue:(id)queue;
- (void)dealloc;
@end

@implementation NSFileCoordinatorReacquisitionBlockCompletion

+ (id)completionWithBlock:(id)block queue:(id)queue
{
  if (!block)
  {
    return 0;
  }

  v6 = objc_opt_new();
  v7 = dispatch_group_create();
  v6[1] = v7;
  dispatch_group_enter(v7);
  dispatch_group_notify(v6[1], queue, block);
  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  dispatch_release(self->group);
  v3.receiver = self;
  v3.super_class = NSFileCoordinatorReacquisitionBlockCompletion;
  [(NSFileCoordinatorReacquisitionBlockCompletion *)&v3 dealloc];
}

@end