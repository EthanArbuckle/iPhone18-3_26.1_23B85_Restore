@interface _INPBSetRelationshipIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetRelationshipIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addContactIdentifiers:(id)identifiers;
- (void)encodeWithCoder:(id)coder;
- (void)setContactIdentifiers:(id)identifiers;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetRelationshipIntent

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_contactIdentifiers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_contactIdentifiers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"contactIdentifiers"];
  }

  intentMetadata = [(_INPBSetRelationshipIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  targetRelationship = [(_INPBSetRelationshipIntent *)self targetRelationship];
  dictionaryRepresentation3 = [targetRelationship dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"targetRelationship"];

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_contactIdentifiers hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash]^ v3;
  return v4 ^ [(_INPBModifyRelationship *)self->_targetRelationship hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  contactIdentifiers = [(_INPBSetRelationshipIntent *)self contactIdentifiers];
  contactIdentifiers2 = [equalCopy contactIdentifiers];
  if ((contactIdentifiers != 0) == (contactIdentifiers2 == 0))
  {
    goto LABEL_16;
  }

  contactIdentifiers3 = [(_INPBSetRelationshipIntent *)self contactIdentifiers];
  if (contactIdentifiers3)
  {
    v8 = contactIdentifiers3;
    contactIdentifiers4 = [(_INPBSetRelationshipIntent *)self contactIdentifiers];
    contactIdentifiers5 = [equalCopy contactIdentifiers];
    v11 = [contactIdentifiers4 isEqual:contactIdentifiers5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  contactIdentifiers = [(_INPBSetRelationshipIntent *)self intentMetadata];
  contactIdentifiers2 = [equalCopy intentMetadata];
  if ((contactIdentifiers != 0) == (contactIdentifiers2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata = [(_INPBSetRelationshipIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBSetRelationshipIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  contactIdentifiers = [(_INPBSetRelationshipIntent *)self targetRelationship];
  contactIdentifiers2 = [equalCopy targetRelationship];
  if ((contactIdentifiers != 0) != (contactIdentifiers2 == 0))
  {
    targetRelationship = [(_INPBSetRelationshipIntent *)self targetRelationship];
    if (!targetRelationship)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = targetRelationship;
    targetRelationship2 = [(_INPBSetRelationshipIntent *)self targetRelationship];
    targetRelationship3 = [equalCopy targetRelationship];
    v21 = [targetRelationship2 isEqual:targetRelationship3];

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
  v5 = [+[_INPBSetRelationshipIntent allocWithZone:](_INPBSetRelationshipIntent init];
  v6 = [(NSArray *)self->_contactIdentifiers copyWithZone:zone];
  [(_INPBSetRelationshipIntent *)v5 setContactIdentifiers:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetRelationshipIntent *)v5 setIntentMetadata:v7];

  v8 = [(_INPBModifyRelationship *)self->_targetRelationship copyWithZone:zone];
  [(_INPBSetRelationshipIntent *)v5 setTargetRelationship:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetRelationshipIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetRelationshipIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetRelationshipIntent *)self initWithData:selfCopy];

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
  v5 = self->_contactIdentifiers;
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
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  intentMetadata = [(_INPBSetRelationshipIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetRelationshipIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  targetRelationship = [(_INPBSetRelationshipIntent *)self targetRelationship];

  if (targetRelationship)
  {
    targetRelationship2 = [(_INPBSetRelationshipIntent *)self targetRelationship];
    PBDataWriterWriteSubmessage();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)addContactIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  contactIdentifiers = self->_contactIdentifiers;
  v8 = identifiersCopy;
  if (!contactIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_contactIdentifiers;
    self->_contactIdentifiers = array;

    identifiersCopy = v8;
    contactIdentifiers = self->_contactIdentifiers;
  }

  [(NSArray *)contactIdentifiers addObject:identifiersCopy];
}

- (void)setContactIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  contactIdentifiers = self->_contactIdentifiers;
  self->_contactIdentifiers = v4;

  MEMORY[0x1EEE66BB8](v4, contactIdentifiers);
}

@end