@interface INIntentCodablePhrase
- (BOOL)isEqual:(id)a3;
- (INIntentCodableDescription)_codableDescription;
- (INIntentCodablePhrase)initWithCoder:(id)a3;
- (id)__INCodableDescriptionPhraseIDKey;
- (id)__INCodableDescriptionPhraseKey;
- (id)__INCodableDescriptionPronunciationHintIDKey;
- (id)__INCodableDescriptionPronunciationHintKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedPhraseForLanguage:(id)a3;
- (id)localizedPhraseWithLocalizer:(id)a3;
- (id)localizedPronunciationHintForLanguage:(id)a3;
- (id)localizedPronunciationHintWithLocalizer:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INIntentCodablePhrase

- (INIntentCodableDescription)_codableDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_codableDescription);

  return WeakRetained;
}

- (INIntentCodablePhrase)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = INIntentCodablePhrase;
  v5 = [(INIntentCodablePhrase *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"phrase"];
    phrase = v5->_phrase;
    v5->_phrase = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phraseLocID"];
    phraseLocID = v5->_phraseLocID;
    v5->_phraseLocID = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"pronunciationHint"];
    pronunciationHint = v5->_pronunciationHint;
    v5->_pronunciationHint = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pronunciationHintLocID"];
    pronunciationHintLocID = v5->_pronunciationHintLocID;
    v5->_pronunciationHintLocID = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_codableDescription"];
    objc_storeWeak(&v5->_codableDescription, v20);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(INIntentCodablePhrase *)self phrase];
  [v4 encodeObject:v5 forKey:@"phrase"];

  v6 = [(INIntentCodablePhrase *)self phraseLocID];
  [v4 encodeObject:v6 forKey:@"phraseLocID"];

  v7 = [(INIntentCodablePhrase *)self pronunciationHint];
  [v4 encodeObject:v7 forKey:@"pronunciationHint"];

  v8 = [(INIntentCodablePhrase *)self pronunciationHintLocID];
  [v4 encodeObject:v8 forKey:@"pronunciationHintLocID"];

  v9 = [(INIntentCodablePhrase *)self _codableDescription];
  [v4 encodeConditionalObject:v9 forKey:@"_codableDescription"];
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21 = [(INIntentCodablePhrase *)self __INCodableDescriptionPhraseKey];
  v23[0] = v21;
  v5 = [(INIntentCodablePhrase *)self localizedPhraseWithLocalizer:v4];
  v6 = v5;
  if (!v5)
  {
    v5 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v5;
  v24[0] = v5;
  v20 = [(INIntentCodablePhrase *)self __INCodableDescriptionPhraseIDKey];
  v23[1] = v20;
  v7 = [(INIntentCodablePhrase *)self phraseLocID];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = v8;
  v9 = [(INIntentCodablePhrase *)self __INCodableDescriptionPronunciationHintKey];
  v23[2] = v9;
  v22 = v4;
  v10 = [(INIntentCodablePhrase *)self localizedPronunciationHintWithLocalizer:v4];
  v11 = v10;
  if (!v10)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = v11;
  v12 = [(INIntentCodablePhrase *)self __INCodableDescriptionPronunciationHintIDKey];
  v23[3] = v12;
  v13 = [(INIntentCodablePhrase *)self pronunciationHintLocID];
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
  v4 = [(INIntentCodablePhrase *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(INIntentCodablePhrase *)self __INCodableDescriptionPhraseKey];
  v6 = [v4 objectForKey:v5];
  phrase = self->_phrase;
  self->_phrase = v6;

  v8 = [(INIntentCodablePhrase *)self __INCodableDescriptionPhraseIDKey];
  v9 = [v4 objectForKey:v8];
  phraseLocID = self->_phraseLocID;
  self->_phraseLocID = v9;

  v11 = [(INIntentCodablePhrase *)self __INCodableDescriptionPronunciationHintKey];
  v12 = [v4 objectForKey:v11];
  pronunciationHint = self->_pronunciationHint;
  self->_pronunciationHint = v12;

  v16 = [(INIntentCodablePhrase *)self __INCodableDescriptionPronunciationHintIDKey];
  v14 = [v4 objectForKey:v16];

  pronunciationHintLocID = self->_pronunciationHintLocID;
  self->_pronunciationHintLocID = v14;
}

- (id)localizedPronunciationHintWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INIntentCodablePhrase *)self pronunciationHintLocID];
  v6 = [(INIntentCodablePhrase *)self pronunciationHint];
  v7 = [(INIntentCodablePhrase *)self _codableDescription];
  v8 = [v7 _localizationTable];
  v9 = INLocalizedStringFromCodable(v5, v6, v8, v4, 0);

  return v9;
}

- (id)localizedPronunciationHintForLanguage:(id)a3
{
  v4 = [INStringLocalizer localizerForLanguage:a3];
  v5 = [(INIntentCodablePhrase *)self localizedPronunciationHintWithLocalizer:v4];

  return v5;
}

- (id)localizedPhraseWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INIntentCodablePhrase *)self phraseLocID];
  v6 = [(INIntentCodablePhrase *)self phrase];
  v7 = [(INIntentCodablePhrase *)self _codableDescription];
  v8 = [v7 _localizationTable];
  v9 = INLocalizedStringFromCodable(v5, v6, v8, v4, 0);

  return v9;
}

- (id)localizedPhraseForLanguage:(id)a3
{
  v4 = [INStringLocalizer localizerForLanguage:a3];
  v5 = [(INIntentCodablePhrase *)self localizedPhraseWithLocalizer:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(INIntentCodablePhrase *)self phrase];
    v6 = [v4 phrase];
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

    v14 = [(INIntentCodablePhrase *)self pronunciationHint];
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

    v20 = [(INIntentCodablePhrase *)self phraseLocID];
    v21 = [v4 phraseLocID];
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

    v25 = [(INIntentCodablePhrase *)self pronunciationHintLocID];
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
  v3 = [(INIntentCodablePhrase *)self phrase];
  v4 = [v3 hash];
  v5 = [(INIntentCodablePhrase *)self phraseLocID];
  v6 = [v5 hash] ^ v4;
  v7 = [(INIntentCodablePhrase *)self pronunciationHint];
  v8 = [v7 hash];
  v9 = [(INIntentCodablePhrase *)self pronunciationHintLocID];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[INIntentCodablePhrase allocWithZone:?]];
  v5 = [(INIntentCodablePhrase *)self pronunciationHint];
  [(INIntentCodablePhrase *)v4 setPronunciationHint:v5];

  v6 = [(INIntentCodablePhrase *)self pronunciationHintLocID];
  [(INIntentCodablePhrase *)v4 setPronunciationHintLocID:v6];

  v7 = [(INIntentCodablePhrase *)self phrase];
  [(INIntentCodablePhrase *)v4 setPhrase:v7];

  v8 = [(INIntentCodablePhrase *)self phraseLocID];
  [(INIntentCodablePhrase *)v4 setPhraseLocID:v8];

  return v4;
}

- (id)__INCodableDescriptionPronunciationHintIDKey
{
  v2 = [(INIntentCodablePhrase *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentCodablePhrasePronunciationHintIDKey];

  return v3;
}

- (id)__INCodableDescriptionPronunciationHintKey
{
  v2 = [(INIntentCodablePhrase *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentCodablePhrasePronunciationHintKey];

  return v3;
}

- (id)__INCodableDescriptionPhraseIDKey
{
  v2 = [(INIntentCodablePhrase *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentCodablePhrasePhraseIDKey];

  return v3;
}

- (id)__INCodableDescriptionPhraseKey
{
  v2 = [(INIntentCodablePhrase *)self _codableDescription];
  v3 = [objc_opt_class() __INIntentCodablePhrasePhraseKey];

  return v3;
}

@end