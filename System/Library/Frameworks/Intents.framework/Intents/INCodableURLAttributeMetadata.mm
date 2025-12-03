@interface INCodableURLAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableURLAttributeMetadata)initWithCoder:(id)coder;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionKey;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableURLAttributeMetadata

- (id)__INCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableURLAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableURLAttributeMetadataDefaultValueKey];

  return __INCodableURLAttributeMetadataDefaultValueKey;
}

- (INCodableURLAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = INCodableURLAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    [(INCodableURLAttributeMetadata *)v5 setDefaultValue:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableURLAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_defaultValue forKey:{@"defaultValue", v5.receiver, v5.super_class}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableURLAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:parameters error:&v13];
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
    [v6 intents_setPlistSafeObject:self->_defaultValue forKey:@"defaultValue"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = INCodableURLAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v14 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionDefaultValueKey = [(INCodableURLAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v15 = __INCodableDescriptionDefaultValueKey;
  defaultValue = [(INCodableURLAttributeMetadata *)self defaultValue];
  absoluteString = [defaultValue absoluteString];
  null = absoluteString;
  if (!absoluteString)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v4 if_dictionaryByAddingEntriesFromDictionary:v9];

  if (!absoluteString)
  {
  }

  if_dictionaryWithNonEmptyValues = [v10 if_dictionaryWithNonEmptyValues];

  v12 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = INCodableURLAttributeMetadata;
  dictionaryCopy = dictionary;
  [(INCodableAttributeMetadata *)&v9 updateWithDictionary:dictionaryCopy];
  v5 = [(INCodableURLAttributeMetadata *)self __INCodableDescriptionDefaultValueKey:v9.receiver];
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    v8 = 0;
  }

  else
  {

    v6 = 0;
    v7 = 0;
    v8 = 1;
  }

  objc_storeStrong(&self->_defaultValue, v7);
  if ((v8 & 1) == 0)
  {
  }
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = &OBJC_METACLASS___INCodableURLAttributeMetadata;
  v15 = 0;
  v7 = objc_msgSendSuper2(&v14, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v15);
  v8 = v15;
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
    v12 = [representationCopy intents_urlForKey:@"defaultValue"];
    [v7 setDefaultValue:v12];

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableURLAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableURLAttributeMetadataDefaultValueKey];

  return __INCodableURLAttributeMetadataDefaultValueKey;
}

- (id)__INTypeCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableURLAttributeMetadataKey = [objc_opt_class() __INCodableURLAttributeMetadataKey];

  return __INCodableURLAttributeMetadataKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableURLAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableURLAttributeMetadataDefaultValueKey];

  return __INCodableURLAttributeMetadataDefaultValueKey;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableURLAttributeMetadataKey = [objc_opt_class() __INCodableURLAttributeMetadataKey];

  return __INCodableURLAttributeMetadataKey;
}

- (id)__INCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableURLAttributeMetadataKey = [objc_opt_class() __INCodableURLAttributeMetadataKey];

  return __INCodableURLAttributeMetadataKey;
}

@end