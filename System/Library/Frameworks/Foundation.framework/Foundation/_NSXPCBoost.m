@interface _NSXPCBoost
- (void)_initWithEvent:(void *)a1;
- (void)dealloc;
@end

@implementation _NSXPCBoost

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  xpc_release(self->_event);
  v3.receiver = self;
  v3.super_class = _NSXPCBoost;
  [(_NSXPCBoost *)&v3 dealloc];
}

- (void)_initWithEvent:(void *)a1
{
  v6 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v5.receiver = a1;
  v5.super_class = _NSXPCBoost;
  v3 = objc_msgSendSuper2(&v5, sel_init);
  v3[1] = xpc_retain(a2);
  return v3;
}

@end