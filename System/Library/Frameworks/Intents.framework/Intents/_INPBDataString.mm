@interface _INPBDataString
- (BOOL)isEqual:(id)equal;
- (_INPBDataString)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAlternatives:(id)alternatives;
- (void)encodeWithCoder:(id)coder;
- (void)setAlternatives:(id)alternatives;
- (void)setLocalizedValue:(id)value;
- (void)setPronunciationHint:(id)hint;
- (void)setVocabularyIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBDataString

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternatives count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"alternatives"];
  }

  if (self->_localizedValue)
  {
    localizedValue = [(_INPBDataString *)self localizedValue];
    v12 = [localizedValue copy];
    [dictionary setObject:v12 forKeyedSubscript:@"localizedValue"];
  }

  if (self->_pronunciationHint)
  {
    pronunciationHint = [(_INPBDataString *)self pronunciationHint];
    v14 = [pronunciationHint copy];
    [dictionary setObject:v14 forKeyedSubscript:@"pronunciationHint"];
  }

  if (self->_vocabularyIdentifier)
  {
    vocabularyIdentifier = [(_INPBDataString *)self vocabularyIdentifier];
    v16 = [vocabularyIdentifier copy];
    [dictionary setObject:v16 forKeyedSubscript:@"vocabularyIdentifier"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_alternatives hash];
  v4 = [(NSString *)self->_localizedValue hash]^ v3;
  v5 = [(NSString *)self->_pronunciationHint hash];
  return v4 ^ v5 ^ [(NSString *)self->_vocabularyIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  alternatives = [(_INPBDataString *)self alternatives];
  alternatives2 = [equalCopy alternatives];
  if ((alternatives != 0) == (alternatives2 == 0))
  {
    goto LABEL_21;
  }

  alternatives3 = [(_INPBDataString *)self alternatives];
  if (alternatives3)
  {
    v8 = alternatives3;
    alternatives4 = [(_INPBDataString *)self alternatives];
    alternatives5 = [equalCopy alternatives];
    v11 = [alternatives4 isEqual:alternatives5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  alternatives = [(_INPBDataString *)self localizedValue];
  alternatives2 = [equalCopy localizedValue];
  if ((alternatives != 0) == (alternatives2 == 0))
  {
    goto LABEL_21;
  }

  localizedValue = [(_INPBDataString *)self localizedValue];
  if (localizedValue)
  {
    v13 = localizedValue;
    localizedValue2 = [(_INPBDataString *)self localizedValue];
    localizedValue3 = [equalCopy localizedValue];
    v16 = [localizedValue2 isEqual:localizedValue3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  alternatives = [(_INPBDataString *)self pronunciationHint];
  alternatives2 = [equalCopy pronunciationHint];
  if ((alternatives != 0) == (alternatives2 == 0))
  {
    goto LABEL_21;
  }

  pronunciationHint = [(_INPBDataString *)self pronunciationHint];
  if (pronunciationHint)
  {
    v18 = pronunciationHint;
    pronunciationHint2 = [(_INPBDataString *)self pronunciationHint];
    pronunciationHint3 = [equalCopy pronunciationHint];
    v21 = [pronunciationHint2 isEqual:pronunciationHint3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  alternatives = [(_INPBDataString *)self vocabularyIdentifier];
  alternatives2 = [equalCopy vocabularyIdentifier];
  if ((alternatives != 0) != (alternatives2 == 0))
  {
    vocabularyIdentifier = [(_INPBDataString *)self vocabularyIdentifier];
    if (!vocabularyIdentifier)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = vocabularyIdentifier;
    vocabularyIdentifier2 = [(_INPBDataString *)self vocabularyIdentifier];
    vocabularyIdentifier3 = [equalCopy vocabularyIdentifier];
    v26 = [vocabularyIdentifier2 isEqual:vocabularyIdentifier3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBDataString allocWithZone:](_INPBDataString init];
  v6 = [(NSArray *)self->_alternatives copyWithZone:zone];
  [(_INPBDataString *)v5 setAlternatives:v6];

  v7 = [(NSString *)self->_localizedValue copyWithZone:zone];
  [(_INPBDataString *)v5 setLocalizedValue:v7];

  v8 = [(NSString *)self->_pronunciationHint copyWithZone:zone];
  [(_INPBDataString *)v5 setPronunciationHint:v8];

  v9 = [(NSString *)self->_vocabularyIdentifier copyWithZone:zone];
  [(_INPBDataString *)v5 setVocabularyIdentifier:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBDataString *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBDataString)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBDataString *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  localizedValue = [(_INPBDataString *)self localizedValue];

  if (localizedValue)
  {
    localizedValue = self->_localizedValue;
    PBDataWriterWriteStringField();
  }

  pronunciationHint = [(_INPBDataString *)self pronunciationHint];

  if (pronunciationHint)
  {
    pronunciationHint = self->_pronunciationHint;
    PBDataWriterWriteStringField();
  }

  vocabularyIdentifier = [(_INPBDataString *)self vocabularyIdentifier];

  if (vocabularyIdentifier)
  {
    vocabularyIdentifier = self->_vocabularyIdentifier;
    PBDataWriterWriteStringField();
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setVocabularyIdentifier:(id)identifier
{
  v4 = [identifier copy];
  vocabularyIdentifier = self->_vocabularyIdentifier;
  self->_vocabularyIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, vocabularyIdentifier);
}

- (void)setPronunciationHint:(id)hint
{
  v4 = [hint copy];
  pronunciationHint = self->_pronunciationHint;
  self->_pronunciationHint = v4;

  MEMORY[0x1EEE66BB8](v4, pronunciationHint);
}

- (void)setLocalizedValue:(id)value
{
  v4 = [value copy];
  localizedValue = self->_localizedValue;
  self->_localizedValue = v4;

  MEMORY[0x1EEE66BB8](v4, localizedValue);
}

- (void)addAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  alternatives = self->_alternatives;
  v8 = alternativesCopy;
  if (!alternatives)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternatives;
    self->_alternatives = array;

    alternativesCopy = v8;
    alternatives = self->_alternatives;
  }

  [(NSArray *)alternatives addObject:alternativesCopy];
}

- (void)setAlternatives:(id)alternatives
{
  v4 = [alternatives mutableCopy];
  alternatives = self->_alternatives;
  self->_alternatives = v4;

  MEMORY[0x1EEE66BB8](v4, alternatives);
}

@end