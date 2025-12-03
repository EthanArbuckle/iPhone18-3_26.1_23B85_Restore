@interface INTypeCodableDescription
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INTypeCodableDescription)initWithCoder:(id)coder;
- (NSString)localizedDisplayName;
- (id)_attributeKey;
- (id)_attributesKey;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedDisplayNameWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INTypeCodableDescription

- (id)_attributesKey
{
  v2 = objc_opt_class();

  return [v2 __PropertiesKey];
}

- (id)_attributeKey
{
  v2 = objc_opt_class();

  return [v2 __PropertyKey];
}

- (INTypeCodableDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = INTypeCodableDescription;
  v5 = [(INCodableDescription *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"displayName"];
    [(INTypeCodableDescription *)v5 setDisplayName:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayNameLocID"];
    [(INTypeCodableDescription *)v5 setDisplayNameLocID:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INTypeCodableDescription;
  coderCopy = coder;
  [(INCodableDescription *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_displayName forKey:{@"displayName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_displayNameLocID forKey:@"displayNameLocID"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = INTypeCodableDescription;
  v15 = 0;
  v7 = [(INCodableDescription *)&v14 widgetPlistableRepresentationWithParameters:parametersCopy error:&v15];
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
    v12 = [(NSString *)self->_displayName intents_encodeForPlistRepresentationWithParameters:parametersCopy];
    [v7 intents_setPlistSafeObject:v12 forKey:@"displayName"];

    [v7 intents_setPlistSafeObject:self->_displayNameLocID forKey:@"displayNameLocID"];
    v11 = v7;
  }

  return v11;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v23[3] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = INTypeCodableDescription;
  localizerCopy = localizer;
  v5 = [(INCodableDescription *)&v21 dictionaryRepresentationWithLocalizer:localizerCopy];
  __ClassNameKey = [objc_opt_class() __ClassNameKey];
  v22[0] = __ClassNameKey;
  className = [(INCodableDescription *)self className];
  v7 = className;
  if (!className)
  {
    className = [MEMORY[0x1E695DFB0] null];
  }

  v19 = className;
  v23[0] = className;
  __DisplayNameKey = [objc_opt_class() __DisplayNameKey];
  v22[1] = __DisplayNameKey;
  v9 = [(INTypeCodableDescription *)self localizedDisplayNameWithLocalizer:localizerCopy];

  null = v9;
  if (!v9)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null;
  __DisplayNameIDKey = [objc_opt_class() __DisplayNameIDKey];
  v22[2] = __DisplayNameIDKey;
  displayNameLocID = [(INTypeCodableDescription *)self displayNameLocID];
  null2 = displayNameLocID;
  if (!displayNameLocID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null2;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v15 = [v5 if_dictionaryByAddingEntriesFromDictionary:v14];

  if (!displayNameLocID)
  {
  }

  if (!v9)
  {
  }

  if (!v7)
  {
  }

  if_dictionaryWithNonEmptyValues = [v15 if_dictionaryWithNonEmptyValues];

  v17 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = INTypeCodableDescription;
  [(INCodableDescription *)&v23 updateWithDictionary:dictionaryCopy];
  __ClassNameKey = [objc_opt_class() __ClassNameKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__ClassNameKey];

  if ([v6 length])
  {
    v7 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    __ClassPrefixKey = [objc_opt_class() __ClassPrefixKey];
    v10 = [dictionaryCopy objectForKeyedSubscript:__ClassPrefixKey];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_1F01E0850;
    }

    typeName = [(INCodableDescription *)self typeName];
    v7 = [v8 stringWithFormat:@"%@%@", v12, typeName];
  }

  [(INCodableDescription *)self setClassName:v7];
  __DisplayNameKey = [objc_opt_class() __DisplayNameKey];
  v15 = [dictionaryCopy objectForKeyedSubscript:__DisplayNameKey];
  [(INTypeCodableDescription *)self setDisplayName:v15];

  __DisplayNameIDKey = [objc_opt_class() __DisplayNameIDKey];
  v17 = [dictionaryCopy objectForKeyedSubscript:__DisplayNameIDKey];
  [(INTypeCodableDescription *)self setDisplayNameLocID:v17];

  _nullable_schema = [(INCodableDescription *)self _nullable_schema];
  LOBYTE(v17) = [_nullable_schema isSystem];

  if ((v17 & 1) == 0)
  {
    attributes = [(INCodableDescription *)self attributes];
    v20 = [attributes mutableCopy];

    v21 = [[INCodableScalarAttribute alloc] initWithPropertyName:@"subtitleString" type:7];
    [(INCodableAttribute *)v21 _setCodableDescription:self];
    [(INCodableAttribute *)v21 setDisplayPriorityRank:&unk_1F02D7F48];
    [v20 setObject:v21 forKeyedSubscript:&unk_1F02D7F60];

    v22 = objc_alloc_init(INCodableObjectAttribute);
    [(INCodableAttribute *)v22 _setCodableDescription:self];
    [(INCodableAttribute *)v22 setModifier:1];
    [(INCodableAttribute *)v22 setPropertyName:@"displayImage"];
    [(INCodableObjectAttribute *)v22 setTypeName:@"Image"];
    [(INCodableAttribute *)v22 setDisplayPriorityRank:&unk_1F02D7F48];
    [v20 setObject:v22 forKeyedSubscript:&unk_1F02D7F78];

    [(INCodableDescription *)self setAttributes:v20];
  }
}

- (id)localizedDisplayNameWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  displayNameLocID = [(INTypeCodableDescription *)self displayNameLocID];
  displayName = [(INTypeCodableDescription *)self displayName];
  _localizationTable = [(INCodableDescription *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(displayNameLocID, displayName, _localizationTable, localizerCopy, 0);

  return v8;
}

- (NSString)localizedDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INTypeCodableDescription *)self localizedDisplayNameWithLocalizer:v3];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___INTypeCodableDescription;
  v16 = 0;
  v7 = objc_msgSendSuper2(&v15, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v16);
  v8 = v16;
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
    v12 = [representationCopy intents_stringForKey:@"displayName"];
    [v7 setDisplayName:v12];

    v13 = [representationCopy intents_stringForKey:@"displayNameLocID"];
    [v7 setDisplayNameLocID:v13];

    v11 = v7;
  }

  return v11;
}

@end