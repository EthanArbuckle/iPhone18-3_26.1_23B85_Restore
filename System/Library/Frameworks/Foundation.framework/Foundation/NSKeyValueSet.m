@interface NSKeyValueSet
+ (id)_proxyShare;
- ($6C36EBF4C34944E14D6052B25C3B65B5)_proxyLocator;
- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4;
- (void)_proxyNonGCFinalize;
- (void)dealloc;
@end

@implementation NSKeyValueSet

+ (id)_proxyShare
{
  result = _proxyShare_proxyShare_2;
  if (!_proxyShare_proxyShare_2)
  {
    result = _NSKeyValueProxyShareCreate();
    _proxyShare_proxyShare_2 = result;
  }

  return result;
}

- (id)_proxyInitWithContainer:(id)a3 getter:(id)a4
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSKeyValueSet;
  v6 = [(NSKeyValueSet *)&v8 init];
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
    v3.super_class = NSKeyValueSet;
    [(NSKeyValueSet *)&v3 dealloc];
  }
}

@end