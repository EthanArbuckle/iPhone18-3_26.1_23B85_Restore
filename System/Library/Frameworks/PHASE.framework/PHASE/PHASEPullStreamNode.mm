@interface PHASEPullStreamNode
- (void)setRenderBlock:(id)a3;
@end

@implementation PHASEPullStreamNode

- (void)setRenderBlock:(id)a3
{
  if (self->_renderBlock)
  {
    v3 = MEMORY[0x277CBEAD8];

    [v3 raise:@"API Misuse" format:@"Attempting to change the renderBlock for a PullStreamNode."];
  }

  else
  {
    self->_renderBlock = _Block_copy(a3);

    MEMORY[0x2821F96F8]();
  }
}

@end