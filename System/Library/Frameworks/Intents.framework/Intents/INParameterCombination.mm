@interface INParameterCombination
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INParameterCombination)initWithCoder:(id)a3;
- (NSString)localizedSubtitleFormatString;
- (NSString)localizedTitleFormatString;
- (id)_dictionaryRepresentation;
- (id)descriptionAtIndent:(unint64_t)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedSubtitleFormatStringWithLocalizer:(id)a3;
- (id)localizedTitleFormatStringWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
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
  v5 = [(INParameterCombination *)self titleFormatString];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v5;
  v27[2] = v5;
  v26[3] = @"titleFormatStringLocID";
  v7 = [(INParameterCombination *)self titleFormatStringLocID];
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v7;
  v27[3] = v7;
  v26[4] = @"subtitleFormatString";
  v9 = [(INParameterCombination *)self subtitleFormatString];
  v10 = v9;
  if (!v9)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v9;
  v27[4] = v9;
  v26[5] = @"subtitleFormatStringLocID";
  v11 = [(INParameterCombination *)self subtitleFormatStringLocID];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v6;
  v27[5] = v12;
  v26[6] = @"_localizationTable.tableName";
  v13 = [(INParameterCombination *)self _localizationTable];
  v14 = [v13 tableName];
  v15 = v14;
  if (!v14)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27[6] = v15;
  v26[7] = @"_localizationTable.bundleIdentifier";
  v16 = [(INParameterCombination *)self _localizationTable];
  v17 = [v16 bundleIdentifier];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v27[7] = v18;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:8];
  if (!v17)
  {
  }

  if (!v14)
  {
  }

  if (!v11)
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INParameterCombination;
  v6 = [(INParameterCombination *)&v11 description];
  v7 = [(INParameterCombination *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INParameterCombination)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = INParameterCombination;
  v5 = [(INParameterCombination *)&v21 init];
  if (v5)
  {
    -[INParameterCombination setSupportsBackgroundExecution:](v5, "setSupportsBackgroundExecution:", [v4 decodeBoolForKey:@"supportsBackgroundExecution"]);
    -[INParameterCombination setPrimary:](v5, "setPrimary:", [v4 decodeBoolForKey:@"primary"]);
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"titleFormatString"];
    [(INParameterCombination *)v5 setTitleFormatString:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"titleFormatStringLocID"];
    [(INParameterCombination *)v5 setTitleFormatStringLocID:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"subtitleFormatString"];
    [(INParameterCombination *)v5 setSubtitleFormatString:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitleFormatStringLocID"];
    [(INParameterCombination *)v5 setSubtitleFormatStringLocID:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localizationTable"];
    [(INParameterCombination *)v5 _setLocalizationTable:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];

    if (v17)
    {
      v18 = objc_alloc_init(INCodableLocalizationTable);
      v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];
      [(INCodableLocalizationTable *)v18 setTableName:v19];

      [(INParameterCombination *)v5 _setLocalizationTable:v18];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  supportsBackgroundExecution = self->_supportsBackgroundExecution;
  v5 = a3;
  [v5 encodeBool:supportsBackgroundExecution forKey:@"supportsBackgroundExecution"];
  [v5 encodeBool:self->_primary forKey:@"primary"];
  [v5 encodeObject:self->_titleFormatString forKey:@"titleFormatString"];
  [v5 encodeObject:self->_titleFormatStringLocID forKey:@"titleFormatStringLocID"];
  [v5 encodeObject:self->_subtitleFormatString forKey:@"subtitleFormatString"];
  [v5 encodeObject:self->_subtitleFormatStringLocID forKey:@"subtitleFormatStringLocID"];
  [v5 encodeObject:self->_localizationTable forKey:@"_localizationTable"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  [v8 intents_setBoolIfTrue:self->_supportsBackgroundExecution forKey:@"supportsBackgroundExecution"];
  [v8 intents_setBoolIfTrue:self->_primary forKey:@"primary"];
  v9 = [(NSString *)self->_titleFormatString intents_encodeForPlistRepresentationWithParameters:v7];
  [v8 intents_setPlistSafeObject:v9 forKey:@"titleFormatString"];

  [v8 intents_setPlistSafeObject:self->_titleFormatStringLocID forKey:@"titleFormatStringLocID"];
  v10 = [(NSString *)self->_subtitleFormatString intents_encodeForPlistRepresentationWithParameters:v7];

  [v8 intents_setPlistSafeObject:v10 forKey:@"subtitleFormatString"];
  [v8 intents_setPlistSafeObject:self->_subtitleFormatStringLocID forKey:@"subtitleFormatStringLocID"];
  localizationTable = self->_localizationTable;
  v17 = 0;
  [v8 intents_setWidgetPlistRepresentable:localizationTable forKey:@"_localizationTable" error:&v17];
  v12 = v17;
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      v14 = v12;
      v15 = 0;
      *a4 = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = [v8 copy];
  }

  return v15;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v66[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INParameterCombination *)self titleFormatStringLocID];
  v6 = [(INParameterCombination *)self titleFormatString];
  v7 = [(INParameterCombination *)self _localizationTable];
  v60 = 0;
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, &v60);
  v52 = v60;

  v9 = [(INParameterCombination *)self subtitleFormatStringLocID];
  v10 = [(INParameterCombination *)self subtitleFormatString];
  v11 = [(INParameterCombination *)self _localizationTable];
  v59 = 0;
  v54 = INLocalizedStringFromCodable(v9, v10, v11, v4, &v59);
  v50 = v59;

  v65[0] = @"INIntentParameterCombinationSupportsBackgroundExecution";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INParameterCombination supportsBackgroundExecution](self, "supportsBackgroundExecution")}];
  v13 = v12;
  if (!v12)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v12;
  v66[0] = v12;
  v65[1] = @"INIntentParameterCombinationIsPrimary";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[INParameterCombination isPrimary](self, "isPrimary")}];
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v14;
  v66[1] = v14;
  v65[2] = @"INIntentParameterCombinationTitle";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v66[2] = v16;
  v65[3] = @"INIntentParameterCombinationTitleID";
  v17 = [(INParameterCombination *)self titleFormatStringLocID];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = v8;
  v66[3] = v18;
  v65[4] = @"INIntentParameterCombinationSubtitle";
  v19 = v54;
  if (!v54)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v4;
  v66[4] = v19;
  v65[5] = @"INIntentParameterCombinationSubtitleID";
  v21 = [(INParameterCombination *)self subtitleFormatStringLocID];
  v22 = v21;
  if (!v21)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v66[5] = v22;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:6];
  v53 = [v23 mutableCopy];

  if (!v21)
  {
  }

  v24 = v20;
  if (!v54)
  {
  }

  if (!v17)
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
  v26 = [v20 languageCode];
  v27 = [v26 length];

  if (v27)
  {
    if ([v51 length])
    {
      v28 = [(INParameterCombination *)self titleFormatString];
      v29 = [(INParameterCombination *)self titleFormatStringLocID];
      v58 = v28;
      v30 = [(INParameterCombination *)self _localizationTable];
      v57 = 0;
      v31 = INStringsDictEntryForKeyInTable(v29, &v58, v30, v24, &v57);
      v32 = v58;

      v33 = v57;
      if (v31)
      {
        v63[0] = @"INIntentParameterCombinationTitle";
        v34 = v32;
        if (!v32)
        {
          v34 = [MEMORY[0x1E695DFB0] null];
        }

        v63[1] = @"INIntentParameterCombinationTitleDictionary";
        v64[0] = v34;
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
      v36 = [(INParameterCombination *)self subtitleFormatString];
      v37 = [(INParameterCombination *)self subtitleFormatStringLocID];
      v56 = v36;
      v38 = [(INParameterCombination *)self _localizationTable];
      v55 = 0;
      v39 = INStringsDictEntryForKeyInTable(v37, &v56, v38, v24, &v55);
      v40 = v56;

      v41 = v55;
      if (v39)
      {
        v61[0] = @"INIntentParameterCombinationSubtitle";
        v42 = v40;
        if (!v40)
        {
          v42 = [MEMORY[0x1E695DFB0] null];
        }

        v61[1] = @"INIntentParameterCombinationSubtitleDictionary";
        v62[0] = v42;
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

  v44 = [v53 if_dictionaryWithNonEmptyValues];

  v45 = *MEMORY[0x1E69E9840];

  return v44;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INParameterCombination *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"INIntentParameterCombinationSupportsBackgroundExecution"];
  -[INParameterCombination setSupportsBackgroundExecution:](self, "setSupportsBackgroundExecution:", [v5 BOOLValue]);

  v6 = [v4 objectForKeyedSubscript:@"INIntentParameterCombinationIsPrimary"];
  -[INParameterCombination setPrimary:](self, "setPrimary:", [v6 BOOLValue]);

  v7 = [v4 objectForKeyedSubscript:@"INIntentParameterCombinationTitle"];
  [(INParameterCombination *)self setTitleFormatString:v7];

  v8 = [v4 objectForKeyedSubscript:@"INIntentParameterCombinationTitleID"];
  [(INParameterCombination *)self setTitleFormatStringLocID:v8];

  v9 = [v4 objectForKeyedSubscript:@"INIntentParameterCombinationSubtitle"];
  [(INParameterCombination *)self setSubtitleFormatString:v9];

  v10 = [v4 objectForKeyedSubscript:@"INIntentParameterCombinationSubtitleID"];

  [(INParameterCombination *)self setSubtitleFormatStringLocID:v10];
}

- (id)localizedSubtitleFormatStringWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INParameterCombination *)self subtitleFormatStringLocID];
  v6 = [(INParameterCombination *)self subtitleFormatString];
  v7 = [(INParameterCombination *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);

  return v8;
}

- (NSString)localizedSubtitleFormatString
{
  v3 = objc_opt_new();
  v4 = [(INParameterCombination *)self localizedSubtitleFormatStringWithLocalizer:v3];

  return v4;
}

- (id)localizedTitleFormatStringWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INParameterCombination *)self titleFormatStringLocID];
  v6 = [(INParameterCombination *)self titleFormatString];
  v7 = [(INParameterCombination *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);

  return v8;
}

- (NSString)localizedTitleFormatString
{
  v3 = objc_opt_new();
  v4 = [(INParameterCombination *)self localizedTitleFormatStringWithLocalizer:v3];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(INParameterCombination);
  -[INParameterCombination setSupportsBackgroundExecution:](v6, "setSupportsBackgroundExecution:", [v5 intents_BOOLForKey:@"supportsBackgroundExecution"]);
  -[INParameterCombination setPrimary:](v6, "setPrimary:", [v5 intents_BOOLForKey:@"primary"]);
  v7 = [v5 intents_stringForKey:@"titleFormatString"];
  [(INParameterCombination *)v6 setTitleFormatString:v7];

  v8 = [v5 intents_stringForKey:@"titleFormatStringLocID"];
  [(INParameterCombination *)v6 setTitleFormatStringLocID:v8];

  v9 = [v5 intents_stringForKey:@"subtitleFormatString"];
  [(INParameterCombination *)v6 setSubtitleFormatString:v9];

  v10 = [v5 intents_stringForKey:@"subtitleFormatStringLocID"];
  [(INParameterCombination *)v6 setSubtitleFormatStringLocID:v10];

  v17 = 0;
  v11 = [INCodableLocalizationTable intents_widgetPlistRepresentableInDict:v5 key:@"_localizationTable" error:&v17];

  v12 = v17;
  v13 = v12;
  if (v12)
  {
    if (a4)
    {
      v14 = v12;
      v15 = 0;
      *a4 = v13;
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