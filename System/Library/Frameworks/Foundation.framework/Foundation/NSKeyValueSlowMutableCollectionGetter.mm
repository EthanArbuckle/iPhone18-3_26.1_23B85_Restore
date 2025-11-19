@interface NSKeyValueSlowMutableCollectionGetter
- (BOOL)treatNilValuesLikeEmptyCollections;
- (NSKeyValueSlowMutableCollectionGetter)initWithContainerClassID:(id)a3 key:(id)a4 baseGetter:(id)a5 baseSetter:(id)a6 containerIsa:(Class)a7 proxyClass:(Class)a8;
- (void)dealloc;
@end

@implementation NSKeyValueSlowMutableCollectionGetter

- (NSKeyValueSlowMutableCollectionGetter)initWithContainerClassID:(id)a3 key:(id)a4 baseGetter:(id)a5 baseSetter:(id)a6 containerIsa:(Class)a7 proxyClass:(Class)a8
{
  v18 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = NSKeyValueSlowMutableCollectionGetter;
  v13 = [(NSKeyValueProxyGetter *)&v17 initWithContainerClassID:a3 key:a4 proxyClass:a8];
  if (v13)
  {
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[NSKeyValueSlowGetter alloc] initWithContainerClassID:a3 key:a4 containerIsa:a7];
    }

    else
    {
      v14 = a5;
    }

    v13->_baseGetter = &v14->super;
    objc_opt_self();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NSKeyValueSlowSetter alloc] initWithContainerClassID:a3 key:a4 containerIsa:a7];
    }

    else
    {
      v15 = a6;
    }

    v13->_baseSetter = &v15->super;
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