@interface __NSOrderedSetArrayProxy
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
@end

@implementation __NSOrderedSetArrayProxy

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = __NSOrderedSetArrayProxy;
  [(__NSOrderedSetArrayProxy *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSArray allocWithZone:a3];
  v5 = [(__NSOrderedSetArrayProxy *)self count];

  return [(NSArray *)v4 initWithArray:self range:0 copyItems:v5, 0];
}

@end