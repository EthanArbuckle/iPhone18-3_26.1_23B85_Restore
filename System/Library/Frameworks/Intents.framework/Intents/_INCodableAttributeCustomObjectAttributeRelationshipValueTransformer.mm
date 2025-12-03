@interface _INCodableAttributeCustomObjectAttributeRelationshipValueTransformer
- (id)transformedValue:(id)value;
@end

@implementation _INCodableAttributeCustomObjectAttributeRelationshipValueTransformer

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = valueCopy;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  identifier = [v5 identifier];
  v7 = identifier;
  if (identifier)
  {
    v8 = identifier;
  }

  else
  {
    v9 = valueCopy;
    if (valueCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = &stru_1F01E0850;
    if (v11)
    {
      v12 = v11;
    }

    v8 = v12;
  }

  return v8;
}

@end