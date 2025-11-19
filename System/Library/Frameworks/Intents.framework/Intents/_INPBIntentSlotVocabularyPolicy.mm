@interface _INPBIntentSlotVocabularyPolicy
- (BOOL)isEqual:(id)a3;
- (_INPBIntentSlotVocabularyPolicy)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)addIntentSlotNames:(id)a3;
- (void)addIntentSlotVocabularyConcepts:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIntentSlotNames:(id)a3;
- (void)setIntentSlotVocabularyConcepts:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentSlotVocabularyPolicy

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_intentSlotNames)
  {
    v4 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotNames];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"intent_slot_names"];
  }

  if ([(NSArray *)self->_intentSlotVocabularyConcepts count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"intent_slot_vocabulary_concepts"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotNames];
  v6 = [v4 intentSlotNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotNames];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotNames];
    v10 = [v4 intentSlotNames];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotVocabularyConcepts];
  v6 = [v4 intentSlotVocabularyConcepts];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotVocabularyConcepts];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBIntentSlotVocabularyPolicy *)self intentSlotVocabularyConcepts];
    v15 = [v4 intentSlotVocabularyConcepts];
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
  v5 = [+[_INPBIntentSlotVocabularyPolicy allocWithZone:](_INPBIntentSlotVocabularyPolicy init];
  v6 = [(NSArray *)self->_intentSlotNames copyWithZone:a3];
  [(_INPBIntentSlotVocabularyPolicy *)v5 setIntentSlotNames:v6];

  v7 = [(NSArray *)self->_intentSlotVocabularyConcepts copyWithZone:a3];
  [(_INPBIntentSlotVocabularyPolicy *)v5 setIntentSlotVocabularyConcepts:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentSlotVocabularyPolicy *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentSlotVocabularyPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentSlotVocabularyPolicy *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)addIntentSlotVocabularyConcepts:(id)a3
{
  v4 = a3;
  intentSlotVocabularyConcepts = self->_intentSlotVocabularyConcepts;
  v8 = v4;
  if (!intentSlotVocabularyConcepts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSlotVocabularyConcepts;
    self->_intentSlotVocabularyConcepts = v6;

    v4 = v8;
    intentSlotVocabularyConcepts = self->_intentSlotVocabularyConcepts;
  }

  [(NSArray *)intentSlotVocabularyConcepts addObject:v4];
}

- (void)setIntentSlotVocabularyConcepts:(id)a3
{
  v4 = [a3 mutableCopy];
  intentSlotVocabularyConcepts = self->_intentSlotVocabularyConcepts;
  self->_intentSlotVocabularyConcepts = v4;

  MEMORY[0x1EEE66BB8](v4, intentSlotVocabularyConcepts);
}

- (void)addIntentSlotNames:(id)a3
{
  v4 = a3;
  intentSlotNames = self->_intentSlotNames;
  v8 = v4;
  if (!intentSlotNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSlotNames;
    self->_intentSlotNames = v6;

    v4 = v8;
    intentSlotNames = self->_intentSlotNames;
  }

  [(NSArray *)intentSlotNames addObject:v4];
}

- (void)setIntentSlotNames:(id)a3
{
  v4 = [a3 mutableCopy];
  intentSlotNames = self->_intentSlotNames;
  self->_intentSlotNames = v4;

  MEMORY[0x1EEE66BB8](v4, intentSlotNames);
}

@end