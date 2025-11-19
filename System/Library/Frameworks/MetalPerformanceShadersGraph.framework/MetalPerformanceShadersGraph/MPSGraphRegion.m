@interface MPSGraphRegion
- (MPSGraphRegion)init;
- (id)appendNewBlock;
@end

@implementation MPSGraphRegion

- (MPSGraphRegion)init
{
  v6.receiver = self;
  v6.super_class = MPSGraphRegion;
  v2 = [(MPSGraphRegion *)&v6 init];
  v3 = [MEMORY[0x1E695DF70] array];
  blocks = v2->_blocks;
  v2->_blocks = v3;

  return v2;
}

- (id)appendNewBlock
{
  v3 = objc_opt_new();
  objc_storeWeak(v3 + 4, self);
  [(NSMutableArray *)self->_blocks addObject:v3];
  WeakRetained = objc_loadWeakRetained(&self->_parentOp);
  v5 = objc_loadWeakRetained(WeakRetained + 1);
  objc_storeStrong(v5 + 22, v3);

  return v3;
}

@end