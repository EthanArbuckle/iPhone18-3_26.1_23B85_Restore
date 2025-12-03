@interface _INPBIntentSlotVocabularyPolicy
- (BOOL)isEqual:(id)equal;
- (_INPBIntentSlotVocabularyPolicy)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addIntentSlotNames:(id)names;
- (void)addIntentSlotVocabularyConcepts:(id)concepts;
- (void)encodeWithCoder:(id)coder;
- (void)setIntentSlotNames:(id)names;
- (void)setIntentSlotVocabularyConcepts:(id)concepts;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentSlotVocabularyPolicy

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_intentSlotNames)
  {
    intentSlotNames = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotNames];
    v5 = [intentSlotNames copy];
    [dictionary setObject:v5 forKeyedSubscript:@"intent_slot_names"];
  }

  if ([(NSArray *)self->_intentSlotVocabularyConcepts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_intentSlotVocabularyConcepts;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"intent_slot_vocabulary_concepts"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentSlotNames = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotNames];
  intentSlotNames2 = [equalCopy intentSlotNames];
  if ((intentSlotNames != 0) == (intentSlotNames2 == 0))
  {
    goto LABEL_11;
  }

  intentSlotNames3 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotNames];
  if (intentSlotNames3)
  {
    v8 = intentSlotNames3;
    intentSlotNames4 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotNames];
    intentSlotNames5 = [equalCopy intentSlotNames];
    v11 = [intentSlotNames4 isEqual:intentSlotNames5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentSlotNames = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotVocabularyConcepts];
  intentSlotNames2 = [equalCopy intentSlotVocabularyConcepts];
  if ((intentSlotNames != 0) != (intentSlotNames2 == 0))
  {
    intentSlotVocabularyConcepts = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotVocabularyConcepts];
    if (!intentSlotVocabularyConcepts)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intentSlotVocabularyConcepts;
    intentSlotVocabularyConcepts2 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotVocabularyConcepts];
    intentSlotVocabularyConcepts3 = [equalCopy intentSlotVocabularyConcepts];
    v16 = [intentSlotVocabularyConcepts2 isEqual:intentSlotVocabularyConcepts3];

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
  v5 = [+[_INPBIntentSlotVocabularyPolicy allocWithZone:](_INPBIntentSlotVocabularyPolicy init];
  v6 = [(NSArray *)self->_intentSlotNames copyWithZone:zone];
  [(_INPBIntentSlotVocabularyPolicy *)v5 setIntentSlotNames:v6];

  v7 = [(NSArray *)self->_intentSlotVocabularyConcepts copyWithZone:zone];
  [(_INPBIntentSlotVocabularyPolicy *)v5 setIntentSlotVocabularyConcepts:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentSlotVocabularyPolicy *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentSlotVocabularyPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentSlotVocabularyPolicy *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_intentSlotNames;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_intentSlotVocabularyConcepts;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addIntentSlotVocabularyConcepts:(id)concepts
{
  conceptsCopy = concepts;
  intentSlotVocabularyConcepts = self->_intentSlotVocabularyConcepts;
  v8 = conceptsCopy;
  if (!intentSlotVocabularyConcepts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSlotVocabularyConcepts;
    self->_intentSlotVocabularyConcepts = array;

    conceptsCopy = v8;
    intentSlotVocabularyConcepts = self->_intentSlotVocabularyConcepts;
  }

  [(NSArray *)intentSlotVocabularyConcepts addObject:conceptsCopy];
}

- (void)setIntentSlotVocabularyConcepts:(id)concepts
{
  v4 = [concepts mutableCopy];
  intentSlotVocabularyConcepts = self->_intentSlotVocabularyConcepts;
  self->_intentSlotVocabularyConcepts = v4;

  MEMORY[0x1EEE66BB8](v4, intentSlotVocabularyConcepts);
}

- (void)addIntentSlotNames:(id)names
{
  namesCopy = names;
  intentSlotNames = self->_intentSlotNames;
  v8 = namesCopy;
  if (!intentSlotNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSlotNames;
    self->_intentSlotNames = array;

    namesCopy = v8;
    intentSlotNames = self->_intentSlotNames;
  }

  [(NSArray *)intentSlotNames addObject:namesCopy];
}

- (void)setIntentSlotNames:(id)names
{
  v4 = [names mutableCopy];
  intentSlotNames = self->_intentSlotNames;
  self->_intentSlotNames = v4;

  MEMORY[0x1EEE66BB8](v4, intentSlotNames);
}

@end