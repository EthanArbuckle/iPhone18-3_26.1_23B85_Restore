@interface _PFAutoreleasePoolThunk
+ (void)thunkWithBlock:(uint64_t)block;
- (void)dealloc;
- (void)initWithBlock:(void *)block;
@end

@implementation _PFAutoreleasePoolThunk

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  (*(self->_action + 2))();
  _Block_release(self->_action);
  objc_autoreleasePoolPop(v3);
  v4.receiver = self;
  v4.super_class = _PFAutoreleasePoolThunk;
  [(_PFAutoreleasePoolThunk *)&v4 dealloc];
}

- (void)initWithBlock:(void *)block
{
  if (!block)
  {
    return 0;
  }

  v5.receiver = block;
  v5.super_class = _PFAutoreleasePoolThunk;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  if (v3)
  {
    v3[1] = _Block_copy(a2);
  }

  return v3;
}

+ (void)thunkWithBlock:(uint64_t)block
{
  v3 = objc_alloc(objc_opt_self());
  v4 = [(_PFAutoreleasePoolThunk *)v3 initWithBlock:a2];

  return v4;
}

@end