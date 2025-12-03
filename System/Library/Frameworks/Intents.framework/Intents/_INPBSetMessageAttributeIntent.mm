@interface _INPBSetMessageAttributeIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSetMessageAttributeIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAttribute:(id)attribute;
- (unint64_t)hash;
- (void)addIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)setAttribute:(int)attribute;
- (void)setIdentifiers:(id)identifiers;
- (void)writeTo:(id)to;
@end

@implementation _INPBSetMessageAttributeIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    attribute = [(_INPBSetMessageAttributeIntent *)self attribute];
    if ((attribute - 1) >= 5)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", attribute];
    }

    else
    {
      v5 = off_1E7283DE0[(attribute - 1)];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"attribute"];
  }

  if (self->_identifiers)
  {
    identifiers = [(_INPBSetMessageAttributeIntent *)self identifiers];
    v7 = [identifiers copy];
    [dictionary setObject:v7 forKeyedSubscript:@"identifier"];
  }

  intentMetadata = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
  dictionaryRepresentation = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    v3 = 2654435761 * self->_attribute;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_identifiers hash]^ v3;
  return v4 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  hasAttribute = [(_INPBSetMessageAttributeIntent *)self hasAttribute];
  if (hasAttribute != [equalCopy hasAttribute])
  {
    goto LABEL_16;
  }

  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    if ([equalCopy hasAttribute])
    {
      attribute = self->_attribute;
      if (attribute != [equalCopy attribute])
      {
        goto LABEL_16;
      }
    }
  }

  identifiers = [(_INPBSetMessageAttributeIntent *)self identifiers];
  identifiers2 = [equalCopy identifiers];
  if ((identifiers != 0) == (identifiers2 == 0))
  {
    goto LABEL_15;
  }

  identifiers3 = [(_INPBSetMessageAttributeIntent *)self identifiers];
  if (identifiers3)
  {
    v10 = identifiers3;
    identifiers4 = [(_INPBSetMessageAttributeIntent *)self identifiers];
    identifiers5 = [equalCopy identifiers];
    v13 = [identifiers4 isEqual:identifiers5];

    if (!v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  identifiers = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
  identifiers2 = [equalCopy intentMetadata];
  if ((identifiers != 0) != (identifiers2 == 0))
  {
    intentMetadata = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = intentMetadata;
    intentMetadata2 = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v18 = [intentMetadata2 isEqual:intentMetadata3];

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
  v5 = [+[_INPBSetMessageAttributeIntent allocWithZone:](_INPBSetMessageAttributeIntent init];
  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    [(_INPBSetMessageAttributeIntent *)v5 setAttribute:[(_INPBSetMessageAttributeIntent *)self attribute]];
  }

  v6 = [(NSArray *)self->_identifiers copyWithZone:zone];
  [(_INPBSetMessageAttributeIntent *)v5 setIdentifiers:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSetMessageAttributeIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSetMessageAttributeIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSetMessageAttributeIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSetMessageAttributeIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBSetMessageAttributeIntent *)self hasAttribute])
  {
    attribute = self->_attribute;
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_identifiers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  intentMetadata = [(_INPBSetMessageAttributeIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSetMessageAttributeIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identifiers = self->_identifiers;
  v8 = identifierCopy;
  if (!identifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_identifiers;
    self->_identifiers = array;

    identifierCopy = v8;
    identifiers = self->_identifiers;
  }

  [(NSArray *)identifiers addObject:identifierCopy];
}

- (void)setIdentifiers:(id)identifiers
{
  v4 = [identifiers mutableCopy];
  identifiers = self->_identifiers;
  self->_identifiers = v4;

  MEMORY[0x1EEE66BB8](v4, identifiers);
}

- (int)StringAsAttribute:(id)attribute
{
  attributeCopy = attribute;
  if ([attributeCopy isEqualToString:@"READ"])
  {
    v4 = 1;
  }

  else if ([attributeCopy isEqualToString:@"UNREAD"])
  {
    v4 = 2;
  }

  else if ([attributeCopy isEqualToString:@"FLAGGED"])
  {
    v4 = 3;
  }

  else if ([attributeCopy isEqualToString:@"UNFLAGGED"])
  {
    v4 = 4;
  }

  else if ([attributeCopy isEqualToString:@"PLAYED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setAttribute:(int)attribute
{
  has = self->_has;
  if (attribute == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_attribute = attribute;
  }
}

@end