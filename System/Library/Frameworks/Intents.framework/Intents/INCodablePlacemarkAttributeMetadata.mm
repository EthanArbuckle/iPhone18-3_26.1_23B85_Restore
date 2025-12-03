@interface INCodablePlacemarkAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodablePlacemarkAttributeMetadata)initWithCoder:(id)coder;
- (id)__INCodableDescriptionKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodablePlacemarkAttributeMetadata

- (id)__INCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePlacemarkAttributeMetadataTypeKey = [objc_opt_class() __INCodablePlacemarkAttributeMetadataTypeKey];

  return __INCodablePlacemarkAttributeMetadataTypeKey;
}

- (INCodablePlacemarkAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = INCodablePlacemarkAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    -[INCodablePlacemarkAttributeMetadata setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodablePlacemarkAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodablePlacemarkAttributeMetadata;
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
    [v6 intents_setIntegerIfNonZero:self->_type forKey:@"type"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = INCodablePlacemarkAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v15 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionTypeKey = [(INCodablePlacemarkAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v16 = __INCodableDescriptionTypeKey;
  type = [(INCodablePlacemarkAttributeMetadata *)self type];
  v7 = @"Name";
  if (type == 1)
  {
    v7 = @"Address";
  }

  if (type == 2)
  {
    v7 = @"City";
  }

  v17[0] = v7;
  v8 = MEMORY[0x1E695DF20];
  v9 = v7;
  v10 = [v8 dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v11 = [v4 if_dictionaryByAddingEntriesFromDictionary:v10];

  if_dictionaryWithNonEmptyValues = [v11 if_dictionaryWithNonEmptyValues];

  v13 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = INCodablePlacemarkAttributeMetadata;
  dictionaryCopy = dictionary;
  [(INCodableAttributeMetadata *)&v10 updateWithDictionary:dictionaryCopy];
  v5 = [(INCodablePlacemarkAttributeMetadata *)self __INCodableDescriptionTypeKey:v10.receiver];
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = INCodablePlacemarkAttributeMetadataTypeWithString(v8);
  self->_type = v9;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___INCodablePlacemarkAttributeMetadata;
  v14 = 0;
  v7 = objc_msgSendSuper2(&v13, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v14);
  v8 = v14;
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
    [v7 setType:{objc_msgSend(representationCopy, "intents_intForKey:", @"type"}];
    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePlacemarkAttributeMetadataTypeKey = [objc_opt_class() __INCodablePlacemarkAttributeMetadataTypeKey];

  return __INCodablePlacemarkAttributeMetadataTypeKey;
}

- (id)__INTypeCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePlacemarkAttributeMetadataKey = [objc_opt_class() __INCodablePlacemarkAttributeMetadataKey];

  return __INCodablePlacemarkAttributeMetadataKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePlacemarkAttributeMetadataTypeKey = [objc_opt_class() __INCodablePlacemarkAttributeMetadataTypeKey];

  return __INCodablePlacemarkAttributeMetadataTypeKey;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePlacemarkAttributeMetadataKey = [objc_opt_class() __INCodablePlacemarkAttributeMetadataKey];

  return __INCodablePlacemarkAttributeMetadataKey;
}

- (id)__INCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePlacemarkAttributeMetadataKey = [objc_opt_class() __INCodablePlacemarkAttributeMetadataKey];

  return __INCodablePlacemarkAttributeMetadataKey;
}

@end