@interface ConcatenateEnumerator
- (id)nextObject;
@end

@implementation ConcatenateEnumerator

- (id)nextObject
{
  nextObject = [(NSEnumerator *)self->_prefixEnumerator nextObject];
  if (!nextObject)
  {
    nextObject = [(NSEnumerator *)self->_suffixEnumerator nextObject];
  }

  return nextObject;
}

@end