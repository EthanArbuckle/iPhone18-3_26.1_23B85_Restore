@interface _INPBIntentSlotVocabularyConcept
- (BOOL)isEqual:(id)equal;
- (_INPBIntentSlotVocabularyConcept)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSynonyms:(id)synonyms;
- (void)encodeWithCoder:(id)coder;
- (void)setIdentifier:(id)identifier;
- (void)setSynonyms:(id)synonyms;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentSlotVocabularyConcept

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_identifier)
  {
    identifier = [(_INPBIntentSlotVocabularyConcept *)self identifier];
    v5 = [identifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"identifier"];
  }

  if ([(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBIntentSlotVocabularyConcept requiresUserIdentification](self, "requiresUserIdentification")}];
    [dictionary setObject:v6 forKeyedSubscript:@"requires_user_identification"];
  }

  if ([(NSArray *)self->_synonyms count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"synonyms"];
  }

  v14 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  identifier = [(_INPBIntentSlotVocabularyConcept *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_15;
  }

  identifier3 = [(_INPBIntentSlotVocabularyConcept *)self identifier];
  if (identifier3)
  {
    v8 = identifier3;
    identifier4 = [(_INPBIntentSlotVocabularyConcept *)self identifier];
    identifier5 = [equalCopy identifier];
    v11 = [identifier4 isEqual:identifier5];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasRequiresUserIdentification = [(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification];
  if (hasRequiresUserIdentification != [equalCopy hasRequiresUserIdentification])
  {
    goto LABEL_16;
  }

  if ([(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification])
  {
    if ([equalCopy hasRequiresUserIdentification])
    {
      requiresUserIdentification = self->_requiresUserIdentification;
      if (requiresUserIdentification != [equalCopy requiresUserIdentification])
      {
        goto LABEL_16;
      }
    }
  }

  identifier = [(_INPBIntentSlotVocabularyConcept *)self synonyms];
  identifier2 = [equalCopy synonyms];
  if ((identifier != 0) != (identifier2 == 0))
  {
    synonyms = [(_INPBIntentSlotVocabularyConcept *)self synonyms];
    if (!synonyms)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = synonyms;
    synonyms2 = [(_INPBIntentSlotVocabularyConcept *)self synonyms];
    synonyms3 = [equalCopy synonyms];
    v18 = [synonyms2 isEqual:synonyms3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentSlotVocabularyConcept allocWithZone:](_INPBIntentSlotVocabularyConcept init];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  [(_INPBIntentSlotVocabularyConcept *)v5 setIdentifier:v6];

  if ([(_INPBIntentSlotVocabularyConcept *)self hasRequiresUserIdentification])
  {
    [(_INPBIntentSlotVocabularyConcept *)v5 setRequiresUserIdentification:[(_INPBIntentSlotVocabularyConcept *)self requiresUserIdentification]];
  }

  v7 = [(NSArray *)self->_synonyms copyWithZone:zone];
  [(_INPBIntentSlotVocabularyConcept *)v5 setSynonyms:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentSlotVocabularyConcept *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentSlotVocabularyConcept)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentSlotVocabularyConcept *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  identifier = [(_INPBIntentSlotVocabularyConcept *)self identifier];

  if (identifier)
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

- (void)addSynonyms:(id)synonyms
{
  synonymsCopy = synonyms;
  synonyms = self->_synonyms;
  v8 = synonymsCopy;
  if (!synonyms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_synonyms;
    self->_synonyms = array;

    synonymsCopy = v8;
    synonyms = self->_synonyms;
  }

  [(NSArray *)synonyms addObject:synonymsCopy];
}

- (void)setSynonyms:(id)synonyms
{
  v4 = [synonyms mutableCopy];
  synonyms = self->_synonyms;
  self->_synonyms = v4;

  MEMORY[0x1EEE66BB8](v4, synonyms);
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v4;

  MEMORY[0x1EEE66BB8](v4, identifier);
}

@end