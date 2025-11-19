@interface _INCodableScalarAttributeRelationshipStringValueTransformer
- (id)transformedValue:(id)a3;
@end

@implementation _INCodableScalarAttributeRelationshipStringValueTransformer

- (id)transformedValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &stru_1F01E0850;
  }

  v8 = v7;

  return v7;
}

@end