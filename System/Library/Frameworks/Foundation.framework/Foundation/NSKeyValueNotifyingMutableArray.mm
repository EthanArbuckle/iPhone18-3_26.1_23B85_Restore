@interface NSKeyValueNotifyingMutableArray
+ (id)_proxyShare;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (void)_proxyNonGCFinalize;
- (void)addObject:(id)object;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)insertObjects:(id)objects atIndexes:(id)indexes;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)removeObjectsAtIndexes:(id)indexes;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects;
@end

@implementation NSKeyValueNotifyingMutableArray

+ (id)_proxyShare
{
  result = _proxyShare_proxyShare_105;
  if (!_proxyShare_proxyShare_105)
  {
    result = _NSKeyValueProxyShareCreate();
    _proxyShare_proxyShare_105 = result;
  }

  return result;
}

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSKeyValueNotifyingMutableArray;
  v5 = [(NSKeyValueMutableArray *)&v8 _proxyInitWithContainer:container getter:?];
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
  v3.super_class = NSKeyValueNotifyingMutableArray;
  [(NSKeyValueMutableArray *)&v3 _proxyNonGCFinalize];
  self->_mutableArray = 0;
}

- (void)addObject:(id)object
{
  v5 = [[NSIndexSet alloc] initWithIndex:[(NSMutableArray *)self->_mutableArray count]];
  [self->super._container willChange:2 valuesAtIndexes:v5 forKey:self->super._key];
  [(NSMutableArray *)self->_mutableArray addObject:object];
  [self->super._container didChange:2 valuesAtIndexes:v5 forKey:self->super._key];
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v7 = [[NSIndexSet alloc] initWithIndex:index];
  [self->super._container willChange:2 valuesAtIndexes:v7 forKey:self->super._key];
  [(NSMutableArray *)self->_mutableArray insertObject:object atIndex:index];
  [self->super._container didChange:2 valuesAtIndexes:v7 forKey:self->super._key];
}

- (void)insertObjects:(id)objects atIndexes:(id)indexes
{
  [self->super._container willChange:2 valuesAtIndexes:indexes forKey:self->super._key];
  [(NSMutableArray *)self->_mutableArray insertObjects:objects atIndexes:indexes];
  container = self->super._container;
  key = self->super._key;

  [container didChange:2 valuesAtIndexes:indexes forKey:key];
}

- (void)removeLastObject
{
  v3 = [[NSIndexSet alloc] initWithIndex:[(NSMutableArray *)self->_mutableArray count]- 1];
  [self->super._container willChange:3 valuesAtIndexes:v3 forKey:self->super._key];
  [(NSMutableArray *)self->_mutableArray removeLastObject];
  [self->super._container didChange:3 valuesAtIndexes:v3 forKey:self->super._key];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  v5 = [[NSIndexSet alloc] initWithIndex:index];
  [self->super._container willChange:3 valuesAtIndexes:v5 forKey:self->super._key];
  [(NSMutableArray *)self->_mutableArray removeObjectAtIndex:index];
  [self->super._container didChange:3 valuesAtIndexes:v5 forKey:self->super._key];
}

- (void)removeObjectsAtIndexes:(id)indexes
{
  [self->super._container willChange:3 valuesAtIndexes:indexes forKey:self->super._key];
  [(NSMutableArray *)self->_mutableArray removeObjectsAtIndexes:indexes];
  container = self->super._container;
  key = self->super._key;

  [container didChange:3 valuesAtIndexes:indexes forKey:key];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  v7 = [[NSIndexSet alloc] initWithIndex:index];
  [self->super._container willChange:4 valuesAtIndexes:v7 forKey:self->super._key];
  [(NSMutableArray *)self->_mutableArray replaceObjectAtIndex:index withObject:object];
  [self->super._container didChange:4 valuesAtIndexes:v7 forKey:self->super._key];
}

- (void)replaceObjectsAtIndexes:(id)indexes withObjects:(id)objects
{
  [self->super._container willChange:4 valuesAtIndexes:indexes forKey:self->super._key];
  [(NSMutableArray *)self->_mutableArray replaceObjectsAtIndexes:indexes withObjects:objects];
  container = self->super._container;
  key = self->super._key;

  [container didChange:4 valuesAtIndexes:indexes forKey:key];
}

@end