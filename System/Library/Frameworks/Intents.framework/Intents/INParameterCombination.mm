@interface INParameterCombination
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INParameterCombination)initWithCoder:(id)coder;
- (NSString)localizedSubtitleFormatString;
- (NSString)localizedTitleFormatString;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedSubtitleFormatStringWithLocalizer:(id)localizer;
- (id)localizedTitleFormatStringWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INParameterCombination

- (id)_dictionaryRepresentation
{
  v27[8] = *MEMORY[0x1E69E9840];
  v26[0] = @"supportsBackgroundExecution";
  if ([(INParameterCombination *)self supportsBackgroundExecution])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v27[0] = v3;
  v26[1] = @"isPrimary";
  if ([(INParameterCombination *)self isPrimary])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v27[1] = v4;
  v26[2] = @"titleFormatString";
  titleFormatString = [(INParameterCombination *)self titleFormatString];
  v6 = titleFormatString;
  if (!titleFormatString)
  {
    titleFormatString = [MEMORY[0x1E695DFB0] null];
  }

  v23 = titleFormatString;
  v27[2] = titleFormatString;
  v26[3] = @"titleFormatStringLocID";
  titleFormatStringLocID = [(INParameterCombination *)self titleFormatStringLocID];
  v8 = titleFormatStringLocID;
  if (!titleFormatStringLocID)
  {
    titleFormatStringLocID = [MEMORY[0x1E695DFB0] null];
  }

  v22 = titleFormatStringLocID;
  v27[3] = titleFormatStringLocID;
  v26[4] = @"subtitleFormatString";
  subtitleFormatString = [(INParameterCombination *)self subtitleFormatString];
  v10 = subtitleFormatString;
  if (!subtitleFormatString)
  {
    subtitleFormatString = [MEMORY[0x1E695DFB0] null];
  }

  v21 = subtitleFormatString;
  v27[4] = subtitleFormatString;
  v26[5] = @"subtitleFormatStringLocID";
  subtitleFormatStringLocID = [(INParameterCombination *)self subtitleFormatStringLocID];
  null = subtitleFormatStringLocID;
  if (!subtitleFormatStringLocID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v6;
  v27[5] = null;
  v26[6] = @"_localizationTable.tableName";
  _localizationTable = [(INParameterCombination *)self _localizationTable];
  tableName = [_localizationTable tableName];
  null2 = tableName;
  if (!tableName)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = null2;
  v26[7] = @"_localizationTable.bundleIdentifier";
  _localizationTable2 = [(INParameterCombination *)self _localizationTable];
  bundleIdentifier = [_localizationTable2 bundleIdentifier];
  null3 = bundleIdentifier;
  if (!bundleIdentifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27[7] = null3;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:8];
  if (!bundleIdentifier)
  {
  }

  if (!tableName)
  {
  }

  if (!subtitleFormatStringLocID)
  {
  }

  if (!v10)
  {
  }

  if (!v8)
  {
  }

  if (!v25)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INParameterCombination;
  v6 = [(INParameterCombination *)&v11 description];
  _dictionaryRepresentation = [(INParameterCombination *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INParameterCombination)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = INParameterCombination;
  v5 = [(INParameterCombination *)&v21 init];
  if (v5)
  {
    -[INParameterCombination setSupportsBackgroundExecution:](v5, "setSupportsBackgroundExecution:", [coderCopy decodeBoolForKey:@"supportsBackgroundExecution"]);
    -[INParameterCombination setPrimary:](v5, "setPrimary:", [coderCopy decodeBoolForKey:@"primary"]);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"titleFormatString"];
    [(INParameterCombination *)v5 setTitleFormatString:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"titleFormatStringLocID"];
    [(INParameterCombination *)v5 setTitleFormatStringLocID:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"subtitleFormatString"];
    [(INParameterCombination *)v5 setSubtitleFormatString:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitleFormatStringLocID"];
    [(INParameterCombination *)v5 setSubtitleFormatStringLocID:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localizationTable"];
    [(INParameterCombination *)v5 _setLocalizationTable:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];

    if (v17)
    {
      v18 = objc_alloc_init(INCodableLocalizationTable);
      v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];
      [(INCodableLocalizationTable *)v18 setTableName:v19];

      [(INParameterCombination *)v5 _setLocalizationTable:v18];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  supportsBackgroundExecution = self->_supportsBackgroundExecution;
  coderCopy = coder;
  [coderCopy encodeBool:supportsBackgroundExecution forKey:@"supportsBackgroundExecution"];
  [coderCopy encodeBool:self->_primary forKey:@"primary"];
  [coderCopy encodeObject:self->_titleFormatString forKey:@"titleFormatString"];
  [coderCopy encodeObject:self->_titleFormatStringLocID forKey:@"titleFormatStringLocID"];
  [coderCopy encodeObject:self->_subtitleFormatString forKey:@"subtitleFormatString"];
  [coderCopy encodeObject:self->_subtitleFormatStringLocID forKey:@"subtitleFormatStringLocID"];
  [coderCopy encodeObject:self->_localizationTable forKey:@"_localizationTable"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v6 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  dictionary = [v6 dictionary];
  [dictionary intents_setBoolIfTrue:self->_supportsBackgroundExecution forKey:@"supportsBackgroundExecution"];
  [dictionary intents_setBoolIfTrue:self->_primary forKey:@"primary"];
  v9 = [(NSString *)self->_titleFormatString intents_encodeForPlistRepresentationWithParameters:parametersCopy];
  [dictionary intents_setPlistSafeObject:v9 forKey:@"titleFormatString"];

  [dictionary intents_setPlistSafeObject:self->_titleFormatStringLocID forKey:@"titleFormatStringLocID"];
  v10 = [(NSString *)self->_subtitleFormatString intents_encodeForPlistRepresentationWithParameters:parametersCopy];

  [dictionary intents_setPlistSafeObject:v10 forKey:@"subtitleFormatString"];
  [dictionary intents_setPlistSafeObject:self->_subtitleFormatStringLocID forKey:@"subtitleFormatStringLocID"];
  localizationTable = self->_localizationTable;
  v17 = 0;
  [dictionary intents_setWidgetPlistRepresentable:localizationTable forKey:@"_localizationTable" error:&v17];
  v12 = v17;
  v13 = v12;
  if (v12)
  {
    if (error)
    {
      v14 = v12;
      v15 = 0;
      *error = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [dictionary copy];
  }

  return v15;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v66[6] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  titleFormatStringLocID = [(INParameterCombination *)self titleFormatStringLocID];
  titleFormatString = [(INParameterCombination *)self titleFormatString];
  _localizationTable = [(INParameterCombination *)self _localizationTable];
  v60 = 0;
  v8 = INLocalizedStringFromCodable(titleFormatStringLocID, titleFormatString, _localizationTable, localizerCopy, &v60);
  v52 = v60;

  subtitleFormatStringLocID = [(INParameterCombination *)self subtitleFormatStringLocID];
  subtitleFormatString = [(INParameterCombination *)self subtitleFormatString];
  _localizationTable2 = [(INParameterCombination *)self _localizationTable];
  v59 = 0;
  v54 = INLocalizedStringFromCodable(subtitleFormatStringLocID, subtitleFormatString, _localizationTable2, localizerCopy, &v59);
  v50 = v59;

  v65[0] = @"INIntentParameterCombinationSupportsBackgroundExecution";
  null = [MEMORY[0x1E696AD98] numberWithBool:{-[INParameterCombination supportsBackgroundExecution](self, "supportsBackgroundExecution")}];
  v13 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v49 = null;
  v66[0] = null;
  v65[1] = @"INIntentParameterCombinationIsPrimary";
  null2 = [MEMORY[0x1E696AD98] numberWithBool:{-[INParameterCombination isPrimary](self, "isPrimary")}];
  v15 = null2;
  if (!null2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null2;
  v66[1] = null2;
  v65[2] = @"INIntentParameterCombinationTitle";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v66[2] = null3;
  v65[3] = @"INIntentParameterCombinationTitleID";
  titleFormatStringLocID2 = [(INParameterCombination *)self titleFormatStringLocID];
  null4 = titleFormatStringLocID2;
  if (!titleFormatStringLocID2)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v8;
  v66[3] = null4;
  v65[4] = @"INIntentParameterCombinationSubtitle";
  null5 = v54;
  if (!v54)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = localizerCopy;
  v66[4] = null5;
  v65[5] = @"INIntentParameterCombinationSubtitleID";
  subtitleFormatStringLocID2 = [(INParameterCombination *)self subtitleFormatStringLocID];
  null6 = subtitleFormatStringLocID2;
  if (!subtitleFormatStringLocID2)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v66[5] = null6;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:6];
  v53 = [v23 mutableCopy];

  if (!subtitleFormatStringLocID2)
  {
  }

  v24 = v20;
  if (!v54)
  {
  }

  if (!titleFormatStringLocID2)
  {
  }

  if (v51)
  {
    if (v15)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (v15)
    {
      goto LABEL_21;
    }
  }

LABEL_21:
  if (!v13)
  {
  }

  v25 = v52;
  [v53 setObject:v52 forKeyedSubscript:@"INIntentParameterCombinationTitleLanguageCode"];
  [v53 setObject:v50 forKeyedSubscript:@"INIntentParameterCombinationSubtitleLanguageCode"];
  languageCode = [v20 languageCode];
  v27 = [languageCode length];

  if (v27)
  {
    if ([v51 length])
    {
      titleFormatString2 = [(INParameterCombination *)self titleFormatString];
      titleFormatStringLocID3 = [(INParameterCombination *)self titleFormatStringLocID];
      v58 = titleFormatString2;
      _localizationTable3 = [(INParameterCombination *)self _localizationTable];
      v57 = 0;
      v31 = INStringsDictEntryForKeyInTable(titleFormatStringLocID3, &v58, _localizationTable3, v24, &v57);
      v32 = v58;

      v33 = v57;
      if (v31)
      {
        v63[0] = @"INIntentParameterCombinationTitle";
        null7 = v32;
        if (!v32)
        {
          null7 = [MEMORY[0x1E695DFB0] null];
        }

        v63[1] = @"INIntentParameterCombinationTitleDictionary";
        v64[0] = null7;
        v64[1] = v31;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
        [v53 addEntriesFromDictionary:v35];

        if (!v32)
        {
        }

        [v53 setObject:v33 forKeyedSubscript:@"INIntentParameterCombinationTitleDictionaryLanguageCode"];
        v25 = v52;
      }
    }

    if ([v54 length])
    {
      subtitleFormatString2 = [(INParameterCombination *)self subtitleFormatString];
      subtitleFormatStringLocID3 = [(INParameterCombination *)self subtitleFormatStringLocID];
      v56 = subtitleFormatString2;
      _localizationTable4 = [(INParameterCombination *)self _localizationTable];
      v55 = 0;
      v39 = INStringsDictEntryForKeyInTable(subtitleFormatStringLocID3, &v56, _localizationTable4, v24, &v55);
      v40 = v56;

      v41 = v55;
      if (v39)
      {
        v61[0] = @"INIntentParameterCombinationSubtitle";
        null8 = v40;
        if (!v40)
        {
          null8 = [MEMORY[0x1E695DFB0] null];
        }

        v61[1] = @"INIntentParameterCombinationSubtitleDictionary";
        v62[0] = null8;
        v62[1] = v39;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
        [v53 addEntriesFromDictionary:v43];

        if (!v40)
        {
        }

        [v53 setObject:v41 forKeyedSubscript:@"INIntentParameterCombinationSubtitleDictionaryLanguageCode"];
      }
    }
  }

  if_dictionaryWithNonEmptyValues = [v53 if_dictionaryWithNonEmptyValues];

  v45 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INParameterCombination *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"INIntentParameterCombinationSupportsBackgroundExecution"];
  -[INParameterCombination setSupportsBackgroundExecution:](self, "setSupportsBackgroundExecution:", [v5 BOOLValue]);

  v6 = [dictionaryCopy objectForKeyedSubscript:@"INIntentParameterCombinationIsPrimary"];
  -[INParameterCombination setPrimary:](self, "setPrimary:", [v6 BOOLValue]);

  v7 = [dictionaryCopy objectForKeyedSubscript:@"INIntentParameterCombinationTitle"];
  [(INParameterCombination *)self setTitleFormatString:v7];

  v8 = [dictionaryCopy objectForKeyedSubscript:@"INIntentParameterCombinationTitleID"];
  [(INParameterCombination *)self setTitleFormatStringLocID:v8];

  v9 = [dictionaryCopy objectForKeyedSubscript:@"INIntentParameterCombinationSubtitle"];
  [(INParameterCombination *)self setSubtitleFormatString:v9];

  v10 = [dictionaryCopy objectForKeyedSubscript:@"INIntentParameterCombinationSubtitleID"];

  [(INParameterCombination *)self setSubtitleFormatStringLocID:v10];
}

- (id)localizedSubtitleFormatStringWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  subtitleFormatStringLocID = [(INParameterCombination *)self subtitleFormatStringLocID];
  subtitleFormatString = [(INParameterCombination *)self subtitleFormatString];
  _localizationTable = [(INParameterCombination *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(subtitleFormatStringLocID, subtitleFormatString, _localizationTable, localizerCopy, 0);

  return v8;
}

- (NSString)localizedSubtitleFormatString
{
  v3 = objc_opt_new();
  v4 = [(INParameterCombination *)self localizedSubtitleFormatStringWithLocalizer:v3];

  return v4;
}

- (id)localizedTitleFormatStringWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  titleFormatStringLocID = [(INParameterCombination *)self titleFormatStringLocID];
  titleFormatString = [(INParameterCombination *)self titleFormatString];
  _localizationTable = [(INParameterCombination *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(titleFormatStringLocID, titleFormatString, _localizationTable, localizerCopy, 0);

  return v8;
}

- (NSString)localizedTitleFormatString
{
  v3 = objc_opt_new();
  v4 = [(INParameterCombination *)self localizedTitleFormatStringWithLocalizer:v3];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = objc_alloc_init(INParameterCombination);
  -[INParameterCombination setSupportsBackgroundExecution:](v6, "setSupportsBackgroundExecution:", [representationCopy intents_BOOLForKey:@"supportsBackgroundExecution"]);
  -[INParameterCombination setPrimary:](v6, "setPrimary:", [representationCopy intents_BOOLForKey:@"primary"]);
  v7 = [representationCopy intents_stringForKey:@"titleFormatString"];
  [(INParameterCombination *)v6 setTitleFormatString:v7];

  v8 = [representationCopy intents_stringForKey:@"titleFormatStringLocID"];
  [(INParameterCombination *)v6 setTitleFormatStringLocID:v8];

  v9 = [representationCopy intents_stringForKey:@"subtitleFormatString"];
  [(INParameterCombination *)v6 setSubtitleFormatString:v9];

  v10 = [representationCopy intents_stringForKey:@"subtitleFormatStringLocID"];
  [(INParameterCombination *)v6 setSubtitleFormatStringLocID:v10];

  v17 = 0;
  v11 = [INCodableLocalizationTable intents_widgetPlistRepresentableInDict:representationCopy key:@"_localizationTable" error:&v17];

  v12 = v17;
  v13 = v12;
  if (v12)
  {
    if (error)
    {
      v14 = v12;
      v15 = 0;
      *error = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    [(INParameterCombination *)v6 _setLocalizationTable:v11];
    v15 = v6;
  }

  return v15;
}

@end