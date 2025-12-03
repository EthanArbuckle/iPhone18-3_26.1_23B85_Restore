@interface INCodableDateComponentsAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableDateComponentsAttributeMetadata)initWithCoder:(id)coder;
- (id)__INCodableDescriptionDateStyleKey;
- (id)__INCodableDescriptionFormatKey;
- (id)__INCodableDescriptionTemplateIDKey;
- (id)__INCodableDescriptionTemplateKey;
- (id)__INCodableDescriptionTimeStyleKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionDateStyleKey;
- (id)__INIntentResponseCodableDescriptionFormatKey;
- (id)__INIntentResponseCodableDescriptionTemplateIDKey;
- (id)__INIntentResponseCodableDescriptionTemplateKey;
- (id)__INIntentResponseCodableDescriptionTimeStyleKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionDateStyleKey;
- (id)__INTypeCodableDescriptionFormatKey;
- (id)__INTypeCodableDescriptionTemplateIDKey;
- (id)__INTypeCodableDescriptionTemplateKey;
- (id)__INTypeCodableDescriptionTimeStyleKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedFormatString;
- (id)localizedFormatStringWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableDateComponentsAttributeMetadata

- (id)__INCodableDescriptionTemplateKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTemplateKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateKey];

  return __INCodableDateComponentsAttributeMetadataTemplateKey;
}

- (id)__INCodableDescriptionFormatKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataFormatKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataFormatKey];

  return __INCodableDateComponentsAttributeMetadataFormatKey;
}

- (id)__INCodableDescriptionDateStyleKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataDateStyleKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataDateStyleKey];

  return __INCodableDateComponentsAttributeMetadataDateStyleKey;
}

- (id)__INCodableDescriptionTimeStyleKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTimeStyleKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTimeStyleKey];

  return __INCodableDateComponentsAttributeMetadataTimeStyleKey;
}

- (id)__INCodableDescriptionTemplateIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTemplateIDKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateIDKey];

  return __INCodableDateComponentsAttributeMetadataTemplateIDKey;
}

- (id)__INCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTypeKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTypeKey];

  return __INCodableDateComponentsAttributeMetadataTypeKey;
}

- (INCodableDateComponentsAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = INCodableDateComponentsAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_format = [coderCopy decodeIntegerForKey:@"format"];
    v5->_dateStyle = [coderCopy decodeIntegerForKey:@"dateStyle"];
    v5->_timeStyle = [coderCopy decodeIntegerForKey:@"timeStyle"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"formatString"];
    formatString = v5->_formatString;
    v5->_formatString = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatStringID"];
    formatStringID = v5->_formatStringID;
    v5->_formatStringID = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableDateComponentsAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_format forKey:@"format"];
  [coderCopy encodeInteger:self->_dateStyle forKey:@"dateStyle"];
  [coderCopy encodeInteger:self->_timeStyle forKey:@"timeStyle"];
  [coderCopy encodeObject:self->_formatString forKey:@"formatString"];
  [coderCopy encodeObject:self->_formatStringID forKey:@"formatStringID"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableDateComponentsAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:0 error:&v13];
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
    [v6 intents_setIntegerIfNonZero:self->_format forKey:@"format"];
    [v6 intents_setIntegerIfNonZero:self->_dateStyle forKey:@"dateStyle"];
    [v6 intents_setIntegerIfNonZero:self->_timeStyle forKey:@"timeStyle"];
    [v6 intents_setPlistSafeObject:self->_formatString forKey:@"formatString"];
    [v6 intents_setPlistSafeObject:self->_formatStringID forKey:@"formatStringID"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)localizedFormatStringWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  formatStringID = [(INCodableDateComponentsAttributeMetadata *)self formatStringID];
  formatString = [(INCodableDateComponentsAttributeMetadata *)self formatString];
  _localizationTable = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(formatStringID, formatString, _localizationTable, localizerCopy, 0);

  return v8;
}

- (id)localizedFormatString
{
  v3 = objc_opt_new();
  v4 = [(INCodableDateComponentsAttributeMetadata *)self localizedFormatStringWithLocalizer:v3];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v33[6] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = INCodableDateComponentsAttributeMetadata;
  localizerCopy = localizer;
  v26 = [(INCodableAttributeMetadata *)&v31 dictionaryRepresentationWithLocalizer:localizerCopy];
  __INCodableDescriptionTypeKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v32[0] = __INCodableDescriptionTypeKey;
  type = [(INCodableDateComponentsAttributeMetadata *)self type];
  v6 = @"DateTime";
  if (type == 1)
  {
    v6 = @"Date";
  }

  if (type == 2)
  {
    v6 = @"Time";
  }

  v29 = v6;
  v33[0] = v29;
  __INCodableDescriptionFormatKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionFormatKey];
  v32[1] = __INCodableDescriptionFormatKey;
  format = [(INCodableDateComponentsAttributeMetadata *)self format];
  v8 = @"Style";
  if (format == 1)
  {
    v8 = @"Relative";
  }

  if (format == 2)
  {
    v8 = @"Template";
  }

  v27 = v8;
  v33[1] = v27;
  __INCodableDescriptionDateStyleKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionDateStyleKey];
  v32[2] = __INCodableDescriptionDateStyleKey;
  dateStyle = [(INCodableDateComponentsAttributeMetadata *)self dateStyle];
  if (dateStyle > 3)
  {
    v10 = @"Full";
  }

  else
  {
    v10 = off_1E72833B8[dateStyle];
  }

  v33[2] = v10;
  __INCodableDescriptionTimeStyleKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTimeStyleKey];
  v32[3] = __INCodableDescriptionTimeStyleKey;
  timeStyle = [(INCodableDateComponentsAttributeMetadata *)self timeStyle];
  if (timeStyle > 3)
  {
    v13 = @"Full";
  }

  else
  {
    v13 = off_1E72833B8[timeStyle];
  }

  v33[3] = v13;
  __INCodableDescriptionTemplateKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTemplateKey];
  v32[4] = __INCodableDescriptionTemplateKey;
  v15 = [(INCodableDateComponentsAttributeMetadata *)self localizedFormatStringWithLocalizer:localizerCopy];

  null = v15;
  if (!v15)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v33[4] = null;
  __INCodableDescriptionTemplateIDKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTemplateIDKey];
  v32[5] = __INCodableDescriptionTemplateIDKey;
  formatStringID = [(INCodableDateComponentsAttributeMetadata *)self formatStringID];
  null2 = formatStringID;
  if (!formatStringID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v33[5] = null2;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
  v21 = [v26 if_dictionaryByAddingEntriesFromDictionary:v20];

  if (!formatStringID)
  {
  }

  if (!v15)
  {
  }

  if_dictionaryWithNonEmptyValues = [v21 if_dictionaryWithNonEmptyValues];

  v23 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v31.receiver = self;
  v31.super_class = INCodableDateComponentsAttributeMetadata;
  [(INCodableAttributeMetadata *)&v31 updateWithDictionary:dictionaryCopy];
  __INCodableDescriptionTypeKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTypeKey];

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

  v9 = INCodableDateComponentsAttributeMetadataTypeFromString(v8);
  self->_type = v9;
  __INCodableDescriptionFormatKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionFormatKey];
  v11 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionFormatKey];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = INCodableDateComponentsAttributeMetadataFormatFromString(v13);
  self->_format = v14;
  __INCodableDescriptionDateStyleKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionDateStyleKey];
  v16 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDateStyleKey];

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v19 = INCodableDateComponentsAttributeMetadataStyleFromString(v18);
  self->_dateStyle = v19;
  __INCodableDescriptionTimeStyleKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTimeStyleKey];
  v21 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTimeStyleKey];

  if (v21)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;

  v24 = INCodableDateComponentsAttributeMetadataStyleFromString(v23);
  self->_timeStyle = v24;
  __INCodableDescriptionTemplateKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTemplateKey];
  v26 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTemplateKey];
  formatString = self->_formatString;
  self->_formatString = v26;

  __INCodableDescriptionTemplateIDKey = [(INCodableDateComponentsAttributeMetadata *)self __INCodableDescriptionTemplateIDKey];
  v29 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTemplateIDKey];
  formatStringID = self->_formatStringID;
  self->_formatStringID = v29;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___INCodableDateComponentsAttributeMetadata;
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
    v7[5] = [representationCopy intents_intForKey:@"type"];
    v7[6] = [representationCopy intents_intForKey:@"format"];
    v7[7] = [representationCopy intents_intForKey:@"dateStyle"];
    v7[8] = [representationCopy intents_intForKey:@"timeStyle"];
    v12 = [representationCopy intents_stringForKey:@"formatString"];
    v13 = v7[9];
    v7[9] = v12;

    v14 = [representationCopy intents_stringForKey:@"formatStringID"];
    v15 = v7[10];
    v7[10] = v14;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTypeKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTypeKey];

  return __INCodableDateComponentsAttributeMetadataTypeKey;
}

- (id)__INTypeCodableDescriptionTimeStyleKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTimeStyleKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTimeStyleKey];

  return __INCodableDateComponentsAttributeMetadataTimeStyleKey;
}

- (id)__INTypeCodableDescriptionTemplateIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTemplateIDKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateIDKey];

  return __INCodableDateComponentsAttributeMetadataTemplateIDKey;
}

- (id)__INTypeCodableDescriptionTemplateKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTemplateKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateKey];

  return __INCodableDateComponentsAttributeMetadataTemplateKey;
}

- (id)__INTypeCodableDescriptionFormatKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataFormatKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataFormatKey];

  return __INCodableDateComponentsAttributeMetadataFormatKey;
}

- (id)__INTypeCodableDescriptionDateStyleKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataDateStyleKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataDateStyleKey];

  return __INCodableDateComponentsAttributeMetadataDateStyleKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTypeKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTypeKey];

  return __INCodableDateComponentsAttributeMetadataTypeKey;
}

- (id)__INIntentResponseCodableDescriptionTimeStyleKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTimeStyleKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTimeStyleKey];

  return __INCodableDateComponentsAttributeMetadataTimeStyleKey;
}

- (id)__INIntentResponseCodableDescriptionTemplateIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTemplateIDKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateIDKey];

  return __INCodableDateComponentsAttributeMetadataTemplateIDKey;
}

- (id)__INIntentResponseCodableDescriptionTemplateKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataTemplateKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataTemplateKey];

  return __INCodableDateComponentsAttributeMetadataTemplateKey;
}

- (id)__INIntentResponseCodableDescriptionFormatKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataFormatKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataFormatKey];

  return __INCodableDateComponentsAttributeMetadataFormatKey;
}

- (id)__INIntentResponseCodableDescriptionDateStyleKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableDateComponentsAttributeMetadataDateStyleKey = [objc_opt_class() __INCodableDateComponentsAttributeMetadataDateStyleKey];

  return __INCodableDateComponentsAttributeMetadataDateStyleKey;
}

@end