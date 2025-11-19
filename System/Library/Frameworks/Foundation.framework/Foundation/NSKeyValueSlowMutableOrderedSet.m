@interface NSKeyValueSlowMutableOrderedSet
- (id)_createNonNilMutableOrderedSetValueWithSelector:(SEL)a3;
- (id)_nonNilOrderedSetValueWithSelector:(SEL)a3;
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (unint64_t)count;
- (unint64_t)indexOfObject:(id)a3;
- (void)_proxyNonGCFinalize;
- (void)_raiseNilValueExceptionWithSelector:(SEL)a3;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)insertObjects:(id)a3 atIndexes:(id)a4;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4;
@end

@implementation NSKeyValueSlowMutableOrderedSet

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueSlowMutableOrderedSet;
  v5 = [(NSKeyValueMutableOrderedSet *)&v7 _proxyInitWithContainer:a3 getter:?];
  if (v5)
  {
    v5[3] = [a4 baseGetter];
    v5[4] = [a4 baseSetter];
    *(v5 + 40) = [a4 treatNilValuesLikeEmptyCollections];
  }

  return v5;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueSlowMutableOrderedSet;
  [(NSKeyValueMutableOrderedSet *)&v3 _proxyNonGCFinalize];
  self->_valueGetter = 0;
  self->_valueSetter = 0;
}

- (void)_raiseNilValueExceptionWithSelector:(SEL)a3
{
  if (self->_treatNilValuesLikeEmptyOrderedSets)
  {
    v3 = MEMORY[0x1E695DA20];
  }

  else
  {
    v3 = MEMORY[0x1E695D930];
  }

  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*v3 reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: value for key %@ of object %p is nil", _NSMethodExceptionProem(self, a3), self->super._key, self->super._container), 0}];
  objc_exception_throw(v4);
}

- (unint64_t)count
{
  v4 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v4 && !self->_treatNilValuesLikeEmptyOrderedSets)
  {
    [(NSKeyValueSlowMutableOrderedSet *)self _raiseNilValueExceptionWithSelector:a2];
  }

  return [v4 count];
}

- (id)_nonNilOrderedSetValueWithSelector:(SEL)a3
{
  v5 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v5)
  {
    [(NSKeyValueSlowMutableOrderedSet *)self _raiseNilValueExceptionWithSelector:a3];
  }

  return v5;
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [(NSKeyValueSlowMutableOrderedSet *)self _nonNilOrderedSetValueWithSelector:a2];

  [v7 getObjects:a3 range:{location, length}];
}

- (unint64_t)indexOfObject:(id)a3
{
  v4 = [(NSKeyValueSlowMutableOrderedSet *)self _nonNilOrderedSetValueWithSelector:a2];

  return [v4 indexOfObject:a3];
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(NSKeyValueSlowMutableOrderedSet *)self _nonNilOrderedSetValueWithSelector:a2];

  return [v4 objectAtIndex:a3];
}

- (id)objectsAtIndexes:(id)a3
{
  v4 = [(NSKeyValueSlowMutableOrderedSet *)self _nonNilOrderedSetValueWithSelector:a2];

  return [v4 objectsAtIndexes:a3];
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v8 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (v8)
  {
    v9 = [v8 mutableCopy];
    [v9 insertObject:a3 atIndex:a4];
  }

  else
  {
    if (a4 || !self->_treatNilValuesLikeEmptyOrderedSets)
    {
      [(NSKeyValueSlowMutableOrderedSet *)self _raiseNilValueExceptionWithSelector:a2, v10, v11];
    }

    v9 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:&v10 count:1];
  }

  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v9);
}

- (void)insertObjects:(id)a3 atIndexes:(id)a4
{
  v8 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (v8)
  {
    v16 = [v8 mutableCopy];
    [v16 insertObjects:a3 atIndexes:a4];
    _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v16);
    goto LABEL_11;
  }

  if (!self->_treatNilValuesLikeEmptyOrderedSets)
  {
    goto LABEL_9;
  }

  if (!a3 || !a4)
  {
    v12 = _NSMethodExceptionProem(self, a2);
    v13 = @"passed-in ordered set";
    if (a3)
    {
      v13 = @"index set";
    }

    v14 = [NSString stringWithFormat:@"%@: the %@ must not be nil.", v12, v13, v15];
LABEL_18:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0]);
  }

  v9 = [a3 count];
  v10 = [a4 count];
  if (v9 != v10)
  {
    v14 = [NSString stringWithFormat:@"%@: the counts of the passed-in ordered set (%lu) and index set (%lu) must be identical.", _NSMethodExceptionProem(self, a2), v9, v10];
    goto LABEL_18;
  }

  v11 = [a4 lastIndex];
  if (v11 >= v9 && v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_9:
    [(NSKeyValueSlowMutableOrderedSet *)self _raiseNilValueExceptionWithSelector:a2];
    v16 = 0;
    _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, 0);
    goto LABEL_11;
  }

  v16 = [a3 mutableCopy];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v16);
LABEL_11:
}

- (id)_createNonNilMutableOrderedSetValueWithSelector:(SEL)a3
{
  v5 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v5)
  {
    [(NSKeyValueSlowMutableOrderedSet *)self _raiseNilValueExceptionWithSelector:a3];
  }

  return [v5 mutableCopy];
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v5 = [(NSKeyValueSlowMutableOrderedSet *)self _createNonNilMutableOrderedSetValueWithSelector:a2];
  [v5 removeObjectAtIndex:a3];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v5);
}

- (void)removeObjectsAtIndexes:(id)a3
{
  v5 = [(NSKeyValueSlowMutableOrderedSet *)self _createNonNilMutableOrderedSetValueWithSelector:a2];
  [v5 removeObjectsAtIndexes:a3];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v5);
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v7 = [(NSKeyValueSlowMutableOrderedSet *)self _createNonNilMutableOrderedSetValueWithSelector:a2];
  [v7 replaceObjectAtIndex:a3 withObject:a4];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v7);
}

- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4
{
  v7 = [(NSKeyValueSlowMutableOrderedSet *)self _createNonNilMutableOrderedSetValueWithSelector:a2];
  [v7 replaceObjectsAtIndexes:a3 withObjects:a4];
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v7);
}

@end