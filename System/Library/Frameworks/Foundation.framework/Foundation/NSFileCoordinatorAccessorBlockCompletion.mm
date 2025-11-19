@interface NSFileCoordinatorAccessorBlockCompletion
+ (id)completionWithBlock:(id)a3;
- (void)dealloc;
- (void)decrement;
- (void)increment;
@end

@implementation NSFileCoordinatorAccessorBlockCompletion

- (void)decrement
{
  add = atomic_fetch_add(&self->count, 0xFFFFFFFF);
  if (add == 1)
  {
    (*(self->block + 2))();

    self->block = 0;
  }

  else if (!add)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Accessor completion counter over-decremented" userInfo:0]);
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->count);
  if (v3 >= 1)
  {
    (*(self->block + 2))();
  }

  v4.receiver = self;
  v4.super_class = NSFileCoordinatorAccessorBlockCompletion;
  [(NSFileCoordinatorAccessorBlockCompletion *)&v4 dealloc];
}

+ (id)completionWithBlock:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = objc_opt_new();
  *(v4 + 1) = [a3 copy];
  atomic_store(1u, v4 + 4);
  return v4;
}

- (void)increment
{
  if (!atomic_fetch_add(&self->count, 1u))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Accessor completion counter should never be incremented from 0 to 1" userInfo:{0, v2, v3}]);
  }
}

@end