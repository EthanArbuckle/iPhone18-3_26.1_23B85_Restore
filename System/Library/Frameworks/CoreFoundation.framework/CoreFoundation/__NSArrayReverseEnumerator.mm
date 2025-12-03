@interface __NSArrayReverseEnumerator
- (__NSArrayReverseEnumerator)initWithObject:(id)object;
- (id)nextObject;
- (void)dealloc;
@end

@implementation __NSArrayReverseEnumerator

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
  v4.super_class = __NSArrayReverseEnumerator;
  [(__NSArrayReverseEnumerator *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

- (__NSArrayReverseEnumerator)initWithObject:(id)object
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = __NSArrayReverseEnumerator;
  v4 = [(__NSArrayReverseEnumerator *)&v7 init];
  if (v4)
  {
    v4->_obj = object;
    v4->_idx = [object count];
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end