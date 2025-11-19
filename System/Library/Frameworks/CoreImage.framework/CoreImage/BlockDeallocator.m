@interface BlockDeallocator
- (BlockDeallocator)initWithBlock:(id)a3;
- (void)dealloc;
@end

@implementation BlockDeallocator

- (BlockDeallocator)initWithBlock:(id)a3
{
  v6.receiver = self;
  v6.super_class = BlockDeallocator;
  v4 = [(BlockDeallocator *)&v6 init];
  if (v4)
  {
    v4->_block = _Block_copy(a3);
  }

  return v4;
}

- (void)dealloc
{
  block = self->_block;
  if (block)
  {
    block[2](block, a2);
    _Block_release(self->_block);
  }

  v4.receiver = self;
  v4.super_class = BlockDeallocator;
  [(BlockDeallocator *)&v4 dealloc];
}

@end