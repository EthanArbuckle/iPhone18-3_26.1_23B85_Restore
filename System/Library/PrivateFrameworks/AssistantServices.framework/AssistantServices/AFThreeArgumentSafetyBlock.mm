@interface AFThreeArgumentSafetyBlock
- (AFThreeArgumentSafetyBlock)initWithBlock:(id)a3 defaultValue1:(id)a4 defaultValue2:(id)a5 defaultValue3:(id)a6;
- (BOOL)invokeWithValue:(id)a3 andValue:(id)a4 andValue:(id)a5;
- (void)dealloc;
@end

@implementation AFThreeArgumentSafetyBlock

- (void)dealloc
{
  [(AFThreeArgumentSafetyBlock *)self invokeWithValue:self->_defaultValue1 andValue:self->_defaultValue2 andValue:self->_defaultValue3];
  v3.receiver = self;
  v3.super_class = AFThreeArgumentSafetyBlock;
  [(AFThreeArgumentSafetyBlock *)&v3 dealloc];
}

- (BOOL)invokeWithValue:(id)a3 andValue:(id)a4 andValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v11 & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, v8, v9, v10);
      v13 = self->_block;
      self->_block = 0;
    }
  }

  return (v11 & 1) == 0;
}

- (AFThreeArgumentSafetyBlock)initWithBlock:(id)a3 defaultValue1:(id)a4 defaultValue2:(id)a5 defaultValue3:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = AFThreeArgumentSafetyBlock;
  v14 = [(AFThreeArgumentSafetyBlock *)&v18 init];
  if (v14)
  {
    v15 = MEMORY[0x193AFB7B0](v10);
    block = v14->_block;
    v14->_block = v15;

    objc_storeStrong(&v14->_defaultValue1, a4);
    objc_storeStrong(&v14->_defaultValue2, a5);
    objc_storeStrong(&v14->_defaultValue3, a6);
  }

  return v14;
}

@end