@interface NSKeyValueSlowMutableSet
- (id)_createMutableSetValueWithSelector:(SEL)a3;
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (id)_setValueWithSelector:(SEL)a3;
- (id)member:(id)a3;
- (id)objectEnumerator;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)intersectSet:(id)a3;
- (void)minusSet:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)setSet:(id)a3;
- (void)unionSet:(id)a3;
@end

@implementation NSKeyValueSlowMutableSet

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueSlowMutableSet;
  v5 = [(NSKeyValueMutableSet *)&v7 _proxyInitWithContainer:a3 getter:?];
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
  v3.super_class = NSKeyValueSlowMutableSet;
  [(NSKeyValueMutableSet *)&v3 _proxyNonGCFinalize];
  self->_valueGetter = 0;
  self->_valueSetter = 0;
}

- (id)_setValueWithSelector:(SEL)a3
{
  v5 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v5 && !self->_treatNilValuesLikeEmptySets)
  {
    [(NSKeyValueSlowMutableSet *)self _raiseNilValueExceptionWithSelector:a3];
  }

  return v5;
}

- (unint64_t)count
{
  v2 = [(NSKeyValueSlowMutableSet *)self _setValueWithSelector:a2];

  return [v2 count];
}

- (id)member:(id)a3
{
  v4 = [(NSKeyValueSlowMutableSet *)self _setValueWithSelector:a2];

  return [v4 member:a3];
}

- (id)objectEnumerator
{
  v2 = [(NSKeyValueSlowMutableSet *)self _setValueWithSelector:a2];
  if (v2)
  {

    return [v2 objectEnumerator];
  }

  else
  {
    v4 = objc_alloc_init(NSKeyValueNilSetEnumerator);

    return v4;
  }
}

- (id)_createMutableSetValueWithSelector:(SEL)a3
{
  v5 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v5 && !self->_treatNilValuesLikeEmptySets)
  {
    [(NSKeyValueSlowMutableSet *)self _raiseNilValueExceptionWithSelector:a3];
  }

  return [v5 mutableCopy];
}

- (void)addObject:(id)a3
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2, a3, *MEMORY[0x1E69E9840]];
  if (v5)
  {
    v6 = v5;
    [v5 addObject:a3];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&v7 count:1];
  }

  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
}

- (void)addObjectsFromArray:(id)a3
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 addObjectsFromArray:a3];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:a3];
  }

  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
}

- (void)intersectSet:(id)a3
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 intersectSet:a3];
    _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
  }
}

- (void)minusSet:(id)a3
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 minusSet:a3];
    _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
  }
}

- (void)removeAllObjects
{
  if (!self->_treatNilValuesLikeEmptySets && !_NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa))
  {
    [(NSKeyValueSlowMutableSet *)self _raiseNilValueExceptionWithSelector:a2];
  }

  v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v4);
}

- (void)removeObject:(id)a3
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 removeObject:a3];
    _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
  }
}

- (void)setSet:(id)a3
{
  if (!self->_treatNilValuesLikeEmptySets && !_NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa))
  {
    [(NSKeyValueSlowMutableSet *)self _raiseNilValueExceptionWithSelector:a2];
  }

  container = self->super._container;
  valueSetter = self->_valueSetter;

  _NSSetUsingKeyValueSetter(container, valueSetter, a3);
}

- (void)unionSet:(id)a3
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 unionSet:a3];
  }

  else
  {
    v6 = [a3 mutableCopy];
  }

  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
}

@end