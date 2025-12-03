@interface NSSQLAttribute
- (BOOL)isFileBackedFuture;
- (NSSQLAttribute)initWithEntity:(id)entity propertyDescription:(id)description;
- (id)initForReadOnlyFetchWithExpression:(id)expression;
- (uint64_t)_sqlTypeForAttributeType:(uint64_t)type flags:(uint64_t)flags;
- (void)addKeyForTriggerOnRelationship:(id)object;
- (void)dealloc;
@end

@implementation NSSQLAttribute

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NSSQLAttribute;
  [(NSSQLColumn *)&v2 dealloc];
}

- (uint64_t)_sqlTypeForAttributeType:(uint64_t)type flags:(uint64_t)flags
{
  result = 1;
  if (type > 799)
  {
    if (type > 1099)
    {
      if (type > 1799)
      {
        if (type != 1800)
        {
          if (type == 2200)
          {
            return 18;
          }

          return 6;
        }

        return 15;
      }

      else
      {
        if (type != 1100)
        {
          if (type == 1200)
          {
            return 12;
          }

          return 6;
        }

        return 11;
      }
    }

    switch(type)
    {
      case 800:
        return result;
      case 900:
        return 8;
      case 1000:
        if (flags)
        {
          return 16;
        }

        else
        {
          return 10;
        }
    }

    return 6;
  }

  if (type <= 299)
  {
    if (type && (type == 100 || type == 200))
    {
      return result;
    }

    return 6;
  }

  if (type > 499)
  {
    if (type == 500 || type == 600)
    {
      return 7;
    }

    return 6;
  }

  if (type != 300)
  {
    if (type == 400)
    {
      return 4;
    }

    return 6;
  }

  return 2;
}

- (NSSQLAttribute)initWithEntity:(id)entity propertyDescription:(id)description
{
  v12.receiver = self;
  v12.super_class = NSSQLAttribute;
  v6 = [NSSQLColumn initWithEntity:sel_initWithEntity_propertyDescription_ propertyDescription:?];
  v7 = v6;
  if (v6)
  {
    v6->super.super._propertyType = 1;
    v6->super.super._sqlType = -[NSSQLAttribute _sqlTypeForAttributeType:flags:]([description attributeType], objc_msgSend(description, "storesBinaryDataExternally"));
    if (description && [description superCompositeAttribute])
    {
      *&v7->super.super._flags |= 0x20u;
      if (entity)
      {
        v8 = *(entity + 3);
        if (v8)
        {
          entity = *(v8 + 104);
        }

        else
        {
          entity = 0;
        }
      }

      _rootName = [(NSPropertyDescription *)description _rootName];
    }

    else
    {
      if (entity)
      {
        v9 = *(entity + 3);
        if (v9)
        {
          entity = *(v9 + 104);
        }

        else
        {
          entity = 0;
        }
      }

      _rootName = [(NSSQLProperty *)v7 name];
    }

    v7->super.super._slot = [entity fastIndexForKnownKey:_rootName];
    *&v7->super.super._flags = *&v7->super.super._flags & 0xFFE7 | (16 * ([description _propertyType] == 6));
  }

  return v7;
}

- (id)initForReadOnlyFetchWithExpression:(id)expression
{
  v7.receiver = self;
  v7.super_class = NSSQLAttribute;
  initForReadOnlyFetching = [(NSSQLColumn *)&v7 initForReadOnlyFetching];
  v5 = initForReadOnlyFetching;
  if (initForReadOnlyFetching)
  {
    initForReadOnlyFetching[24] = 1;
    initForReadOnlyFetching[25] = -[NSSQLAttribute _sqlTypeForAttributeType:flags:]([expression expressionResultType], 0);
    *(v5 + 1) = expression;
    *(v5 + 16) &= 0xFFF6u;
  }

  return v5;
}

- (void)addKeyForTriggerOnRelationship:(id)object
{
  if (object)
  {
    if ((*(object + 16) & 8) != 0)
    {
      AssociatedObject = objc_getAssociatedObject(object, &NSSQLAttributeTriggerAssociationKey);
      if (AssociatedObject)
      {
        v4 = AssociatedObject;
      }

      else
      {
        v4 = NSSet_EmptySet;
      }
    }

    else
    {
      v4 = NSSet_EmptySet;
    }

    v6 = [v4 setByAddingObject:{objc_msgSend(a2, "name")}];

    objc_setAssociatedObject(object, &NSSQLAttributeTriggerAssociationKey, v6, 0x301);
  }
}

- (BOOL)isFileBackedFuture
{
  propertyDescription = [(NSSQLProperty *)self propertyDescription];

  return [propertyDescription isFileBackedFuture];
}

@end