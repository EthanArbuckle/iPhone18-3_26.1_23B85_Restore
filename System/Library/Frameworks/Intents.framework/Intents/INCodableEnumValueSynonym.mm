@interface INCodableEnumValueSynonym
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableEnum)_codableEnum;
- (INCodableEnumValue)_codableEnumValue;
- (INCodableEnumValueSynonym)initWithCoder:(id)a3;
- (NSString)localizedPronunciationHint;
- (NSString)localizedSynonym;
- (id)__INCodableEnumPronunciationHintIDKey;
- (id)__INCodableEnumPronunciationHintKey;
- (id)__INCodableEnumSynonymIDKey;
- (id)__INCodableEnumSynonymKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedPronunciationHintForLanguage:(id)a3;
- (id)localizedPronunciationHintWithLocalizer:(id)a3;
- (id)localizedSynonymForLanguage:(id)a3;
- (id)localizedSynonymWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableEnumValueSynonym

- (INCodableEnumValue)_codableEnumValue
{
  WeakRetained = objc_loadWeakRetained(&self->_codableEnumValue);

  return WeakRetained;
}

- (INCodableEnumValueSynonym)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = INCodableEnumValueSynonym;
  v5 = [(INCodableEnumValueSynonym *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"synonym"];
    [(INCodableEnumValueSynonym *)v5 setSynonym:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"synonymLocID"];
    [(INCodableEnumValueSynonym *)v5 setSynonymLocID:v10];

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"pronunciationHint"];
    [(INCodableEnumValueSynonym *)v5 setPronunciationHint:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pronunciationHintLocID"];
    [(INCodableEnumValueSynonym *)v5 setPronunciationHintLocID:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_codableEnumValue"];
    [(INCodableEnumValueSynonym *)v5 _setCodableEnumValue:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INCodableEnumValueSynonym *)self synonym];
  [v4 encodeObject:v5 forKey:@"synonym"];

  v6 = [(INCodableEnumValueSynonym *)self synonymLocID];
  [v4 encodeObject:v6 forKey:@"synonymLocID"];

  v7 = [(INCodableEnumValueSynonym *)self pronunciationHint];
  [v4 encodeObject:v7 forKey:@"pronunciationHint"];

  v8 = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  [v4 encodeObject:v8 forKey:@"pronunciationHintLocID"];

  v9 = [(INCodableEnumValueSynonym *)self _codableEnumValue];
  [v4 encodeConditionalObject:v9 forKey:@"_codableEnumValue"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [(INCodableEnumValueSynonym *)self synonym];
  v9 = [v8 intents_encodeForPlistRepresentationWithParameters:v6];
  [v7 intents_setPlistSafeObject:v9 forKey:@"synonym"];

  v10 = [(INCodableEnumValueSynonym *)self synonymLocID];
  [v7 intents_setPlistSafeObject:v10 forKey:@"synonymLocID"];

  v11 = [(INCodableEnumValueSynonym *)self pronunciationHint];
  v12 = [v11 intents_encodeForPlistRepresentationWithParameters:v6];

  [v7 intents_setPlistSafeObject:v12 forKey:@"pronunciationHint"];
  v13 = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  [v7 intents_setPlistSafeObject:v13 forKey:@"pronunciationHintLocID"];

  v14 = [v7 copy];

  return v14;
}

- (INCodableEnum)_codableEnum
{
  v2 = [(INCodableEnumValueSynonym *)self _codableEnumValue];
  v3 = [v2 _codableEnum];

  return v3;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = [(INCodableEnumValueSynonym *)self __INCodableEnumSynonymKey];
  v23[0] = v21;
  v5 = [(INCodableEnumValueSynonym *)self localizedSynonymWithLocalizer:v4];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v5;
  v24[0] = v5;
  v20 = [(INCodableEnumValueSynonym *)self __INCodableEnumSynonymIDKey];
  v23[1] = v20;
  v7 = [(INCodableEnumValueSynonym *)self synonymLocID];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = v8;
  v9 = [(INCodableEnumValueSynonym *)self __INCodableEnumPronunciationHintKey];
  v23[2] = v9;
  v22 = v4;
  v10 = [(INCodableEnumValueSynonym *)self localizedPronunciationHintWithLocalizer:v4];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = v11;
  v12 = [(INCodableEnumValueSynonym *)self __INCodableEnumPronunciationHintIDKey];
  v23[3] = v12;
  v13 = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  v14 = v13;
  if (!v13)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  if (!v13)
  {
  }

  if (!v10)
  {
  }

  if (!v7)
  {
  }

  if (!v6)
  {
  }

  v16 = [v15 if_dictionaryWithNonEmptyValues];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValueSynonym *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(INCodableEnumValueSynonym *)self __INCodableEnumSynonymKey];
  v6 = [v4 objectForKey:v5];
  [(INCodableEnumValueSynonym *)self setSynonym:v6];

  v7 = [(INCodableEnumValueSynonym *)self __INCodableEnumSynonymIDKey];
  v8 = [v4 objectForKey:v7];
  [(INCodableEnumValueSynonym *)self setSynonymLocID:v8];

  v9 = [(INCodableEnumValueSynonym *)self __INCodableEnumPronunciationHintKey];
  v10 = [v4 objectForKey:v9];
  [(INCodableEnumValueSynonym *)self setPronunciationHint:v10];

  v12 = [(INCodableEnumValueSynonym *)self __INCodableEnumPronunciationHintIDKey];
  v11 = [v4 objectForKey:v12];

  [(INCodableEnumValueSynonym *)self setPronunciationHintLocID:v11];
}

- (id)localizedPronunciationHintWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableEnumValueSynonym *)self _codableEnumValue];
  v6 = [v5 _codableEnum];
  v7 = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  v8 = [(INCodableEnumValueSynonym *)self pronunciationHint];
  v9 = [v6 _localizationTable];
  v10 = INLocalizedStringFromCodable(v7, v8, v9, v4, 0);

  return v10;
}

- (id)localizedPronunciationHintForLanguage:(id)a3
{
  v4 = [INStringLocalizer localizerForLanguage:a3];
  v5 = [(INCodableEnumValueSynonym *)self localizedPronunciationHintWithLocalizer:v4];

  return v5;
}

- (NSString)localizedPronunciationHint
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValueSynonym *)self localizedPronunciationHintWithLocalizer:v3];

  return v4;
}

- (id)localizedSynonymWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableEnumValueSynonym *)self _codableEnumValue];
  v6 = [v5 _codableEnum];
  v7 = [(INCodableEnumValueSynonym *)self synonymLocID];
  v8 = [(INCodableEnumValueSynonym *)self synonym];
  v9 = [v6 _localizationTable];
  v10 = INLocalizedStringFromCodable(v7, v8, v9, v4, 0);

  return v10;
}

- (id)localizedSynonymForLanguage:(id)a3
{
  v4 = [INStringLocalizer localizerForLanguage:a3];
  v5 = [(INCodableEnumValueSynonym *)self localizedSynonymWithLocalizer:v4];

  return v5;
}

- (NSString)localizedSynonym
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnumValueSynonym *)self localizedSynonymWithLocalizer:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(INCodableEnumValueSynonym *)self synonym];
    v6 = [v4 synonym];
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      v10 = 0;
      v11 = v8;
      v12 = v7;
      if (!v7 || !v8)
      {
        goto LABEL_29;
      }

      v13 = [v7 isEqualToString:v8];

      if (!v13)
      {
        v10 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    v14 = [(INCodableEnumValueSynonym *)self pronunciationHint];
    v15 = [v4 pronunciationHint];
    v12 = v14;
    v16 = v15;
    v11 = v16;
    if (v12 == v16)
    {
    }

    else
    {
      v10 = 0;
      v17 = v16;
      v18 = v12;
      if (!v12 || !v16)
      {
        goto LABEL_28;
      }

      v19 = [v12 isEqualToString:v16];

      if (!v19)
      {
        v10 = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    v20 = [(INCodableEnumValueSynonym *)self synonymLocID];
    v21 = [v4 synonymLocID];
    v18 = v20;
    v22 = v21;
    v17 = v22;
    v29 = v18;
    if (v18 == v22)
    {
    }

    else
    {
      v10 = 0;
      v23 = v22;
      if (!v18 || !v22)
      {
LABEL_27:

        v18 = v29;
        goto LABEL_28;
      }

      v24 = [v18 isEqualToString:v22];

      if (!v24)
      {
        v10 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v25 = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
    v26 = [v4 pronunciationHintLocID];
    v18 = v25;
    v27 = v26;
    v23 = v27;
    if (v18 == v27)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v18 && v27)
      {
        v10 = [v18 isEqualToString:v27];
      }
    }

    goto LABEL_27;
  }

  v10 = 0;
LABEL_31:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(INCodableEnumValueSynonym *)self synonym];
  v4 = [v3 hash];
  v5 = [(INCodableEnumValueSynonym *)self synonymLocID];
  v6 = [v5 hash] ^ v4;
  v7 = [(INCodableEnumValueSynonym *)self pronunciationHint];
  v8 = [v7 hash];
  v9 = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[INCodableEnumValueSynonym allocWithZone:?]];
  v5 = [(INCodableEnumValueSynonym *)self pronunciationHint];
  [(INCodableEnumValueSynonym *)v4 setPronunciationHint:v5];

  v6 = [(INCodableEnumValueSynonym *)self pronunciationHintLocID];
  [(INCodableEnumValueSynonym *)v4 setPronunciationHintLocID:v6];

  v7 = [(INCodableEnumValueSynonym *)self synonym];
  [(INCodableEnumValueSynonym *)v4 setSynonym:v7];

  v8 = [(INCodableEnumValueSynonym *)self synonymLocID];
  [(INCodableEnumValueSynonym *)v4 setSynonymLocID:v8];

  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(INCodableEnumValueSynonym);
  v6 = [v4 intents_stringForKey:@"synonymLocID"];
  [(INCodableEnumValueSynonym *)v5 setSynonymLocID:v6];

  v7 = [v4 intents_stringForKey:@"pronunciationHintLocID"];
  [(INCodableEnumValueSynonym *)v5 setPronunciationHintLocID:v7];

  v8 = [v4 intents_stringForKey:@"synonym"];
  [(INCodableEnumValueSynonym *)v5 setSynonym:v8];

  v9 = [v4 intents_stringForKey:@"pronunciationHint"];

  [(INCodableEnumValueSynonym *)v5 setPronunciationHint:v9];

  return v5;
}

- (id)__INCodableEnumSynonymIDKey
{
  v2 = [(INCodableEnumValueSynonym *)self _codableEnum];
  v3 = [objc_opt_class() __INCodableEnumValueSynonymSynonymIDKey];

  return v3;
}

- (id)__INCodableEnumSynonymKey
{
  v2 = [(INCodableEnumValueSynonym *)self _codableEnum];
  v3 = [objc_opt_class() __INCodableEnumValueSynonymSynonymKey];

  return v3;
}

- (id)__INCodableEnumPronunciationHintIDKey
{
  v2 = [(INCodableEnumValueSynonym *)self _codableEnum];
  v3 = [objc_opt_class() __INCodableEnumValueSynonymPronunciationHintIDKey];

  return v3;
}

- (id)__INCodableEnumPronunciationHintKey
{
  v2 = [(INCodableEnumValueSynonym *)self _codableEnum];
  v3 = [objc_opt_class() __INCodableEnumValueSynonymPronunciationHintKey];

  return v3;
}

@end