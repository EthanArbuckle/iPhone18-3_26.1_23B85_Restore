@interface BSAbstractDefaultDomainClassMetadata
- (id)description;
- (void)initWithClass:(void *)class;
@end

@implementation BSAbstractDefaultDomainClassMetadata

- (void)initWithClass:(void *)class
{
  if (!class)
  {
    return 0;
  }

  if (!a2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithClass_ object:class file:@"_BSAbstractDefaultDomainClassMetadata.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"clazz"}];
  }

  v12.receiver = class;
  v12.super_class = BSAbstractDefaultDomainClassMetadata;
  v4 = objc_msgSendSuper2(&v12, sel_init);
  v5 = v4;
  if (v4)
  {
    v4[1] = a2;
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = v5[2];
    v5[2] = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = v5[3];
    v5[3] = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p propertyNameToPropertyMap: %@\nselectorToPropertyMap: %@>", v5, self, self->_propertyNameToPropertyMap, self->_selectorToPropertyMap];

  return v6;
}

@end