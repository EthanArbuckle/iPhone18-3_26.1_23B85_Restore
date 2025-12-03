@interface _NSIndexSetEnumerator
- (_NSIndexSetEnumerator)initWithIndexSet:(id)set;
- (id)nextObject;
- (void)dealloc;
@end

@implementation _NSIndexSetEnumerator

- (_NSIndexSetEnumerator)initWithIndexSet:(id)set
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = _NSIndexSetEnumerator;
  v4 = [(_NSIndexSetEnumerator *)&v6 init];
  if (v4)
  {
    v4->_indexSet = set;
    v4->_index = [set firstIndex];
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