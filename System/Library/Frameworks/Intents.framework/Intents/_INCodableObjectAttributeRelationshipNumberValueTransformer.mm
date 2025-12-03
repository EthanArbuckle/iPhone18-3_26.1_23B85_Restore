@interface _INCodableObjectAttributeRelationshipNumberValueTransformer
- (id)transformedValue:(id)value;
@end

@implementation _INCodableObjectAttributeRelationshipNumberValueTransformer

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
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = &unk_1F02D83F8;
  }

  v8 = v7;

  return v7;
}

@end