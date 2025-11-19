@interface _INPBIntentSlotVocabularyConcept
- (BOOL)isEqual:(id)a3;
- (_INPBIntentSlotVocabularyConcept)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSynonyms:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setSynonyms:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBIntentSlotVocabularyConcept

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_identifier)
  {
    v4 = [(_INPBIntentSlotVocabularyConcept *)self identifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"identifier"];
  }

  if ([(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentSlotVocabularyConcept requiresUserIdentification](self, "requiresUserIdentification")}];
    [v3 setObject:v6 forKeyedSubscript:@"requires_user_identification"];
  }

  if ([(NSArray *)self->_synonyms count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_synonyms;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"synonyms"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ([(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification])
  {
    v4 = 2654435761 * self->_requiresUserIdentification;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSArray *)self->_synonyms hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBIntentSlotVocabularyConcept *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_15;
  }

  v7 = [(_INPBIntentSlotVocabularyConcept *)self identifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBIntentSlotVocabularyConcept *)self identifier];
    v10 = [v4 identifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = [(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification];
  if (v12 != [v4 hasRequiresUserIdentification])
  {
    goto LABEL_16;
  }

  if ([(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification])
  {
    if ([v4 hasRequiresUserIdentification])
    {
      requiresUserIdentification = self->_requiresUserIdentification;
      if (requiresUserIdentification != [v4 requiresUserIdentification])
      {
        goto LABEL_16;
      }
    }
  }

  v5 = [(_INPBIntentSlotVocabularyConcept *)self synonyms];
  v6 = [v4 synonyms];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(_INPBIntentSlotVocabularyConcept *)self synonyms];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBIntentSlotVocabularyConcept *)self synonyms];
    v17 = [v4 synonyms];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBIntentSlotVocabularyConcept allocWithZone:](_INPBIntentSlotVocabularyConcept init];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  [(_INPBIntentSlotVocabularyConcept *)v5 setIdentifier:v6];

  if ([(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification])
  {
    [(_INPBIntentSlotVocabularyConcept *)v5 setRequiresUserIdentification:[(_INPBIntentSlotVocabularyConcept *)self requiresUserIdentification]];
  }

  v7 = [(NSArray *)self->_synonyms copyWithZone:a3];
  [(_INPBIntentSlotVocabularyConcept *)v5 setSynonyms:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBIntentSlotVocabularyConcept *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBIntentSlotVocabularyConcept)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBIntentSlotVocabularyConcept *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBIntentSlotVocabularyConcept *)self identifier];

  if (v5)
  {
    identifier = self->_identifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification])
  {
    requiresUserIdentification = self->_requiresUserIdentification;
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_synonyms;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addSynonyms:(id)a3
{
  v4 = a3;
  synonyms = self->_synonyms;
  v8 = v4;
  if (!synonyms)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_synonyms;
    self->_synonyms = v6;

    v4 = v8;
    synonyms = self->_synonyms;
  }

  [(NSArray *)synonyms addObject:v4];
}

- (void)setSynonyms:(id)a3
{
  v4 = [a3 mutableCopy];
  synonyms = self->_synonyms;
  self->_synonyms = v4;

  MEMORY[0x1EEE66BB8](v4, synonyms);
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end