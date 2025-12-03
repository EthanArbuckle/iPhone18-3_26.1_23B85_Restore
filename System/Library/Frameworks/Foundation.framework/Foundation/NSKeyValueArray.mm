@interface NSKeyValueArray
+ (id)_proxyShare;
- ($6C36EBF4C34944E14D6052B25C3B65B5)_proxyLocator;
- (id)_proxyInitWithContainer:(id)container getter:(id)getter;
- (id)objectAtIndex:(unint64_t)index;
- (id)objectsAtIndexes:(id)indexes;
- (void)_proxyNonGCFinalize;
- (void)dealloc;
- (void)getObjects:(id *)objects range:(_NSRange)range;
@end

@implementation NSKeyValueArray

+ (id)_proxyShare
{
  result = _proxyShare_proxyShare;
  if (!_proxyShare_proxyShare)
  {
    result = _NSKeyValueProxyShareCreate();
    _proxyShare_proxyShare = result;
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

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  if (_NSKeyValueProxyDeallocate(self))
  {
    v3.receiver = self;
    v3.super_class = NSKeyValueArray;
    [(NSKeyValueArray *)&v3 dealloc];
  }
}

- (void)_proxyNonGCFinalize
{
  self->_container = 0;
  self->_key = 0;
  self->_methods = 0;
}

- (id)_proxyInitWithContainer:(id)container getter:(id)getter
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = NSKeyValueArray;
  v6 = [(NSKeyValueArray *)&v8 init];
  if (v6)
  {
    v6->_container = container;
    v6->_key = [getter key];
    v6->_methods = [getter methods];
  }

  return v6;
}

- (void)getObjects:(id *)objects range:(_NSRange)range
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_methods->getObjectsRange)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueArray;
    [(NSKeyValueArray *)&v4 getObjects:objects range:range.location, range.length];
  }
}

- (id)objectAtIndex:(unint64_t)index
{
  if (self->_methods->objectAtIndex)
  {

    method_invoke();
  }

  else
  {
    v4 = [[NSIndexSet alloc] initWithIndex:index];
    method_invoke();
    v6 = v5;

    return [v6 objectAtIndex:0];
  }

  return result;
}

- (id)objectsAtIndexes:(id)indexes
{
  v5 = *MEMORY[0x1E69E9840];
  if (self->_methods->objectsAtIndexes)
  {

    method_invoke();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = NSKeyValueArray;
    return [(NSKeyValueArray *)&v4 objectsAtIndexes:indexes];
  }

  return result;
}

@end