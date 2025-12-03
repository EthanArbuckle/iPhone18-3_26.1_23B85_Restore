@interface _INPBCompressFileIntent
- (BOOL)isEqual:(id)equal;
- (_INPBCompressFileIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEntityType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBCompressFileIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  entityName = [(_INPBCompressFileIntent *)self entityName];
  dictionaryRepresentation = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityName"];

  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    entityType = [(_INPBCompressFileIntent *)self entityType];
    if (entityType >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entityType];
    }

    else
    {
      v7 = off_1E7282410[entityType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"entityType"];
  }

  intentMetadata = [(_INPBCompressFileIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    v4 = 2654435761 * self->_entityType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  entityName = [(_INPBCompressFileIntent *)self entityName];
  entityName2 = [equalCopy entityName];
  if ((entityName != 0) == (entityName2 == 0))
  {
    goto LABEL_15;
  }

  entityName3 = [(_INPBCompressFileIntent *)self entityName];
  if (entityName3)
  {
    v8 = entityName3;
    entityName4 = [(_INPBCompressFileIntent *)self entityName];
    entityName5 = [equalCopy entityName];
    v11 = [entityName4 isEqual:entityName5];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasEntityType = [(_INPBCompressFileIntent *)self hasEntityType];
  if (hasEntityType != [equalCopy hasEntityType])
  {
    goto LABEL_16;
  }

  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    if ([equalCopy hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [equalCopy entityType])
      {
        goto LABEL_16;
      }
    }
  }

  entityName = [(_INPBCompressFileIntent *)self intentMetadata];
  entityName2 = [equalCopy intentMetadata];
  if ((entityName != 0) != (entityName2 == 0))
  {
    intentMetadata = [(_INPBCompressFileIntent *)self intentMetadata];
    if (!intentMetadata)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = intentMetadata;
    intentMetadata2 = [(_INPBCompressFileIntent *)self intentMetadata];
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
  v5 = [+[_INPBCompressFileIntent allocWithZone:](_INPBCompressFileIntent init];
  v6 = [(_INPBString *)self->_entityName copyWithZone:zone];
  [(_INPBCompressFileIntent *)v5 setEntityName:v6];

  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    [(_INPBCompressFileIntent *)v5 setEntityType:[(_INPBCompressFileIntent *)self entityType]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBCompressFileIntent *)v5 setIntentMetadata:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCompressFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCompressFileIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCompressFileIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  entityName = [(_INPBCompressFileIntent *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBCompressFileIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCompressFileIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBCompressFileIntent *)self intentMetadata];

  v8 = toCopy;
  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBCompressFileIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
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

- (void)setEntityType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_entityType = type;
  }
}

@end