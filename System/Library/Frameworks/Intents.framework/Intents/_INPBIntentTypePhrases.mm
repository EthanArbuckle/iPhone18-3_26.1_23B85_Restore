@interface _INPBIntentTypePhrases
- (BOOL)isEqual:(id)a3;
- (_INPBIntentTypePhrases)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addIntentVocabularyExamples:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIntentVocabularyExamples:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentTypePhrases

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBIntentTypePhrases *)self intentType];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intent_type"];

  if (self->_intentVocabularyExamples)
  {
    v6 = [(_INPBIntentTypePhrases *)self intentVocabularyExamples];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"intent_vocabulary_examples"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBIntentTypePhrases *)self intentType];
  v6 = [v4 intentType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBIntentTypePhrases *)self intentType];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentTypePhrases *)self intentType];
    v10 = [v4 intentType];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentTypePhrases *)self intentVocabularyExamples];
  v6 = [v4 intentVocabularyExamples];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBIntentTypePhrases *)self intentVocabularyExamples];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBIntentTypePhrases *)self intentVocabularyExamples];
    v15 = [v4 intentVocabularyExamples];
    v16 = [v14 isEqual:v15];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentTypePhrases allocWithZone:](_INPBIntentTypePhrases init];
  v6 = [(_INPBIntentType *)self->_intentType copyWithZone:a3];
  [(_INPBIntentTypePhrases *)v5 setIntentType:v6];

  v7 = [(NSArray *)self->_intentVocabularyExamples copyWithZone:a3];
  [(_INPBIntentTypePhrases *)v5 setIntentVocabularyExamples:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentTypePhrases *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentTypePhrases)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentTypePhrases *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBIntentTypePhrases *)self intentType];

  if (v5)
  {
    v6 = [(_INPBIntentTypePhrases *)self intentType];
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

- (void)addIntentVocabularyExamples:(id)a3
{
  v4 = a3;
  intentVocabularyExamples = self->_intentVocabularyExamples;
  v8 = v4;
  if (!intentVocabularyExamples)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentVocabularyExamples;
    self->_intentVocabularyExamples = v6;

    v4 = v8;
    intentVocabularyExamples = self->_intentVocabularyExamples;
  }

  [(NSArray *)intentVocabularyExamples addObject:v4];
}

- (void)setIntentVocabularyExamples:(id)a3
{
  v4 = [a3 mutableCopy];
  intentVocabularyExamples = self->_intentVocabularyExamples;
  self->_intentVocabularyExamples = v4;

  MEMORY[0x1EEE66BB8](v4, intentVocabularyExamples);
}

@end