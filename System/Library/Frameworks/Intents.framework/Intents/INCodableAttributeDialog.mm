@interface INCodableAttributeDialog
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INCodableAttribute)_codableAttribute;
- (INCodableAttributeDialog)initWithCoder:(id)coder;
- (INCodableDescription)_codableDescription;
- (id)__INCodableDescriptionFormatStringDictionaryKey;
- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey;
- (id)__INCodableDescriptionFormatStringIDKey;
- (id)__INCodableDescriptionFormatStringKey;
- (id)__INCodableDescriptionFormatStringLanguageCodeKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedDialogWithIntent:(id)intent tokens:(id)tokens;
- (id)localizedDialogWithIntent:(id)intent tokens:(id)tokens forLanguage:(id)language;
- (id)localizedDialogWithIntent:(id)intent tokens:(id)tokens localizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableAttributeDialog

- (INCodableAttribute)_codableAttribute
{
  WeakRetained = objc_loadWeakRetained(&self->_codableAttribute);

  return WeakRetained;
}

- (INCodableDescription)_codableDescription
{
  _codableAttribute = [(INCodableAttributeDialog *)self _codableAttribute];
  _codableDescription = [_codableAttribute _codableDescription];

  return _codableDescription;
}

- (INCodableAttributeDialog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = INCodableAttributeDialog;
  v5 = [(INCodableAttributeDialog *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"formatString"];
    formatString = v5->_formatString;
    v5->_formatString = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatStringID"];
    formatStringID = v5->_formatStringID;
    v5->_formatStringID = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_codableAttribute"];
    [(INCodableAttributeDialog *)v5 _setCodableAttribute:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  formatString = [(INCodableAttributeDialog *)self formatString];
  [coderCopy encodeObject:formatString forKey:@"formatString"];

  formatStringID = [(INCodableAttributeDialog *)self formatStringID];
  [coderCopy encodeObject:formatStringID forKey:@"formatStringID"];

  _codableAttribute = [(INCodableAttributeDialog *)self _codableAttribute];
  [coderCopy encodeConditionalObject:_codableAttribute forKey:@"_codableAttribute"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v5 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  dictionary = [v5 dictionary];
  formatString = [(INCodableAttributeDialog *)self formatString];
  v9 = [formatString intents_encodeForPlistRepresentationWithParameters:parametersCopy];

  [dictionary intents_setPlistSafeObject:v9 forKey:@"formatString"];
  formatStringID = [(INCodableAttributeDialog *)self formatStringID];
  [dictionary intents_setPlistSafeObject:formatStringID forKey:@"formatStringID"];

  return dictionary;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v50[2] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  _codableAttribute = [(INCodableAttributeDialog *)self _codableAttribute];
  if ([(INCodableAttributeDialog *)self isDefaultDialog])
  {
    _localizationTable = [[INCodableLocalizationTable alloc] initWithBundleIdentifier:@"com.apple.Intents" tableName:@"Localizable"];
  }

  else
  {
    _codableDescription = [_codableAttribute _codableDescription];
    _localizationTable = [_codableDescription _localizationTable];
  }

  formatStringID = [(INCodableAttributeDialog *)self formatStringID];
  formatString = [(INCodableAttributeDialog *)self formatString];
  v46 = 0;
  v10 = INLocalizedStringFromCodable(formatStringID, formatString, _localizationTable, localizerCopy, &v46);
  v11 = v46;

  if ([(INCodableAttributeDialog *)self isDefaultDialog])
  {
    propertyName = [_codableAttribute propertyName];
    v13 = [v10 stringByReplacingOccurrencesOfString:@"__PARAMETER_NAME__" withString:propertyName];

    v10 = v13;
  }

  v42 = v11;
  v43 = _localizationTable;
  __INCodableDescriptionFormatStringKey = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringKey];
  v49[0] = __INCodableDescriptionFormatStringKey;
  null = v10;
  if (!v10)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v41 = _codableAttribute;
  v50[0] = null;
  __INCodableDescriptionFormatStringIDKey = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringIDKey];
  v49[1] = __INCodableDescriptionFormatStringIDKey;
  formatStringID2 = [(INCodableAttributeDialog *)self formatStringID];
  null2 = formatStringID2;
  if (!formatStringID2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v50[1] = null2;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v20 = [v19 mutableCopy];

  if (!formatStringID2)
  {
  }

  if (!v10)
  {
  }

  __INCodableDescriptionFormatStringLanguageCodeKey = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringLanguageCodeKey];
  v22 = v42;
  [v20 setObject:v42 forKeyedSubscript:__INCodableDescriptionFormatStringLanguageCodeKey];

  languageCode = [localizerCopy languageCode];
  v24 = [languageCode length];

  v25 = v43;
  if (v24 && [v10 length])
  {
    formatString2 = [(INCodableAttributeDialog *)self formatString];
    formatStringID3 = [(INCodableAttributeDialog *)self formatStringID];
    v44 = 0;
    v45 = formatString2;
    v28 = INStringsDictEntryForKeyInTable(formatStringID3, &v45, v43, localizerCopy, &v44);
    v29 = v45;

    v40 = v44;
    if ([(INCodableAttributeDialog *)self isDefaultDialog])
    {
      propertyName2 = [v41 propertyName];
      v31 = [v29 stringByReplacingOccurrencesOfString:@"__PARAMETER_NAME__" withString:propertyName2];

      v29 = v31;
    }

    if (v28)
    {
      __INCodableDescriptionFormatStringKey2 = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringKey];
      v47[0] = __INCodableDescriptionFormatStringKey2;
      null3 = v29;
      if (!v29)
      {
        null3 = [MEMORY[0x1E695DFB0] null];
      }

      v48[0] = null3;
      __INCodableDescriptionFormatStringDictionaryKey = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringDictionaryKey];
      v47[1] = __INCodableDescriptionFormatStringDictionaryKey;
      v48[1] = v28;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      [v20 addEntriesFromDictionary:v35];

      if (!v29)
      {
      }

      __INCodableDescriptionFormatStringDictionaryLanguageCodeKey = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringDictionaryLanguageCodeKey];
      [v20 setObject:v40 forKeyedSubscript:__INCodableDescriptionFormatStringDictionaryLanguageCodeKey];

      v22 = v42;
      v25 = v43;
    }
  }

  if_dictionaryWithNonEmptyValues = [v20 if_dictionaryWithNonEmptyValues];

  v38 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttributeDialog *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __INCodableDescriptionFormatStringKey = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionFormatStringKey];
  formatString = self->_formatString;
  self->_formatString = v6;

  __INCodableDescriptionFormatStringIDKey = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringIDKey];
  v8 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionFormatStringIDKey];

  formatStringID = self->_formatStringID;
  self->_formatStringID = v8;
}

- (id)localizedDialogWithIntent:(id)intent tokens:(id)tokens localizer:(id)localizer
{
  v52[1] = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  tokensCopy = tokens;
  localizerCopy = localizer;
  backingStore = [intentCopy backingStore];
  if (backingStore)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = backingStore;
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

  _codableAttribute = [(INCodableAttributeDialog *)self _codableAttribute];
  v51 = @"displayName";
  v15 = [_codableAttribute localizedDisplayNameWithLocalizer:localizerCopy];
  v16 = v15;
  v17 = &stru_1F01E0850;
  if (v15)
  {
    v17 = v15;
  }

  v52[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v19 = [v18 mutableCopy];

  metadata = [_codableAttribute metadata];
  v21 = [metadata _localizedDialogTokensWithLocalizer:localizerCopy];

  if (v21)
  {
    [v19 addEntriesFromDictionary:v21];
  }

  if (tokensCopy)
  {
    [v19 addEntriesFromDictionary:tokensCopy];
  }

  v48 = v21;
  v49 = v19;
  if ([(INCodableAttributeDialog *)self isDefaultDialog])
  {
    _localizationTable = [[INCodableLocalizationTable alloc] initWithBundleIdentifier:@"com.apple.Intents" tableName:@"Localizable"];
  }

  else
  {
    _codableDescription = [_codableAttribute _codableDescription];
    _localizationTable = [_codableDescription _localizationTable];
  }

  formatString = [(INCodableAttributeDialog *)self formatString];
  bundleIdentifier = [(INCodableLocalizationTable *)_localizationTable bundleIdentifier];
  v26 = [localizerCopy bundleWithIdentifier:bundleIdentifier fileURL:0];

  v47 = _localizationTable;
  if (v26)
  {
    v45 = v13;
    v46 = localizerCopy;
    v43 = _codableAttribute;
    v44 = tokensCopy;
    v27 = intentCopy;
    _type = [intentCopy _type];
    formatStringID = [(INCodableAttributeDialog *)self formatStringID];
    formatString2 = [(INCodableAttributeDialog *)self formatString];
    tableName = [(INCodableLocalizationTable *)_localizationTable tableName];
    if (_type == 2)
    {
      v32 = v27;
      v33 = INLocalizedFormatStringFromCodable(formatStringID, formatString2, tableName, v26, v46, v45, v49, 0, 0);
      v26 = 0;
    }

    else
    {
      v50 = 0;
      v32 = v27;
      v33 = INLocalizedFormatStringFromSlotComposing(formatStringID, formatString2, tableName, v26, v46, v27, v49, &v50);
      v26 = v50;
    }

    formatString = v33;
    intentCopy = v32;
    tokensCopy = v44;
    v13 = v45;
    _codableAttribute = v43;
    localizerCopy = v46;
  }

  if ([(INCodableAttributeDialog *)self isDefaultDialog])
  {
    propertyName = [_codableAttribute propertyName];
    v35 = [formatString stringByReplacingOccurrencesOfString:@"__PARAMETER_NAME__" withString:propertyName];

    formatString = v35;
  }

  if ([intentCopy _type] == 2)
  {
    v36 = v49;
    v37 = INReplaceVariablesInFormatStringFromCodable(formatString, localizerCopy, v13, v49, 0);
  }

  else
  {
    languageCode = [localizerCopy languageCode];
    if ([languageCode isEqualToString:v26])
    {
      v39 = localizerCopy;
    }

    else
    {
      v39 = [INStringLocalizer localizerForLanguage:v26];
    }

    v40 = v39;

    v37 = INReplaceVariablesInFormatStringFromSlotComposing(formatString, v40, intentCopy);

    v36 = v49;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)localizedDialogWithIntent:(id)intent tokens:(id)tokens forLanguage:(id)language
{
  tokensCopy = tokens;
  intentCopy = intent;
  v10 = [INStringLocalizer localizerForLanguage:language];
  v11 = [(INCodableAttributeDialog *)self localizedDialogWithIntent:intentCopy tokens:tokensCopy localizer:v10];

  return v11;
}

- (id)localizedDialogWithIntent:(id)intent tokens:(id)tokens
{
  tokensCopy = tokens;
  intentCopy = intent;
  v8 = objc_opt_new();
  v9 = [(INCodableAttributeDialog *)self localizedDialogWithIntent:intentCopy tokens:tokensCopy localizer:v8];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v11.receiver = self, v11.super_class = INCodableAttributeDialog, -[INCodableAttributeDialog isEqual:](&v11, sel_isEqual_, equalCopy)))
  {
    formatStringID = [(INCodableAttributeDialog *)self formatStringID];
    formatStringID2 = [equalCopy formatStringID];
    if ([formatStringID isEqualToString:formatStringID2])
    {
      formatString = [(INCodableAttributeDialog *)self formatString];
      formatString2 = [equalCopy formatString];
      v9 = [formatString isEqualToString:formatString2];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  formatString = [(INCodableAttributeDialog *)self formatString];
  v4 = [formatString hash];
  formatStringID = [(INCodableAttributeDialog *)self formatStringID];
  v6 = [formatStringID hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  formatString = [(INCodableAttributeDialog *)self formatString];
  [v4 setFormatString:formatString];

  formatStringID = [(INCodableAttributeDialog *)self formatStringID];
  [v4 setFormatStringID:formatStringID];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = objc_alloc_init(self);
  v7 = [representationCopy intents_stringForKey:@"formatString"];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [representationCopy intents_stringForKey:@"formatStringID"];

  v10 = v6[4];
  v6[4] = v9;

  return v6;
}

- (id)__INCodableDescriptionFormatStringLanguageCodeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeDialogFormatStringLanguageCodeKey = [objc_opt_class() __INCodableAttributeDialogFormatStringLanguageCodeKey];

  return __INCodableAttributeDialogFormatStringLanguageCodeKey;
}

- (id)__INCodableDescriptionFormatStringIDKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeDialogFormatStringIDKey = [objc_opt_class() __INCodableAttributeDialogFormatStringIDKey];

  return __INCodableAttributeDialogFormatStringIDKey;
}

- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeDialogFormatStringDictionaryLanguageCodeKey = [objc_opt_class() __INCodableAttributeDialogFormatStringDictionaryLanguageCodeKey];

  return __INCodableAttributeDialogFormatStringDictionaryLanguageCodeKey;
}

- (id)__INCodableDescriptionFormatStringDictionaryKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeDialogFormatStringDictionaryKey = [objc_opt_class() __INCodableAttributeDialogFormatStringDictionaryKey];

  return __INCodableAttributeDialogFormatStringDictionaryKey;
}

- (id)__INCodableDescriptionFormatStringKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeDialogFormatStringKey = [objc_opt_class() __INCodableAttributeDialogFormatStringKey];

  return __INCodableAttributeDialogFormatStringKey;
}

@end