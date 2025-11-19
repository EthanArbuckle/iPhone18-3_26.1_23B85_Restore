@interface _INPBShareFileIntent
- (BOOL)isEqual:(id)a3;
- (_INPBShareFileIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsShareMode:(id)a3;
- (unint64_t)hash;
- (void)addEntityName:(id)a3;
- (void)addRecipients:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setEntityNames:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setShareMode:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBShareFileIntent

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entityNames count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"entityName"];
  }

  v11 = [(_INPBShareFileIntent *)self intentMetadata];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"intentMetadata"];

  if ([(NSArray *)self->_recipients count])
  {
    v13 = [MEMORY[0x1E695DF70] array];
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

          v19 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSArray *)v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKeyedSubscript:@"recipients"];
  }

  if ([(_INPBShareFileIntent *)self hasShareMode])
  {
    v20 = [(_INPBShareFileIntent *)self shareMode];
    if (v20 >= 3)
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v20];
    }

    else
    {
      v21 = *(&off_1E727DD98 + v20);
    }

    [v3 setObject:v21 forKeyedSubscript:@"shareMode"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBShareFileIntent *)self entityNames];
  v6 = [v4 entityNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBShareFileIntent *)self entityNames];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBShareFileIntent *)self entityNames];
    v10 = [v4 entityNames];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBShareFileIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBShareFileIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBShareFileIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBShareFileIntent *)self recipients];
  v6 = [v4 recipients];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  v17 = [(_INPBShareFileIntent *)self recipients];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBShareFileIntent *)self recipients];
    v20 = [v4 recipients];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = [(_INPBShareFileIntent *)self hasShareMode];
  if (v24 == [v4 hasShareMode])
  {
    if (!-[_INPBShareFileIntent hasShareMode](self, "hasShareMode") || ![v4 hasShareMode] || (shareMode = self->_shareMode, shareMode == objc_msgSend(v4, "shareMode")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBShareFileIntent allocWithZone:](_INPBShareFileIntent init];
  v6 = [(NSArray *)self->_entityNames copyWithZone:a3];
  [(_INPBShareFileIntent *)v5 setEntityNames:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBShareFileIntent *)v5 setIntentMetadata:v7];

  v8 = [(NSArray *)self->_recipients copyWithZone:a3];
  [(_INPBShareFileIntent *)v5 setRecipients:v8];

  if ([(_INPBShareFileIntent *)self hasShareMode])
  {
    [(_INPBShareFileIntent *)v5 setShareMode:[(_INPBShareFileIntent *)self shareMode]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBShareFileIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBShareFileIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBShareFileIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBShareFileIntent *)self intentMetadata];

  if (v11)
  {
    v12 = [(_INPBShareFileIntent *)self intentMetadata];
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

- (int)StringAsShareMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AIRDROP"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"MESSAGE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MAIL"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setShareMode:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_shareMode = a3;
  }
}

- (void)addRecipients:(id)a3
{
  v4 = a3;
  recipients = self->_recipients;
  v8 = v4;
  if (!recipients)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipients;
    self->_recipients = v6;

    v4 = v8;
    recipients = self->_recipients;
  }

  [(NSArray *)recipients addObject:v4];
}

- (void)setRecipients:(id)a3
{
  v4 = [a3 mutableCopy];
  recipients = self->_recipients;
  self->_recipients = v4;

  MEMORY[0x1EEE66BB8](v4, recipients);
}

- (void)addEntityName:(id)a3
{
  v4 = a3;
  entityNames = self->_entityNames;
  v8 = v4;
  if (!entityNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_entityNames;
    self->_entityNames = v6;

    v4 = v8;
    entityNames = self->_entityNames;
  }

  [(NSArray *)entityNames addObject:v4];
}

- (void)setEntityNames:(id)a3
{
  v4 = [a3 mutableCopy];
  entityNames = self->_entityNames;
  self->_entityNames = v4;

  MEMORY[0x1EEE66BB8](v4, entityNames);
}

@end