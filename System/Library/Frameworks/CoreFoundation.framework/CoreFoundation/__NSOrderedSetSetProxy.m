@interface __NSOrderedSetSetProxy
- (id)copyWithZone:(_NSZone *)a3;
- (id)member:(id)a3;
- (void)dealloc;
@end

@implementation __NSOrderedSetSetProxy

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = __NSOrderedSetSetProxy;
  [(__NSOrderedSetSetProxy *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (id)member:(id)a3
{
  v4 = [self->_orderedSet indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v4;
  orderedSet = self->_orderedSet;

  return [orderedSet objectAtIndex:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NSSet allocWithZone:a3];

  return [(NSSet *)v4 initWithSet:self copyItems:0];
}

@end