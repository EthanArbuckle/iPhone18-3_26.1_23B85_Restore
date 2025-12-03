@interface INCodableEnumAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableEnumAttributeMetadata)initWithCoder:(id)coder;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionKey;
- (id)defaultValueForIntentDefaultValueProvider;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableEnumAttributeMetadata

- (id)__INCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableEnumAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableEnumAttributeMetadataDefaultValueKey];

  return __INCodableEnumAttributeMetadataDefaultValueKey;
}

- (INCodableEnumAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = INCodableEnumAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    defaultValue = v5->_defaultValue;
    v5->_defaultValue = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableEnumAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_defaultValue forKey:{@"defaultValue", v5.receiver, v5.super_class}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v15.receiver = self;
  v15.super_class = INCodableEnumAttributeMetadata;
  v16 = 0;
  v7 = [(INCodableAttributeMetadata *)&v15 widgetPlistableRepresentationWithParameters:parametersCopy error:&v16];
  v8 = v16;
  if (v8)
  {
    v9 = v8;
    if (error)
    {
LABEL_3:
      v10 = v9;
      v11 = 0;
      *error = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  defaultValue = self->_defaultValue;
  v14 = 0;
  [v7 intents_setWidgetPlistRepresentable:defaultValue forKey:@"defaultValue" parameters:parametersCopy error:&v14];
  v9 = v14;
  if (v9)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = [v7 copy];
LABEL_8:

  return v11;
}

- (id)defaultValueForIntentDefaultValueProvider
{
  v2 = MEMORY[0x1E696AD98];
  defaultValue = [(INCodableEnumAttributeMetadata *)self defaultValue];
  v4 = [v2 numberWithInteger:{objc_msgSend(defaultValue, "index")}];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = INCodableEnumAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v14 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionDefaultValueKey = [(INCodableEnumAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v15 = __INCodableDescriptionDefaultValueKey;
  defaultValue = [(INCodableEnumAttributeMetadata *)self defaultValue];
  name = [defaultValue name];
  null = name;
  if (!name)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v4 if_dictionaryByAddingEntriesFromDictionary:v9];

  if (!name)
  {
  }

  if_dictionaryWithNonEmptyValues = [v10 if_dictionaryWithNonEmptyValues];

  v12 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  v14.receiver = self;
  v14.super_class = INCodableEnumAttributeMetadata;
  dictionaryCopy = dictionary;
  [(INCodableAttributeMetadata *)&v14 updateWithDictionary:dictionaryCopy];
  v5 = [(INCodableAttributeMetadata *)self codableAttribute:v14.receiver];
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

  __INCodableDescriptionDefaultValueKey = [(INCodableEnumAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v9 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultValueKey];

  if (v9)
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

  v12 = [v7 valueWithName:v11];

  defaultValue = self->_defaultValue;
  self->_defaultValue = v12;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v16.receiver = self;
  v16.super_class = &OBJC_METACLASS___INCodableEnumAttributeMetadata;
  v17 = 0;
  v7 = objc_msgSendSuper2(&v16, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v17);
  v8 = v17;
  if (v8)
  {
    v9 = v8;
    if (error)
    {
LABEL_3:
      v10 = v9;
      v11 = 0;
      *error = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v15 = 0;
  v12 = [INCodableEnumValue intents_widgetPlistRepresentableInDict:representationCopy key:@"defaultValue" error:&v15];
  v9 = v15;
  v13 = v7[5];
  v7[5] = v12;

  if (v9)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v7;
LABEL_8:

  return v11;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableEnumAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableEnumAttributeMetadataDefaultValueKey];

  return __INCodableEnumAttributeMetadataDefaultValueKey;
}

- (id)__INTypeCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableEnumAttributeMetadataKey = [objc_opt_class() __INCodableEnumAttributeMetadataKey];

  return __INCodableEnumAttributeMetadataKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableEnumAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableEnumAttributeMetadataDefaultValueKey];

  return __INCodableEnumAttributeMetadataDefaultValueKey;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableEnumAttributeMetadataKey = [objc_opt_class() __INCodableEnumAttributeMetadataKey];

  return __INCodableEnumAttributeMetadataKey;
}

- (id)__INCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableEnumAttributeMetadataKey = [objc_opt_class() __INCodableEnumAttributeMetadataKey];

  return __INCodableEnumAttributeMetadataKey;
}

@end