@interface _NSIndexSetEnumerator
- (_NSIndexSetEnumerator)initWithIndexSet:(id)a3;
- (id)nextObject;
- (void)dealloc;
@end

@implementation _NSIndexSetEnumerator

- (_NSIndexSetEnumerator)initWithIndexSet:(id)a3
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _NSIndexSetEnumerator;
  v4 = [(_NSIndexSetEnumerator *)&v6 init];
  if (v4)
  {
    v4->_indexSet = a3;
    v4->_index = [a3 firstIndex];
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = _NSIndexSetEnumerator;
  [(_NSIndexSetEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  index = self->_index;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  self->_index = [(NSIndexSet *)self->_indexSet indexGreaterThanIndex:index];

  return [NSNumber numberWithUnsignedInteger:index];
}

@end