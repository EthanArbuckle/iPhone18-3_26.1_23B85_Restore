@interface _INPBShareFileIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBShareFileIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsShareMode:(id)a3;
- (unint64_t)hash;
- (void)addRecipients:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setHasShareMode:(BOOL)a3;
- (void)setHasSuccess:(BOOL)a3;
- (void)setRecipients:(id)a3;
- (void)setShareMode:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBShareFileIntentResponse

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBShareFileIntentResponse *)self hasConfirm])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBShareFileIntentResponse confirm](self, "confirm")}];
    [v3 setObject:v4 forKeyedSubscript:@"confirm"];
  }

  if ([(NSArray *)self->_recipients count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = self->_recipients;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"recipients"];
  }

  if ([(_INPBShareFileIntentResponse *)self hasShareMode])
  {
    v12 = [(_INPBShareFileIntentResponse *)self shareMode];
    if (v12 >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v12];
    }

    else
    {
      v13 = off_1E727F780[v12];
    }

    [v3 setObject:v13 forKeyedSubscript:@"shareMode"];
  }

  if ([(_INPBShareFileIntentResponse *)self hasSuccess])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBShareFileIntentResponse success](self, "success")}];
    [v3 setObject:v14 forKeyedSubscript:@"success"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBShareFileIntentResponse *)self hasConfirm])
  {
    v3 = 2654435761 * self->_confirm;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSArray *)self->_recipients hash];
  if ([(_INPBShareFileIntentResponse *)self hasShareMode])
  {
    v5 = 2654435761 * self->_shareMode;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBShareFileIntentResponse *)self hasSuccess])
  {
    v6 = 2654435761 * self->_success;
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

  v5 = [(_INPBShareFileIntentResponse *)self hasConfirm];
  if (v5 != [v4 hasConfirm])
  {
    goto LABEL_17;
  }

  if ([(_INPBShareFileIntentResponse *)self hasConfirm])
  {
    if ([v4 hasConfirm])
    {
      confirm = self->_confirm;
      if (confirm != [v4 confirm])
      {
        goto LABEL_17;
      }
    }
  }

  v7 = [(_INPBShareFileIntentResponse *)self recipients];
  v8 = [v4 recipients];
  v9 = v8;
  if ((v7 != 0) != (v8 == 0))
  {
    v10 = [(_INPBShareFileIntentResponse *)self recipients];
    if (v10)
    {
      v11 = v10;
      v12 = [(_INPBShareFileIntentResponse *)self recipients];
      v13 = [v4 recipients];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    v15 = [(_INPBShareFileIntentResponse *)self hasShareMode];
    if (v15 == [v4 hasShareMode])
    {
      if (!-[_INPBShareFileIntentResponse hasShareMode](self, "hasShareMode") || ![v4 hasShareMode] || (shareMode = self->_shareMode, shareMode == objc_msgSend(v4, "shareMode")))
      {
        v17 = [(_INPBShareFileIntentResponse *)self hasSuccess];
        if (v17 == [v4 hasSuccess])
        {
          if (!-[_INPBShareFileIntentResponse hasSuccess](self, "hasSuccess") || ![v4 hasSuccess] || (success = self->_success, success == objc_msgSend(v4, "success")))
          {
            v18 = 1;
            goto LABEL_18;
          }
        }
      }
    }
  }

  else
  {
  }

LABEL_17:
  v18 = 0;
LABEL_18:

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBShareFileIntentResponse allocWithZone:](_INPBShareFileIntentResponse init];
  if ([(_INPBShareFileIntentResponse *)self hasConfirm])
  {
    [(_INPBShareFileIntentResponse *)v5 setConfirm:[(_INPBShareFileIntentResponse *)self confirm]];
  }

  v6 = [(NSArray *)self->_recipients copyWithZone:a3];
  [(_INPBShareFileIntentResponse *)v5 setRecipients:v6];

  if ([(_INPBShareFileIntentResponse *)self hasShareMode])
  {
    [(_INPBShareFileIntentResponse *)v5 setShareMode:[(_INPBShareFileIntentResponse *)self shareMode]];
  }

  if ([(_INPBShareFileIntentResponse *)self hasSuccess])
  {
    [(_INPBShareFileIntentResponse *)v5 setSuccess:[(_INPBShareFileIntentResponse *)self success]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBShareFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBShareFileIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBShareFileIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_INPBShareFileIntentResponse *)self hasConfirm])
  {
    confirm = self->_confirm;
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_recipients;
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
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if ([(_INPBShareFileIntentResponse *)self hasShareMode])
  {
    shareMode = self->_shareMode;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBShareFileIntentResponse *)self hasSuccess])
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setHasSuccess:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (void)setHasShareMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setShareMode:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
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

@end