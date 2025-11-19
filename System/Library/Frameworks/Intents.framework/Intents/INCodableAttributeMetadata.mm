@interface INCodableAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableAttribute)codableAttribute;
- (INCodableAttributeMetadata)initWithCoder:(id)a3;
- (INCodableAttributeMetadata)initWithName:(id)a3 codableAttribute:(id)a4;
- (INCodableDescription)_codableDescription;
- (INCodableLocalizationTable)_localizationTable;
- (NSString)localizedPlaceholder;
- (id)__INCodableDescriptionPlaceholderIDKey;
- (id)__INCodableDescriptionPlaceholderKey;
- (id)__INIntentResponseCodableDescriptionPlaceholderIDKey;
- (id)__INIntentResponseCodableDescriptionPlaceholderKey;
- (id)__INTypeCodableDescriptionPlaceholderIDKey;
- (id)__INTypeCodableDescriptionPlaceholderKey;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedPlaceholderWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableAttributeMetadata

- (id)__INCodableDescriptionPlaceholderKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeMetadataPlaceholderKey];

  return v3;
}

- (INCodableDescription)_codableDescription
{
  v2 = [(INCodableAttributeMetadata *)self codableAttribute];
  v3 = [v2 _codableDescription];

  return v3;
}

- (INCodableAttribute)codableAttribute
{
  WeakRetained = objc_loadWeakRetained(&self->_codableAttribute);

  return WeakRetained;
}

- (id)__INCodableDescriptionPlaceholderIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeMetadataPlaceholderIDKey];

  return v3;
}

- (INCodableAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = INCodableAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v20 init];
  if (v5)
  {
    v6 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_placeholder forKey:@"placeholder"];
  [v5 encodeObject:self->_placeholderID forKey:@"placeholderID"];
  WeakRetained = objc_loadWeakRetained(&self->_codableAttribute);
  [v5 encodeConditionalObject:WeakRetained forKey:@"codableAttribute"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  [v7 intents_setPlistSafeObject:self->_name forKey:@"name"];
  v8 = [(NSString *)self->_placeholder intents_encodeForPlistRepresentationWithParameters:v6];

  [v7 intents_setPlistSafeObject:v8 forKey:@"placeholder"];
  [v7 intents_setPlistSafeObject:self->_placeholderID forKey:@"placeholderID"];

  return v7;
}

- (id)localizedPlaceholderWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableAttributeMetadata *)self placeholderID];
  v6 = [(INCodableAttributeMetadata *)self placeholder];
  v7 = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);

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
  v2 = [(INCodableAttributeMetadata *)self codableAttribute];
  v3 = [v2 _codableDescription];

  v4 = [v3 _customLocalizationTable];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 _localizationTable];
  }

  v7 = v6;

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCodableAttributeMetadata;
  v6 = [(INCodableAttributeMetadata *)&v11 description];
  v7 = [(INCodableAttributeMetadata *)self dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INCodableAttributeMetadata *)self __INCodableDescriptionPlaceholderKey];
  v15[0] = v5;
  v6 = [(INCodableAttributeMetadata *)self localizedPlaceholderWithLocalizer:v4];

  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v7;
  v8 = [(INCodableAttributeMetadata *)self __INCodableDescriptionPlaceholderIDKey];
  v15[1] = v8;
  v9 = [(INCodableAttributeMetadata *)self placeholderID];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v16[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  if (!v9)
  {
  }

  if (!v6)
  {
  }

  v12 = [v11 if_dictionaryWithNonEmptyValues];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttributeMetadata *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v14 = a3;
  v4 = [(INCodableAttributeMetadata *)self __INCodableDescriptionPlaceholderKey];
  v5 = [v14 objectForKeyedSubscript:v4];

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

  v9 = [(INCodableAttributeMetadata *)self __INCodableDescriptionPlaceholderIDKey];
  v10 = [v14 objectForKeyedSubscript:v9];

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

- (INCodableAttributeMetadata)initWithName:(id)a3 codableAttribute:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = INCodableAttributeMetadata;
  v8 = [(INCodableAttributeMetadata *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    name = v8->_name;
    v8->_name = v9;

    objc_storeWeak(&v8->_codableAttribute, v7);
  }

  return v8;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(a1);
  v7 = [v5 intents_stringForKey:@"name"];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [v5 intents_stringForKey:@"placeholder"];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [v5 intents_stringForKey:@"placeholderID"];

  v12 = v6[3];
  v6[3] = v11;

  return v6;
}

- (id)__INTypeCodableDescriptionPlaceholderIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeMetadataPlaceholderIDKey];

  return v3;
}

- (id)__INTypeCodableDescriptionPlaceholderKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeMetadataPlaceholderKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionPlaceholderIDKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeMetadataPlaceholderIDKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionPlaceholderKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeMetadataPlaceholderKey];

  return v3;
}

@end