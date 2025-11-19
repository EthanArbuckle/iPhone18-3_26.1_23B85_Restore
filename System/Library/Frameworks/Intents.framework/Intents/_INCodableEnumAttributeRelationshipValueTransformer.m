@interface _INCodableEnumAttributeRelationshipValueTransformer
- (id)_transformedNumberValue:(id)a3;
- (id)_transformedStringValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation _INCodableEnumAttributeRelationshipValueTransformer

- (id)_transformedNumberValue:(id)a3
{
  v4 = a3;
  v5 = [(_INCodableAttributeRelationshipValueTransformer *)self codableAttribute];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v8 = [v7 codableEnum];

  if (v8)
  {
    v9 = [v8 values];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79___INCodableEnumAttributeRelationshipValueTransformer__transformedNumberValue___block_invoke;
    v12[3] = &unk_1E727DD40;
    v13 = v4;
    v10 = [v9 if_firstObjectPassingTest:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_transformedStringValue:(id)a3
{
  v4 = a3;
  v5 = [(_INCodableAttributeRelationshipValueTransformer *)self codableAttribute];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
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

  v8 = [v7 codableEnum];

  if (v8)
  {
    v9 = [v8 values];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79___INCodableEnumAttributeRelationshipValueTransformer__transformedStringValue___block_invoke;
    v12[3] = &unk_1E727DD40;
    v13 = v4;
    v10 = [v9 if_firstObjectPassingTest:v12];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(_INCodableEnumAttributeRelationshipValueTransformer *)self _transformedNumberValue:v6];
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v5 = [(_INCodableEnumAttributeRelationshipValueTransformer *)self _transformedStringValue:v4];
LABEL_7:
  v6 = v4;
LABEL_8:

  return v5;
}

@end