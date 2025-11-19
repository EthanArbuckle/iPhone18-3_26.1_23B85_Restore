@interface IPPortWrapper
- (IPPortWrapper)init;
- (void)dealloc;
@end

@implementation IPPortWrapper

- (IPPortWrapper)init
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = IPPortWrapper;
  v2 = [(IPPortWrapper *)&v5 init];
  if (v2)
  {
    v3 = malloc_type_calloc(1uLL, 0x28uLL, 0x100004053E81896uLL);
    v2->_ipport = v3;
    if (!v3)
    {
      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  free(self->_ipport);
  v3.receiver = self;
  v3.super_class = IPPortWrapper;
  [(IPPortWrapper *)&v3 dealloc];
}

@end