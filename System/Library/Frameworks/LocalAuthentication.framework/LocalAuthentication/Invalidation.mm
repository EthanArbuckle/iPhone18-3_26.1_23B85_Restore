@interface Invalidation
- (Invalidation)initWithBlock:(id)a3;
@end

@implementation Invalidation

- (Invalidation)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = Invalidation;
  v5 = [(Invalidation *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1AC55C260](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end