@interface _INPBDataString
- (BOOL)isEqual:(id)a3;
- (_INPBDataString)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAlternatives:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlternatives:(id)a3;
- (void)setLocalizedValue:(id)a3;
- (void)setPronunciationHint:(id)a3;
- (void)setVocabularyIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBDataString

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternatives count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_alternatives;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"alternatives"];
  }

  if (self->_localizedValue)
  {
    v11 = [(_INPBDataString *)self localizedValue];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"localizedValue"];
  }

  if (self->_pronunciationHint)
  {
    v13 = [(_INPBDataString *)self pronunciationHint];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"pronunciationHint"];
  }

  if (self->_vocabularyIdentifier)
  {
    v15 = [(_INPBDataString *)self vocabularyIdentifier];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"vocabularyIdentifier"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_alternatives hash];
  v4 = [(NSString *)self->_localizedValue hash]^ v3;
  v5 = [(NSString *)self->_pronunciationHint hash];
  return v4 ^ v5 ^ [(NSString *)self->_vocabularyIdentifier hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBDataString *)self alternatives];
  v6 = [v4 alternatives];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBDataString *)self alternatives];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBDataString *)self alternatives];
    v10 = [v4 alternatives];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBDataString *)self localizedValue];
  v6 = [v4 localizedValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBDataString *)self localizedValue];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBDataString *)self localizedValue];
    v15 = [v4 localizedValue];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBDataString *)self pronunciationHint];
  v6 = [v4 pronunciationHint];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBDataString *)self pronunciationHint];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBDataString *)self pronunciationHint];
    v20 = [v4 pronunciationHint];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBDataString *)self vocabularyIdentifier];
  v6 = [v4 vocabularyIdentifier];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBDataString *)self vocabularyIdentifier];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBDataString *)self vocabularyIdentifier];
    v25 = [v4 vocabularyIdentifier];
    v26 = [v24 isEqual:v25];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBDataString allocWithZone:](_INPBDataString init];
  v6 = [(NSArray *)self->_alternatives copyWithZone:a3];
  [(_INPBDataString *)v5 setAlternatives:v6];

  v7 = [(NSString *)self->_localizedValue copyWithZone:a3];
  [(_INPBDataString *)v5 setLocalizedValue:v7];

  v8 = [(NSString *)self->_pronunciationHint copyWithZone:a3];
  [(_INPBDataString *)v5 setPronunciationHint:v8];

  v9 = [(NSString *)self->_vocabularyIdentifier copyWithZone:a3];
  [(_INPBDataString *)v5 setVocabularyIdentifier:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBDataString *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBDataString)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBDataString *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_alternatives;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v11 = [(_INPBDataString *)self localizedValue];

  if (v11)
  {
    localizedValue = self->_localizedValue;
    PBDataWriterWriteStringField();
  }

  v13 = [(_INPBDataString *)self pronunciationHint];

  if (v13)
  {
    pronunciationHint = self->_pronunciationHint;
    PBDataWriterWriteStringField();
  }

  v15 = [(_INPBDataString *)self vocabularyIdentifier];

  if (v15)
  {
    vocabularyIdentifier = self->_vocabularyIdentifier;
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setVocabularyIdentifier:(id)a3
{
  v4 = [a3 copy];
  vocabularyIdentifier = self->_vocabularyIdentifier;
  self->_vocabularyIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, vocabularyIdentifier);
}

- (void)setPronunciationHint:(id)a3
{
  v4 = [a3 copy];
  pronunciationHint = self->_pronunciationHint;
  self->_pronunciationHint = v4;

  MEMORY[0x1EEE66BB8](v4, pronunciationHint);
}

- (void)setLocalizedValue:(id)a3
{
  v4 = [a3 copy];
  localizedValue = self->_localizedValue;
  self->_localizedValue = v4;

  MEMORY[0x1EEE66BB8](v4, localizedValue);
}

- (void)addAlternatives:(id)a3
{
  v4 = a3;
  alternatives = self->_alternatives;
  v8 = v4;
  if (!alternatives)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternatives;
    self->_alternatives = v6;

    v4 = v8;
    alternatives = self->_alternatives;
  }

  [(NSArray *)alternatives addObject:v4];
}

- (void)setAlternatives:(id)a3
{
  v4 = [a3 mutableCopy];
  alternatives = self->_alternatives;
  self->_alternatives = v4;

  MEMORY[0x1EEE66BB8](v4, alternatives);
}

@end