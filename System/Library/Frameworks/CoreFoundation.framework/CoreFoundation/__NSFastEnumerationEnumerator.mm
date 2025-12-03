@interface __NSFastEnumerationEnumerator
+ (id)allocWithZone:(_NSZone *)zone;
- (__NSFastEnumerationEnumerator)initWithObject:(id)object;
- (id)nextObject;
- (void)dealloc;
@end

@implementation __NSFastEnumerationEnumerator

- (id)nextObject
{
  if (self->_index == self->_count)
  {
    p_state = &self->_state;
    state = self->_state.state;
    self->_index = 0;
    v5 = [(NSFastEnumeration *)self->_obj countByEnumeratingWithState:&self->_state objects:self->_objects count:16];
    self->_count = v5;
    if (!v5)
    {

      self->_obj = 0;
      result = 0;
      self->_origObj = 0;
      return result;
    }

    if (state)
    {
      if (self->_mut != *p_state->var0)
      {
        __NSFastEnumerationMutationHandler(self->_obj);
      }
    }

    else
    {
      self->_mut = *p_state->var0;
    }
  }

  index = self->_index;
  itemsPtr = self->_state.itemsPtr;
  self->_index = index + 1;
  return itemsPtr[index];
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];

  v4.receiver = self;
  v4.super_class = __NSFastEnumerationEnumerator;
  [(__NSFastEnumerationEnumerator *)&v4 dealloc];
  v3 = *MEMORY[0x1E69E9840];
}

+ (id)allocWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return __CFAllocateObject(v3, 0x40uLL);
}

- (__NSFastEnumerationEnumerator)initWithObject:(id)object
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = __NSFastEnumerationEnumerator;
  v4 = [(__NSFastEnumerationEnumerator *)&v7 init];
  if (v4)
  {
    v4->_obj = object;
    v4->_origObj = object;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

@end