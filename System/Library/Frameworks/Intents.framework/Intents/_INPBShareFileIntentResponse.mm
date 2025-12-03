@interface _INPBShareFileIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBShareFileIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsShareMode:(id)mode;
- (unint64_t)hash;
- (void)addRecipients:(id)recipients;
- (void)encodeWithCoder:(id)coder;
- (void)setHasShareMode:(BOOL)mode;
- (void)setHasSuccess:(BOOL)success;
- (void)setRecipients:(id)recipients;
- (void)setShareMode:(int)mode;
- (void)writeTo:(id)to;
@end

@implementation _INPBShareFileIntentResponse

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBShareFileIntentResponse *)self hasConfirm])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBShareFileIntentResponse confirm](self, "confirm")}];
    [dictionary setObject:v4 forKeyedSubscript:@"confirm"];
  }

  if ([(NSArray *)self->_recipients count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"recipients"];
  }

  if ([(_INPBShareFileIntentResponse *)self hasShareMode])
  {
    shareMode = [(_INPBShareFileIntentResponse *)self shareMode];
    if (shareMode >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", shareMode];
    }

    else
    {
      v13 = off_1E727F780[shareMode];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"shareMode"];
  }

  if ([(_INPBShareFileIntentResponse *)self hasSuccess])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBShareFileIntentResponse success](self, "success")}];
    [dictionary setObject:v14 forKeyedSubscript:@"success"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  hasConfirm = [(_INPBShareFileIntentResponse *)self hasConfirm];
  if (hasConfirm != [equalCopy hasConfirm])
  {
    goto LABEL_17;
  }

  if ([(_INPBShareFileIntentResponse *)self hasConfirm])
  {
    if ([equalCopy hasConfirm])
    {
      confirm = self->_confirm;
      if (confirm != [equalCopy confirm])
      {
        goto LABEL_17;
      }
    }
  }

  recipients = [(_INPBShareFileIntentResponse *)self recipients];
  recipients2 = [equalCopy recipients];
  v9 = recipients2;
  if ((recipients != 0) != (recipients2 == 0))
  {
    recipients3 = [(_INPBShareFileIntentResponse *)self recipients];
    if (recipients3)
    {
      v11 = recipients3;
      recipients4 = [(_INPBShareFileIntentResponse *)self recipients];
      recipients5 = [equalCopy recipients];
      v14 = [recipients4 isEqual:recipients5];

      if (!v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
    }

    hasShareMode = [(_INPBShareFileIntentResponse *)self hasShareMode];
    if (hasShareMode == [equalCopy hasShareMode])
    {
      if (!-[_INPBShareFileIntentResponse hasShareMode](self, "hasShareMode") || ![equalCopy hasShareMode] || (shareMode = self->_shareMode, shareMode == objc_msgSend(equalCopy, "shareMode")))
      {
        hasSuccess = [(_INPBShareFileIntentResponse *)self hasSuccess];
        if (hasSuccess == [equalCopy hasSuccess])
        {
          if (!-[_INPBShareFileIntentResponse hasSuccess](self, "hasSuccess") || ![equalCopy hasSuccess] || (success = self->_success, success == objc_msgSend(equalCopy, "success")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBShareFileIntentResponse allocWithZone:](_INPBShareFileIntentResponse init];
  if ([(_INPBShareFileIntentResponse *)self hasConfirm])
  {
    [(_INPBShareFileIntentResponse *)v5 setConfirm:[(_INPBShareFileIntentResponse *)self confirm]];
  }

  v6 = [(NSArray *)self->_recipients copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBShareFileIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBShareFileIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBShareFileIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)setHasSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (void)setHasShareMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setShareMode:(int)mode
{
  has = self->_has;
  if (mode == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
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

@end