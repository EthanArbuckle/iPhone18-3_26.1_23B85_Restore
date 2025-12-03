@interface INCodableBooleanAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableBooleanAttributeMetadata)initWithCoder:(id)coder;
- (NSString)localizedFalseDisplayName;
- (NSString)localizedTrueDisplayName;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionFalseDisplayNameIDKey;
- (id)__INCodableDescriptionFalseDisplayNameKey;
- (id)__INCodableDescriptionTrueDisplayNameIDKey;
- (id)__INCodableDescriptionTrueDisplayNameKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionFalseDisplayNameIDKey;
- (id)__INIntentResponseCodableDescriptionFalseDisplayNameKey;
- (id)__INIntentResponseCodableDescriptionTrueDisplayNameIDKey;
- (id)__INIntentResponseCodableDescriptionTrueDisplayNameKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionFalseDisplayNameIDKey;
- (id)__INTypeCodableDescriptionFalseDisplayNameKey;
- (id)__INTypeCodableDescriptionTrueDisplayNameIDKey;
- (id)__INTypeCodableDescriptionTrueDisplayNameKey;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedFalseDisplayNameWithLocalizer:(id)localizer;
- (id)localizedTrueDisplayNameWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableBooleanAttributeMetadata

- (id)__INCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableBooleanAttributeMetadataDefaultValueKey];

  return __INCodableBooleanAttributeMetadataDefaultValueKey;
}

- (id)__INCodableDescriptionFalseDisplayNameKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataFalseDisplayNameKey = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameKey];

  return __INCodableBooleanAttributeMetadataFalseDisplayNameKey;
}

- (id)__INCodableDescriptionFalseDisplayNameIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey];

  return __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey;
}

- (id)__INCodableDescriptionTrueDisplayNameKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataTrueDisplayNameKey = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameKey];

  return __INCodableBooleanAttributeMetadataTrueDisplayNameKey;
}

- (id)__INCodableDescriptionTrueDisplayNameIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey];

  return __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey;
}

- (INCodableBooleanAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = INCodableBooleanAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    [(INCodableBooleanAttributeMetadata *)v5 setDefaultValue:v6];

    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"falseDisplayName"];
    [(INCodableBooleanAttributeMetadata *)v5 setFalseDisplayName:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"falseDisplayNameID"];
    [(INCodableBooleanAttributeMetadata *)v5 setFalseDisplayNameID:v11];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"trueDisplayName"];
    [(INCodableBooleanAttributeMetadata *)v5 setTrueDisplayName:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trueDisplayNameID"];
    [(INCodableBooleanAttributeMetadata *)v5 setTrueDisplayNameID:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableBooleanAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_defaultValue forKey:{@"defaultValue", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_falseDisplayName forKey:@"falseDisplayName"];
  [coderCopy encodeObject:self->_falseDisplayNameID forKey:@"falseDisplayNameID"];
  [coderCopy encodeObject:self->_trueDisplayName forKey:@"trueDisplayName"];
  [coderCopy encodeObject:self->_trueDisplayNameID forKey:@"trueDisplayNameID"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableBooleanAttributeMetadata;
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
    [v6 intents_setPlistSafeObject:self->_falseDisplayName forKey:@"falseDisplayName"];
    [v6 intents_setPlistSafeObject:self->_falseDisplayNameID forKey:@"falseDisplayNameID"];
    [v6 intents_setPlistSafeObject:self->_trueDisplayName forKey:@"trueDisplayName"];
    [v6 intents_setPlistSafeObject:self->_trueDisplayNameID forKey:@"trueDisplayNameID"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)localizedFalseDisplayNameWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  falseDisplayNameID = [(INCodableBooleanAttributeMetadata *)self falseDisplayNameID];
  falseDisplayName = [(INCodableBooleanAttributeMetadata *)self falseDisplayName];
  _localizationTable = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(falseDisplayNameID, falseDisplayName, _localizationTable, localizerCopy, 0);

  return v8;
}

- (NSString)localizedFalseDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableBooleanAttributeMetadata *)self localizedFalseDisplayNameWithLocalizer:v3];

  return v4;
}

- (id)localizedTrueDisplayNameWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  trueDisplayNameID = [(INCodableBooleanAttributeMetadata *)self trueDisplayNameID];
  trueDisplayName = [(INCodableBooleanAttributeMetadata *)self trueDisplayName];
  _localizationTable = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(trueDisplayNameID, trueDisplayName, _localizationTable, localizerCopy, 0);

  return v8;
}

- (NSString)localizedTrueDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableBooleanAttributeMetadata *)self localizedTrueDisplayNameWithLocalizer:v3];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v32[5] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  v30.receiver = self;
  v30.super_class = INCodableBooleanAttributeMetadata;
  v25 = [(INCodableAttributeMetadata *)&v30 dictionaryRepresentationWithLocalizer:localizerCopy];
  __INCodableDescriptionDefaultValueKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v31[0] = __INCodableDescriptionDefaultValueKey;
  defaultValue = [(INCodableBooleanAttributeMetadata *)self defaultValue];
  v27 = defaultValue;
  if (!defaultValue)
  {
    defaultValue = [MEMORY[0x1E695DFB0] null];
  }

  v22 = defaultValue;
  v32[0] = defaultValue;
  __INCodableDescriptionTrueDisplayNameKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionTrueDisplayNameKey];
  v31[1] = __INCodableDescriptionTrueDisplayNameKey;
  null = [(INCodableBooleanAttributeMetadata *)self localizedTrueDisplayNameWithLocalizer:localizerCopy];
  v7 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v32[1] = null;
  __INCodableDescriptionTrueDisplayNameIDKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionTrueDisplayNameIDKey];
  v31[2] = __INCodableDescriptionTrueDisplayNameIDKey;
  trueDisplayNameID = [(INCodableBooleanAttributeMetadata *)self trueDisplayNameID];
  v9 = trueDisplayNameID;
  if (!trueDisplayNameID)
  {
    trueDisplayNameID = [MEMORY[0x1E695DFB0] null];
  }

  v32[2] = trueDisplayNameID;
  __INCodableDescriptionFalseDisplayNameKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionFalseDisplayNameKey];
  v31[3] = __INCodableDescriptionFalseDisplayNameKey;
  v29 = localizerCopy;
  v10 = [(INCodableBooleanAttributeMetadata *)self localizedFalseDisplayNameWithLocalizer:localizerCopy];
  null2 = v10;
  if (!v10)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v32[3] = null2;
  __INCodableDescriptionFalseDisplayNameIDKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionFalseDisplayNameIDKey];
  v31[4] = __INCodableDescriptionFalseDisplayNameIDKey;
  falseDisplayNameID = [(INCodableBooleanAttributeMetadata *)self falseDisplayNameID];
  null3 = falseDisplayNameID;
  if (!falseDisplayNameID)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v32[4] = null3;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:5];
  v16 = [v25 if_dictionaryByAddingEntriesFromDictionary:v15];

  if (!falseDisplayNameID)
  {
  }

  if (!v10)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if (!v27)
  {
  }

  if_dictionaryWithNonEmptyValues = [v16 if_dictionaryWithNonEmptyValues];

  v18 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = INCodableBooleanAttributeMetadata;
  [(INCodableAttributeMetadata *)&v35 updateWithDictionary:dictionaryCopy];
  __INCodableDescriptionDefaultValueKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultValueKey];

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

  v9 = [v8 copy];
  defaultValue = self->_defaultValue;
  self->_defaultValue = v9;

  __INCodableDescriptionFalseDisplayNameKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionFalseDisplayNameKey];
  v12 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionFalseDisplayNameKey];

  if (v12)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  v15 = [v14 copy];
  falseDisplayName = self->_falseDisplayName;
  self->_falseDisplayName = v15;

  __INCodableDescriptionFalseDisplayNameIDKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionFalseDisplayNameIDKey];
  v18 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionFalseDisplayNameIDKey];

  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  v21 = [v20 copy];
  falseDisplayNameID = self->_falseDisplayNameID;
  self->_falseDisplayNameID = v21;

  __INCodableDescriptionTrueDisplayNameKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionTrueDisplayNameKey];
  v24 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTrueDisplayNameKey];

  if (v24)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;

  v27 = [v26 copy];
  trueDisplayName = self->_trueDisplayName;
  self->_trueDisplayName = v27;

  __INCodableDescriptionTrueDisplayNameIDKey = [(INCodableBooleanAttributeMetadata *)self __INCodableDescriptionTrueDisplayNameIDKey];
  v30 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTrueDisplayNameIDKey];

  if (v30)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;

  v33 = [v32 copy];
  trueDisplayNameID = self->_trueDisplayNameID;
  self->_trueDisplayNameID = v33;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v18.receiver = self;
  v18.super_class = &OBJC_METACLASS___INCodableBooleanAttributeMetadata;
  v19 = 0;
  v7 = objc_msgSendSuper2(&v18, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v19);
  v8 = v19;
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
    v12 = [representationCopy intents_numberForKey:@"defaultValue"];
    [v7 setDefaultValue:v12];

    v13 = [representationCopy intents_stringForKey:@"falseDisplayName"];
    [v7 setFalseDisplayName:v13];

    v14 = [representationCopy intents_stringForKey:@"falseDisplayNameID"];
    [v7 setFalseDisplayNameID:v14];

    v15 = [representationCopy intents_stringForKey:@"trueDisplayName"];
    [v7 setTrueDisplayName:v15];

    v16 = [representationCopy intents_stringForKey:@"trueDisplayNameID"];
    [v7 setTrueDisplayNameID:v16];

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTrueDisplayNameIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey];

  return __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey;
}

- (id)__INTypeCodableDescriptionTrueDisplayNameKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataTrueDisplayNameKey = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameKey];

  return __INCodableBooleanAttributeMetadataTrueDisplayNameKey;
}

- (id)__INTypeCodableDescriptionFalseDisplayNameIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey];

  return __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey;
}

- (id)__INTypeCodableDescriptionFalseDisplayNameKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataFalseDisplayNameKey = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameKey];

  return __INCodableBooleanAttributeMetadataFalseDisplayNameKey;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableBooleanAttributeMetadataDefaultValueKey];

  return __INCodableBooleanAttributeMetadataDefaultValueKey;
}

- (id)__INIntentResponseCodableDescriptionTrueDisplayNameIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey];

  return __INCodableBooleanAttributeMetadataTrueDisplayNameIDKey;
}

- (id)__INIntentResponseCodableDescriptionTrueDisplayNameKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataTrueDisplayNameKey = [objc_opt_class() __INCodableBooleanAttributeMetadataTrueDisplayNameKey];

  return __INCodableBooleanAttributeMetadataTrueDisplayNameKey;
}

- (id)__INIntentResponseCodableDescriptionFalseDisplayNameIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey];

  return __INCodableBooleanAttributeMetadataFalseDisplayNameIDKey;
}

- (id)__INIntentResponseCodableDescriptionFalseDisplayNameKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataFalseDisplayNameKey = [objc_opt_class() __INCodableBooleanAttributeMetadataFalseDisplayNameKey];

  return __INCodableBooleanAttributeMetadataFalseDisplayNameKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableBooleanAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableBooleanAttributeMetadataDefaultValueKey];

  return __INCodableBooleanAttributeMetadataDefaultValueKey;
}

@end