@interface INCodableAttributeDialog
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableAttribute)_codableAttribute;
- (INCodableAttributeDialog)initWithCoder:(id)a3;
- (INCodableDescription)_codableDescription;
- (id)__INCodableDescriptionFormatStringDictionaryKey;
- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey;
- (id)__INCodableDescriptionFormatStringIDKey;
- (id)__INCodableDescriptionFormatStringKey;
- (id)__INCodableDescriptionFormatStringLanguageCodeKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedDialogWithIntent:(id)a3 tokens:(id)a4;
- (id)localizedDialogWithIntent:(id)a3 tokens:(id)a4 forLanguage:(id)a5;
- (id)localizedDialogWithIntent:(id)a3 tokens:(id)a4 localizer:(id)a5;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableAttributeDialog

- (INCodableAttribute)_codableAttribute
{
  WeakRetained = objc_loadWeakRetained(&self->_codableAttribute);

  return WeakRetained;
}

- (INCodableDescription)_codableDescription
{
  v2 = [(INCodableAttributeDialog *)self _codableAttribute];
  v3 = [v2 _codableDescription];

  return v3;
}

- (INCodableAttributeDialog)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INCodableAttributeDialog;
  v5 = [(INCodableAttributeDialog *)&v15 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"formatString"];
    formatString = v5->_formatString;
    v5->_formatString = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatStringID"];
    formatStringID = v5->_formatStringID;
    v5->_formatStringID = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_codableAttribute"];
    [(INCodableAttributeDialog *)v5 _setCodableAttribute:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INCodableAttributeDialog *)self formatString];
  [v4 encodeObject:v5 forKey:@"formatString"];

  v6 = [(INCodableAttributeDialog *)self formatStringID];
  [v4 encodeObject:v6 forKey:@"formatStringID"];

  v7 = [(INCodableAttributeDialog *)self _codableAttribute];
  [v4 encodeConditionalObject:v7 forKey:@"_codableAttribute"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [(INCodableAttributeDialog *)self formatString];
  v9 = [v8 intents_encodeForPlistRepresentationWithParameters:v6];

  [v7 intents_setPlistSafeObject:v9 forKey:@"formatString"];
  v10 = [(INCodableAttributeDialog *)self formatStringID];
  [v7 intents_setPlistSafeObject:v10 forKey:@"formatStringID"];

  return v7;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v50[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INCodableAttributeDialog *)self _codableAttribute];
  if ([(INCodableAttributeDialog *)self isDefaultDialog])
  {
    v6 = [[INCodableLocalizationTable alloc] initWithBundleIdentifier:@"com.apple.Intents" tableName:@"Localizable"];
  }

  else
  {
    v7 = [v5 _codableDescription];
    v6 = [v7 _localizationTable];
  }

  v8 = [(INCodableAttributeDialog *)self formatStringID];
  v9 = [(INCodableAttributeDialog *)self formatString];
  v46 = 0;
  v10 = INLocalizedStringFromCodable(v8, v9, v6, v4, &v46);
  v11 = v46;

  if ([(INCodableAttributeDialog *)self isDefaultDialog])
  {
    v12 = [v5 propertyName];
    v13 = [v10 stringByReplacingOccurrencesOfString:@"__PARAMETER_NAME__" withString:v12];

    v10 = v13;
  }

  v42 = v11;
  v43 = v6;
  v14 = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringKey];
  v49[0] = v14;
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v5;
  v50[0] = v15;
  v16 = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringIDKey];
  v49[1] = v16;
  v17 = [(INCodableAttributeDialog *)self formatStringID];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v50[1] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v20 = [v19 mutableCopy];

  if (!v17)
  {
  }

  if (!v10)
  {
  }

  v21 = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringLanguageCodeKey];
  v22 = v42;
  [v20 setObject:v42 forKeyedSubscript:v21];

  v23 = [v4 languageCode];
  v24 = [v23 length];

  v25 = v43;
  if (v24 && [v10 length])
  {
    v26 = [(INCodableAttributeDialog *)self formatString];
    v27 = [(INCodableAttributeDialog *)self formatStringID];
    v44 = 0;
    v45 = v26;
    v28 = INStringsDictEntryForKeyInTable(v27, &v45, v43, v4, &v44);
    v29 = v45;

    v40 = v44;
    if ([(INCodableAttributeDialog *)self isDefaultDialog])
    {
      v30 = [v41 propertyName];
      v31 = [v29 stringByReplacingOccurrencesOfString:@"__PARAMETER_NAME__" withString:v30];

      v29 = v31;
    }

    if (v28)
    {
      v32 = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringKey];
      v47[0] = v32;
      v33 = v29;
      if (!v29)
      {
        v33 = [MEMORY[0x1E695DFB0] null];
      }

      v48[0] = v33;
      v34 = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringDictionaryKey];
      v47[1] = v34;
      v48[1] = v28;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      [v20 addEntriesFromDictionary:v35];

      if (!v29)
      {
      }

      v36 = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringDictionaryLanguageCodeKey];
      [v20 setObject:v40 forKeyedSubscript:v36];

      v22 = v42;
      v25 = v43;
    }
  }

  v37 = [v20 if_dictionaryWithNonEmptyValues];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableAttributeDialog *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  formatString = self->_formatString;
  self->_formatString = v6;

  v10 = [(INCodableAttributeDialog *)self __INCodableDescriptionFormatStringIDKey];
  v8 = [v4 objectForKeyedSubscript:v10];

  formatStringID = self->_formatStringID;
  self->_formatStringID = v8;
}

- (id)localizedDialogWithIntent:(id)a3 tokens:(id)a4 localizer:(id)a5
{
  v52[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 backingStore];
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

  v14 = [(INCodableAttributeDialog *)self _codableAttribute];
  v51 = @"displayName";
  v15 = [v14 localizedDisplayNameWithLocalizer:v10];
  v16 = v15;
  v17 = &stru_1F01E0850;
  if (v15)
  {
    v17 = v15;
  }

  v52[0] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v19 = [v18 mutableCopy];

  v20 = [v14 metadata];
  v21 = [v20 _localizedDialogTokensWithLocalizer:v10];

  if (v21)
  {
    [v19 addEntriesFromDictionary:v21];
  }

  if (v9)
  {
    [v19 addEntriesFromDictionary:v9];
  }

  v48 = v21;
  v49 = v19;
  if ([(INCodableAttributeDialog *)self isDefaultDialog])
  {
    v22 = [[INCodableLocalizationTable alloc] initWithBundleIdentifier:@"com.apple.Intents" tableName:@"Localizable"];
  }

  else
  {
    v23 = [v14 _codableDescription];
    v22 = [v23 _localizationTable];
  }

  v24 = [(INCodableAttributeDialog *)self formatString];
  v25 = [(INCodableLocalizationTable *)v22 bundleIdentifier];
  v26 = [v10 bundleWithIdentifier:v25 fileURL:0];

  v47 = v22;
  if (v26)
  {
    v45 = v13;
    v46 = v10;
    v43 = v14;
    v44 = v9;
    v27 = v8;
    v28 = [v8 _type];
    v29 = [(INCodableAttributeDialog *)self formatStringID];
    v30 = [(INCodableAttributeDialog *)self formatString];
    v31 = [(INCodableLocalizationTable *)v22 tableName];
    if (v28 == 2)
    {
      v32 = v27;
      v33 = INLocalizedFormatStringFromCodable(v29, v30, v31, v26, v46, v45, v49, 0, 0);
      v26 = 0;
    }

    else
    {
      v50 = 0;
      v32 = v27;
      v33 = INLocalizedFormatStringFromSlotComposing(v29, v30, v31, v26, v46, v27, v49, &v50);
      v26 = v50;
    }

    v24 = v33;
    v8 = v32;
    v9 = v44;
    v13 = v45;
    v14 = v43;
    v10 = v46;
  }

  if ([(INCodableAttributeDialog *)self isDefaultDialog])
  {
    v34 = [v14 propertyName];
    v35 = [v24 stringByReplacingOccurrencesOfString:@"__PARAMETER_NAME__" withString:v34];

    v24 = v35;
  }

  if ([v8 _type] == 2)
  {
    v36 = v49;
    v37 = INReplaceVariablesInFormatStringFromCodable(v24, v10, v13, v49, 0);
  }

  else
  {
    v38 = [v10 languageCode];
    if ([v38 isEqualToString:v26])
    {
      v39 = v10;
    }

    else
    {
      v39 = [INStringLocalizer localizerForLanguage:v26];
    }

    v40 = v39;

    v37 = INReplaceVariablesInFormatStringFromSlotComposing(v24, v40, v8);

    v36 = v49;
  }

  v41 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)localizedDialogWithIntent:(id)a3 tokens:(id)a4 forLanguage:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [INStringLocalizer localizerForLanguage:a5];
  v11 = [(INCodableAttributeDialog *)self localizedDialogWithIntent:v9 tokens:v8 localizer:v10];

  return v11;
}

- (id)localizedDialogWithIntent:(id)a3 tokens:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v9 = [(INCodableAttributeDialog *)self localizedDialogWithIntent:v7 tokens:v6 localizer:v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v11.receiver = self, v11.super_class = INCodableAttributeDialog, -[INCodableAttributeDialog isEqual:](&v11, sel_isEqual_, v4)))
  {
    v5 = [(INCodableAttributeDialog *)self formatStringID];
    v6 = [v4 formatStringID];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(INCodableAttributeDialog *)self formatString];
      v8 = [v4 formatString];
      v9 = [v7 isEqualToString:v8];
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
  v3 = [(INCodableAttributeDialog *)self formatString];
  v4 = [v3 hash];
  v5 = [(INCodableAttributeDialog *)self formatStringID];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(INCodableAttributeDialog *)self formatString];
  [v4 setFormatString:v5];

  v6 = [(INCodableAttributeDialog *)self formatStringID];
  [v4 setFormatStringID:v6];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(a1);
  v7 = [v5 intents_stringForKey:@"formatString"];
  v8 = v6[3];
  v6[3] = v7;

  v9 = [v5 intents_stringForKey:@"formatStringID"];

  v10 = v6[4];
  v6[4] = v9;

  return v6;
}

- (id)__INCodableDescriptionFormatStringLanguageCodeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDialogFormatStringLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringIDKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDialogFormatStringIDKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDialogFormatStringDictionaryLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringDictionaryKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDialogFormatStringDictionaryKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeDialogFormatStringKey];

  return v3;
}

@end