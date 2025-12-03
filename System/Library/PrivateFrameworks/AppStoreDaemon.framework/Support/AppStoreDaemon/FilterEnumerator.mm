@interface FilterEnumerator
- (id)nextObject;
@end

@implementation FilterEnumerator

- (id)nextObject
{
  nextObject = 0;
  do
  {
    v4 = nextObject;
    nextObject = [(NSEnumerator *)self->_enumerator nextObject];
  }

  while (nextObject && ![(NSPredicate *)self->_predicate evaluateWithObject:nextObject]);

  return nextObject;
}

@end