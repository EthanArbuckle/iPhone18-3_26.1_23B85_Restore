@interface PHASEPullStreamNode
- (void)setRenderBlock:(id)block;
@end

@implementation PHASEPullStreamNode

- (void)setRenderBlock:(id)block
{
  if (self->_renderBlock)
  {
    v3 = MEMORY[0x277CBEAD8];

    [v3 raise:@"API Misuse" format:@"Attempting to change the renderBlock for a PullStreamNode."];
  }

  else
  {
    self->_renderBlock = _Block_copy(block);

    MEMORY[0x2821F96F8]();
  }
}

@end