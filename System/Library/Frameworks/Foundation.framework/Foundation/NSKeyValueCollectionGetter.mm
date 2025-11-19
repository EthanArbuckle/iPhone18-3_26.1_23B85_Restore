@interface NSKeyValueCollectionGetter
- (NSKeyValueCollectionGetter)initWithContainerClassID:(id)a3 key:(id)a4 methods:(id)a5 proxyClass:(Class)a6;
- (void)dealloc;
@end

@implementation NSKeyValueCollectionGetter

- (NSKeyValueCollectionGetter)initWithContainerClassID:(id)a3 key:(id)a4 methods:(id)a5 proxyClass:(Class)a6
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSKeyValueCollectionGetter;
  v7 = [(NSKeyValueProxyGetter *)&v9 initWithContainerClassID:a3 key:a4 proxyClass:a6];
  if (v7)
  {
    v7->_methods = a5;
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueCollectionGetter;
  [(NSKeyValueAccessor *)&v3 dealloc];
}

@end