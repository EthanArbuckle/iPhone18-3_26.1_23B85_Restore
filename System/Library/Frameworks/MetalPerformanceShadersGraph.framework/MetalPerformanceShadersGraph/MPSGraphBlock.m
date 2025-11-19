@interface MPSGraphBlock
- (MPSGraphBlock)init;
- (id)parentOp;
@end

@implementation MPSGraphBlock

- (MPSGraphBlock)init
{
  v7.receiver = self;
  v7.super_class = MPSGraphBlock;
  v2 = [(MPSGraphBlock *)&v7 init];
  terminator = v2->_terminator;
  v2->_terminator = 0;

  v4 = [MEMORY[0x1E695DF70] array];
  blockOperations = v2->_blockOperations;
  v2->_blockOperations = v4;

  return v2;
}

- (id)parentOp
{
  WeakRetained = objc_loadWeakRetained(&self->_parentRegion);
  v3 = objc_loadWeakRetained(WeakRetained + 2);

  return v3;
}

@end