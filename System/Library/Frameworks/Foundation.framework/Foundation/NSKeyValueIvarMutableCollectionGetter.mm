@interface NSKeyValueIvarMutableCollectionGetter
- (NSKeyValueIvarMutableCollectionGetter)initWithContainerClassID:(id)d key:(id)key containerIsa:(Class)isa ivar:(objc_ivar *)ivar proxyClass:(Class)class;
@end

@implementation NSKeyValueIvarMutableCollectionGetter

- (NSKeyValueIvarMutableCollectionGetter)initWithContainerClassID:(id)d key:(id)key containerIsa:(Class)isa ivar:(objc_ivar *)ivar proxyClass:(Class)class
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = NSKeyValueIvarMutableCollectionGetter;
  result = [(NSKeyValueProxyGetter *)&v9 initWithContainerClassID:d key:key proxyClass:class];
  if (result)
  {
    result->_ivar = ivar;
  }

  return result;
}

@end