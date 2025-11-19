@interface INSpeakableString
- (BOOL)isEqual:(id)a3;
- (INSpeakableString)initWithCoder:(id)a3;
- (INSpeakableString)initWithVocabularyIdentifier:(NSString *)vocabularyIdentifier spokenPhrase:(NSString *)spokenPhrase pronunciationHint:(NSString *)pronunciationHint;
- (NSString)description;
- (id)_effectiveNSStringValue;
- (id)_initWithVocabularyIdentifier:(id)a3 spokenPhrase:(id)a4 pronunciationHint:(id)a5 alternativeMatches:(id)a6;
- (id)_intents_localizedCopyWithLocalizer:(id)a3;
- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)spokenPhrases;
- (unint64_t)hash;
- (unint64_t)length;
- (unsigned)characterAtIndex:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INSpeakableString

- (id)_intents_localizedCopyWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(INSpeakableString *)self vocabularyIdentifier];
  v7 = [(INSpeakableString *)self spokenPhrase];
  v8 = [v4 languageCode];

  v9 = [v7 localizeForLanguage:v8];
  v10 = [(INSpeakableString *)self pronunciationHint];
  v11 = [v5 initWithVocabularyIdentifier:v6 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

- (id)_intents_readableTitleWithLocalizer:(id)a3 metadata:(id)a4
{
  v5 = a3;
  v6 = [(INSpeakableString *)self spokenPhrase];
  v7 = [v5 languageCode];

  v8 = [v6 localizeForLanguage:v7];

  return v8;
}

- (id)spokenPhrases
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [(INSpeakableString *)self spokenPhrase];
  v6[0] = v2;
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

- (void)encodeWithCoder:(id)a3
{
  vocabularyIdentifier = self->_vocabularyIdentifier;
  v5 = a3;
  [v5 encodeObject:vocabularyIdentifier forKey:@"vocabularyIdentifier"];
  [v5 encodeObject:self->_spokenPhrase forKey:@"spokenPhrase"];
  [v5 encodeObject:self->_pronunciationHint forKey:@"pronunciationHint"];
}

- (INSpeakableString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vocabularyIdentifier"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"spokenPhrase"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"pronunciationHint"];

  v14 = [(INSpeakableString *)self initWithVocabularyIdentifier:v5 spokenPhrase:v9 pronunciationHint:v13];
  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  vocabularyIdentifier = self->_vocabularyIdentifier;
  v6 = self->_spokenPhrase;
  v7 = vocabularyIdentifier;
  v8 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithVocabularyIdentifier:spokenPhrase:pronunciationHint:", v7, v6, self->_pronunciationHint}];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (unsigned)characterAtIndex:(unint64_t)a3
{
  v4 = [(INSpeakableString *)self _effectiveNSStringValue];
  LOWORD(a3) = [v4 characterAtIndex:a3];

  return a3;
}

- (unint64_t)length
{
  v2 = [(INSpeakableString *)self _effectiveNSStringValue];
  v3 = [v2 length];

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

- (id)_initWithVocabularyIdentifier:(id)a3 spokenPhrase:(id)a4 pronunciationHint:(id)a5 alternativeMatches:(id)a6
{
  v11 = a6;
  v12 = [(INSpeakableString *)self initWithVocabularyIdentifier:a3 spokenPhrase:a4 pronunciationHint:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_alternativeSpeakableMatches, a6);
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