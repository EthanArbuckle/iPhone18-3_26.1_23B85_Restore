@interface NSKeyValueNotifyingMutableOrderedSet
+ (id)_proxyShare;
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (void)_proxyNonGCFinalize;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)insertObjects:(id)a3 atIndexes:(id)a4;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)removeObjectsAtIndexes:(id)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4;
@end

@implementation NSKeyValueNotifyingMutableOrderedSet

+ (id)_proxyShare
{
  result = _proxyShare_proxyShare_107;
  if (!_proxyShare_proxyShare_107)
  {
    result = _NSKeyValueProxyShareCreate();
    _proxyShare_proxyShare_107 = result;
  }

  return result;
}

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSKeyValueNotifyingMutableOrderedSet;
  v5 = [(NSKeyValueMutableOrderedSet *)&v8 _proxyInitWithContainer:a3 getter:?];
  v6 = v5;
  if (v5)
  {
    v5[3] = _NSGetProxyValueWithGetterNoLock(v5[1], [a4 mutableCollectionGetter]);
  }

  return v6;
}

- (void)_proxyNonGCFinalize
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueNotifyingMutableOrderedSet;
  [(NSKeyValueMutableOrderedSet *)&v3 _proxyNonGCFinalize];
  self->_mutableOrderedSet = 0;
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v7 = [[NSIndexSet alloc] initWithIndex:a4];
  [self->super._container willChange:2 valuesAtIndexes:v7 forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObject:a3 atIndex:a4];
  [self->super._container didChange:2 valuesAtIndexes:v7 forKey:self->super._key];
}

- (void)insertObjects:(id)a3 atIndexes:(id)a4
{
  [self->super._container willChange:2 valuesAtIndexes:a4 forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObjects:a3 atIndexes:a4];
  container = self->super._container;
  key = self->super._key;

  [container didChange:2 valuesAtIndexes:a4 forKey:key];
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v5 = [[NSIndexSet alloc] initWithIndex:a3];
  [self->super._container willChange:3 valuesAtIndexes:v5 forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectAtIndex:a3];
  [self->super._container didChange:3 valuesAtIndexes:v5 forKey:self->super._key];
}

- (void)removeObjectsAtIndexes:(id)a3
{
  [self->super._container willChange:3 valuesAtIndexes:a3 forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:a3];
  container = self->super._container;
  key = self->super._key;

  [container didChange:3 valuesAtIndexes:a3 forKey:key];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v7 = [[NSIndexSet alloc] initWithIndex:a3];
  [self->super._container willChange:4 valuesAtIndexes:v7 forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet replaceObjectAtIndex:a3 withObject:a4];
  [self->super._container didChange:4 valuesAtIndexes:v7 forKey:self->super._key];
}

- (void)replaceObjectsAtIndexes:(id)a3 withObjects:(id)a4
{
  [self->super._container willChange:4 valuesAtIndexes:a3 forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet replaceObjectsAtIndexes:a3 withObjects:a4];
  container = self->super._container;
  key = self->super._key;

  [container didChange:4 valuesAtIndexes:a3 forKey:key];
}

@end