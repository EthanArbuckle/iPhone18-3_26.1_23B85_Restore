@interface _INPBIntentSlotVocabularyValue
- (BOOL)isEqual:(id)equal;
- (_INPBIntentSlotVocabularyValue)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExamples:(id)examples;
- (void)encodeWithCoder:(id)coder;
- (void)setExamples:(id)examples;
- (void)setPhrase:(id)phrase;
- (void)setPronunciation:(id)pronunciation;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentSlotVocabularyValue

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_examples)
  {
    examples = [(_INPBIntentSlotVocabularyValue *)self examples];
    v5 = [examples copy];
    [dictionary setObject:v5 forKeyedSubscript:@"examples"];
  }

  if (self->_phrase)
  {
    phrase = [(_INPBIntentSlotVocabularyValue *)self phrase];
    v7 = [phrase copy];
    [dictionary setObject:v7 forKeyedSubscript:@"phrase"];
  }

  if (self->_pronunciation)
  {
    pronunciation = [(_INPBIntentSlotVocabularyValue *)self pronunciation];
    v9 = [pronunciation copy];
    [dictionary setObject:v9 forKeyedSubscript:@"pronunciation"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_examples hash];
  v4 = [(NSString *)self->_phrase hash]^ v3;
  return v4 ^ [(NSString *)self->_pronunciation hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  examples = [(_INPBIntentSlotVocabularyValue *)self examples];
  examples2 = [equalCopy examples];
  if ((examples != 0) == (examples2 == 0))
  {
    goto LABEL_16;
  }

  examples3 = [(_INPBIntentSlotVocabularyValue *)self examples];
  if (examples3)
  {
    v8 = examples3;
    examples4 = [(_INPBIntentSlotVocabularyValue *)self examples];
    examples5 = [equalCopy examples];
    v11 = [examples4 isEqual:examples5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  examples = [(_INPBIntentSlotVocabularyValue *)self phrase];
  examples2 = [equalCopy phrase];
  if ((examples != 0) == (examples2 == 0))
  {
    goto LABEL_16;
  }

  phrase = [(_INPBIntentSlotVocabularyValue *)self phrase];
  if (phrase)
  {
    v13 = phrase;
    phrase2 = [(_INPBIntentSlotVocabularyValue *)self phrase];
    phrase3 = [equalCopy phrase];
    v16 = [phrase2 isEqual:phrase3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  examples = [(_INPBIntentSlotVocabularyValue *)self pronunciation];
  examples2 = [equalCopy pronunciation];
  if ((examples != 0) != (examples2 == 0))
  {
    pronunciation = [(_INPBIntentSlotVocabularyValue *)self pronunciation];
    if (!pronunciation)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = pronunciation;
    pronunciation2 = [(_INPBIntentSlotVocabularyValue *)self pronunciation];
    pronunciation3 = [equalCopy pronunciation];
    v21 = [pronunciation2 isEqual:pronunciation3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentSlotVocabularyValue allocWithZone:](_INPBIntentSlotVocabularyValue init];
  v6 = [(NSArray *)self->_examples copyWithZone:zone];
  [(_INPBIntentSlotVocabularyValue *)v5 setExamples:v6];

  v7 = [(NSString *)self->_phrase copyWithZone:zone];
  [(_INPBIntentSlotVocabularyValue *)v5 setPhrase:v7];

  v8 = [(NSString *)self->_pronunciation copyWithZone:zone];
  [(_INPBIntentSlotVocabularyValue *)v5 setPronunciation:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentSlotVocabularyValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentSlotVocabularyValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentSlotVocabularyValue *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

  phrase = [(_INPBIntentSlotVocabularyValue *)self phrase];

  if (phrase)
  {
    phrase = self->_phrase;
    PBDataWriterWriteStringField();
  }

  pronunciation = [(_INPBIntentSlotVocabularyValue *)self pronunciation];

  if (pronunciation)
  {
    pronunciation = self->_pronunciation;
    PBDataWriterWriteStringField();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setPronunciation:(id)pronunciation
{
  v4 = [pronunciation copy];
  pronunciation = self->_pronunciation;
  self->_pronunciation = v4;

  MEMORY[0x1EEE66BB8](v4, pronunciation);
}

- (void)setPhrase:(id)phrase
{
  v4 = [phrase copy];
  phrase = self->_phrase;
  self->_phrase = v4;

  MEMORY[0x1EEE66BB8](v4, phrase);
}

- (void)addExamples:(id)examples
{
  examplesCopy = examples;
  examples = self->_examples;
  v8 = examplesCopy;
  if (!examples)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_examples;
    self->_examples = array;

    examplesCopy = v8;
    examples = self->_examples;
  }

  [(NSArray *)examples addObject:examplesCopy];
}

- (void)setExamples:(id)examples
{
  v4 = [examples mutableCopy];
  examples = self->_examples;
  self->_examples = v4;

  MEMORY[0x1EEE66BB8](v4, examples);
}

@end