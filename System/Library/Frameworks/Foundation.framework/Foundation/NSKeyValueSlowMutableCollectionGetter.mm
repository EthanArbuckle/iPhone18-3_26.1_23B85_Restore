@interface NSKeyValueSlowMutableCollectionGetter
- (BOOL)treatNilValuesLikeEmptyCollections;
- (NSKeyValueSlowMutableCollectionGetter)initWithContainerClassID:(id)d key:(id)key baseGetter:(id)getter baseSetter:(id)setter containerIsa:(Class)isa proxyClass:(Class)class;
- (void)dealloc;
@end

@implementation NSKeyValueSlowMutableCollectionGetter

- (NSKeyValueSlowMutableCollectionGetter)initWithContainerClassID:(id)d key:(id)key baseGetter:(id)getter baseSetter:(id)setter containerIsa:(Class)isa proxyClass:(Class)class
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = NSKeyValueSlowMutableCollectionGetter;
  v13 = [(NSKeyValueProxyGetter *)&v17 initWithContainerClassID:d key:key proxyClass:class];
  if (v13)
  {
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      getterCopy = [[NSKeyValueSlowGetter alloc] initWithContainerClassID:d key:key containerIsa:isa];
    }

    else
    {
      getterCopy = getter;
    }

    v13->_baseGetter = &getterCopy->super;
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      setterCopy = [[NSKeyValueSlowSetter alloc] initWithContainerClassID:d key:key containerIsa:isa];
    }

    else
    {
      setterCopy = setter;
    }

    v13->_baseSetter = &setterCopy->super;
  }

  return v13;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSKeyValueSlowMutableCollectionGetter;
  [(NSKeyValueAccessor *)&v3 dealloc];
}

- (BOOL)treatNilValuesLikeEmptyCollections
{
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end