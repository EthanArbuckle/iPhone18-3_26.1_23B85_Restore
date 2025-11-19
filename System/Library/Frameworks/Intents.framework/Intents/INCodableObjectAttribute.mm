@interface INCodableObjectAttribute
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (Class)_relationshipValueTransformerClass;
- (Class)objectClass;
- (Class)resolutionResultClass;
- (INCodableObjectAttribute)initWithCoder:(id)a3;
- (NSValueTransformer)valueTransformer;
- (id)__INCodableDescriptionKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (int64_t)valueType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableObjectAttribute

- (NSValueTransformer)valueTransformer
{
  v2 = [(INCodableObjectAttribute *)self typeName];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_IN%@ValueTransformer", v2];
  v4 = [MEMORY[0x1E696B0A0] valueTransformerForName:v3];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@SlotValueTransformer", v2];
    v6 = objc_opt_class();
    v7 = NSClassFromString(v5);
    if (v7 && (v8 = v7, ([(objc_class *)v7 isSubclassOfClass:v6]& 1) != 0))
    {
      v9 = v8;
      v4 = objc_alloc_init(v8);
      [MEMORY[0x1E696B0A0] setValueTransformer:v4 forName:v5];
    }

    else
    {
      v4 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    if ([objc_opt_class() reverseTransformedValueClass])
    {
      v10 = v4;
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

  return v10;
}

- (int64_t)valueType
{
  v2 = [(INCodableObjectAttribute *)self valueTransformer];
  if (v2 && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    v3 = [objc_opt_class() _intents_valueType];
  }

  else
  {
    v3 = 225;
  }

  return v3;
}

- (Class)resolutionResultClass
{
  v2 = [(INCodableObjectAttribute *)self valueTransformer];
  v3 = [objc_opt_class() _intents_resolutionResultClass];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(INCodableObjectAttribute *)self typeName];
  v4 = [v3 hash];
  v7.receiver = self;
  v7.super_class = INCodableObjectAttribute;
  v5 = [(INCodableAttribute *)&v7 hash];

  return v5 ^ v4;
}

- (Class)_relationshipValueTransformerClass
{
  v3 = [(INCodableObjectAttribute *)self objectClass];
  if (v3 != objc_opt_class())
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = [(INCodableAttribute *)self _typeString];
    v6 = [v4 stringWithFormat:@"_INCodableObjectAttributeRelationship%@ValueTransformer", v5];

    v7 = objc_opt_class();
    v8 = NSClassFromString(v6);
    if (v8)
    {
      v9 = v8;
      if (([(objc_class *)v8 isSubclassOfClass:v7]& 1) != 0)
      {
        v10 = v9;
        v11 = v9;
        v12 = [MEMORY[0x1E696AAE8] bundleForClass:v11];
        v13 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

        if (v12 == v13)
        {
          v14 = v11;

          goto LABEL_8;
        }
      }
    }
  }

  v14 = objc_opt_class();
LABEL_8:

  return v14;
}

- (Class)objectClass
{
  v2 = [(INCodableObjectAttribute *)self valueTransformer];
  v3 = [objc_opt_class() transformedValueClass];

  return v3;
}

- (id)__INCodableDescriptionTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableObjectAttributeTypeKey];

  return v3;
}

- (INCodableObjectAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = INCodableObjectAttribute;
  v5 = [(INCodableAttribute *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeName"];
    typeName = v5->_typeName;
    v5->_typeName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalTypeName"];
    originalTypeName = v5->_originalTypeName;
    v5->_originalTypeName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"className"];
    if (v10)
    {
      objc_storeStrong(&v5->_typeName, v10);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableObjectAttribute;
  v4 = a3;
  [(INCodableAttribute *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_typeName forKey:{@"typeName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_originalTypeName forKey:@"_originalTypeName"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableObjectAttribute;
  v13 = 0;
  v6 = [(INCodableAttribute *)&v12 widgetPlistableRepresentationWithParameters:a3 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = v7;
      v10 = 0;
      *a4 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [v6 intents_setPlistSafeObject:self->_typeName forKey:@"typeName"];
    [v6 intents_setPlistSafeObject:self->_originalTypeName forKey:@"_originalTypeName"];
    v10 = v6;
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = INCodableObjectAttribute;
  v4 = [(INCodableAttribute *)&v8 copyWithZone:a3];
  v5 = [(INCodableObjectAttribute *)self typeName];
  [v4 setTypeName:v5];

  v6 = [(INCodableObjectAttribute *)self _originalTypeName];
  [v4 _setOriginalTypeName:v6];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = INCodableObjectAttribute;
  v4 = [(INCodableAttribute *)&v15 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableObjectAttribute *)self typeName];
  if ([v5 isEqualToString:@"Double"])
  {
    v6 = @"Decimal";
  }

  else
  {
    if (![v5 isEqualToString:@"Long"])
    {
      goto LABEL_6;
    }

    v6 = @"Integer";
  }

  v5 = v6;
LABEL_6:
  v7 = [(INCodableObjectAttribute *)self __INCodableDescriptionTypeKey];
  v16 = v7;
  originalTypeName = self->_originalTypeName;
  if (originalTypeName)
  {
    v9 = 0;
  }

  else if (v5)
  {
    v9 = 0;
    originalTypeName = v5;
  }

  else
  {
    originalTypeName = [MEMORY[0x1E695DFB0] null];
    v9 = 1;
  }

  v17[0] = originalTypeName;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v11 = [v4 if_dictionaryByAddingEntriesFromDictionary:v10];

  if (v9)
  {
  }

  v12 = [v11 if_dictionaryWithNonEmptyValues];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(INCodableObjectAttribute *)self __INCodableDescriptionTypeKey];
  v6 = [v4 objectForKeyedSubscript:v5];

  if ([(NSString *)v6 isEqualToString:@"Decimal"]|| [(NSString *)v6 isEqualToString:@"TimeInterval"])
  {
    v7 = @"Double";
  }

  else
  {
    if (![(NSString *)v6 isEqualToString:@"Integer"])
    {
      goto LABEL_5;
    }

    v7 = @"Long";
  }

  originalTypeName = self->_originalTypeName;
  self->_originalTypeName = v6;

  v6 = v7;
LABEL_5:
  typeName = self->_typeName;
  self->_typeName = v6;
  v10 = v6;

  v11.receiver = self;
  v11.super_class = INCodableObjectAttribute;
  [(INCodableAttribute *)&v11 updateWithDictionary:v4];
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if ([v5 isMemberOfClass:objc_opt_class()])
  {
    v6 = [(INCodableObjectAttribute *)self typeName];
    if (v6 || ([v5 typeName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = [(INCodableObjectAttribute *)self typeName];
      v8 = [v5 typeName];
      v9 = [v7 isEqual:v8];

      if (v6)
      {
LABEL_9:

        v12.receiver = self;
        v12.super_class = INCodableObjectAttribute;
        v10 = [(INCodableAttribute *)&v12 isEqual:v5]& v9;
        goto LABEL_10;
      }
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_9;
  }

  LOBYTE(v10) = 0;
LABEL_10:

  return v10;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___INCodableObjectAttribute;
  v18 = 0;
  v7 = objc_msgSendSuper2(&v17, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v18);
  v8 = v18;
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [v6 intents_stringForKey:@"typeName"];
    v13 = v7[20];
    v7[20] = v12;

    v14 = [v6 intents_stringForKey:@"_originalTypeName"];
    v15 = v7[19];
    v7[19] = v14;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableObjectAttributeTypeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableObjectAttributeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableObjectAttributeTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableObjectAttributeKey];

  return v3;
}

- (id)__INCodableDescriptionKey
{
  v2 = [(INCodableAttribute *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableObjectAttributeKey];

  return v3;
}

@end