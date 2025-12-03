@interface INIntentCodablePhrase
- (BOOL)isEqual:(id)equal;
- (INIntentCodableDescription)_codableDescription;
- (INIntentCodablePhrase)initWithCoder:(id)coder;
- (id)__INCodableDescriptionPhraseIDKey;
- (id)__INCodableDescriptionPhraseKey;
- (id)__INCodableDescriptionPronunciationHintIDKey;
- (id)__INCodableDescriptionPronunciationHintKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedPhraseForLanguage:(id)language;
- (id)localizedPhraseWithLocalizer:(id)localizer;
- (id)localizedPronunciationHintForLanguage:(id)language;
- (id)localizedPronunciationHintWithLocalizer:(id)localizer;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INIntentCodablePhrase

- (INIntentCodableDescription)_codableDescription
{
  WeakRetained = objc_loadWeakRetained(&self->_codableDescription);

  return WeakRetained;
}

- (INIntentCodablePhrase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = INIntentCodablePhrase;
  v5 = [(INIntentCodablePhrase *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"phrase"];
    phrase = v5->_phrase;
    v5->_phrase = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phraseLocID"];
    phraseLocID = v5->_phraseLocID;
    v5->_phraseLocID = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"pronunciationHint"];
    pronunciationHint = v5->_pronunciationHint;
    v5->_pronunciationHint = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pronunciationHintLocID"];
    pronunciationHintLocID = v5->_pronunciationHintLocID;
    v5->_pronunciationHintLocID = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_codableDescription"];
    objc_storeWeak(&v5->_codableDescription, v20);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phrase = [(INIntentCodablePhrase *)self phrase];
  [coderCopy encodeObject:phrase forKey:@"phrase"];

  phraseLocID = [(INIntentCodablePhrase *)self phraseLocID];
  [coderCopy encodeObject:phraseLocID forKey:@"phraseLocID"];

  pronunciationHint = [(INIntentCodablePhrase *)self pronunciationHint];
  [coderCopy encodeObject:pronunciationHint forKey:@"pronunciationHint"];

  pronunciationHintLocID = [(INIntentCodablePhrase *)self pronunciationHintLocID];
  [coderCopy encodeObject:pronunciationHintLocID forKey:@"pronunciationHintLocID"];

  _codableDescription = [(INIntentCodablePhrase *)self _codableDescription];
  [coderCopy encodeConditionalObject:_codableDescription forKey:@"_codableDescription"];
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v24[4] = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  __INCodableDescriptionPhraseKey = [(INIntentCodablePhrase *)self __INCodableDescriptionPhraseKey];
  v23[0] = __INCodableDescriptionPhraseKey;
  null = [(INIntentCodablePhrase *)self localizedPhraseWithLocalizer:localizerCopy];
  v6 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v24[0] = null;
  __INCodableDescriptionPhraseIDKey = [(INIntentCodablePhrase *)self __INCodableDescriptionPhraseIDKey];
  v23[1] = __INCodableDescriptionPhraseIDKey;
  phraseLocID = [(INIntentCodablePhrase *)self phraseLocID];
  null2 = phraseLocID;
  if (!phraseLocID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  __INCodableDescriptionPronunciationHintKey = [(INIntentCodablePhrase *)self __INCodableDescriptionPronunciationHintKey];
  v23[2] = __INCodableDescriptionPronunciationHintKey;
  v22 = localizerCopy;
  v10 = [(INIntentCodablePhrase *)self localizedPronunciationHintWithLocalizer:localizerCopy];
  null3 = v10;
  if (!v10)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  __INCodableDescriptionPronunciationHintIDKey = [(INIntentCodablePhrase *)self __INCodableDescriptionPronunciationHintIDKey];
  v23[3] = __INCodableDescriptionPronunciationHintIDKey;
  pronunciationHintLocID = [(INIntentCodablePhrase *)self pronunciationHintLocID];
  null4 = pronunciationHintLocID;
  if (!pronunciationHintLocID)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:4];
  if (!pronunciationHintLocID)
  {
  }

  if (!v10)
  {
  }

  if (!phraseLocID)
  {
  }

  if (!v6)
  {
  }

  if_dictionaryWithNonEmptyValues = [v15 if_dictionaryWithNonEmptyValues];

  v17 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INIntentCodablePhrase *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  __INCodableDescriptionPhraseKey = [(INIntentCodablePhrase *)self __INCodableDescriptionPhraseKey];
  v6 = [dictionaryCopy objectForKey:__INCodableDescriptionPhraseKey];
  phrase = self->_phrase;
  self->_phrase = v6;

  __INCodableDescriptionPhraseIDKey = [(INIntentCodablePhrase *)self __INCodableDescriptionPhraseIDKey];
  v9 = [dictionaryCopy objectForKey:__INCodableDescriptionPhraseIDKey];
  phraseLocID = self->_phraseLocID;
  self->_phraseLocID = v9;

  __INCodableDescriptionPronunciationHintKey = [(INIntentCodablePhrase *)self __INCodableDescriptionPronunciationHintKey];
  v12 = [dictionaryCopy objectForKey:__INCodableDescriptionPronunciationHintKey];
  pronunciationHint = self->_pronunciationHint;
  self->_pronunciationHint = v12;

  __INCodableDescriptionPronunciationHintIDKey = [(INIntentCodablePhrase *)self __INCodableDescriptionPronunciationHintIDKey];
  v14 = [dictionaryCopy objectForKey:__INCodableDescriptionPronunciationHintIDKey];

  pronunciationHintLocID = self->_pronunciationHintLocID;
  self->_pronunciationHintLocID = v14;
}

- (id)localizedPronunciationHintWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  pronunciationHintLocID = [(INIntentCodablePhrase *)self pronunciationHintLocID];
  pronunciationHint = [(INIntentCodablePhrase *)self pronunciationHint];
  _codableDescription = [(INIntentCodablePhrase *)self _codableDescription];
  _localizationTable = [_codableDescription _localizationTable];
  v9 = INLocalizedStringFromCodable(pronunciationHintLocID, pronunciationHint, _localizationTable, localizerCopy, 0);

  return v9;
}

- (id)localizedPronunciationHintForLanguage:(id)language
{
  v4 = [INStringLocalizer localizerForLanguage:language];
  v5 = [(INIntentCodablePhrase *)self localizedPronunciationHintWithLocalizer:v4];

  return v5;
}

- (id)localizedPhraseWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  phraseLocID = [(INIntentCodablePhrase *)self phraseLocID];
  phrase = [(INIntentCodablePhrase *)self phrase];
  _codableDescription = [(INIntentCodablePhrase *)self _codableDescription];
  _localizationTable = [_codableDescription _localizationTable];
  v9 = INLocalizedStringFromCodable(phraseLocID, phrase, _localizationTable, localizerCopy, 0);

  return v9;
}

- (id)localizedPhraseForLanguage:(id)language
{
  v4 = [INStringLocalizer localizerForLanguage:language];
  v5 = [(INIntentCodablePhrase *)self localizedPhraseWithLocalizer:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    phrase = [(INIntentCodablePhrase *)self phrase];
    phrase2 = [equalCopy phrase];
    v7 = phrase;
    v8 = phrase2;
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

    pronunciationHint = [(INIntentCodablePhrase *)self pronunciationHint];
    pronunciationHint2 = [equalCopy pronunciationHint];
    v12 = pronunciationHint;
    v16 = pronunciationHint2;
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

    phraseLocID = [(INIntentCodablePhrase *)self phraseLocID];
    phraseLocID2 = [equalCopy phraseLocID];
    v18 = phraseLocID;
    v22 = phraseLocID2;
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

    pronunciationHintLocID = [(INIntentCodablePhrase *)self pronunciationHintLocID];
    pronunciationHintLocID2 = [equalCopy pronunciationHintLocID];
    v18 = pronunciationHintLocID;
    v27 = pronunciationHintLocID2;
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
  phrase = [(INIntentCodablePhrase *)self phrase];
  v4 = [phrase hash];
  phraseLocID = [(INIntentCodablePhrase *)self phraseLocID];
  v6 = [phraseLocID hash] ^ v4;
  pronunciationHint = [(INIntentCodablePhrase *)self pronunciationHint];
  v8 = [pronunciationHint hash];
  pronunciationHintLocID = [(INIntentCodablePhrase *)self pronunciationHintLocID];
  v10 = v8 ^ [pronunciationHintLocID hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[INIntentCodablePhrase allocWithZone:?]];
  pronunciationHint = [(INIntentCodablePhrase *)self pronunciationHint];
  [(INIntentCodablePhrase *)v4 setPronunciationHint:pronunciationHint];

  pronunciationHintLocID = [(INIntentCodablePhrase *)self pronunciationHintLocID];
  [(INIntentCodablePhrase *)v4 setPronunciationHintLocID:pronunciationHintLocID];

  phrase = [(INIntentCodablePhrase *)self phrase];
  [(INIntentCodablePhrase *)v4 setPhrase:phrase];

  phraseLocID = [(INIntentCodablePhrase *)self phraseLocID];
  [(INIntentCodablePhrase *)v4 setPhraseLocID:phraseLocID];

  return v4;
}

- (id)__INCodableDescriptionPronunciationHintIDKey
{
  _codableDescription = [(INIntentCodablePhrase *)self _codableDescription];
  __INIntentCodablePhrasePronunciationHintIDKey = [objc_opt_class() __INIntentCodablePhrasePronunciationHintIDKey];

  return __INIntentCodablePhrasePronunciationHintIDKey;
}

- (id)__INCodableDescriptionPronunciationHintKey
{
  _codableDescription = [(INIntentCodablePhrase *)self _codableDescription];
  __INIntentCodablePhrasePronunciationHintKey = [objc_opt_class() __INIntentCodablePhrasePronunciationHintKey];

  return __INIntentCodablePhrasePronunciationHintKey;
}

- (id)__INCodableDescriptionPhraseIDKey
{
  _codableDescription = [(INIntentCodablePhrase *)self _codableDescription];
  __INIntentCodablePhrasePhraseIDKey = [objc_opt_class() __INIntentCodablePhrasePhraseIDKey];

  return __INIntentCodablePhrasePhraseIDKey;
}

- (id)__INCodableDescriptionPhraseKey
{
  _codableDescription = [(INIntentCodablePhrase *)self _codableDescription];
  __INIntentCodablePhrasePhraseKey = [objc_opt_class() __INIntentCodablePhrasePhraseKey];

  return __INIntentCodablePhrasePhraseKey;
}

@end