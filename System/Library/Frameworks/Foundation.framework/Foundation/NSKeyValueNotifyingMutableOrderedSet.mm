@interface NSKeyValueNotifyingMutableOrderedSet
+ (id)_proxyShare;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (void)_proxyNonGCFinalize;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects;
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

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSKeyValueNotifyingMutableOrderedSet;
  v5 = [(NSKeyValueMutableOrderedSet *)&v8 _proxyInitWithContainer:container getter:?];
  v6 = v5;
  if (v5)
  {
    v5[3] = _NSGetProxyValueWithGetterNoLock(v5[1], [getter mutableCollectionGetter]);
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

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v7 = [[NSIndexSet alloc] initWithIndex:index];
  [self->super._container willChange:2 valuesAtIndexes:v7 forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObject:object atIndex:index];
  [self->super._container didChange:2 valuesAtIndexes:v7 forKey:self->super._key];
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  [self->super._container willChange:2 valuesAtIndexes:indexes forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet insertObjects:objects atIndexes:indexes];
  container = self->super._container;
  key = self->super._key;

  [container didChange:2 valuesAtIndexes:indexes forKey:key];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v5 = [[NSIndexSet alloc] initWithIndex:index];
  [self->super._container willChange:3 valuesAtIndexes:v5 forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectAtIndex:index];
  [self->super._container didChange:3 valuesAtIndexes:v5 forKey:self->super._key];
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  [self->super._container willChange:3 valuesAtIndexes:indexes forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet removeObjectsAtIndexes:indexes];
  container = self->super._container;
  key = self->super._key;

  [container didChange:3 valuesAtIndexes:indexes forKey:key];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v7 = [[NSIndexSet alloc] initWithIndex:index];
  [self->super._container willChange:4 valuesAtIndexes:v7 forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet replaceObjectAtIndex:index withObject:object];
  [self->super._container didChange:4 valuesAtIndexes:v7 forKey:self->super._key];
}

- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects
{
  [self->super._container willChange:4 valuesAtIndexes:indexes forKey:self->super._key];
  [(NSMutableOrderedSet *)self->_mutableOrderedSet replaceObjectsAtIndexes:indexes withObjects:objects];
  container = self->super._container;
  key = self->super._key;

  [container didChange:4 valuesAtIndexes:indexes forKey:key];
}

@end