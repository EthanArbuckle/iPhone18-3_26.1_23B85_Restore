@interface NSKeyValueNotifyingMutableCollectionGetter
- (NSKeyValueNotifyingMutableCollectionGetter)initWithContainerClassID:(id)d key:(id)key mutableCollectionGetter:(id)getter proxyClass:(Class)class;
- (void)dealloc;
@end

@implementation NSKeyValueNotifyingMutableCollectionGetter

- (NSKeyValueNotifyingMutableCollectionGetter)initWithContainerClassID:(id)d key:(id)key mutableCollectionGetter:(id)getter proxyClass:(Class)class
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSKeyValueNotifyingMutableCollectionGetter;
  v7 = [(NSKeyValueProxyGetter *)&v9 initWithContainerClassID:d key:key proxyClass:class];
  if (v7)
  {
    v7->_mutableCollectionGetter = getter;
  }

  return v7;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueNotifyingMutableCollectionGetter;
  [(NSKeyValueAccessor *)&v3 dealloc];
}

@end