@interface __NSConstantArrayEnumerator
- (id)allObjects;
- (id)nextObject;
@end

@implementation __NSConstantArrayEnumerator

- (id)allObjects
{
  v2 = __NSArrayI_new(self->_underlyingArray->_objects, 0, self->_underlyingArray->_count, 0);

  return v2;
}

- (id)nextObject
{
  index = self->_index;
  underlyingArray = self->_underlyingArray;
  if (index >= underlyingArray->_count)
  {
    return 0;
  }

  objects = underlyingArray->_objects;
  self->_index = index + 1;
  return objects[index];
}

@end