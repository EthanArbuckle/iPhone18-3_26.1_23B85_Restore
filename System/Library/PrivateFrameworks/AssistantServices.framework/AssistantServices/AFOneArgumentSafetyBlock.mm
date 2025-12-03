@interface AFOneArgumentSafetyBlock
- (AFOneArgumentSafetyBlock)initWithBlock:(id)block defaultValue:(id)value;
- (BOOL)invokeWithValue:(id)value;
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

- (BOOL)invokeWithValue:(id)value
{
  valueCopy = value;
  v5 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v5 & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, valueCopy);
      v7 = self->_block;
      self->_block = 0;
    }
  }

  return (v5 & 1) == 0;
}

- (AFOneArgumentSafetyBlock)initWithBlock:(id)block defaultValue:(id)value
{
  blockCopy = block;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = AFOneArgumentSafetyBlock;
  v8 = [(AFOneArgumentSafetyBlock *)&v12 init];
  if (v8)
  {
    v9 = MEMORY[0x193AFB7B0](blockCopy);
    block = v8->_block;
    v8->_block = v9;

    objc_storeStrong(&v8->_defaultValue, value);
  }

  return v8;
}

@end