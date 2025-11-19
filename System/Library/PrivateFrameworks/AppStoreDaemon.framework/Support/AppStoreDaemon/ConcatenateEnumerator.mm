@interface ConcatenateEnumerator
- (id)nextObject;
@end

@implementation ConcatenateEnumerator

- (id)nextObject
{
  v3 = [(NSEnumerator *)self->_prefixEnumerator nextObject];
  if (!v3)
  {
    v3 = [(NSEnumerator *)self->_suffixEnumerator nextObject];
  }

  return v3;
}

@end