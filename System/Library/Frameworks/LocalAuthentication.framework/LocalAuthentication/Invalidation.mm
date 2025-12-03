@interface Invalidation
- (Invalidation)initWithBlock:(id)block;
@end

@implementation Invalidation

- (Invalidation)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = Invalidation;
  v5 = [(Invalidation *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1AC55C260](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end