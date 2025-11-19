@interface AFOneArgumentSafetyBlock
- (AFOneArgumentSafetyBlock)initWithBlock:(id)a3 defaultValue:(id)a4;
- (BOOL)invokeWithValue:(id)a3;
- (void)dealloc;
@end

@implementation AFOneArgumentSafetyBlock

- (void)dealloc
{
  [(AFOneArgumentSafetyBlock *)self invokeWithValue:self->_defaultValue];
  v3.receiver = self;
  v3.super_class = AFOneArgumentSafetyBlock;
  [(AFOneArgumentSafetyBlock *)&v3 dealloc];
}

- (BOOL)invokeWithValue:(id)a3
{
  v4 = a3;
  v5 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v5 & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, v4);
      v7 = self->_block;
      self->_block = 0;
    }
  }

  return (v5 & 1) == 0;
}

- (AFOneArgumentSafetyBlock)initWithBlock:(id)a3 defaultValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AFOneArgumentSafetyBlock;
  v8 = [(AFOneArgumentSafetyBlock *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x193AFB7B0](v6);
    block = v8->_block;
    v8->_block = v9;

    objc_storeStrong(&v8->_defaultValue, a4);
  }

  return v8;
}

@end