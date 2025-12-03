@interface _INPBCreateFileIntent
- (BOOL)isEqual:(id)equal;
- (_INPBCreateFileIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDestinationType:(id)type;
- (int)StringAsEntityType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setDestinationType:(int)type;
- (void)setEntityType:(int)type;
- (void)setHasEntityType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBCreateFileIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  destinationName = [(_INPBCreateFileIntent *)self destinationName];
  dictionaryRepresentation = [destinationName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"destinationName"];

  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    destinationType = [(_INPBCreateFileIntent *)self destinationType];
    if (destinationType >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", destinationType];
    }

    else
    {
      v7 = *(&off_1E7280AA8 + destinationType);
    }

    [dictionary setObject:v7 forKeyedSubscript:@"destinationType"];
  }

  entityName = [(_INPBCreateFileIntent *)self entityName];
  dictionaryRepresentation2 = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entityName"];

  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    entityType = [(_INPBCreateFileIntent *)self entityType];
    if (entityType >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entityType];
    }

    else
    {
      v11 = *(&off_1E7280AA8 + entityType);
    }

    [dictionary setObject:v11 forKeyedSubscript:@"entityType"];
  }

  intentMetadata = [(_INPBCreateFileIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_destinationName hash];
  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    v4 = 2654435761 * self->_destinationType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    v6 = 2654435761 * self->_entityType;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  destinationName = [(_INPBCreateFileIntent *)self destinationName];
  destinationName2 = [equalCopy destinationName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_24;
  }

  destinationName3 = [(_INPBCreateFileIntent *)self destinationName];
  if (destinationName3)
  {
    v8 = destinationName3;
    destinationName4 = [(_INPBCreateFileIntent *)self destinationName];
    destinationName5 = [equalCopy destinationName];
    v11 = [destinationName4 isEqual:destinationName5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  hasDestinationType = [(_INPBCreateFileIntent *)self hasDestinationType];
  if (hasDestinationType != [equalCopy hasDestinationType])
  {
    goto LABEL_25;
  }

  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    if ([equalCopy hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [equalCopy destinationType])
      {
        goto LABEL_25;
      }
    }
  }

  destinationName = [(_INPBCreateFileIntent *)self entityName];
  destinationName2 = [equalCopy entityName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_24;
  }

  entityName = [(_INPBCreateFileIntent *)self entityName];
  if (entityName)
  {
    v15 = entityName;
    entityName2 = [(_INPBCreateFileIntent *)self entityName];
    entityName3 = [equalCopy entityName];
    v18 = [entityName2 isEqual:entityName3];

    if (!v18)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  hasEntityType = [(_INPBCreateFileIntent *)self hasEntityType];
  if (hasEntityType != [equalCopy hasEntityType])
  {
    goto LABEL_25;
  }

  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    if ([equalCopy hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [equalCopy entityType])
      {
        goto LABEL_25;
      }
    }
  }

  destinationName = [(_INPBCreateFileIntent *)self intentMetadata];
  destinationName2 = [equalCopy intentMetadata];
  if ((destinationName != 0) != (destinationName2 == 0))
  {
    intentMetadata = [(_INPBCreateFileIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_28:
      v26 = 1;
      goto LABEL_26;
    }

    v22 = intentMetadata;
    intentMetadata2 = [(_INPBCreateFileIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v25 = [intentMetadata2 isEqual:intentMetadata3];

    if (v25)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v26 = 0;
LABEL_26:

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCreateFileIntent allocWithZone:](_INPBCreateFileIntent init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:zone];
  [(_INPBCreateFileIntent *)v5 setDestinationName:v6];

  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    [(_INPBCreateFileIntent *)v5 setDestinationType:[(_INPBCreateFileIntent *)self destinationType]];
  }

  v7 = [(_INPBString *)self->_entityName copyWithZone:zone];
  [(_INPBCreateFileIntent *)v5 setEntityName:v7];

  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    [(_INPBCreateFileIntent *)v5 setEntityType:[(_INPBCreateFileIntent *)self entityType]];
  }

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBCreateFileIntent *)v5 setIntentMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCreateFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCreateFileIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCreateFileIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  destinationName = [(_INPBCreateFileIntent *)self destinationName];

  if (destinationName)
  {
    destinationName2 = [(_INPBCreateFileIntent *)self destinationName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateFileIntent *)self hasDestinationType])
  {
    destinationType = self->_destinationType;
    PBDataWriterWriteInt32Field();
  }

  entityName = [(_INPBCreateFileIntent *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBCreateFileIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCreateFileIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBCreateFileIntent *)self intentMetadata];

  v11 = toCopy;
  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBCreateFileIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (int)StringAsEntityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FILE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"FOLDER"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"REFERENCE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"URL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEntityType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setEntityType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_entityType = type;
  }
}

- (int)StringAsDestinationType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"FILE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"FOLDER"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"REFERENCE"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"URL"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDestinationType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_destinationType = type;
  }
}

@end