@interface AFThreeArgumentSafetyBlock
- (AFThreeArgumentSafetyBlock)initWithBlock:(id)block defaultValue1:(id)value1 defaultValue2:(id)value2 defaultValue3:(id)value3;
- (BOOL)invokeWithValue:(id)value andValue:(id)andValue andValue:(id)a5;
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

- (BOOL)invokeWithValue:(id)value andValue:(id)andValue andValue:(id)a5
{
  valueCopy = value;
  andValueCopy = andValue;
  v10 = a5;
  v11 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v11 & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, valueCopy, andValueCopy, v10);
      v13 = self->_block;
      self->_block = 0;
    }
  }

  return (v11 & 1) == 0;
}

- (AFThreeArgumentSafetyBlock)initWithBlock:(id)block defaultValue1:(id)value1 defaultValue2:(id)value2 defaultValue3:(id)value3
{
  blockCopy = block;
  value1Copy = value1;
  value2Copy = value2;
  value3Copy = value3;
  v18.receiver = self;
  v18.super_class = AFThreeArgumentSafetyBlock;
  v14 = [(AFThreeArgumentSafetyBlock *)&v18 init];
  if (v14)
  {
    v15 = MEMORY[0x193AFB7B0](blockCopy);
    block = v14->_block;
    v14->_block = v15;

    objc_storeStrong(&v14->_defaultValue1, value1);
    objc_storeStrong(&v14->_defaultValue2, value2);
    objc_storeStrong(&v14->_defaultValue3, value3);
  }

  return v14;
}

@end