@interface AFTwoArgumentSafetyBlock
- (AFTwoArgumentSafetyBlock)initWithBlock:(id)a3 defaultValue1:(id)a4 defaultValue2:(id)a5;
- (BOOL)invokeWithValue:(id)a3 andValue:(id)a4;
- (void)dealloc;
@end

@implementation AFTwoArgumentSafetyBlock

- (void)dealloc
{
  [(AFTwoArgumentSafetyBlock *)self invokeWithValue:self->_defaultValue1 andValue:self->_defaultValue2];
  v3.receiver = self;
  v3.super_class = AFTwoArgumentSafetyBlock;
  [(AFTwoArgumentSafetyBlock *)&v3 dealloc];
}

- (BOOL)invokeWithValue:(id)a3 andValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v8 & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, v6, v7);
      v10 = self->_block;
      self->_block = 0;
    }
  }

  return (v8 & 1) == 0;
}

- (AFTwoArgumentSafetyBlock)initWithBlock:(id)a3 defaultValue1:(id)a4 defaultValue2:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = AFTwoArgumentSafetyBlock;
  v11 = [(AFTwoArgumentSafetyBlock *)&v15 init];
  if (v11)
  {
    v12 = MEMORY[0x193AFB7B0](v8);
    block = v11->_block;
    v11->_block = v12;

    objc_storeStrong(&v11->_defaultValue1, a4);
    objc_storeStrong(&v11->_defaultValue2, a5);
  }

  return v11;
}

@end