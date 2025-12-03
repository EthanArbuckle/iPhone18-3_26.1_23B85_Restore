@interface _INPBShareFileIntent
- (BOOL)isEqual:(id)equal;
- (_INPBShareFileIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsShareMode:(id)mode;
- (unint64_t)hash;
- (void)addEntityName:(id)name;
- (void)addRecipients:(id)recipients;
- (void)encodeWithCoder:(id)coder;
- (void)setEntityNames:(id)names;
- (void)setRecipients:(id)recipients;
- (void)setShareMode:(int)mode;
- (void)writeTo:(id)to;
@end

@implementation _INPBShareFileIntent

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entityNames count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = self->_entityNames;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"entityName"];
  }

  intentMetadata = [(_INPBShareFileIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_recipients count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v14 = self->_recipients;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation3 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation3];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"recipients"];
  }

  if ([(_INPBShareFileIntent *)self hasShareMode])
  {
    shareMode = [(_INPBShareFileIntent *)self shareMode];
    if (shareMode >= 3)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", shareMode];
    }

    else
    {
      v21 = *(&off_1E727DD98 + shareMode);
    }

    [dictionary setObject:v21 forKeyedSubscript:@"shareMode"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_entityNames hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v5 = [(NSArray *)self->_recipients hash];
  if ([(_INPBShareFileIntent *)self hasShareMode])
  {
    v6 = 2654435761 * self->_shareMode;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  entityNames = [(_INPBShareFileIntent *)self entityNames];
  entityNames2 = [equalCopy entityNames];
  if ((entityNames != 0) == (entityNames2 == 0))
  {
    goto LABEL_16;
  }

  entityNames3 = [(_INPBShareFileIntent *)self entityNames];
  if (entityNames3)
  {
    v8 = entityNames3;
    entityNames4 = [(_INPBShareFileIntent *)self entityNames];
    entityNames5 = [equalCopy entityNames];
    v11 = [entityNames4 isEqual:entityNames5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  entityNames = [(_INPBShareFileIntent *)self intentMetadata];
  entityNames2 = [equalCopy intentMetadata];
  if ((entityNames != 0) == (entityNames2 == 0))
  {
    goto LABEL_16;
  }

  intentMetadata = [(_INPBShareFileIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBShareFileIntent *)self intentMetadata];
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

  entityNames = [(_INPBShareFileIntent *)self recipients];
  entityNames2 = [equalCopy recipients];
  if ((entityNames != 0) == (entityNames2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  recipients = [(_INPBShareFileIntent *)self recipients];
  if (recipients)
  {
    v18 = recipients;
    recipients2 = [(_INPBShareFileIntent *)self recipients];
    recipients3 = [equalCopy recipients];
    v21 = [recipients2 isEqual:recipients3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  hasShareMode = [(_INPBShareFileIntent *)self hasShareMode];
  if (hasShareMode == [equalCopy hasShareMode])
  {
    if (!-[_INPBShareFileIntent hasShareMode](self, "hasShareMode") || ![equalCopy hasShareMode] || (shareMode = self->_shareMode, shareMode == objc_msgSend(equalCopy, "shareMode")))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBShareFileIntent allocWithZone:](_INPBShareFileIntent init];
  v6 = [(NSArray *)self->_entityNames copyWithZone:zone];
  [(_INPBShareFileIntent *)v5 setEntityNames:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBShareFileIntent *)v5 setIntentMetadata:v7];

  v8 = [(NSArray *)self->_recipients copyWithZone:zone];
  [(_INPBShareFileIntent *)v5 setRecipients:v8];

  if ([(_INPBShareFileIntent *)self hasShareMode])
  {
    [(_INPBShareFileIntent *)v5 setShareMode:[(_INPBShareFileIntent *)self shareMode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBShareFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBShareFileIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBShareFileIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_entityNames;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  intentMetadata = [(_INPBShareFileIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBShareFileIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_recipients;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  if ([(_INPBShareFileIntent *)self hasShareMode])
  {
    shareMode = self->_shareMode;
    PBDataWriterWriteInt32Field();
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (int)StringAsShareMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"AIRDROP"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"MESSAGE"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"MAIL"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setShareMode:(int)mode
{
  has = self->_has;
  if (mode == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_shareMode = mode;
  }
}

- (void)addRecipients:(id)recipients
{
  recipientsCopy = recipients;
  recipients = self->_recipients;
  v8 = recipientsCopy;
  if (!recipients)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipients;
    self->_recipients = array;

    recipientsCopy = v8;
    recipients = self->_recipients;
  }

  [(NSArray *)recipients addObject:recipientsCopy];
}

- (void)setRecipients:(id)recipients
{
  v4 = [recipients mutableCopy];
  recipients = self->_recipients;
  self->_recipients = v4;

  MEMORY[0x1EEE66BB8](v4, recipients);
}

- (void)addEntityName:(id)name
{
  nameCopy = name;
  entityNames = self->_entityNames;
  v8 = nameCopy;
  if (!entityNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityNames;
    self->_entityNames = array;

    nameCopy = v8;
    entityNames = self->_entityNames;
  }

  [(NSArray *)entityNames addObject:nameCopy];
}

- (void)setEntityNames:(id)names
{
  v4 = [names mutableCopy];
  entityNames = self->_entityNames;
  self->_entityNames = v4;

  MEMORY[0x1EEE66BB8](v4, entityNames);
}

@end