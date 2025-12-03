@interface INCodablePersonAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodablePersonAttributeMetadata)initWithCoder:(id)coder;
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

@implementation INCodablePersonAttributeMetadata

- (id)__INCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePersonAttributeMetadataTypeKey = [objc_opt_class() __INCodablePersonAttributeMetadataTypeKey];

  return __INCodablePersonAttributeMetadataTypeKey;
}

- (INCodablePersonAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = INCodablePersonAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    -[INCodablePersonAttributeMetadata setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodablePersonAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodablePersonAttributeMetadata;
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
  v15[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = INCodablePersonAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v13 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionTypeKey = [(INCodablePersonAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v14 = __INCodableDescriptionTypeKey;
  type = [(INCodablePersonAttributeMetadata *)self type];
  if ((type - 1) > 3)
  {
    v7 = @"Contact";
  }

  else
  {
    v7 = off_1E7283368[type - 1];
  }

  v15[0] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v9 = [v4 if_dictionaryByAddingEntriesFromDictionary:v8];

  if_dictionaryWithNonEmptyValues = [v9 if_dictionaryWithNonEmptyValues];

  v11 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  v10.receiver = self;
  v10.super_class = INCodablePersonAttributeMetadata;
  dictionaryCopy = dictionary;
  [(INCodableAttributeMetadata *)&v10 updateWithDictionary:dictionaryCopy];
  v5 = [(INCodablePersonAttributeMetadata *)self __INCodableDescriptionTypeKey:v10.receiver];
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

  v9 = INCodablePersonAttributeMetadataTypeWithString(v8);
  self->_type = v9;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___INCodablePersonAttributeMetadata;
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
  __INCodablePersonAttributeMetadataTypeKey = [objc_opt_class() __INCodablePersonAttributeMetadataTypeKey];

  return __INCodablePersonAttributeMetadataTypeKey;
}

- (id)__INTypeCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePersonAttributeMetadataKey = [objc_opt_class() __INCodablePersonAttributeMetadataKey];

  return __INCodablePersonAttributeMetadataKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePersonAttributeMetadataTypeKey = [objc_opt_class() __INCodablePersonAttributeMetadataTypeKey];

  return __INCodablePersonAttributeMetadataTypeKey;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePersonAttributeMetadataKey = [objc_opt_class() __INCodablePersonAttributeMetadataKey];

  return __INCodablePersonAttributeMetadataKey;
}

- (id)__INCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodablePersonAttributeMetadataKey = [objc_opt_class() __INCodablePersonAttributeMetadataKey];

  return __INCodablePersonAttributeMetadataKey;
}

@end