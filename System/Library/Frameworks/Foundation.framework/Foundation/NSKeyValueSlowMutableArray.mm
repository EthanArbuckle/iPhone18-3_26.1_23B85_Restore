@interface NSKeyValueSlowMutableArray
- (id)_createNonNilMutableArrayValueWithSelector:(SEL)selector;
- (id)_nonNilArrayValueWithSelector:(SEL)selector;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
- (void)_raiseNilValueExceptionWithSelector:(SEL)selector;
- (void)addObject:(id)object;
- (void)getObjects:(id *)objects range:(_NSRange)range;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects;
@end

@implementation NSKeyValueSlowMutableArray

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueSlowMutableArray;
  v5 = [(NSKeyValueMutableArray *)&v7 _proxyInitWithContainer:container getter:?];
  if (v5)
  {
    v5[3] = [getter baseGetter];
    v5[4] = [getter baseSetter];
    *(v5 + 40) = [getter treatNilValuesLikeEmptyCollections];
  }

  return v5;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueSlowMutableArray;
  [(NSKeyValueMutableArray *)&v3 _proxyNonGCFinalize];
  self->_valueGetter = 0;
  self->_valueSetter = 0;
}

- (void)_raiseNilValueExceptionWithSelector:(SEL)selector
{
  if (self->_treatNilValuesLikeEmptyArrays)
  {
    v3 = MEMORY[0x1E695DA20];
  }

  else
  {
    v3 = MEMORY[0x1E695D930];
  }

  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*v3 reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: value for key %@ of object %p is nil", _NSMethodExceptionProem(self, selector), self->super._key, self->super._container), 0}];
  objc_exception_throw(v4);
}

- (unint64_t)count
{
  v4 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v4 && !self->_treatNilValuesLikeEmptyArrays)
  {
    [(NSKeyValueSlowMutableArray *)self _raiseNilValueExceptionWithSelector:a2];
  }

  return [v4 count];
}

- (id)_nonNilArrayValueWithSelector:(SEL)selector
{
  v5 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v5)
  {
    [(NSKeyValueSlowMutableArray *)self _raiseNilValueExceptionWithSelector:selector];
  }

  return v5;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = [(NSKeyValueSlowMutableArray *)self _nonNilArrayValueWithSelector:a2];

  [v7 getObjects:objects range:{location, length}];
}

- (id)objectAtIndex:(unint64_t)index
{
  v4 = [(NSKeyValueSlowMutableArray *)self _nonNilArrayValueWithSelector:a2];

  return [v4 objectAtIndex:index];
}

- (id)objectsAtIndexes:(id)indexes
{
  v4 = [(NSKeyValueSlowMutableArray *)self _nonNilArrayValueWithSelector:a2];

  return [v4 objectsAtIndexes:indexes];
}

- (void)addObject:(id)object
{
  v9 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v6 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (v6)
  {
    v7 = [v6 mutableCopy];
    [v7 addObject:object];
  }

  else
  {
    if (!self->_treatNilValuesLikeEmptyArrays)
    {
      [(NSKeyValueSlowMutableArray *)self _raiseNilValueExceptionWithSelector:a2, objectCopy, v9];
    }

    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&objectCopy count:1];
  }

  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v7);
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v11 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v8 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (v8)
  {
    v9 = [v8 mutableCopy];
    [v9 insertObject:object atIndex:index];
  }

  else
  {
    if (index || !self->_treatNilValuesLikeEmptyArrays)
    {
      [(NSKeyValueSlowMutableArray *)self _raiseNilValueExceptionWithSelector:a2, objectCopy, v11];
    }

    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:&objectCopy count:1];
  }

  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v9);
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  v8 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (v8)
  {
    v16 = [v8 mutableCopy];
    [v16 insertObjects:objects atIndexes:indexes];
    _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v16);
    goto LABEL_11;
  }

  if (!self->_treatNilValuesLikeEmptyArrays)
  {
    goto LABEL_9;
  }

  if (!objects || !indexes)
  {
    v12 = _NSMethodExceptionProem(self, a2);
    v13 = @"passed-in array";
    if (objects)
    {
      v13 = @"index set";
    }

    v14 = [NSString stringWithFormat:@"%@: the %@ must not be nil.", v12, v13, v15];
LABEL_18:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
  }

  v9 = [objects count];
  v10 = [indexes count];
  if (v9 != v10)
  {
    v14 = [NSString stringWithFormat:@"%@: the counts of the passed-in array (%lu) and index set (%lu) must be identical.", _NSMethodExceptionProem(self, a2), v9, v10];
    goto LABEL_18;
  }

  lastIndex = [indexes lastIndex];
  if (lastIndex >= v9 && lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_9:
    [(NSKeyValueSlowMutableArray *)self _raiseNilValueExceptionWithSelector:a2];
    v16 = 0;
    _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, 0);
    goto LABEL_11;
  }

  v16 = [objects mutableCopy];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v16);
LABEL_11:
}

- (id)_createNonNilMutableArrayValueWithSelector:(SEL)selector
{
  v5 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v5)
  {
    [(NSKeyValueSlowMutableArray *)self _raiseNilValueExceptionWithSelector:selector];
  }

  return [v5 mutableCopy];
}

- (void)removeLastObject
{
  v3 = [(NSKeyValueSlowMutableArray *)self _createNonNilMutableArrayValueWithSelector:a2];
  [v3 removeLastObject];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v3);
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v5 = [(NSKeyValueSlowMutableArray *)self _createNonNilMutableArrayValueWithSelector:a2];
  [v5 removeObjectAtIndex:index];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v5);
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  v5 = [(NSKeyValueSlowMutableArray *)self _createNonNilMutableArrayValueWithSelector:a2];
  [v5 removeObjectsAtIndexes:indexes];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v5);
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v7 = [(NSKeyValueSlowMutableArray *)self _createNonNilMutableArrayValueWithSelector:a2];
  [v7 replaceObjectAtIndex:index withObject:object];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v7);
}

- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects
{
  v7 = [(NSKeyValueSlowMutableArray *)self _createNonNilMutableArrayValueWithSelector:a2];
  [v7 replaceObjectsAtIndexes:indexes withObjects:objects];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v7);
}

@end