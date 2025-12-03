@interface _INPBGetFileInformationIntent
- (BOOL)isEqual:(id)equal;
- (_INPBGetFileInformationIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEntityType:(id)type;
- (int)StringAsPropertyName:(id)name;
- (int)StringAsQualifier:(id)qualifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setEntityType:(int)type;
- (void)setHasPropertyName:(BOOL)name;
- (void)setHasQualifier:(BOOL)qualifier;
- (void)setPropertyName:(int)name;
- (void)setQualifier:(int)qualifier;
- (void)writeTo:(id)to;
@end

@implementation _INPBGetFileInformationIntent

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  entityName = [(_INPBGetFileInformationIntent *)self entityName];
  dictionaryRepresentation = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entityName"];

  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
  {
    entityType = [(_INPBGetFileInformationIntent *)self entityType];
    if (entityType >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entityType];
    }

    else
    {
      v7 = off_1E7281EF8[entityType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"entityType"];
  }

  intentMetadata = [(_INPBGetFileInformationIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBGetFileInformationIntent *)self hasPropertyName])
  {
    propertyName = [(_INPBGetFileInformationIntent *)self propertyName];
    if (propertyName >= 0xC)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", propertyName];
    }

    else
    {
      v11 = off_1E7281F18[propertyName];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"propertyName"];
  }

  if ([(_INPBGetFileInformationIntent *)self hasQualifier])
  {
    qualifier = [(_INPBGetFileInformationIntent *)self qualifier];
    if (qualifier >= 5)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", qualifier];
    }

    else
    {
      v13 = off_1E7281F78[qualifier];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"qualifier"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
  {
    v4 = 2654435761 * self->_entityType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBGetFileInformationIntent *)self hasPropertyName])
  {
    v6 = 2654435761 * self->_propertyName;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBGetFileInformationIntent *)self hasQualifier])
  {
    v7 = 2654435761 * self->_qualifier;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  entityName = [(_INPBGetFileInformationIntent *)self entityName];
  entityName2 = [equalCopy entityName];
  if ((entityName != 0) == (entityName2 == 0))
  {
    goto LABEL_15;
  }

  entityName3 = [(_INPBGetFileInformationIntent *)self entityName];
  if (entityName3)
  {
    v8 = entityName3;
    entityName4 = [(_INPBGetFileInformationIntent *)self entityName];
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

  hasEntityType = [(_INPBGetFileInformationIntent *)self hasEntityType];
  if (hasEntityType != [equalCopy hasEntityType])
  {
    goto LABEL_16;
  }

  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
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

  entityName = [(_INPBGetFileInformationIntent *)self intentMetadata];
  entityName2 = [equalCopy intentMetadata];
  if ((entityName != 0) == (entityName2 == 0))
  {
LABEL_15:

    goto LABEL_16;
  }

  intentMetadata = [(_INPBGetFileInformationIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v15 = intentMetadata;
    intentMetadata2 = [(_INPBGetFileInformationIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v18 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v18)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasPropertyName = [(_INPBGetFileInformationIntent *)self hasPropertyName];
  if (hasPropertyName == [equalCopy hasPropertyName])
  {
    if (!-[_INPBGetFileInformationIntent hasPropertyName](self, "hasPropertyName") || ![equalCopy hasPropertyName] || (propertyName = self->_propertyName, propertyName == objc_msgSend(equalCopy, "propertyName")))
    {
      hasQualifier = [(_INPBGetFileInformationIntent *)self hasQualifier];
      if (hasQualifier == [equalCopy hasQualifier])
      {
        if (!-[_INPBGetFileInformationIntent hasQualifier](self, "hasQualifier") || ![equalCopy hasQualifier] || (qualifier = self->_qualifier, qualifier == objc_msgSend(equalCopy, "qualifier")))
        {
          v19 = 1;
          goto LABEL_17;
        }
      }
    }
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBGetFileInformationIntent allocWithZone:](_INPBGetFileInformationIntent init];
  v6 = [(_INPBString *)self->_entityName copyWithZone:zone];
  [(_INPBGetFileInformationIntent *)v5 setEntityName:v6];

  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
  {
    [(_INPBGetFileInformationIntent *)v5 setEntityType:[(_INPBGetFileInformationIntent *)self entityType]];
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBGetFileInformationIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBGetFileInformationIntent *)self hasPropertyName])
  {
    [(_INPBGetFileInformationIntent *)v5 setPropertyName:[(_INPBGetFileInformationIntent *)self propertyName]];
  }

  if ([(_INPBGetFileInformationIntent *)self hasQualifier])
  {
    [(_INPBGetFileInformationIntent *)v5 setQualifier:[(_INPBGetFileInformationIntent *)self qualifier]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBGetFileInformationIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBGetFileInformationIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBGetFileInformationIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  entityName = [(_INPBGetFileInformationIntent *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBGetFileInformationIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetFileInformationIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBGetFileInformationIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBGetFileInformationIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBGetFileInformationIntent *)self hasPropertyName])
  {
    propertyName = self->_propertyName;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBGetFileInformationIntent *)self hasQualifier])
  {
    qualifier = self->_qualifier;
    PBDataWriterWriteInt32Field();
  }
}

- (int)StringAsQualifier:(id)qualifier
{
  qualifierCopy = qualifier;
  if ([qualifierCopy isEqualToString:@"EQUAL"])
  {
    v4 = 0;
  }

  else if ([qualifierCopy isEqualToString:@"AT_LEAST"])
  {
    v4 = 1;
  }

  else if ([qualifierCopy isEqualToString:@"AT_MOST"])
  {
    v4 = 2;
  }

  else if ([qualifierCopy isEqualToString:@"MIN"])
  {
    v4 = 3;
  }

  else if ([qualifierCopy isEqualToString:@"MAX"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasQualifier:(BOOL)qualifier
{
  if (qualifier)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setQualifier:(int)qualifier
{
  has = self->_has;
  if (qualifier == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_qualifier = qualifier;
  }
}

- (int)StringAsPropertyName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"SIZE"])
  {
    v4 = 0;
  }

  else if ([nameCopy isEqualToString:@"CONTENTS"])
  {
    v4 = 1;
  }

  else if ([nameCopy isEqualToString:@"AUTHOR"])
  {
    v4 = 2;
  }

  else if ([nameCopy isEqualToString:@"CREATION_TIME"])
  {
    v4 = 3;
  }

  else if ([nameCopy isEqualToString:@"ACCESSED_TIME"])
  {
    v4 = 4;
  }

  else if ([nameCopy isEqualToString:@"MODIFIED_TIME"])
  {
    v4 = 5;
  }

  else if ([nameCopy isEqualToString:@"PRINTED_TIME"])
  {
    v4 = 6;
  }

  else if ([nameCopy isEqualToString:@"SENDER"])
  {
    v4 = 7;
  }

  else if ([nameCopy isEqualToString:@"RECIPIENT"])
  {
    v4 = 8;
  }

  else if ([nameCopy isEqualToString:@"PAGE_COUNT"])
  {
    v4 = 9;
  }

  else if ([nameCopy isEqualToString:@"TAG"])
  {
    v4 = 10;
  }

  else if ([nameCopy isEqualToString:@"FILE_TYPE"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasPropertyName:(BOOL)name
{
  if (name)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setPropertyName:(int)name
{
  has = self->_has;
  if (name == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_propertyName = name;
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