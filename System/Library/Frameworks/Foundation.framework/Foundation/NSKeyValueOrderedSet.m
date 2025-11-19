@interface NSKeyValueOrderedSet
+ (id)_proxyShare;
- ($6C36EBF4C34944E14D6052B25C3B65B5)_proxyLocator;
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsAtIndexes:(id)a3;
- (void)_proxyNonGCFinalize;
- (void)dealloc;
- (void)getObjects:(id *)a3 range:(_NSRange)a4;
@end

@implementation NSKeyValueOrderedSet

+ (id)_proxyShare
{
  result = _proxyShare_proxyShare_4;
  if (!_proxyShare_proxyShare_4)
  {
    result = _NSKeyValueProxyShareCreate();
    _proxyShare_proxyShare_4 = result;
  }

  return result;
}

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSKeyValueOrderedSet;
  v6 = [(NSKeyValueOrderedSet *)&v8 init];
  if (v6)
  {
    v6->_container = a3;
    v6->_key = [a4 key];
    v6->_methods = [a4 methods];
  }

  return v6;
}

- ($6C36EBF4C34944E14D6052B25C3B65B5)_proxyLocator
{
  key = self->_key;
  container = self->_container;
  result.var1 = key;
  result.var0 = container;
  return result;
}

- (void)_proxyNonGCFinalize
{
  self->_container = 0;
  self->_key = 0;
  self->_methods = 0;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (_NSKeyValueProxyDeallocate(self))
  {
    v3.receiver = self;
    v3.super_class = NSKeyValueOrderedSet;
    [(NSKeyValueOrderedSet *)&v3 dealloc];
  }
}

- (void)getObjects:(id *)a3 range:(_NSRange)a4
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_methods->getObjectsRange)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueOrderedSet;
    [(NSKeyValueOrderedSet *)&v4 getObjects:a3 range:a4.location, a4.length];
  }
}

- (id)objectAtIndex:(unint64_t)a3
{
  if (self->_methods->objectAtIndex)
  {

    method_invoke();
  }

  else
  {
    v4 = [[NSIndexSet alloc] initWithIndex:a3];
    method_invoke();
    v6 = v5;

    return [v6 objectAtIndex:0];
  }

  return result;
}

- (id)objectsAtIndexes:(id)a3
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_methods->objectsAtIndexes)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueOrderedSet;
    return [(NSKeyValueOrderedSet *)&v4 objectsAtIndexes:a3];
  }

  return result;
}

@end