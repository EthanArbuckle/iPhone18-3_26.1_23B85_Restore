@interface NSKeyValueMutableOrderedSet
+ (id)_proxyShare;
- ($6C36EBF4C34944E14D6052B25C3B65B5)_proxyLocator;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (void)dealloc;
@end

@implementation NSKeyValueMutableOrderedSet

+ (id)_proxyShare
{
  result = _proxyShare_proxyShare_3;
  if (!_proxyShare_proxyShare_3)
  {
    result = _NSKeyValueProxyShareCreate();
    _proxyShare_proxyShare_3 = result;
  }

  return result;
}

- ($6C36EBF4C34944E14D6052B25C3B65B5)_proxyLocator
{
  key = self->_key;
  container = self->_container;
  result.var1 = key;
  result.var0 = container;
  return result;
}

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSKeyValueMutableOrderedSet;
  v6 = [(NSKeyValueMutableOrderedSet *)&v8 init];
  if (v6)
  {
    v6->_container = container;
    v6->_key = [objc_msgSend(getter "key")];
  }

  return v6;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (_NSKeyValueProxyDeallocate(self))
  {
    v3.receiver = self;
    v3.super_class = NSKeyValueMutableOrderedSet;
    [(NSKeyValueMutableOrderedSet *)&v3 dealloc];
  }
}

@end