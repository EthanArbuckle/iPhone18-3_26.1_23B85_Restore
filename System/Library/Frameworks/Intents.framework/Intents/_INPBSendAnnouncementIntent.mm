@interface _INPBSendAnnouncementIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSendAnnouncementIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRecipients:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setSharedUserID:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSendAnnouncementIntent

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSendAnnouncementIntent *)self announcement];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"announcement"];

  v6 = [(_INPBSendAnnouncementIntent *)self intentMetadata];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSendAnnouncementIntent *)self hasIsReply])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSendAnnouncementIntent isReply](self, "isReply")}];
    [v3 setObject:v8 forKeyedSubscript:@"isReply"];
  }

  if ([(NSArray *)self->_recipients count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_recipients;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"recipients"];
  }

  if (self->_sharedUserID)
  {
    v16 = [(_INPBSendAnnouncementIntent *)self sharedUserID];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"sharedUserID"];
  }

  v18 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBAnnouncement *)self->_announcement hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBSendAnnouncementIntent *)self hasIsReply])
  {
    v5 = 2654435761 * self->_isReply;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSArray *)self->_recipients hash];
  return v6 ^ [(NSString *)self->_sharedUserID hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = [(_INPBSendAnnouncementIntent *)self announcement];
  v6 = [v4 announcement];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v7 = [(_INPBSendAnnouncementIntent *)self announcement];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSendAnnouncementIntent *)self announcement];
    v10 = [v4 announcement];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendAnnouncementIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v12 = [(_INPBSendAnnouncementIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSendAnnouncementIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v17 = [(_INPBSendAnnouncementIntent *)self hasIsReply];
  if (v17 != [v4 hasIsReply])
  {
    goto LABEL_26;
  }

  if ([(_INPBSendAnnouncementIntent *)self hasIsReply])
  {
    if ([v4 hasIsReply])
    {
      isReply = self->_isReply;
      if (isReply != [v4 isReply])
      {
        goto LABEL_26;
      }
    }
  }

  v5 = [(_INPBSendAnnouncementIntent *)self recipients];
  v6 = [v4 recipients];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_25;
  }

  v19 = [(_INPBSendAnnouncementIntent *)self recipients];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBSendAnnouncementIntent *)self recipients];
    v22 = [v4 recipients];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendAnnouncementIntent *)self sharedUserID];
  v6 = [v4 sharedUserID];
  if ((v5 != 0) != (v6 == 0))
  {
    v24 = [(_INPBSendAnnouncementIntent *)self sharedUserID];
    if (!v24)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = v24;
    v26 = [(_INPBSendAnnouncementIntent *)self sharedUserID];
    v27 = [v4 sharedUserID];
    v28 = [v26 isEqual:v27];

    if (v28)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_25:
  }

LABEL_26:
  v29 = 0;
LABEL_27:

  return v29;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSendAnnouncementIntent allocWithZone:](_INPBSendAnnouncementIntent init];
  v6 = [(_INPBAnnouncement *)self->_announcement copyWithZone:a3];
  [(_INPBSendAnnouncementIntent *)v5 setAnnouncement:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSendAnnouncementIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBSendAnnouncementIntent *)self hasIsReply])
  {
    [(_INPBSendAnnouncementIntent *)v5 setIsReply:[(_INPBSendAnnouncementIntent *)self isReply]];
  }

  v8 = [(NSArray *)self->_recipients copyWithZone:a3];
  [(_INPBSendAnnouncementIntent *)v5 setRecipients:v8];

  v9 = [(NSString *)self->_sharedUserID copyWithZone:a3];
  [(_INPBSendAnnouncementIntent *)v5 setSharedUserID:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSendAnnouncementIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSendAnnouncementIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSendAnnouncementIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBSendAnnouncementIntent *)self announcement];

  if (v5)
  {
    v6 = [(_INPBSendAnnouncementIntent *)self announcement];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBSendAnnouncementIntent *)self intentMetadata];

  if (v7)
  {
    v8 = [(_INPBSendAnnouncementIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSendAnnouncementIntent *)self hasIsReply])
  {
    isReply = self->_isReply;
    PBDataWriterWriteBOOLField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = self->_recipients;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [(_INPBSendAnnouncementIntent *)self sharedUserID];

  if (v16)
  {
    sharedUserID = self->_sharedUserID;
    PBDataWriterWriteStringField();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setSharedUserID:(id)a3
{
  v4 = [a3 copy];
  sharedUserID = self->_sharedUserID;
  self->_sharedUserID = v4;

  MEMORY[0x1EEE66BB8](v4, sharedUserID);
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