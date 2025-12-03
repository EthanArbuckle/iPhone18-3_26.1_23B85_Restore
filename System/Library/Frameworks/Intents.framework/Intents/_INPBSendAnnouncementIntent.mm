@interface _INPBSendAnnouncementIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSendAnnouncementIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRecipients:(id)recipients;
- (void)encodeWithCoder:(id)coder;
- (void)setRecipients:(id)recipients;
- (void)setSharedUserID:(id)d;
- (void)writeTo:(id)to;
@end

@implementation _INPBSendAnnouncementIntent

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  announcement = [(_INPBSendAnnouncementIntent *)self announcement];
  dictionaryRepresentation = [announcement dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"announcement"];

  intentMetadata = [(_INPBSendAnnouncementIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBSendAnnouncementIntent *)self hasIsReply])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSendAnnouncementIntent isReply](self, "isReply")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isReply"];
  }

  if ([(NSArray *)self->_recipients count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"recipients"];
  }

  if (self->_sharedUserID)
  {
    sharedUserID = [(_INPBSendAnnouncementIntent *)self sharedUserID];
    v17 = [sharedUserID copy];
    [dictionary setObject:v17 forKeyedSubscript:@"sharedUserID"];
  }

  v18 = *MEMORY[0x1E69E9840];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  announcement = [(_INPBSendAnnouncementIntent *)self announcement];
  announcement2 = [equalCopy announcement];
  if ((announcement != 0) == (announcement2 == 0))
  {
    goto LABEL_25;
  }

  announcement3 = [(_INPBSendAnnouncementIntent *)self announcement];
  if (announcement3)
  {
    v8 = announcement3;
    announcement4 = [(_INPBSendAnnouncementIntent *)self announcement];
    announcement5 = [equalCopy announcement];
    v11 = [announcement4 isEqual:announcement5];

    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  announcement = [(_INPBSendAnnouncementIntent *)self intentMetadata];
  announcement2 = [equalCopy intentMetadata];
  if ((announcement != 0) == (announcement2 == 0))
  {
    goto LABEL_25;
  }

  intentMetadata = [(_INPBSendAnnouncementIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBSendAnnouncementIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  hasIsReply = [(_INPBSendAnnouncementIntent *)self hasIsReply];
  if (hasIsReply != [equalCopy hasIsReply])
  {
    goto LABEL_26;
  }

  if ([(_INPBSendAnnouncementIntent *)self hasIsReply])
  {
    if ([equalCopy hasIsReply])
    {
      isReply = self->_isReply;
      if (isReply != [equalCopy isReply])
      {
        goto LABEL_26;
      }
    }
  }

  announcement = [(_INPBSendAnnouncementIntent *)self recipients];
  announcement2 = [equalCopy recipients];
  if ((announcement != 0) == (announcement2 == 0))
  {
    goto LABEL_25;
  }

  recipients = [(_INPBSendAnnouncementIntent *)self recipients];
  if (recipients)
  {
    v20 = recipients;
    recipients2 = [(_INPBSendAnnouncementIntent *)self recipients];
    recipients3 = [equalCopy recipients];
    v23 = [recipients2 isEqual:recipients3];

    if (!v23)
    {
      goto LABEL_26;
    }
  }

  else
  {
  }

  announcement = [(_INPBSendAnnouncementIntent *)self sharedUserID];
  announcement2 = [equalCopy sharedUserID];
  if ((announcement != 0) != (announcement2 == 0))
  {
    sharedUserID = [(_INPBSendAnnouncementIntent *)self sharedUserID];
    if (!sharedUserID)
    {

LABEL_29:
      v29 = 1;
      goto LABEL_27;
    }

    v25 = sharedUserID;
    sharedUserID2 = [(_INPBSendAnnouncementIntent *)self sharedUserID];
    sharedUserID3 = [equalCopy sharedUserID];
    v28 = [sharedUserID2 isEqual:sharedUserID3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSendAnnouncementIntent allocWithZone:](_INPBSendAnnouncementIntent init];
  v6 = [(_INPBAnnouncement *)self->_announcement copyWithZone:zone];
  [(_INPBSendAnnouncementIntent *)v5 setAnnouncement:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSendAnnouncementIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBSendAnnouncementIntent *)self hasIsReply])
  {
    [(_INPBSendAnnouncementIntent *)v5 setIsReply:[(_INPBSendAnnouncementIntent *)self isReply]];
  }

  v8 = [(NSArray *)self->_recipients copyWithZone:zone];
  [(_INPBSendAnnouncementIntent *)v5 setRecipients:v8];

  v9 = [(NSString *)self->_sharedUserID copyWithZone:zone];
  [(_INPBSendAnnouncementIntent *)v5 setSharedUserID:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSendAnnouncementIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSendAnnouncementIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSendAnnouncementIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v24 = *MEMORY[0x1E69E9840];
  toCopy = to;
  announcement = [(_INPBSendAnnouncementIntent *)self announcement];

  if (announcement)
  {
    announcement2 = [(_INPBSendAnnouncementIntent *)self announcement];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSendAnnouncementIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSendAnnouncementIntent *)self intentMetadata];
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

  sharedUserID = [(_INPBSendAnnouncementIntent *)self sharedUserID];

  if (sharedUserID)
  {
    sharedUserID = self->_sharedUserID;
    PBDataWriterWriteStringField();
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)setSharedUserID:(id)d
{
  v4 = [d copy];
  sharedUserID = self->_sharedUserID;
  self->_sharedUserID = v4;

  MEMORY[0x1EEE66BB8](v4, sharedUserID);
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