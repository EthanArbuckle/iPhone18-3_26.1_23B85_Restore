@interface AFSafetyBlock
- (AFSafetyBlock)initWithBlock:(id)block;
- (BOOL)invokeWithSignal:(int64_t)signal;
- (void)dealloc;
@end

@implementation AFSafetyBlock

- (void)dealloc
{
  [(AFSafetyBlock *)self invokeWithSignal:-1];
  v3.receiver = self;
  v3.super_class = AFSafetyBlock;
  [(AFSafetyBlock *)&v3 dealloc];
}

- (BOOL)invokeWithSignal:(int64_t)signal
{
  v3 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v3 & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, signal);
      v6 = self->_block;
      self->_block = 0;
    }
  }

  return (v3 & 1) == 0;
}

- (AFSafetyBlock)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = AFSafetyBlock;
  v5 = [(AFSafetyBlock *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x193AFB7B0](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end