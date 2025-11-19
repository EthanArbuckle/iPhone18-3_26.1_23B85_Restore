@interface NSSQLAttribute
- (BOOL)isFileBackedFuture;
- (NSSQLAttribute)initWithEntity:(id)a3 propertyDescription:(id)a4;
- (id)initForReadOnlyFetchWithExpression:(id)a3;
- (uint64_t)_sqlTypeForAttributeType:(uint64_t)a1 flags:(uint64_t)a2;
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

- (uint64_t)_sqlTypeForAttributeType:(uint64_t)a1 flags:(uint64_t)a2
{
  result = 1;
  if (a1 > 799)
  {
    if (a1 > 1099)
    {
      if (a1 > 1799)
      {
        if (a1 != 1800)
        {
          if (a1 == 2200)
          {
            return 18;
          }

          return 6;
        }

        return 15;
      }

      else
      {
        if (a1 != 1100)
        {
          if (a1 == 1200)
          {
            return 12;
          }

          return 6;
        }

        return 11;
      }
    }

    switch(a1)
    {
      case 800:
        return result;
      case 900:
        return 8;
      case 1000:
        if (a2)
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

  if (a1 <= 299)
  {
    if (a1 && (a1 == 100 || a1 == 200))
    {
      return result;
    }

    return 6;
  }

  if (a1 > 499)
  {
    if (a1 == 500 || a1 == 600)
    {
      return 7;
    }

    return 6;
  }

  if (a1 != 300)
  {
    if (a1 == 400)
    {
      return 4;
    }

    return 6;
  }

  return 2;
}

- (NSSQLAttribute)initWithEntity:(id)a3 propertyDescription:(id)a4
{
  v12.receiver = self;
  v12.super_class = NSSQLAttribute;
  v6 = [NSSQLColumn initWithEntity:sel_initWithEntity_propertyDescription_ propertyDescription:?];
  v7 = v6;
  if (v6)
  {
    v6->super.super._propertyType = 1;
    v6->super.super._sqlType = -[NSSQLAttribute _sqlTypeForAttributeType:flags:]([a4 attributeType], objc_msgSend(a4, "storesBinaryDataExternally"));
    if (a4 && [a4 superCompositeAttribute])
    {
      *&v7->super.super._flags |= 0x20u;
      if (a3)
      {
        v8 = *(a3 + 3);
        if (v8)
        {
          a3 = *(v8 + 104);
        }

        else
        {
          a3 = 0;
        }
      }

      v10 = [(NSPropertyDescription *)a4 _rootName];
    }

    else
    {
      if (a3)
      {
        v9 = *(a3 + 3);
        if (v9)
        {
          a3 = *(v9 + 104);
        }

        else
        {
          a3 = 0;
        }
      }

      v10 = [(NSSQLProperty *)v7 name];
    }

    v7->super.super._slot = [a3 fastIndexForKnownKey:v10];
    *&v7->super.super._flags = *&v7->super.super._flags & 0xFFE7 | (16 * ([a4 _propertyType] == 6));
  }

  return v7;
}

- (id)initForReadOnlyFetchWithExpression:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSSQLAttribute;
  v4 = [(NSSQLColumn *)&v7 initForReadOnlyFetching];
  v5 = v4;
  if (v4)
  {
    v4[24] = 1;
    v4[25] = -[NSSQLAttribute _sqlTypeForAttributeType:flags:]([a3 expressionResultType], 0);
    *(v5 + 1) = a3;
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
  v2 = [(NSSQLProperty *)self propertyDescription];

  return [v2 isFileBackedFuture];
}

@end