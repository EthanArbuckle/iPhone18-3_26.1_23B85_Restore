@interface _INPBCopyFileIntent
- (BOOL)isEqual:(id)equal;
- (_INPBCopyFileIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsDestinationType:(id)type;
- (int)StringAsEntityType:(id)type;
- (int)StringAsSourceType:(id)type;
- (unint64_t)hash;
- (void)addProperties:(id)properties;
- (void)encodeWithCoder:(id)coder;
- (void)setDestinationType:(int)type;
- (void)setEntityType:(int)type;
- (void)setHasEntityType:(BOOL)type;
- (void)setHasSourceType:(BOOL)type;
- (void)setProperties:(id)properties;
- (void)setSourceType:(int)type;
- (void)writeTo:(id)to;
@end

@implementation _INPBCopyFileIntent

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  destinationName = [(_INPBCopyFileIntent *)self destinationName];
  dictionaryRepresentation = [destinationName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"destinationName"];

  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    destinationType = [(_INPBCopyFileIntent *)self destinationType];
    if (destinationType >= 4)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", destinationType];
    }

    else
    {
      v7 = off_1E72829B8[destinationType];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"destinationType"];
  }

  entityName = [(_INPBCopyFileIntent *)self entityName];
  dictionaryRepresentation2 = [entityName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entityName"];

  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    entityType = [(_INPBCopyFileIntent *)self entityType];
    if (entityType >= 4)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", entityType];
    }

    else
    {
      v11 = off_1E72829B8[entityType];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"entityType"];
  }

  intentMetadata = [(_INPBCopyFileIntent *)self intentMetadata];
  dictionaryRepresentation3 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_properties count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = self->_properties;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v28;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v28 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation4 = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation4];
        }

        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v17);
    }

    [dictionary setObject:array forKeyedSubscript:@"properties"];
  }

  sourceName = [(_INPBCopyFileIntent *)self sourceName];
  dictionaryRepresentation5 = [sourceName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"sourceName"];

  if ([(_INPBCopyFileIntent *)self hasSourceType])
  {
    sourceType = [(_INPBCopyFileIntent *)self sourceType];
    if (sourceType >= 4)
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", sourceType];
    }

    else
    {
      v24 = off_1E72829B8[sourceType];
    }

    [dictionary setObject:v24 forKeyedSubscript:@"sourceType"];
  }

  v25 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBString *)self->_destinationName hash];
  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    v4 = 2654435761 * self->_destinationType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(_INPBString *)self->_entityName hash];
  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    v6 = 2654435761 * self->_entityType;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v8 = [(NSArray *)self->_properties hash];
  v9 = [(_INPBString *)self->_sourceName hash];
  if ([(_INPBCopyFileIntent *)self hasSourceType])
  {
    v10 = 2654435761 * self->_sourceType;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  destinationName = [(_INPBCopyFileIntent *)self destinationName];
  destinationName2 = [equalCopy destinationName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_34;
  }

  destinationName3 = [(_INPBCopyFileIntent *)self destinationName];
  if (destinationName3)
  {
    v8 = destinationName3;
    destinationName4 = [(_INPBCopyFileIntent *)self destinationName];
    destinationName5 = [equalCopy destinationName];
    v11 = [destinationName4 isEqual:destinationName5];

    if (!v11)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  hasDestinationType = [(_INPBCopyFileIntent *)self hasDestinationType];
  if (hasDestinationType != [equalCopy hasDestinationType])
  {
    goto LABEL_35;
  }

  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    if ([equalCopy hasDestinationType])
    {
      destinationType = self->_destinationType;
      if (destinationType != [equalCopy destinationType])
      {
        goto LABEL_35;
      }
    }
  }

  destinationName = [(_INPBCopyFileIntent *)self entityName];
  destinationName2 = [equalCopy entityName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_34;
  }

  entityName = [(_INPBCopyFileIntent *)self entityName];
  if (entityName)
  {
    v15 = entityName;
    entityName2 = [(_INPBCopyFileIntent *)self entityName];
    entityName3 = [equalCopy entityName];
    v18 = [entityName2 isEqual:entityName3];

    if (!v18)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  hasEntityType = [(_INPBCopyFileIntent *)self hasEntityType];
  if (hasEntityType != [equalCopy hasEntityType])
  {
    goto LABEL_35;
  }

  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    if ([equalCopy hasEntityType])
    {
      entityType = self->_entityType;
      if (entityType != [equalCopy entityType])
      {
        goto LABEL_35;
      }
    }
  }

  destinationName = [(_INPBCopyFileIntent *)self intentMetadata];
  destinationName2 = [equalCopy intentMetadata];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_34;
  }

  intentMetadata = [(_INPBCopyFileIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v22 = intentMetadata;
    intentMetadata2 = [(_INPBCopyFileIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v25 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v25)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  destinationName = [(_INPBCopyFileIntent *)self properties];
  destinationName2 = [equalCopy properties];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
    goto LABEL_34;
  }

  properties = [(_INPBCopyFileIntent *)self properties];
  if (properties)
  {
    v27 = properties;
    properties2 = [(_INPBCopyFileIntent *)self properties];
    properties3 = [equalCopy properties];
    v30 = [properties2 isEqual:properties3];

    if (!v30)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  destinationName = [(_INPBCopyFileIntent *)self sourceName];
  destinationName2 = [equalCopy sourceName];
  if ((destinationName != 0) == (destinationName2 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  sourceName = [(_INPBCopyFileIntent *)self sourceName];
  if (sourceName)
  {
    v32 = sourceName;
    sourceName2 = [(_INPBCopyFileIntent *)self sourceName];
    sourceName3 = [equalCopy sourceName];
    v35 = [sourceName2 isEqual:sourceName3];

    if (!v35)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  hasSourceType = [(_INPBCopyFileIntent *)self hasSourceType];
  if (hasSourceType == [equalCopy hasSourceType])
  {
    if (!-[_INPBCopyFileIntent hasSourceType](self, "hasSourceType") || ![equalCopy hasSourceType] || (sourceType = self->_sourceType, sourceType == objc_msgSend(equalCopy, "sourceType")))
    {
      v36 = 1;
      goto LABEL_36;
    }
  }

LABEL_35:
  v36 = 0;
LABEL_36:

  return v36;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCopyFileIntent allocWithZone:](_INPBCopyFileIntent init];
  v6 = [(_INPBString *)self->_destinationName copyWithZone:zone];
  [(_INPBCopyFileIntent *)v5 setDestinationName:v6];

  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    [(_INPBCopyFileIntent *)v5 setDestinationType:[(_INPBCopyFileIntent *)self destinationType]];
  }

  v7 = [(_INPBString *)self->_entityName copyWithZone:zone];
  [(_INPBCopyFileIntent *)v5 setEntityName:v7];

  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    [(_INPBCopyFileIntent *)v5 setEntityType:[(_INPBCopyFileIntent *)self entityType]];
  }

  v8 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBCopyFileIntent *)v5 setIntentMetadata:v8];

  v9 = [(NSArray *)self->_properties copyWithZone:zone];
  [(_INPBCopyFileIntent *)v5 setProperties:v9];

  v10 = [(_INPBString *)self->_sourceName copyWithZone:zone];
  [(_INPBCopyFileIntent *)v5 setSourceName:v10];

  if ([(_INPBCopyFileIntent *)self hasSourceType])
  {
    [(_INPBCopyFileIntent *)v5 setSourceType:[(_INPBCopyFileIntent *)self sourceType]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCopyFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCopyFileIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCopyFileIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  destinationName = [(_INPBCopyFileIntent *)self destinationName];

  if (destinationName)
  {
    destinationName2 = [(_INPBCopyFileIntent *)self destinationName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCopyFileIntent *)self hasDestinationType])
  {
    destinationType = self->_destinationType;
    PBDataWriterWriteInt32Field();
  }

  entityName = [(_INPBCopyFileIntent *)self entityName];

  if (entityName)
  {
    entityName2 = [(_INPBCopyFileIntent *)self entityName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCopyFileIntent *)self hasEntityType])
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt32Field();
  }

  intentMetadata = [(_INPBCopyFileIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBCopyFileIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_properties;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  sourceName = [(_INPBCopyFileIntent *)self sourceName];

  if (sourceName)
  {
    sourceName2 = [(_INPBCopyFileIntent *)self sourceName];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCopyFileIntent *)self hasSourceType])
  {
    sourceType = self->_sourceType;
    PBDataWriterWriteInt32Field();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (int)StringAsSourceType:(id)type
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

- (void)setHasSourceType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setSourceType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_sourceType = type;
  }
}

- (void)addProperties:(id)properties
{
  propertiesCopy = properties;
  properties = self->_properties;
  v8 = propertiesCopy;
  if (!properties)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_properties;
    self->_properties = array;

    propertiesCopy = v8;
    properties = self->_properties;
  }

  [(NSArray *)properties addObject:propertiesCopy];
}

- (void)setProperties:(id)properties
{
  v4 = [properties mutableCopy];
  properties = self->_properties;
  self->_properties = v4;

  MEMORY[0x1EEE66BB8](v4, properties);
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