@interface _INPBIntentTypePhrases
- (BOOL)isEqual:(id)equal;
- (_INPBIntentTypePhrases)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addIntentVocabularyExamples:(id)examples;
- (void)encodeWithCoder:(id)coder;
- (void)setIntentVocabularyExamples:(id)examples;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentTypePhrases

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  intentType = [(_INPBIntentTypePhrases *)self intentType];
  dictionaryRepresentation = [intentType dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intent_type"];

  if (self->_intentVocabularyExamples)
  {
    intentVocabularyExamples = [(_INPBIntentTypePhrases *)self intentVocabularyExamples];
    v7 = [intentVocabularyExamples copy];
    [dictionary setObject:v7 forKeyedSubscript:@"intent_vocabulary_examples"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentType = [(_INPBIntentTypePhrases *)self intentType];
  intentType2 = [equalCopy intentType];
  if ((intentType != 0) == (intentType2 == 0))
  {
    goto LABEL_11;
  }

  intentType3 = [(_INPBIntentTypePhrases *)self intentType];
  if (intentType3)
  {
    v8 = intentType3;
    intentType4 = [(_INPBIntentTypePhrases *)self intentType];
    intentType5 = [equalCopy intentType];
    v11 = [intentType4 isEqual:intentType5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentType = [(_INPBIntentTypePhrases *)self intentVocabularyExamples];
  intentType2 = [equalCopy intentVocabularyExamples];
  if ((intentType != 0) != (intentType2 == 0))
  {
    intentVocabularyExamples = [(_INPBIntentTypePhrases *)self intentVocabularyExamples];
    if (!intentVocabularyExamples)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intentVocabularyExamples;
    intentVocabularyExamples2 = [(_INPBIntentTypePhrases *)self intentVocabularyExamples];
    intentVocabularyExamples3 = [equalCopy intentVocabularyExamples];
    v16 = [intentVocabularyExamples2 isEqual:intentVocabularyExamples3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentTypePhrases allocWithZone:](_INPBIntentTypePhrases init];
  v6 = [(_INPBIntentType *)self->_intentType copyWithZone:zone];
  [(_INPBIntentTypePhrases *)v5 setIntentType:v6];

  v7 = [(NSArray *)self->_intentVocabularyExamples copyWithZone:zone];
  [(_INPBIntentTypePhrases *)v5 setIntentVocabularyExamples:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentTypePhrases *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentTypePhrases)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentTypePhrases *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  intentType = [(_INPBIntentTypePhrases *)self intentType];

  if (intentType)
  {
    intentType2 = [(_INPBIntentTypePhrases *)self intentType];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_intentVocabularyExamples;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addIntentVocabularyExamples:(id)examples
{
  examplesCopy = examples;
  intentVocabularyExamples = self->_intentVocabularyExamples;
  v8 = examplesCopy;
  if (!intentVocabularyExamples)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentVocabularyExamples;
    self->_intentVocabularyExamples = array;

    examplesCopy = v8;
    intentVocabularyExamples = self->_intentVocabularyExamples;
  }

  [(NSArray *)intentVocabularyExamples addObject:examplesCopy];
}

- (void)setIntentVocabularyExamples:(id)examples
{
  v4 = [examples mutableCopy];
  intentVocabularyExamples = self->_intentVocabularyExamples;
  self->_intentVocabularyExamples = v4;

  MEMORY[0x1EEE66BB8](v4, intentVocabularyExamples);
}

@end