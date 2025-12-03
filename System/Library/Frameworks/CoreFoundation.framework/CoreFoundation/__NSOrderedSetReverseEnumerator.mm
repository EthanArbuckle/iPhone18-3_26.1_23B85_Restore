@interface __NSOrderedSetReverseEnumerator
- (__NSOrderedSetReverseEnumerator)initWithObject:(id)object;
- (id)nextObject;
- (void)dealloc;
@end

@implementation __NSOrderedSetReverseEnumerator

- (id)nextObject
{
  obj = self->_obj;
  if (!obj)
  {
    return 0;
  }

  idx = self->_idx;
  if (!idx)
  {

    self->_obj = 0;
    return 0;
  }

  self->_idx = idx - 1;
  v5 = self->_obj;

  return [v5 objectAtIndex:?];
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = __NSOrderedSetReverseEnumerator;
  [(__NSOrderedSetReverseEnumerator *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (__NSOrderedSetReverseEnumerator)initWithObject:(id)object
{
  self->_obj = object;
  self->_idx = [object count];
  return self;
}

@end