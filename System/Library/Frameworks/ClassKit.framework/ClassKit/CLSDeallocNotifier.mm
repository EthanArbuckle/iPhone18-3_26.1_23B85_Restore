@interface CLSDeallocNotifier
- (CLSDeallocNotifier)initWithDeallocCallbackBlock:(id)a3;
- (void)dealloc;
@end

@implementation CLSDeallocNotifier

- (CLSDeallocNotifier)initWithDeallocCallbackBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLSDeallocNotifier;
  v5 = [(CLSDeallocNotifier *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x2383C3E80](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)dealloc
{
  block = self->_block;
  if (block)
  {
    block[2](block, a2);
  }

  v4.receiver = self;
  v4.super_class = CLSDeallocNotifier;
  [(CLSDeallocNotifier *)&v4 dealloc];
}

@end