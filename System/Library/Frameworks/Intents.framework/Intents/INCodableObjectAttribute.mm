@interface INCodableObjectAttribute
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (Class)_relationshipValueTransformerClass;
- (Class)objectClass;
- (Class)resolutionResultClass;
- (INCodableObjectAttribute)initWithCoder:(id)coder;
- (NSValueTransformer)valueTransformer;
- (id)__INCodableDescriptionKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (int64_t)valueType;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableObjectAttribute

- (NSValueTransformer)valueTransformer
{
  typeName = [(INCodableObjectAttribute *)self typeName];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_IN%@ValueTransformer", typeName];
  v4 = [MEMORY[0x1E696B0A0] valueTransformerForName:v3];
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INIntent%@SlotValueTransformer", typeName];
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
  valueTransformer = [(INCodableObjectAttribute *)self valueTransformer];
  if (valueTransformer && (objc_opt_class(), (objc_opt_respondsToSelector() & 1) != 0))
  {
    _intents_valueType = [objc_opt_class() _intents_valueType];
  }

  else
  {
    _intents_valueType = 225;
  }

  return _intents_valueType;
}

- (Class)resolutionResultClass
{
  valueTransformer = [(INCodableObjectAttribute *)self valueTransformer];
  _intents_resolutionResultClass = [objc_opt_class() _intents_resolutionResultClass];

  return _intents_resolutionResultClass;
}

- (unint64_t)hash
{
  typeName = [(INCodableObjectAttribute *)self typeName];
  v4 = [typeName hash];
  v7.receiver = self;
  v7.super_class = INCodableObjectAttribute;
  v5 = [(INCodableAttribute *)&v7 hash];

  return v5 ^ v4;
}

- (Class)_relationshipValueTransformerClass
{
  objectClass = [(INCodableObjectAttribute *)self objectClass];
  if (objectClass != objc_opt_class())
  {
    v4 = MEMORY[0x1E696AEC0];
    _typeString = [(INCodableAttribute *)self _typeString];
    v6 = [v4 stringWithFormat:@"_INCodableObjectAttributeRelationship%@ValueTransformer", _typeString];

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
  valueTransformer = [(INCodableObjectAttribute *)self valueTransformer];
  transformedValueClass = [objc_opt_class() transformedValueClass];

  return transformedValueClass;
}

- (id)__INCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableObjectAttributeTypeKey = [objc_opt_class() __INCodableObjectAttributeTypeKey];

  return __INCodableObjectAttributeTypeKey;
}

- (INCodableObjectAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = INCodableObjectAttribute;
  v5 = [(INCodableAttribute *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeName"];
    typeName = v5->_typeName;
    v5->_typeName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_originalTypeName"];
    originalTypeName = v5->_originalTypeName;
    v5->_originalTypeName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"className"];
    if (v10)
    {
      objc_storeStrong(&v5->_typeName, v10);
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableObjectAttribute;
  coderCopy = coder;
  [(INCodableAttribute *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_typeName forKey:{@"typeName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_originalTypeName forKey:@"_originalTypeName"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableObjectAttribute;
  v13 = 0;
  v6 = [(INCodableAttribute *)&v12 widgetPlistableRepresentationWithParameters:parameters error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = INCodableObjectAttribute;
  v4 = [(INCodableAttribute *)&v8 copyWithZone:zone];
  typeName = [(INCodableObjectAttribute *)self typeName];
  [v4 setTypeName:typeName];

  _originalTypeName = [(INCodableObjectAttribute *)self _originalTypeName];
  [v4 _setOriginalTypeName:_originalTypeName];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = INCodableObjectAttribute;
  v4 = [(INCodableAttribute *)&v15 dictionaryRepresentationWithLocalizer:localizer];
  typeName = [(INCodableObjectAttribute *)self typeName];
  if ([typeName isEqualToString:@"Double"])
  {
    v6 = @"Decimal";
  }

  else
  {
    if (![typeName isEqualToString:@"Long"])
    {
      goto LABEL_6;
    }

    v6 = @"Integer";
  }

  typeName = v6;
LABEL_6:
  __INCodableDescriptionTypeKey = [(INCodableObjectAttribute *)self __INCodableDescriptionTypeKey];
  v16 = __INCodableDescriptionTypeKey;
  originalTypeName = self->_originalTypeName;
  if (originalTypeName)
  {
    v9 = 0;
  }

  else if (typeName)
  {
    v9 = 0;
    originalTypeName = typeName;
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

  if_dictionaryWithNonEmptyValues = [v11 if_dictionaryWithNonEmptyValues];

  v13 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __INCodableDescriptionTypeKey = [(INCodableObjectAttribute *)self __INCodableDescriptionTypeKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTypeKey];

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
  [(INCodableAttribute *)&v11 updateWithDictionary:dictionaryCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    typeName = [(INCodableObjectAttribute *)self typeName];
    if (typeName || ([equalCopy typeName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      typeName2 = [(INCodableObjectAttribute *)self typeName];
      typeName3 = [equalCopy typeName];
      v9 = [typeName2 isEqual:typeName3];

      if (typeName)
      {
LABEL_9:

        v12.receiver = self;
        v12.super_class = INCodableObjectAttribute;
        v10 = [(INCodableAttribute *)&v12 isEqual:equalCopy]& v9;
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

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___INCodableObjectAttribute;
  v18 = 0;
  v7 = objc_msgSendSuper2(&v17, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v18);
  v8 = v18;
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [representationCopy intents_stringForKey:@"typeName"];
    v13 = v7[20];
    v7[20] = v12;

    v14 = [representationCopy intents_stringForKey:@"_originalTypeName"];
    v15 = v7[19];
    v7[19] = v14;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableObjectAttributeTypeKey = [objc_opt_class() __INCodableObjectAttributeTypeKey];

  return __INCodableObjectAttributeTypeKey;
}

- (id)__INTypeCodableDescriptionKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableObjectAttributeKey = [objc_opt_class() __INCodableObjectAttributeKey];

  return __INCodableObjectAttributeKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableObjectAttributeTypeKey = [objc_opt_class() __INCodableObjectAttributeTypeKey];

  return __INCodableObjectAttributeTypeKey;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableObjectAttributeKey = [objc_opt_class() __INCodableObjectAttributeKey];

  return __INCodableObjectAttributeKey;
}

- (id)__INCodableDescriptionKey
{
  _codableDescription = [(INCodableAttribute *)self _codableDescription];
  __INCodableObjectAttributeKey = [objc_opt_class() __INCodableObjectAttributeKey];

  return __INCodableObjectAttributeKey;
}

@end