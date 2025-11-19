@interface NSKeyValueNotifyingMutableSet
+ (id)_proxyShare;
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
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

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSKeyValueNotifyingMutableSet;
  v5 = [(NSKeyValueMutableSet *)&v8 _proxyInitWithContainer:a3 getter:?];
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
  v3.super_class = NSKeyValueNotifyingMutableSet;
  [(NSKeyValueMutableSet *)&v3 _proxyNonGCFinalize];
  self->_mutableSet = 0;
}

- (void)addObject:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v5 count:1];
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:1 usingObjects:v4];
  [(NSMutableSet *)self->_mutableSet addObject:v5[0]];
  [self->super._container didChangeValueForKey:self->super._key withSetMutation:1 usingObjects:v4];
}

- (void)addObjectsFromArray:(id)a3
{
  v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a3];
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:1 usingObjects:v5];
  [(NSMutableSet *)self->_mutableSet addObjectsFromArray:a3];
  [self->super._container didChangeValueForKey:self->super._key withSetMutation:1 usingObjects:v5];
}

- (void)intersectSet:(id)a3
{
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:3 usingObjects:a3];
  [(NSMutableSet *)self->_mutableSet intersectSet:a3];
  container = self->super._container;
  key = self->super._key;

  [container didChangeValueForKey:key withSetMutation:3 usingObjects:a3];
}

- (void)minusSet:(id)a3
{
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:2 usingObjects:a3];
  [(NSMutableSet *)self->_mutableSet minusSet:a3];
  container = self->super._container;
  key = self->super._key;

  [container didChangeValueForKey:key withSetMutation:2 usingObjects:a3];
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

- (void)removeObject:(id)a3
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a3;
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v5 count:1];
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:2 usingObjects:v4];
  [(NSMutableSet *)self->_mutableSet removeObject:v5[0]];
  [self->super._container didChangeValueForKey:self->super._key withSetMutation:2 usingObjects:v4];
}

- (void)setSet:(id)a3
{
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:4 usingObjects:a3];
  [(NSMutableSet *)self->_mutableSet setSet:a3];
  container = self->super._container;
  key = self->super._key;

  [container didChangeValueForKey:key withSetMutation:4 usingObjects:a3];
}

- (void)unionSet:(id)a3
{
  [self->super._container willChangeValueForKey:self->super._key withSetMutation:1 usingObjects:a3];
  [(NSMutableSet *)self->_mutableSet unionSet:a3];
  container = self->super._container;
  key = self->super._key;

  [container didChangeValueForKey:key withSetMutation:1 usingObjects:a3];
}

@end