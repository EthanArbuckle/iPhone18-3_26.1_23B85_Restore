@interface BSCopyingCacheSet
- (BOOL)containsObject:(id)a3;
- (id)immutableSet;
- (void)addObject:(id)a3;
- (void)removeObject:(id)a3;
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

- (void)addObject:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4 && ([(NSMutableSet *)self->_mutable containsObject:v4]& 1) == 0)
  {
    v5 = self->_mutable;
    if (v5)
    {
      [(NSMutableSet *)v5 addObject:v4];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&v9 count:1];
      v7 = self->_mutable;
      self->_mutable = v6;
    }

    immutable = self->_immutable;
    self->_immutable = 0;

    v4 = v9;
  }
}

- (void)removeObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(NSMutableSet *)self->_mutable containsObject:v4];
    v4 = v9;
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

      v4 = v9;
    }
  }
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSMutableSet *)self->_mutable containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end