@interface NSKeyValueNotifyingMutableSet
+ (id)_proxyShare;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
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

@implementation NSKeyValueNotifyingMutableSet

+ (id)_proxyShare
{
  result = _proxyShare_proxyShare_89;
  if (!_proxyShare_proxyShare_89)
  {
    result = _NSKeyValueProxyShareCreate();
    _proxyShare_proxyShare_89 = result;
  }

  return result;
}

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSKeyValueNotifyingMutableSet;
  v5 = [(NSKeyValueMutableSet *)&v8 _proxyInitWithContainer:container getter:?];
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
  v3.super_class = NSKeyValueNotifyingMutableSet;
  [(NSKeyValueMutableSet *)&v3 _proxyNonGCFinalize];
  self->_mutableSet = 0;
}

- (void)addObject:(id)object
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = object;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v5 count:1];
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:1 usingObjects:v4];
  [(NSMutableSet *)self->_mutableSet addObject:v5[0]];
  [self->super._container didChangeValueForKey:self->super._key withSetMutation:1 usingObjects:v4];
}

- (void)addObjectsFromArray:(id)array
{
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:array];
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:1 usingObjects:v5];
  [(NSMutableSet *)self->_mutableSet addObjectsFromArray:array];
  [self->super._container didChangeValueForKey:self->super._key withSetMutation:1 usingObjects:v5];
}

- (void)intersectSet:(id)set
{
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:3 usingObjects:set];
  [(NSMutableSet *)self->_mutableSet intersectSet:set];
  container = self->super._container;
  key = self->super._key;

  [container didChangeValueForKey:key withSetMutation:3 usingObjects:set];
}

- (void)minusSet:(id)set
{
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:2 usingObjects:set];
  [(NSMutableSet *)self->_mutableSet minusSet:set];
  container = self->super._container;
  key = self->super._key;

  [container didChangeValueForKey:key withSetMutation:2 usingObjects:set];
}

- (void)removeAllObjects
{
  v3 = [MEMORY[0x1E695DFD8] set];
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:3 usingObjects:v3];
  [(NSMutableSet *)self->_mutableSet removeAllObjects];
  container = self->super._container;
  key = self->super._key;

  [container didChangeValueForKey:key withSetMutation:3 usingObjects:v3];
}

- (void)removeObject:(id)object
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = object;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v5 count:1];
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:2 usingObjects:v4];
  [(NSMutableSet *)self->_mutableSet removeObject:v5[0]];
  [self->super._container didChangeValueForKey:self->super._key withSetMutation:2 usingObjects:v4];
}

- (void)setSet:(id)set
{
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:4 usingObjects:set];
  [(NSMutableSet *)self->_mutableSet setSet:set];
  container = self->super._container;
  key = self->super._key;

  [container didChangeValueForKey:key withSetMutation:4 usingObjects:set];
}

- (void)unionSet:(id)set
{
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:1 usingObjects:set];
  [(NSMutableSet *)self->_mutableSet unionSet:set];
  container = self->super._container;
  key = self->super._key;

  [container didChangeValueForKey:key withSetMutation:1 usingObjects:set];
}

@end