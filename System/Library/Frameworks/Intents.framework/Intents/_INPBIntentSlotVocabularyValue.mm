@interface _INPBIntentSlotVocabularyValue
- (BOOL)isEqual:(id)a3;
- (_INPBIntentSlotVocabularyValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExamples:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setExamples:(id)a3;
- (void)setPhrase:(id)a3;
- (void)setPronunciation:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentSlotVocabularyValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_examples)
  {
    v4 = [(_INPBIntentSlotVocabularyValue *)self examples];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"examples"];
  }

  if (self->_phrase)
  {
    v6 = [(_INPBIntentSlotVocabularyValue *)self phrase];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"phrase"];
  }

  if (self->_pronunciation)
  {
    v8 = [(_INPBIntentSlotVocabularyValue *)self pronunciation];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"pronunciation"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_examples hash];
  v4 = [(NSString *)self->_phrase hash]^ v3;
  return v4 ^ [(NSString *)self->_pronunciation hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBIntentSlotVocabularyValue *)self examples];
  v6 = [v4 examples];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBIntentSlotVocabularyValue *)self examples];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentSlotVocabularyValue *)self examples];
    v10 = [v4 examples];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSlotVocabularyValue *)self phrase];
  v6 = [v4 phrase];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBIntentSlotVocabularyValue *)self phrase];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBIntentSlotVocabularyValue *)self phrase];
    v15 = [v4 phrase];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSlotVocabularyValue *)self pronunciation];
  v6 = [v4 pronunciation];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBIntentSlotVocabularyValue *)self pronunciation];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBIntentSlotVocabularyValue *)self pronunciation];
    v20 = [v4 pronunciation];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentSlotVocabularyValue allocWithZone:](_INPBIntentSlotVocabularyValue init];
  v6 = [(NSArray *)self->_examples copyWithZone:a3];
  [(_INPBIntentSlotVocabularyValue *)v5 setExamples:v6];

  v7 = [(NSString *)self->_phrase copyWithZone:a3];
  [(_INPBIntentSlotVocabularyValue *)v5 setPhrase:v7];

  v8 = [(NSString *)self->_pronunciation copyWithZone:a3];
  [(_INPBIntentSlotVocabularyValue *)v5 setPronunciation:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentSlotVocabularyValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentSlotVocabularyValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentSlotVocabularyValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_examples;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [(_INPBIntentSlotVocabularyValue *)self phrase];

  if (v11)
  {
    phrase = self->_phrase;
    PBDataWriterWriteStringField();
  }

  v13 = [(_INPBIntentSlotVocabularyValue *)self pronunciation];

  if (v13)
  {
    pronunciation = self->_pronunciation;
    PBDataWriterWriteStringField();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setPronunciation:(id)a3
{
  v4 = [a3 copy];
  pronunciation = self->_pronunciation;
  self->_pronunciation = v4;

  MEMORY[0x1EEE66BB8](v4, pronunciation);
}

- (void)setPhrase:(id)a3
{
  v4 = [a3 copy];
  phrase = self->_phrase;
  self->_phrase = v4;

  MEMORY[0x1EEE66BB8](v4, phrase);
}

- (void)addExamples:(id)a3
{
  v4 = a3;
  examples = self->_examples;
  v8 = v4;
  if (!examples)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_examples;
    self->_examples = v6;

    v4 = v8;
    examples = self->_examples;
  }

  [(NSArray *)examples addObject:v4];
}

- (void)setExamples:(id)a3
{
  v4 = [a3 mutableCopy];
  examples = self->_examples;
  self->_examples = v4;

  MEMORY[0x1EEE66BB8](v4, examples);
}

@end