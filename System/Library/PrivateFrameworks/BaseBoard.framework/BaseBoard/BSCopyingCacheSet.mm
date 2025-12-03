@interface BSCopyingCacheSet
- (BOOL)containsObject:(id)object;
- (id)immutableSet;
- (void)addObject:(id)object;
- (void)removeObject:(id)object;
@end

@implementation BSCopyingCacheSet

- (id)immutableSet
{
  immutable = self->_immutable;
  if (!immutable)
  {
    v4 = [(NSMutableSet *)self->_mutable copy];
    v5 = self->_immutable;
    self->_immutable = v4;

    immutable = self->_immutable;
  }

  return immutable;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  v9 = objectCopy;
  if (objectCopy && ([(NSMutableSet *)self->_mutable containsObject:objectCopy]& 1) == 0)
  {
    v5 = self->_mutable;
    if (v5)
    {
      [(NSMutableSet *)v5 addObject:objectCopy];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&v9 count:1];
      v7 = self->_mutable;
      self->_mutable = v6;
    }

    immutable = self->_immutable;
    self->_immutable = 0;

    objectCopy = v9;
  }
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v9 = objectCopy;
    v5 = [(NSMutableSet *)self->_mutable containsObject:objectCopy];
    objectCopy = v9;
    if (v5)
    {
      v6 = [(NSMutableSet *)self->_mutable count];
      v7 = self->_mutable;
      if (v6 == 1)
      {
        self->_mutable = 0;
      }

      else
      {
        [(NSMutableSet *)v7 removeObject:v9];
      }

      immutable = self->_immutable;
      self->_immutable = 0;

      objectCopy = v9;
    }
  }
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  if (objectCopy)
  {
    v5 = [(NSMutableSet *)self->_mutable containsObject:objectCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end