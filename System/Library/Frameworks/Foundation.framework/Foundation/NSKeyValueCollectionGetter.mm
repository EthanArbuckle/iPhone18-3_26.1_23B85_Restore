@interface NSKeyValueCollectionGetter
- (NSKeyValueCollectionGetter)initWithContainerClassID:(id)d key:(id)key methods:(id)methods proxyClass:(Class)class;
- (void)dealloc;
@end

@implementation NSKeyValueCollectionGetter

- (NSKeyValueCollectionGetter)initWithContainerClassID:(id)d key:(id)key methods:(id)methods proxyClass:(Class)class
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSKeyValueCollectionGetter;
  v7 = [(NSKeyValueProxyGetter *)&v9 initWithContainerClassID:d key:key proxyClass:class];
  if (v7)
  {
    v7->_methods = methods;
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