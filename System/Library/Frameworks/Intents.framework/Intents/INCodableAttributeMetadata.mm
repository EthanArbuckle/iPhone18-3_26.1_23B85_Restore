@interface INCodableAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableAttribute)codableAttribute;
- (INCodableAttributeMetadata)initWithCoder:(id)coder;
- (INCodableAttributeMetadata)initWithName:(id)name codableAttribute:(id)attribute;
- (INCodableDescription)_codableDescription;
- (INCodableLocalizationTable)_localizationTable;
- (NSString)localizedPlaceholder;
- (id)__INCodableDescriptionPlaceholderIDKey;
- (id)__INCodableDescriptionPlaceholderKey;
- (id)__INIntentResponseCodableDescriptionPlaceholderIDKey;
- (id)__INIntentResponseCodableDescriptionPlaceholderKey;
- (id)__INTypeCodableDescriptionPlaceholderIDKey;
- (id)__INTypeCodableDescriptionPlaceholderKey;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedPlaceholderWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableAttributeMetadata

- (id)__INCodableDescriptionPlaceholderKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableAttributeMetadataPlaceholderKey = [objc_opt_class() __INCodableAttributeMetadataPlaceholderKey];

  return __INCodableAttributeMetadataPlaceholderKey;
}

- (INCodableDescription)_codableDescription
{
  codableAttribute = [(INCodableAttributeMetadata *)self codableAttribute];
  _codableDescription = [codableAttribute _codableDescription];

  return _codableDescription;
}

- (INCodableAttribute)codableAttribute
{
  WeakRetained = objc_loadWeakRetained(&self->_codableAttribute);

  return WeakRetained;
}

- (id)__INCodableDescriptionPlaceholderIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableAttributeMetadataPlaceholderIDKey = [objc_opt_class() __INCodableAttributeMetadataPlaceholderIDKey];

  return __INCodableAttributeMetadataPlaceholderIDKey;
}

- (INCodableAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = INCodableAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v20 init];
  if (v5)
  {
    v6 = coderCopy;
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

    [v8 _allowDecodingCyclesInSecureMode];
    v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v6 decodeObjectOfClasses:v13 forKey:@"placeholder"];
    placeholder = v5->_placeholder;
    v5->_placeholder = v14;

    v16 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderID"];
    placeholderID = v5->_placeholderID;
    v5->_placeholderID = v16;

    v18 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"codableAttribute"];
    objc_storeWeak(&v5->_codableAttribute, v18);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_placeholder forKey:@"placeholder"];
  [coderCopy encodeObject:self->_placeholderID forKey:@"placeholderID"];
  WeakRetained = objc_loadWeakRetained(&self->_codableAttribute);
  [coderCopy encodeConditionalObject:WeakRetained forKey:@"codableAttribute"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v5 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  dictionary = [v5 dictionary];
  [dictionary intents_setPlistSafeObject:self->_name forKey:@"name"];
  v8 = [(NSString *)self->_placeholder intents_encodeForPlistRepresentationWithParameters:parametersCopy];

  [dictionary intents_setPlistSafeObject:v8 forKey:@"placeholder"];
  [dictionary intents_setPlistSafeObject:self->_placeholderID forKey:@"placeholderID"];

  return dictionary;
}

- (id)localizedPlaceholderWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  placeholderID = [(INCodableAttributeMetadata *)self placeholderID];
  placeholder = [(INCodableAttributeMetadata *)self placeholder];
  _localizationTable = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(placeholderID, placeholder, _localizationTable, localizerCopy, 0);

  return v8;
}

- (NSString)localizedPlaceholder
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttributeMetadata *)self localizedPlaceholderWithLocalizer:v3];

  return v4;
}

- (INCodableLocalizationTable)_localizationTable
{
  codableAttribute = [(INCodableAttributeMetadata *)self codableAttribute];
  _codableDescription = [codableAttribute _codableDescription];

  _customLocalizationTable = [_codableDescription _customLocalizationTable];
  v5 = _customLocalizationTable;
  if (_customLocalizationTable)
  {
    _localizationTable = _customLocalizationTable;
  }

  else
  {
    _localizationTable = [_codableDescription _localizationTable];
  }

  v7 = _localizationTable;

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCodableAttributeMetadata;
  v6 = [(INCodableAttributeMetadata *)&v11 description];
  dictionaryRepresentation = [(INCodableAttributeMetadata *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v16[2] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  __INCodableDescriptionPlaceholderKey = [(INCodableAttributeMetadata *)self __INCodableDescriptionPlaceholderKey];
  v15[0] = __INCodableDescriptionPlaceholderKey;
  v6 = [(INCodableAttributeMetadata *)self localizedPlaceholderWithLocalizer:localizerCopy];

  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = null;
  __INCodableDescriptionPlaceholderIDKey = [(INCodableAttributeMetadata *)self __INCodableDescriptionPlaceholderIDKey];
  v15[1] = __INCodableDescriptionPlaceholderIDKey;
  placeholderID = [(INCodableAttributeMetadata *)self placeholderID];
  null2 = placeholderID;
  if (!placeholderID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = null2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  if (!placeholderID)
  {
  }

  if (!v6)
  {
  }

  if_dictionaryWithNonEmptyValues = [v11 if_dictionaryWithNonEmptyValues];

  v13 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttributeMetadata *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __INCodableDescriptionPlaceholderKey = [(INCodableAttributeMetadata *)self __INCodableDescriptionPlaceholderKey];
  v5 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionPlaceholderKey];

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

  placeholder = self->_placeholder;
  self->_placeholder = v7;

  __INCodableDescriptionPlaceholderIDKey = [(INCodableAttributeMetadata *)self __INCodableDescriptionPlaceholderIDKey];
  v10 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionPlaceholderIDKey];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  placeholderID = self->_placeholderID;
  self->_placeholderID = v12;
}

- (INCodableAttributeMetadata)initWithName:(id)name codableAttribute:(id)attribute
{
  nameCopy = name;
  attributeCopy = attribute;
  v12.receiver = self;
  v12.super_class = INCodableAttributeMetadata;
  v8 = [(INCodableAttributeMetadata *)&v12 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeWeak(&v8->_codableAttribute, attributeCopy);
  }

  return v8;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = objc_alloc_init(self);
  v7 = [representationCopy intents_stringForKey:@"name"];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [representationCopy intents_stringForKey:@"placeholder"];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [representationCopy intents_stringForKey:@"placeholderID"];

  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (id)__INTypeCodableDescriptionPlaceholderIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableAttributeMetadataPlaceholderIDKey = [objc_opt_class() __INCodableAttributeMetadataPlaceholderIDKey];

  return __INCodableAttributeMetadataPlaceholderIDKey;
}

- (id)__INTypeCodableDescriptionPlaceholderKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableAttributeMetadataPlaceholderKey = [objc_opt_class() __INCodableAttributeMetadataPlaceholderKey];

  return __INCodableAttributeMetadataPlaceholderKey;
}

- (id)__INIntentResponseCodableDescriptionPlaceholderIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableAttributeMetadataPlaceholderIDKey = [objc_opt_class() __INCodableAttributeMetadataPlaceholderIDKey];

  return __INCodableAttributeMetadataPlaceholderIDKey;
}

- (id)__INIntentResponseCodableDescriptionPlaceholderKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableAttributeMetadataPlaceholderKey = [objc_opt_class() __INCodableAttributeMetadataPlaceholderKey];

  return __INCodableAttributeMetadataPlaceholderKey;
}

@end