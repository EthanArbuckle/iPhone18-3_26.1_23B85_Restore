@interface INIntentResponseCodableCode
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INIntentResponseCodableCode)initWithCoder:(id)coder;
- (INIntentResponseCodableDescription)_codableDescription;
- (NSArray)parameterNames;
- (id)__INCodableDescriptionConciseFormatStringDictionaryKey;
- (id)__INCodableDescriptionConciseFormatStringDictionaryLanguageCodeKey;
- (id)__INCodableDescriptionConciseFormatStringIDKey;
- (id)__INCodableDescriptionConciseFormatStringKey;
- (id)__INCodableDescriptionConciseFormatStringLanguageCodeKey;
- (id)__INCodableDescriptionFormatStringDictionaryKey;
- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey;
- (id)__INCodableDescriptionFormatStringIDKey;
- (id)__INCodableDescriptionFormatStringKey;
- (id)__INCodableDescriptionFormatStringLanguageCodeKey;
- (id)__INCodableDescriptionNameKey;
- (id)__INCodableDescriptionSuccessKey;
- (id)_parameterNamesFromString:(id)string;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INIntentResponseCodableCode

- (id)__INCodableDescriptionNameKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeNameKey = [objc_opt_class() __INIntentResponseCodableCodeNameKey];

  return __INIntentResponseCodableCodeNameKey;
}

- (INIntentResponseCodableDescription)_codableDescription
{
  WeakRetained = objc_loadWeakRetained(&self->__codableDescription);

  return WeakRetained;
}

- (id)__INCodableDescriptionFormatStringKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeFormatStringKey = [objc_opt_class() __INIntentResponseCodableCodeFormatStringKey];

  return __INIntentResponseCodableCodeFormatStringKey;
}

- (id)__INCodableDescriptionFormatStringIDKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeFormatStringIDKey = [objc_opt_class() __INIntentResponseCodableCodeFormatStringIDKey];

  return __INIntentResponseCodableCodeFormatStringIDKey;
}

- (id)__INCodableDescriptionConciseFormatStringKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeConciseFormatStringKey = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringKey];

  return __INIntentResponseCodableCodeConciseFormatStringKey;
}

- (id)__INCodableDescriptionConciseFormatStringIDKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeConciseFormatStringIDKey = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringIDKey];

  return __INIntentResponseCodableCodeConciseFormatStringIDKey;
}

- (id)__INCodableDescriptionSuccessKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeSuccessKey = [objc_opt_class() __INIntentResponseCodableCodeSuccessKey];

  return __INIntentResponseCodableCodeSuccessKey;
}

- (INIntentResponseCodableCode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = INIntentResponseCodableCode;
  v5 = [(INIntentResponseCodableCode *)&v18 init];
  if (v5)
  {
    -[INIntentResponseCodableCode setValue:](v5, "setValue:", [coderCopy decodeIntegerForKey:@"value"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(INIntentResponseCodableCode *)v5 setName:v6];

    -[INIntentResponseCodableCode setSuccess:](v5, "setSuccess:", [coderCopy decodeBoolForKey:@"success"]);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"formatString"];
    [(INIntentResponseCodableCode *)v5 setFormatString:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"formatStringLocID"];
    [(INIntentResponseCodableCode *)v5 setFormatStringLocID:v11];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"conciseFormatString"];
    [(INIntentResponseCodableCode *)v5 setConciseFormatString:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conciseFormatStringLocID"];
    [(INIntentResponseCodableCode *)v5 setConciseFormatStringLocID:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  value = self->_value;
  coderCopy = coder;
  [coderCopy encodeInteger:value forKey:@"value"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeBool:self->_success forKey:@"success"];
  [coderCopy encodeObject:self->_formatString forKey:@"formatString"];
  [coderCopy encodeObject:self->_formatStringLocID forKey:@"formatStringLocID"];
  [coderCopy encodeObject:self->_conciseFormatString forKey:@"conciseFormatString"];
  [coderCopy encodeObject:self->_conciseFormatStringLocID forKey:@"conciseFormatStringLocID"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v5 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  dictionary = [v5 dictionary];
  [dictionary intents_setIntegerIfNonZero:self->_value forKey:@"value"];
  [dictionary intents_setPlistSafeObject:self->_name forKey:@"name"];
  [dictionary intents_setBoolIfTrue:self->_success forKey:@"success"];
  v8 = [(NSString *)self->_formatString intents_encodeForPlistRepresentationWithParameters:parametersCopy];
  [dictionary intents_setPlistSafeObject:v8 forKey:@"formatString"];

  [dictionary intents_setPlistSafeObject:self->_formatStringLocID forKey:@"formatStringLocID"];
  v9 = [(NSString *)self->_conciseFormatString intents_encodeForPlistRepresentationWithParameters:parametersCopy];

  [dictionary intents_setPlistSafeObject:v9 forKey:@"conciseFormatString"];
  [dictionary intents_setPlistSafeObject:self->_conciseFormatStringLocID forKey:@"conciseFormatStringLocID"];

  return dictionary;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v86[6] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  formatStringLocID = [(INIntentResponseCodableCode *)self formatStringLocID];
  formatString = [(INIntentResponseCodableCode *)self formatString];
  _localizationTable = [_codableDescription _localizationTable];
  v80 = 0;
  v9 = INLocalizedStringFromCodable(formatStringLocID, formatString, _localizationTable, localizerCopy, &v80);
  v10 = v80;

  conciseFormatStringLocID = [(INIntentResponseCodableCode *)self conciseFormatStringLocID];
  conciseFormatString = [(INIntentResponseCodableCode *)self conciseFormatString];
  _localizationTable2 = [_codableDescription _localizationTable];
  v79 = 0;
  v74 = INLocalizedStringFromCodable(conciseFormatStringLocID, conciseFormatString, _localizationTable2, localizerCopy, &v79);
  v72 = v79;

  __INCodableDescriptionNameKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionNameKey];
  v85[0] = __INCodableDescriptionNameKey;
  name = [(INIntentResponseCodableCode *)self name];
  v15 = name;
  if (!name)
  {
    name = [MEMORY[0x1E695DFB0] null];
  }

  v62 = name;
  v86[0] = name;
  __INCodableDescriptionFormatStringKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringKey];
  v85[1] = __INCodableDescriptionFormatStringKey;
  null = v9;
  if (!v9)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v68 = localizerCopy;
  v61 = null;
  v86[1] = null;
  __INCodableDescriptionFormatStringIDKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringIDKey];
  v85[2] = __INCodableDescriptionFormatStringIDKey;
  formatStringLocID2 = [(INIntentResponseCodableCode *)self formatStringLocID];
  v18 = formatStringLocID2;
  if (!formatStringLocID2)
  {
    formatStringLocID2 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v9;
  v60 = formatStringLocID2;
  v86[2] = formatStringLocID2;
  __INCodableDescriptionConciseFormatStringKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringKey];
  v85[3] = __INCodableDescriptionConciseFormatStringKey;
  null2 = v74;
  if (!v74)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v15;
  v70 = v10;
  v71 = _codableDescription;
  v86[3] = null2;
  __INCodableDescriptionConciseFormatStringIDKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringIDKey];
  v85[4] = __INCodableDescriptionConciseFormatStringIDKey;
  conciseFormatStringLocID2 = [(INIntentResponseCodableCode *)self conciseFormatStringLocID];
  null3 = conciseFormatStringLocID2;
  if (!conciseFormatStringLocID2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v86[4] = null3;
  __INCodableDescriptionSuccessKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionSuccessKey];
  v85[5] = __INCodableDescriptionSuccessKey;
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentResponseCodableCode isSuccess](self, "isSuccess")}];
  null4 = v24;
  if (!v24)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v86[5] = null4;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:6];
  v73 = [v26 mutableCopy];

  if (!v24)
  {
  }

  if (!conciseFormatStringLocID2)
  {
  }

  v27 = v70;
  v28 = v71;
  v29 = v73;
  if (!v74)
  {
  }

  v30 = v69;
  if (!v18)
  {
  }

  if (!v69)
  {
  }

  if (!v66)
  {
  }

  __INCodableDescriptionFormatStringLanguageCodeKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringLanguageCodeKey];
  [v73 setObject:v70 forKeyedSubscript:__INCodableDescriptionFormatStringLanguageCodeKey];

  __INCodableDescriptionConciseFormatStringLanguageCodeKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringLanguageCodeKey];
  [v73 setObject:v72 forKeyedSubscript:__INCodableDescriptionConciseFormatStringLanguageCodeKey];

  languageCode = [v68 languageCode];
  v34 = [languageCode length];

  if (v34)
  {
    if ([v69 length])
    {
      formatString2 = [(INIntentResponseCodableCode *)self formatString];
      formatStringLocID3 = [(INIntentResponseCodableCode *)self formatStringLocID];
      v78 = formatString2;
      _localizationTable3 = [v71 _localizationTable];
      v77 = 0;
      v38 = INStringsDictEntryForKeyInTable(formatStringLocID3, &v78, _localizationTable3, v68, &v77);
      v39 = v78;

      v40 = v77;
      if (v38)
      {
        __INCodableDescriptionFormatStringKey2 = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringKey];
        v83[0] = __INCodableDescriptionFormatStringKey2;
        null5 = v39;
        if (!v39)
        {
          null5 = [MEMORY[0x1E695DFB0] null];
        }

        v84[0] = null5;
        __INCodableDescriptionFormatStringDictionaryKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringDictionaryKey];
        v83[1] = __INCodableDescriptionFormatStringDictionaryKey;
        v84[1] = v38;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
        [v73 addEntriesFromDictionary:v44];

        if (!v39)
        {
        }

        __INCodableDescriptionFormatStringDictionaryLanguageCodeKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringDictionaryLanguageCodeKey];
        [v73 setObject:v40 forKeyedSubscript:__INCodableDescriptionFormatStringDictionaryLanguageCodeKey];

        v30 = v69;
        v27 = v70;
        v28 = v71;
      }

      v29 = v73;
    }

    if ([v74 length])
    {
      conciseFormatString2 = [(INIntentResponseCodableCode *)self conciseFormatString];
      conciseFormatStringLocID3 = [(INIntentResponseCodableCode *)self conciseFormatStringLocID];
      v76 = conciseFormatString2;
      _localizationTable4 = [v28 _localizationTable];
      v75 = 0;
      v49 = INStringsDictEntryForKeyInTable(conciseFormatStringLocID3, &v76, _localizationTable4, v68, &v75);
      v50 = v76;

      v51 = v75;
      if (v49)
      {
        __INCodableDescriptionConciseFormatStringKey2 = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringKey];
        v81[0] = __INCodableDescriptionConciseFormatStringKey2;
        null6 = v50;
        if (!v50)
        {
          null6 = [MEMORY[0x1E695DFB0] null];
        }

        v82[0] = null6;
        __INCodableDescriptionConciseFormatStringDictionaryKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringDictionaryKey];
        v81[1] = __INCodableDescriptionConciseFormatStringDictionaryKey;
        v82[1] = v49;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
        [v73 addEntriesFromDictionary:v55];

        if (!v50)
        {
        }

        __INCodableDescriptionConciseFormatStringDictionaryLanguageCodeKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringDictionaryLanguageCodeKey];
        [v73 setObject:v51 forKeyedSubscript:__INCodableDescriptionConciseFormatStringDictionaryLanguageCodeKey];

        v30 = v69;
        v27 = v70;
        v28 = v71;
      }

      v29 = v73;
    }
  }

  if_dictionaryWithNonEmptyValues = [v29 if_dictionaryWithNonEmptyValues];

  v58 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INIntentResponseCodableCode *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __INCodableDescriptionNameKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionNameKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionNameKey];
  [(INIntentResponseCodableCode *)self setName:v6];

  __INCodableDescriptionFormatStringKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringKey];
  v8 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionFormatStringKey];
  [(INIntentResponseCodableCode *)self setFormatString:v8];

  __INCodableDescriptionFormatStringIDKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringIDKey];
  v10 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionFormatStringIDKey];
  [(INIntentResponseCodableCode *)self setFormatStringLocID:v10];

  __INCodableDescriptionConciseFormatStringKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringKey];
  v12 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionConciseFormatStringKey];
  [(INIntentResponseCodableCode *)self setConciseFormatString:v12];

  __INCodableDescriptionConciseFormatStringIDKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringIDKey];
  v14 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionConciseFormatStringIDKey];
  [(INIntentResponseCodableCode *)self setConciseFormatStringLocID:v14];

  __INCodableDescriptionSuccessKey = [(INIntentResponseCodableCode *)self __INCodableDescriptionSuccessKey];
  v16 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionSuccessKey];

  -[INIntentResponseCodableCode setSuccess:](self, "setSuccess:", [v16 BOOLValue]);
  name = [(INIntentResponseCodableCode *)self name];
  v18 = [name isEqualToString:@"failure"];

  if ((v18 & 1) != 0 || (-[INIntentResponseCodableCode name](self, "name"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 isEqualToString:@"success"], v19, v20))
  {

    [(INIntentResponseCodableCode *)self setSuccess:v18 ^ 1u];
  }
}

- (id)_parameterNamesFromString:(id)string
{
  v24 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    _intents_sharedFormatRegularExpression = [MEMORY[0x1E696AE70] _intents_sharedFormatRegularExpression];
    v6 = [_intents_sharedFormatRegularExpression matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * i) resultByAdjustingRangesWithOffset:{0, v19}];
          v13 = [v12 rangeAtIndex:1];
          v15 = [stringCopy substringWithRange:{v13, v14}];
          if (v15)
          {
            [v4 addObject:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v16 = [v4 copy];
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSArray)parameterNames
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [(INIntentResponseCodableCode *)self _parameterNamesFromString:self->_formatString];
  v5 = [(INIntentResponseCodableCode *)self _parameterNamesFromString:self->_conciseFormatString];
  v6 = [v4 arrayByAddingObjectsFromArray:v5];
  v7 = [v3 setWithArray:v6];
  allObjects = [v7 allObjects];

  return allObjects;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v5 = objc_alloc_init(INIntentResponseCodableCode);
  -[INIntentResponseCodableCode setValue:](v5, "setValue:", [representationCopy intents_intForKey:@"value"]);
  v6 = [representationCopy intents_stringForKey:@"name"];
  [(INIntentResponseCodableCode *)v5 setName:v6];

  -[INIntentResponseCodableCode setSuccess:](v5, "setSuccess:", [representationCopy intents_BOOLForKey:@"success"]);
  v7 = [representationCopy intents_stringForKey:@"formatString"];
  [(INIntentResponseCodableCode *)v5 setFormatString:v7];

  v8 = [representationCopy intents_stringForKey:@"formatStringLocID"];
  [(INIntentResponseCodableCode *)v5 setFormatStringLocID:v8];

  v9 = [representationCopy intents_stringForKey:@"conciseFormatString"];
  [(INIntentResponseCodableCode *)v5 setConciseFormatString:v9];

  v10 = [representationCopy intents_stringForKey:@"conciseFormatStringLocID"];

  [(INIntentResponseCodableCode *)v5 setConciseFormatStringLocID:v10];

  return v5;
}

- (id)__INCodableDescriptionFormatStringLanguageCodeKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeFormatStringLanguageCodeKey = [objc_opt_class() __INIntentResponseCodableCodeFormatStringLanguageCodeKey];

  return __INIntentResponseCodableCodeFormatStringLanguageCodeKey;
}

- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeFormatStringDictionaryLanguageCodeKey = [objc_opt_class() __INIntentResponseCodableCodeFormatStringDictionaryLanguageCodeKey];

  return __INIntentResponseCodableCodeFormatStringDictionaryLanguageCodeKey;
}

- (id)__INCodableDescriptionFormatStringDictionaryKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeFormatStringDictionaryKey = [objc_opt_class() __INIntentResponseCodableCodeFormatStringDictionaryKey];

  return __INIntentResponseCodableCodeFormatStringDictionaryKey;
}

- (id)__INCodableDescriptionConciseFormatStringLanguageCodeKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeConciseFormatStringLanguageCodeKey = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringLanguageCodeKey];

  return __INIntentResponseCodableCodeConciseFormatStringLanguageCodeKey;
}

- (id)__INCodableDescriptionConciseFormatStringDictionaryLanguageCodeKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeConciseFormatStringDictionaryLanguageCodeKey = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringDictionaryLanguageCodeKey];

  return __INIntentResponseCodableCodeConciseFormatStringDictionaryLanguageCodeKey;
}

- (id)__INCodableDescriptionConciseFormatStringDictionaryKey
{
  _codableDescription = [(INIntentResponseCodableCode *)self _codableDescription];
  __INIntentResponseCodableCodeConciseFormatStringDictionaryKey = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringDictionaryKey];

  return __INIntentResponseCodableCodeConciseFormatStringDictionaryKey;
}

@end