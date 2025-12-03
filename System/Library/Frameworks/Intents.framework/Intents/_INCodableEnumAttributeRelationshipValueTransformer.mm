@interface _INCodableEnumAttributeRelationshipValueTransformer
- (id)_transformedNumberValue:(id)value;
- (id)_transformedStringValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation _INCodableEnumAttributeRelationshipValueTransformer

- (id)_transformedNumberValue:(id)value
{
  valueCopy = value;
  codableAttribute = [(_INCodableAttributeRelationshipValueTransformer *)self codableAttribute];
  if (codableAttribute)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = codableAttribute;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  codableEnum = [v7 codableEnum];

  if (codableEnum)
  {
    values = [codableEnum values];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79___INCodableEnumAttributeRelationshipValueTransformer__transformedNumberValue___block_invoke;
    v12[3] = &unk_1E727DD40;
    v13 = valueCopy;
    v10 = [values if_firstObjectPassingTest:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_transformedStringValue:(id)value
{
  valueCopy = value;
  codableAttribute = [(_INCodableAttributeRelationshipValueTransformer *)self codableAttribute];
  if (codableAttribute)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = codableAttribute;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  codableEnum = [v7 codableEnum];

  if (codableEnum)
  {
    values = [codableEnum values];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79___INCodableEnumAttributeRelationshipValueTransformer__transformedStringValue___block_invoke;
    v12[3] = &unk_1E727DD40;
    v13 = valueCopy;
    v10 = [values if_firstObjectPassingTest:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = valueCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_INCodableEnumAttributeRelationshipValueTransformer *)self _transformedNumberValue:v6];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v5 = [(_INCodableEnumAttributeRelationshipValueTransformer *)self _transformedStringValue:valueCopy];
LABEL_7:
  v6 = valueCopy;
LABEL_8:

  return v5;
}

@end