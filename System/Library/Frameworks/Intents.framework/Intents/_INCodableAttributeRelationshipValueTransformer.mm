@interface _INCodableAttributeRelationshipValueTransformer
- (INCodableAttribute)codableAttribute;
- (_INCodableAttributeRelationshipValueTransformer)initWithCodableAttribute:(id)attribute;
- (id)transformedValue:(id)value;
@end

@implementation _INCodableAttributeRelationshipValueTransformer

- (INCodableAttribute)codableAttribute
{
  WeakRetained = objc_loadWeakRetained(&self->_codableAttribute);

  return WeakRetained;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  codableAttribute = [(_INCodableAttributeRelationshipValueTransformer *)self codableAttribute];
  [codableAttribute objectClass];
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = valueCopy;
  v8 = v7;
  v9 = v7;
  if ((isKindOfClass & 1) == 0)
  {
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = 0;
        v10 = v8;
LABEL_13:

        goto LABEL_14;
      }

      v10 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v12 = [v11 dataUsingEncoding:4];
        if (v12 && ([MEMORY[0x1E696ACB0] JSONObjectWithData:v12 options:0 error:0], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v14 = v13;

          v10 = v14;
        }

        else
        {
          v14 = 0;
          v10 = v11;
        }

        v15 = objc_alloc_init(INJSONDecoder);
        v9 = -[INJSONDecoder decodeObjectOfClass:from:](v15, "decodeObjectOfClass:from:", [codableAttribute objectClass], v10);

        goto LABEL_13;
      }
    }

    else
    {
      v10 = 0;
    }

    v9 = 0;
    goto LABEL_13;
  }

LABEL_14:

  return v9;
}

- (_INCodableAttributeRelationshipValueTransformer)initWithCodableAttribute:(id)attribute
{
  attributeCopy = attribute;
  v8.receiver = self;
  v8.super_class = _INCodableAttributeRelationshipValueTransformer;
  v5 = [(_INCodableAttributeRelationshipValueTransformer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_codableAttribute, attributeCopy);
  }

  return v6;
}

@end