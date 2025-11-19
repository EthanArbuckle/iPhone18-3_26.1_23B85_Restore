@interface INIntentResponseCodableCode
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INIntentResponseCodableCode)initWithCoder:(id)a3;
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
- (id)_parameterNamesFromString:(id)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INIntentResponseCodableCode

- (id)__INCodableDescriptionNameKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeNameKey];

  return v3;
}

- (INIntentResponseCodableDescription)_codableDescription
{
  WeakRetained = objc_loadWeakRetained(&self->__codableDescription);

  return WeakRetained;
}

- (id)__INCodableDescriptionFormatStringKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeFormatStringKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringIDKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeFormatStringIDKey];

  return v3;
}

- (id)__INCodableDescriptionConciseFormatStringKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringKey];

  return v3;
}

- (id)__INCodableDescriptionConciseFormatStringIDKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringIDKey];

  return v3;
}

- (id)__INCodableDescriptionSuccessKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeSuccessKey];

  return v3;
}

- (INIntentResponseCodableCode)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = INIntentResponseCodableCode;
  v5 = [(INIntentResponseCodableCode *)&v18 init];
  if (v5)
  {
    -[INIntentResponseCodableCode setValue:](v5, "setValue:", [v4 decodeIntegerForKey:@"value"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    [(INIntentResponseCodableCode *)v5 setName:v6];

    -[INIntentResponseCodableCode setSuccess:](v5, "setSuccess:", [v4 decodeBoolForKey:@"success"]);
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"formatString"];
    [(INIntentResponseCodableCode *)v5 setFormatString:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"formatStringLocID"];
    [(INIntentResponseCodableCode *)v5 setFormatStringLocID:v11];

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"conciseFormatString"];
    [(INIntentResponseCodableCode *)v5 setConciseFormatString:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conciseFormatStringLocID"];
    [(INIntentResponseCodableCode *)v5 setConciseFormatStringLocID:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  value = self->_value;
  v5 = a3;
  [v5 encodeInteger:value forKey:@"value"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeBool:self->_success forKey:@"success"];
  [v5 encodeObject:self->_formatString forKey:@"formatString"];
  [v5 encodeObject:self->_formatStringLocID forKey:@"formatStringLocID"];
  [v5 encodeObject:self->_conciseFormatString forKey:@"conciseFormatString"];
  [v5 encodeObject:self->_conciseFormatStringLocID forKey:@"conciseFormatStringLocID"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  [v7 intents_setIntegerIfNonZero:self->_value forKey:@"value"];
  [v7 intents_setPlistSafeObject:self->_name forKey:@"name"];
  [v7 intents_setBoolIfTrue:self->_success forKey:@"success"];
  v8 = [(NSString *)self->_formatString intents_encodeForPlistRepresentationWithParameters:v6];
  [v7 intents_setPlistSafeObject:v8 forKey:@"formatString"];

  [v7 intents_setPlistSafeObject:self->_formatStringLocID forKey:@"formatStringLocID"];
  v9 = [(NSString *)self->_conciseFormatString intents_encodeForPlistRepresentationWithParameters:v6];

  [v7 intents_setPlistSafeObject:v9 forKey:@"conciseFormatString"];
  [v7 intents_setPlistSafeObject:self->_conciseFormatStringLocID forKey:@"conciseFormatStringLocID"];

  return v7;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v86[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INIntentResponseCodableCode *)self _codableDescription];
  v6 = [(INIntentResponseCodableCode *)self formatStringLocID];
  v7 = [(INIntentResponseCodableCode *)self formatString];
  v8 = [v5 _localizationTable];
  v80 = 0;
  v9 = INLocalizedStringFromCodable(v6, v7, v8, v4, &v80);
  v10 = v80;

  v11 = [(INIntentResponseCodableCode *)self conciseFormatStringLocID];
  v12 = [(INIntentResponseCodableCode *)self conciseFormatString];
  v13 = [v5 _localizationTable];
  v79 = 0;
  v74 = INLocalizedStringFromCodable(v11, v12, v13, v4, &v79);
  v72 = v79;

  v67 = [(INIntentResponseCodableCode *)self __INCodableDescriptionNameKey];
  v85[0] = v67;
  v14 = [(INIntentResponseCodableCode *)self name];
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = v14;
  v86[0] = v14;
  v65 = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringKey];
  v85[1] = v65;
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = v4;
  v61 = v16;
  v86[1] = v16;
  v64 = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringIDKey];
  v85[2] = v64;
  v17 = [(INIntentResponseCodableCode *)self formatStringLocID];
  v18 = v17;
  if (!v17)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = v9;
  v60 = v17;
  v86[2] = v17;
  v63 = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringKey];
  v85[3] = v63;
  v19 = v74;
  if (!v74)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = v15;
  v70 = v10;
  v71 = v5;
  v86[3] = v19;
  v20 = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringIDKey];
  v85[4] = v20;
  v21 = [(INIntentResponseCodableCode *)self conciseFormatStringLocID];
  v22 = v21;
  if (!v21)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v86[4] = v22;
  v23 = [(INIntentResponseCodableCode *)self __INCodableDescriptionSuccessKey];
  v85[5] = v23;
  v24 = [MEMORY[0x1E696AD98] numberWithBool:{-[INIntentResponseCodableCode isSuccess](self, "isSuccess")}];
  v25 = v24;
  if (!v24)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v86[5] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:v85 count:6];
  v73 = [v26 mutableCopy];

  if (!v24)
  {
  }

  if (!v21)
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

  v31 = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringLanguageCodeKey];
  [v73 setObject:v70 forKeyedSubscript:v31];

  v32 = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringLanguageCodeKey];
  [v73 setObject:v72 forKeyedSubscript:v32];

  v33 = [v68 languageCode];
  v34 = [v33 length];

  if (v34)
  {
    if ([v69 length])
    {
      v35 = [(INIntentResponseCodableCode *)self formatString];
      v36 = [(INIntentResponseCodableCode *)self formatStringLocID];
      v78 = v35;
      v37 = [v71 _localizationTable];
      v77 = 0;
      v38 = INStringsDictEntryForKeyInTable(v36, &v78, v37, v68, &v77);
      v39 = v78;

      v40 = v77;
      if (v38)
      {
        v41 = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringKey];
        v83[0] = v41;
        v42 = v39;
        if (!v39)
        {
          v42 = [MEMORY[0x1E695DFB0] null];
        }

        v84[0] = v42;
        v43 = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringDictionaryKey];
        v83[1] = v43;
        v84[1] = v38;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:v83 count:2];
        [v73 addEntriesFromDictionary:v44];

        if (!v39)
        {
        }

        v45 = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringDictionaryLanguageCodeKey];
        [v73 setObject:v40 forKeyedSubscript:v45];

        v30 = v69;
        v27 = v70;
        v28 = v71;
      }

      v29 = v73;
    }

    if ([v74 length])
    {
      v46 = [(INIntentResponseCodableCode *)self conciseFormatString];
      v47 = [(INIntentResponseCodableCode *)self conciseFormatStringLocID];
      v76 = v46;
      v48 = [v28 _localizationTable];
      v75 = 0;
      v49 = INStringsDictEntryForKeyInTable(v47, &v76, v48, v68, &v75);
      v50 = v76;

      v51 = v75;
      if (v49)
      {
        v52 = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringKey];
        v81[0] = v52;
        v53 = v50;
        if (!v50)
        {
          v53 = [MEMORY[0x1E695DFB0] null];
        }

        v82[0] = v53;
        v54 = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringDictionaryKey];
        v81[1] = v54;
        v82[1] = v49;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
        [v73 addEntriesFromDictionary:v55];

        if (!v50)
        {
        }

        v56 = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringDictionaryLanguageCodeKey];
        [v73 setObject:v51 forKeyedSubscript:v56];

        v30 = v69;
        v27 = v70;
        v28 = v71;
      }

      v29 = v73;
    }
  }

  v57 = [v29 if_dictionaryWithNonEmptyValues];

  v58 = *MEMORY[0x1E69E9840];

  return v57;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INIntentResponseCodableCode *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(INIntentResponseCodableCode *)self __INCodableDescriptionNameKey];
  v6 = [v4 objectForKeyedSubscript:v5];
  [(INIntentResponseCodableCode *)self setName:v6];

  v7 = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringKey];
  v8 = [v4 objectForKeyedSubscript:v7];
  [(INIntentResponseCodableCode *)self setFormatString:v8];

  v9 = [(INIntentResponseCodableCode *)self __INCodableDescriptionFormatStringIDKey];
  v10 = [v4 objectForKeyedSubscript:v9];
  [(INIntentResponseCodableCode *)self setFormatStringLocID:v10];

  v11 = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringKey];
  v12 = [v4 objectForKeyedSubscript:v11];
  [(INIntentResponseCodableCode *)self setConciseFormatString:v12];

  v13 = [(INIntentResponseCodableCode *)self __INCodableDescriptionConciseFormatStringIDKey];
  v14 = [v4 objectForKeyedSubscript:v13];
  [(INIntentResponseCodableCode *)self setConciseFormatStringLocID:v14];

  v15 = [(INIntentResponseCodableCode *)self __INCodableDescriptionSuccessKey];
  v16 = [v4 objectForKeyedSubscript:v15];

  -[INIntentResponseCodableCode setSuccess:](self, "setSuccess:", [v16 BOOLValue]);
  v17 = [(INIntentResponseCodableCode *)self name];
  v18 = [v17 isEqualToString:@"failure"];

  if ((v18 & 1) != 0 || (-[INIntentResponseCodableCode name](self, "name"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 isEqualToString:@"success"], v19, v20))
  {

    [(INIntentResponseCodableCode *)self setSuccess:v18 ^ 1u];
  }
}

- (id)_parameterNamesFromString:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 length])
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [MEMORY[0x1E696AE70] _intents_sharedFormatRegularExpression];
    v6 = [v5 matchesInString:v3 options:0 range:{0, objc_msgSend(v3, "length")}];

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
          v15 = [v3 substringWithRange:{v13, v14}];
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
  v8 = [v7 allObjects];

  return v8;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(INIntentResponseCodableCode);
  -[INIntentResponseCodableCode setValue:](v5, "setValue:", [v4 intents_intForKey:@"value"]);
  v6 = [v4 intents_stringForKey:@"name"];
  [(INIntentResponseCodableCode *)v5 setName:v6];

  -[INIntentResponseCodableCode setSuccess:](v5, "setSuccess:", [v4 intents_BOOLForKey:@"success"]);
  v7 = [v4 intents_stringForKey:@"formatString"];
  [(INIntentResponseCodableCode *)v5 setFormatString:v7];

  v8 = [v4 intents_stringForKey:@"formatStringLocID"];
  [(INIntentResponseCodableCode *)v5 setFormatStringLocID:v8];

  v9 = [v4 intents_stringForKey:@"conciseFormatString"];
  [(INIntentResponseCodableCode *)v5 setConciseFormatString:v9];

  v10 = [v4 intents_stringForKey:@"conciseFormatStringLocID"];

  [(INIntentResponseCodableCode *)v5 setConciseFormatStringLocID:v10];

  return v5;
}

- (id)__INCodableDescriptionFormatStringLanguageCodeKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeFormatStringLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeFormatStringDictionaryLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringDictionaryKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeFormatStringDictionaryKey];

  return v3;
}

- (id)__INCodableDescriptionConciseFormatStringLanguageCodeKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionConciseFormatStringDictionaryLanguageCodeKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringDictionaryLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionConciseFormatStringDictionaryKey
{
  v2 = [(INIntentResponseCodableCode *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentResponseCodableCodeConciseFormatStringDictionaryKey];

  return v3;
}

@end