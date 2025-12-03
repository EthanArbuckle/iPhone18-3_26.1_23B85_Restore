@interface INCodableStringAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableStringAttributeMetadata)initWithCoder:(id)coder;
- (NSString)localizedDefaultValue;
- (id)__INCodableDescriptionCapitalizationKey;
- (id)__INCodableDescriptionDefaultValueIDKey;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionDisableAutocorrectKey;
- (id)__INCodableDescriptionDisableSmartDashesKey;
- (id)__INCodableDescriptionDisableSmartQuotesKey;
- (id)__INCodableDescriptionMultilineKey;
- (id)__INIntentResponseCodableDescriptionCapitalizationKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueIDKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionDisableAutocorrectKey;
- (id)__INIntentResponseCodableDescriptionDisableSmartDashesKey;
- (id)__INIntentResponseCodableDescriptionDisableSmartQuotesKey;
- (id)__INIntentResponseCodableDescriptionMultilineKey;
- (id)__INTypeCodableDescriptionCapitalizationKey;
- (id)__INTypeCodableDescriptionDefaultValueIDKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionDisableAutocorrectKey;
- (id)__INTypeCodableDescriptionDisableSmartDashesKey;
- (id)__INTypeCodableDescriptionDisableSmartQuotesKey;
- (id)__INTypeCodableDescriptionMultilineKey;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedDefaultValueWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableStringAttributeMetadata

- (id)__INCodableDescriptionMultilineKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataMultilineKey = [objc_opt_class() __INCodableStringAttributeMetadataMultilineKey];

  return __INCodableStringAttributeMetadataMultilineKey;
}

- (id)__INCodableDescriptionDisableAutocorrectKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDisableAutocorrectKey = [objc_opt_class() __INCodableStringAttributeMetadataDisableAutocorrectKey];

  return __INCodableStringAttributeMetadataDisableAutocorrectKey;
}

- (id)__INCodableDescriptionDisableSmartDashesKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDisableSmartDashesKey = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartDashesKey];

  return __INCodableStringAttributeMetadataDisableSmartDashesKey;
}

- (id)__INCodableDescriptionDisableSmartQuotesKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDisableSmartQuotesKey = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartQuotesKey];

  return __INCodableStringAttributeMetadataDisableSmartQuotesKey;
}

- (id)__INCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueKey];

  return __INCodableStringAttributeMetadataDefaultValueKey;
}

- (id)__INCodableDescriptionDefaultValueIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDefaultValueIDKey = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueIDKey];

  return __INCodableStringAttributeMetadataDefaultValueIDKey;
}

- (id)__INCodableDescriptionCapitalizationKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataCapitalizationKey = [objc_opt_class() __INCodableStringAttributeMetadataCapitalizationKey];

  return __INCodableStringAttributeMetadataCapitalizationKey;
}

- (INCodableStringAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = INCodableStringAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    -[INCodableStringAttributeMetadata setMultiline:](v5, "setMultiline:", [coderCopy decodeBoolForKey:@"multiline"]);
    -[INCodableStringAttributeMetadata setDisableAutocorrect:](v5, "setDisableAutocorrect:", [coderCopy decodeBoolForKey:@"disableAutocorrect"]);
    -[INCodableStringAttributeMetadata setDisableSmartDashes:](v5, "setDisableSmartDashes:", [coderCopy decodeBoolForKey:@"disableSmartDashes"]);
    -[INCodableStringAttributeMetadata setDisableSmartQuotes:](v5, "setDisableSmartQuotes:", [coderCopy decodeBoolForKey:@"disableSmartQuotes"]);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"defaultValue"];
    [(INCodableStringAttributeMetadata *)v5 setDefaultValue:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"defaultValueID"];
    [(INCodableStringAttributeMetadata *)v5 setDefaultValueID:v10];

    -[INCodableStringAttributeMetadata setCapitalization:](v5, "setCapitalization:", [coderCopy decodeIntegerForKey:@"capitalization"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableStringAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_multiline forKey:{@"multiline", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_disableAutocorrect forKey:@"disableAutocorrect"];
  [coderCopy encodeBool:self->_disableSmartDashes forKey:@"disableSmartDashes"];
  [coderCopy encodeBool:self->_disableSmartQuotes forKey:@"disableSmartQuotes"];
  [coderCopy encodeObject:self->_defaultValue forKey:@"defaultValue"];
  [coderCopy encodeObject:self->_defaultValueID forKey:@"defaultValueID"];
  [coderCopy encodeInteger:self->_capitalization forKey:@"capitalization"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableStringAttributeMetadata;
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
    [v6 intents_setBoolIfTrue:self->_multiline forKey:@"multiline"];
    [v6 intents_setBoolIfTrue:self->_disableAutocorrect forKey:@"disableAutocorrect"];
    [v6 intents_setBoolIfTrue:self->_disableSmartDashes forKey:@"disableSmartDashes"];
    [v6 intents_setBoolIfTrue:self->_disableSmartQuotes forKey:@"disableSmartQuotes"];
    [v6 intents_setPlistSafeObject:self->_defaultValue forKey:@"defaultValue"];
    [v6 intents_setPlistSafeObject:self->_defaultValueID forKey:@"defaultValueID"];
    [v6 intents_setIntegerIfNonZero:self->_capitalization forKey:@"capitalization"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)localizedDefaultValueWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  defaultValueID = [(INCodableStringAttributeMetadata *)self defaultValueID];
  defaultValue = [(INCodableStringAttributeMetadata *)self defaultValue];
  _localizationTable = [(INCodableAttributeMetadata *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(defaultValueID, defaultValue, _localizationTable, localizerCopy, 0);

  return v8;
}

- (NSString)localizedDefaultValue
{
  v3 = objc_opt_new();
  v4 = [(INCodableStringAttributeMetadata *)self localizedDefaultValueWithLocalizer:v3];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v39[7] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = INCodableStringAttributeMetadata;
  localizerCopy = localizer;
  v32 = [(INCodableAttributeMetadata *)&v37 dictionaryRepresentationWithLocalizer:localizerCopy];
  __INCodableDescriptionMultilineKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionMultilineKey];
  v38[0] = __INCodableDescriptionMultilineKey;
  null = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableStringAttributeMetadata isMultiline](self, "isMultiline")}];
  v35 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null;
  v39[0] = null;
  __INCodableDescriptionDisableAutocorrectKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableAutocorrectKey];
  v38[1] = __INCodableDescriptionDisableAutocorrectKey;
  null2 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableStringAttributeMetadata disableAutocorrect](self, "disableAutocorrect")}];
  v33 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v39[1] = null2;
  __INCodableDescriptionDisableSmartDashesKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableSmartDashesKey];
  v38[2] = __INCodableDescriptionDisableSmartDashesKey;
  null3 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableStringAttributeMetadata disableSmartDashes](self, "disableSmartDashes")}];
  v8 = null3;
  if (!null3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v8;
  v25 = null3;
  v39[2] = null3;
  __INCodableDescriptionDisableSmartQuotesKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableSmartQuotesKey];
  v38[3] = __INCodableDescriptionDisableSmartQuotesKey;
  null4 = [MEMORY[0x1E696AD98] numberWithBool:{-[INCodableStringAttributeMetadata disableSmartQuotes](self, "disableSmartQuotes")}];
  v10 = null4;
  if (!null4)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null4;
  v39[3] = null4;
  __INCodableDescriptionDefaultValueKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v38[4] = __INCodableDescriptionDefaultValueKey;
  v11 = [(INCodableStringAttributeMetadata *)self localizedDefaultValueWithLocalizer:localizerCopy];

  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v39[4] = null5;
  __INCodableDescriptionDefaultValueIDKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDefaultValueIDKey];
  v38[5] = __INCodableDescriptionDefaultValueIDKey;
  defaultValueID = [(INCodableStringAttributeMetadata *)self defaultValueID];
  null6 = defaultValueID;
  if (!defaultValueID)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v39[5] = null6;
  __INCodableDescriptionCapitalizationKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionCapitalizationKey];
  v38[6] = __INCodableDescriptionCapitalizationKey;
  capitalization = [(INCodableStringAttributeMetadata *)self capitalization];
  if ((capitalization - 1) > 2)
  {
    v18 = @"None";
  }

  else
  {
    v18 = off_1E72811E8[capitalization - 1];
  }

  v39[6] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:7];
  v20 = [v32 if_dictionaryByAddingEntriesFromDictionary:v19];

  if (!defaultValueID)
  {
  }

  if (!v11)
  {
  }

  if (!v10)
  {
  }

  if (!v30)
  {
  }

  if (!v33)
  {
  }

  if (!v35)
  {
  }

  if_dictionaryWithNonEmptyValues = [v20 if_dictionaryWithNonEmptyValues];

  v22 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v40.receiver = self;
  v40.super_class = INCodableStringAttributeMetadata;
  [(INCodableAttributeMetadata *)&v40 updateWithDictionary:dictionaryCopy];
  __INCodableDescriptionMultilineKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionMultilineKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionMultilineKey];

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

  bOOLValue = [v8 BOOLValue];
  self->_multiline = bOOLValue;
  __INCodableDescriptionDisableAutocorrectKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableAutocorrectKey];
  v11 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDisableAutocorrectKey];

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

  bOOLValue2 = [v13 BOOLValue];
  self->_disableAutocorrect = bOOLValue2;
  __INCodableDescriptionDisableSmartDashesKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableSmartDashesKey];
  v16 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDisableSmartDashesKey];

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

  bOOLValue3 = [v18 BOOLValue];
  self->_disableSmartDashes = bOOLValue3;
  __INCodableDescriptionDisableSmartQuotesKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDisableSmartQuotesKey];
  v21 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDisableSmartQuotesKey];

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

  bOOLValue4 = [v23 BOOLValue];
  self->_disableSmartQuotes = bOOLValue4;
  __INCodableDescriptionDefaultValueKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v26 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultValueKey];

  if (v26)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = v27;

  defaultValue = self->_defaultValue;
  self->_defaultValue = v28;

  __INCodableDescriptionDefaultValueIDKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionDefaultValueIDKey];
  v31 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionDefaultValueIDKey];

  if (v31)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = v31;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = v32;

  defaultValueID = self->_defaultValueID;
  self->_defaultValueID = v33;

  __INCodableDescriptionCapitalizationKey = [(INCodableStringAttributeMetadata *)self __INCodableDescriptionCapitalizationKey];
  v36 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionCapitalizationKey];

  if (v36)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  v38 = v37;

  v39 = INCodableStringAttributeMetadataCapitalizationWithString(v38);
  self->_capitalization = v39;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___INCodableStringAttributeMetadata;
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
    [v7 setMultiline:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"multiline"}];
    [v7 setDisableAutocorrect:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"disableAutocorrect"}];
    [v7 setDisableSmartDashes:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"disableSmartDashes"}];
    [v7 setDisableSmartQuotes:{objc_msgSend(representationCopy, "intents_BOOLForKey:", @"disableSmartQuotes"}];
    v12 = [representationCopy intents_stringForKey:@"defaultValue"];
    [v7 setDefaultValue:v12];

    v13 = [representationCopy intents_stringForKey:@"defaultValueID"];
    [v7 setDefaultValueID:v13];

    [v7 setCapitalization:{objc_msgSend(representationCopy, "intents_intForKey:", @"capitalization"}];
    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionMultilineKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataMultilineKey = [objc_opt_class() __INCodableStringAttributeMetadataMultilineKey];

  return __INCodableStringAttributeMetadataMultilineKey;
}

- (id)__INTypeCodableDescriptionDisableSmartQuotesKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDisableSmartQuotesKey = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartQuotesKey];

  return __INCodableStringAttributeMetadataDisableSmartQuotesKey;
}

- (id)__INTypeCodableDescriptionDisableSmartDashesKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDisableSmartDashesKey = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartDashesKey];

  return __INCodableStringAttributeMetadataDisableSmartDashesKey;
}

- (id)__INTypeCodableDescriptionDisableAutocorrectKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDisableAutocorrectKey = [objc_opt_class() __INCodableStringAttributeMetadataDisableAutocorrectKey];

  return __INCodableStringAttributeMetadataDisableAutocorrectKey;
}

- (id)__INTypeCodableDescriptionDefaultValueIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDefaultValueIDKey = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueIDKey];

  return __INCodableStringAttributeMetadataDefaultValueIDKey;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueKey];

  return __INCodableStringAttributeMetadataDefaultValueKey;
}

- (id)__INTypeCodableDescriptionCapitalizationKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataCapitalizationKey = [objc_opt_class() __INCodableStringAttributeMetadataCapitalizationKey];

  return __INCodableStringAttributeMetadataCapitalizationKey;
}

- (id)__INIntentResponseCodableDescriptionMultilineKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataMultilineKey = [objc_opt_class() __INCodableStringAttributeMetadataMultilineKey];

  return __INCodableStringAttributeMetadataMultilineKey;
}

- (id)__INIntentResponseCodableDescriptionDisableSmartQuotesKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDisableSmartQuotesKey = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartQuotesKey];

  return __INCodableStringAttributeMetadataDisableSmartQuotesKey;
}

- (id)__INIntentResponseCodableDescriptionDisableSmartDashesKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDisableSmartDashesKey = [objc_opt_class() __INCodableStringAttributeMetadataDisableSmartDashesKey];

  return __INCodableStringAttributeMetadataDisableSmartDashesKey;
}

- (id)__INIntentResponseCodableDescriptionDisableAutocorrectKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDisableAutocorrectKey = [objc_opt_class() __INCodableStringAttributeMetadataDisableAutocorrectKey];

  return __INCodableStringAttributeMetadataDisableAutocorrectKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueIDKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDefaultValueIDKey = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueIDKey];

  return __INCodableStringAttributeMetadataDefaultValueIDKey;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataDefaultValueKey = [objc_opt_class() __INCodableStringAttributeMetadataDefaultValueKey];

  return __INCodableStringAttributeMetadataDefaultValueKey;
}

- (id)__INIntentResponseCodableDescriptionCapitalizationKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableStringAttributeMetadataCapitalizationKey = [objc_opt_class() __INCodableStringAttributeMetadataCapitalizationKey];

  return __INCodableStringAttributeMetadataCapitalizationKey;
}

@end