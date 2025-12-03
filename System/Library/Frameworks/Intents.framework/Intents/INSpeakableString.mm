@interface INSpeakableString
- (BOOL)isEqual:(id)equal;
- (INSpeakableString)initWithCoder:(id)coder;
- (INSpeakableString)initWithVocabularyIdentifier:(NSString *)vocabularyIdentifier spokenPhrase:(NSString *)spokenPhrase pronunciationHint:(NSString *)pronunciationHint;
- (NSString)description;
- (id)_effectiveNSStringValue;
- (id)_initWithVocabularyIdentifier:(id)identifier spokenPhrase:(id)phrase pronunciationHint:(id)hint alternativeMatches:(id)matches;
- (id)_intents_localizedCopyWithLocalizer:(id)localizer;
- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (id)spokenPhrases;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INSpeakableString

- (id)_intents_localizedCopyWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  v5 = objc_alloc(objc_opt_class());
  vocabularyIdentifier = [(INSpeakableString *)self vocabularyIdentifier];
  spokenPhrase = [(INSpeakableString *)self spokenPhrase];
  languageCode = [localizerCopy languageCode];

  v9 = [spokenPhrase localizeForLanguage:languageCode];
  pronunciationHint = [(INSpeakableString *)self pronunciationHint];
  v11 = [v5 initWithVocabularyIdentifier:vocabularyIdentifier spokenPhrase:v9 pronunciationHint:pronunciationHint];

  return v11;
}

- (id)_intents_readableTitleWithLocalizer:(id)localizer metadata:(id)metadata
{
  localizerCopy = localizer;
  spokenPhrase = [(INSpeakableString *)self spokenPhrase];
  languageCode = [localizerCopy languageCode];

  v8 = [spokenPhrase localizeForLanguage:languageCode];

  return v8;
}

- (id)spokenPhrases
{
  v6[1] = *MEMORY[0x1E69E9840];
  spokenPhrase = [(INSpeakableString *)self spokenPhrase];
  v6[0] = spokenPhrase;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSString)description
{
  spokenPhrase = self->_spokenPhrase;
  if (!spokenPhrase)
  {
    spokenPhrase = self->_vocabularyIdentifier;
  }

  return spokenPhrase;
}

- (void)encodeWithCoder:(id)coder
{
  vocabularyIdentifier = self->_vocabularyIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:vocabularyIdentifier forKey:@"vocabularyIdentifier"];
  [coderCopy encodeObject:self->_spokenPhrase forKey:@"spokenPhrase"];
  [coderCopy encodeObject:self->_pronunciationHint forKey:@"pronunciationHint"];
}

- (INSpeakableString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vocabularyIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"spokenPhrase"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"pronunciationHint"];

  v14 = [(INSpeakableString *)self initWithVocabularyIdentifier:v5 spokenPhrase:v9 pronunciationHint:v13];
  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  vocabularyIdentifier = self->_vocabularyIdentifier;
  v6 = self->_spokenPhrase;
  v7 = vocabularyIdentifier;
  v8 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithVocabularyIdentifier:spokenPhrase:pronunciationHint:", v7, v6, self->_pronunciationHint}];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    vocabularyIdentifier = self->_vocabularyIdentifier;
    v12 = 0;
    if (vocabularyIdentifier == v5[3] || ([v5 vocabularyIdentifier], v8 = objc_claimAutoreleasedReturnValue(), v9 = -[NSString isEqual:](vocabularyIdentifier, "isEqual:", v8), v8, v9))
    {
      spokenPhrase = self->_spokenPhrase;
      if (spokenPhrase == v6[1] || [(NSString *)spokenPhrase isEqual:?])
      {
        pronunciationHint = self->_pronunciationHint;
        if (pronunciationHint == v6[2] || [(NSString *)pronunciationHint isEqual:?])
        {
          v12 = 1;
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  *(&v3 + 1) = [(NSString *)self->_vocabularyIdentifier hash];
  *&v3 = [(NSString *)self->_vocabularyIdentifier hash];
  return [(NSString *)self->_spokenPhrase hash]^ (v3 >> 32);
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  _effectiveNSStringValue = [(INSpeakableString *)self _effectiveNSStringValue];
  LOWORD(index) = [_effectiveNSStringValue characterAtIndex:index];

  return index;
}

- (unint64_t)length
{
  _effectiveNSStringValue = [(INSpeakableString *)self _effectiveNSStringValue];
  v3 = [_effectiveNSStringValue length];

  return v3;
}

- (id)_effectiveNSStringValue
{
  vocabularyIdentifier = self->_vocabularyIdentifier;
  if (!vocabularyIdentifier)
  {
    vocabularyIdentifier = self->_spokenPhrase;
  }

  return vocabularyIdentifier;
}

- (id)_initWithVocabularyIdentifier:(id)identifier spokenPhrase:(id)phrase pronunciationHint:(id)hint alternativeMatches:(id)matches
{
  matchesCopy = matches;
  v12 = [(INSpeakableString *)self initWithVocabularyIdentifier:identifier spokenPhrase:phrase pronunciationHint:hint];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_alternativeSpeakableMatches, matches);
  }

  return v13;
}

- (INSpeakableString)initWithVocabularyIdentifier:(NSString *)vocabularyIdentifier spokenPhrase:(NSString *)spokenPhrase pronunciationHint:(NSString *)pronunciationHint
{
  v8 = vocabularyIdentifier;
  v9 = spokenPhrase;
  v10 = pronunciationHint;
  v19.receiver = self;
  v19.super_class = INSpeakableString;
  v11 = [(INSpeakableString *)&v19 init];
  if (v11)
  {
    v12 = [(NSString *)v8 copy];
    v13 = v11->_vocabularyIdentifier;
    v11->_vocabularyIdentifier = v12;

    v14 = [(NSString *)v9 copy];
    v15 = v11->_spokenPhrase;
    v11->_spokenPhrase = v14;

    v16 = [(NSString *)v10 copy];
    v17 = v11->_pronunciationHint;
    v11->_pronunciationHint = v16;
  }

  return v11;
}

@end