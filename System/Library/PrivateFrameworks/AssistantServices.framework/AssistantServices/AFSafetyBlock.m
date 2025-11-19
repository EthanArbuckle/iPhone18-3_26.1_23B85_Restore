@interface AFSafetyBlock
- (AFSafetyBlock)initWithBlock:(id)a3;
- (BOOL)invokeWithSignal:(int64_t)a3;
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

- (BOOL)invokeWithSignal:(int64_t)a3
{
  v3 = atomic_exchange(&self->_hasInvoked._Value, 1u);
  if ((v3 & 1) == 0)
  {
    block = self->_block;
    if (block)
    {
      block[2](block, a3);
      v6 = self->_block;
      self->_block = 0;
    }
  }

  return (v3 & 1) == 0;
}

- (AFSafetyBlock)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFSafetyBlock;
  v5 = [(AFSafetyBlock *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x193AFB7B0](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end