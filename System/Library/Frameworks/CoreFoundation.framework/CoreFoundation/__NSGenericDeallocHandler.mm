@interface __NSGenericDeallocHandler
- (void)finalize;
- (void)release;
@end

@implementation __NSGenericDeallocHandler

- (void)release
{
  block = self->_block;
  if (block)
  {
    block[2](block, a2);
    _Block_release(self->_block);
    self->_block = 0;

    object_dispose(self);
  }

  else
  {
    __break(1u);
  }
}

- (void)finalize
{
  block = self->_block;
  if (block)
  {
    block[2](block, a2);
    _Block_release(self->_block);
    self->_block = 0;
  }

  else
  {
    __break(1u);
  }
}

@end