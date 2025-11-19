@interface SecConcrete_sec_array
- (SecConcrete_sec_array)init;
- (void)dealloc;
@end

@implementation SecConcrete_sec_array

- (SecConcrete_sec_array)init
{
  v7.receiver = self;
  v7.super_class = SecConcrete_sec_array;
  v2 = [(SecConcrete_sec_array *)&v7 init];
  if (v2)
  {
    v3 = xpc_array_create(0, 0);
    xpc_array = v2->xpc_array;
    v2->xpc_array = v3;

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  xpc_array = self->xpc_array;
  if (xpc_array)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __32__SecConcrete_sec_array_dealloc__block_invoke;
    applier[3] = &unk_1E70D6B10;
    applier[4] = self;
    xpc_array_apply(xpc_array, applier);
    v4 = self->xpc_array;
    self->xpc_array = 0;
  }

  v5.receiver = self;
  v5.super_class = SecConcrete_sec_array;
  [(SecConcrete_sec_array *)&v5 dealloc];
}

@end