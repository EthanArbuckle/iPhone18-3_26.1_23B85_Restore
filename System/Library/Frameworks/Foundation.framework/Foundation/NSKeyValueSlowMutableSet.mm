@interface NSKeyValueSlowMutableSet
- (id)_createMutableSetValueWithSelector:(SEL)selector;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (id)_setValueWithSelector:(SEL)selector;
- (id)member:(id)member;
- (id)objectEnumerator;
- (unint64_t)count;
- (void)_proxyNonGCFinalize;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)intersectSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)setSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation NSKeyValueSlowMutableSet

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = NSKeyValueSlowMutableSet;
  v5 = [(NSKeyValueMutableSet *)&v7 _proxyInitWithContainer:container getter:?];
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
  v3.super_class = NSKeyValueSlowMutableSet;
  [(NSKeyValueMutableSet *)&v3 _proxyNonGCFinalize];
  self->_valueGetter = 0;
  self->_valueSetter = 0;
}

- (id)_setValueWithSelector:(SEL)selector
{
  v5 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v5 && !self->_treatNilValuesLikeEmptySets)
  {
    [(NSKeyValueSlowMutableSet *)self _raiseNilValueExceptionWithSelector:selector];
  }

  return v5;
}

- (unint64_t)count
{
  v2 = [(NSKeyValueSlowMutableSet *)self _setValueWithSelector:a2];

  return [v2 count];
}

- (id)member:(id)member
{
  v4 = [(NSKeyValueSlowMutableSet *)self _setValueWithSelector:a2];

  return [v4 member:member];
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

- (id)_createMutableSetValueWithSelector:(SEL)selector
{
  v5 = _NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa);
  if (!v5 && !self->_treatNilValuesLikeEmptySets)
  {
    [(NSKeyValueSlowMutableSet *)self _raiseNilValueExceptionWithSelector:selector];
  }

  return [v5 mutableCopy];
}

- (void)addObject:(id)object
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2, object, *MEMORY[0x1E69E9840]];
  if (v5)
  {
    v6 = v5;
    [v5 addObject:object];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:&v7 count:1];
  }

  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
}

- (void)addObjectsFromArray:(id)array
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 addObjectsFromArray:array];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:array];
  }

  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
}

- (void)intersectSet:(id)set
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 intersectSet:set];
    _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
  }
}

- (void)minusSet:(id)set
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 minusSet:set];
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

- (void)removeObject:(id)object
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 removeObject:object];
    _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
  }
}

- (void)setSet:(id)set
{
  if (!self->_treatNilValuesLikeEmptySets && !_NSGetUsingKeyValueGetter(self->super._container, &self->_valueGetter->super.super.isa))
  {
    [(NSKeyValueSlowMutableSet *)self _raiseNilValueExceptionWithSelector:a2];
  }

  container = self->super._container;
  valueSetter = self->_valueSetter;

  _NSSetUsingKeyValueSetter(container, valueSetter, set);
}

- (void)unionSet:(id)set
{
  v5 = [(NSKeyValueSlowMutableSet *)self _createMutableSetValueWithSelector:a2];
  if (v5)
  {
    v6 = v5;
    [v5 unionSet:set];
  }

  else
  {
    v6 = [set mutableCopy];
  }

  _NSSetUsingKeyValueSetter(self->super._container, &self->_valueSetter->super.super.isa, v6);
}

@end