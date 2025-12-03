@interface _INPBSendMessageIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSendMessageIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsEffect:(id)effect;
- (int)StringAsOutgoingMessageType:(id)type;
- (unint64_t)hash;
- (void)addAttachments:(id)attachments;
- (void)addRecipient:(id)recipient;
- (void)encodeWithCoder:(id)coder;
- (void)setAlternativeConversationIdentifier:(id)identifier;
- (void)setAttachments:(id)attachments;
- (void)setConversationIdentifier:(id)identifier;
- (void)setEffect:(int)effect;
- (void)setHasOutgoingMessageType:(BOOL)type;
- (void)setHasShouldHideSiriAttribution:(BOOL)attribution;
- (void)setNotificationThreadIdentifier:(id)identifier;
- (void)setOutgoingMessageType:(int)type;
- (void)setRecipients:(id)recipients;
- (void)setServiceName:(id)name;
- (void)writeTo:(id)to;
@end

@implementation _INPBSendMessageIntent

- (id)dictionaryRepresentation
{
  v53 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alternativeConversationIdentifier)
  {
    alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];
    v5 = [alternativeConversationIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"alternativeConversationIdentifier"];
  }

  if ([(NSArray *)self->_attachments count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = self->_attachments;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v48;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v48 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"attachments"];
  }

  content = [(_INPBSendMessageIntent *)self content];
  dictionaryRepresentation2 = [content dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"content"];

  if (self->_conversationIdentifier)
  {
    conversationIdentifier = [(_INPBSendMessageIntent *)self conversationIdentifier];
    v16 = [conversationIdentifier copy];
    [dictionary setObject:v16 forKeyedSubscript:@"conversationIdentifier"];
  }

  if ([(_INPBSendMessageIntent *)self hasEffect])
  {
    effect = [(_INPBSendMessageIntent *)self effect];
    if ((effect - 1) >= 0xD)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", effect];
    }

    else
    {
      v18 = off_1E7281848[(effect - 1)];
    }

    [dictionary setObject:v18 forKeyedSubscript:@"effect"];
  }

  groupName = [(_INPBSendMessageIntent *)self groupName];
  dictionaryRepresentation3 = [groupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"groupName"];

  intentMetadata = [(_INPBSendMessageIntent *)self intentMetadata];
  dictionaryRepresentation4 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"intentMetadata"];

  if (self->_notificationThreadIdentifier)
  {
    notificationThreadIdentifier = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];
    v24 = [notificationThreadIdentifier copy];
    [dictionary setObject:v24 forKeyedSubscript:@"notificationThreadIdentifier"];
  }

  if ([(_INPBSendMessageIntent *)self hasOutgoingMessageType])
  {
    outgoingMessageType = [(_INPBSendMessageIntent *)self outgoingMessageType];
    if (outgoingMessageType == 1)
    {
      v26 = @"OUTGOING_MESSAGE_TEXT";
    }

    else if (outgoingMessageType == 2)
    {
      v26 = @"OUTGOING_MESSAGE_AUDIO";
    }

    else
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", outgoingMessageType];
    }

    [dictionary setObject:v26 forKeyedSubscript:@"outgoingMessageType"];
  }

  if ([(NSArray *)self->_recipients count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v28 = self->_recipients;
    v29 = [(NSArray *)v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v44;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(v28);
          }

          dictionaryRepresentation5 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation5];
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v30);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"recipient"];
  }

  sender = [(_INPBSendMessageIntent *)self sender];
  dictionaryRepresentation6 = [sender dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"sender"];

  if (self->_serviceName)
  {
    serviceName = [(_INPBSendMessageIntent *)self serviceName];
    v37 = [serviceName copy];
    [dictionary setObject:v37 forKeyedSubscript:@"serviceName"];
  }

  if ([(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSendMessageIntent shouldHideSiriAttribution](self, "shouldHideSiriAttribution")}];
    [dictionary setObject:v38 forKeyedSubscript:@"shouldHideSiriAttribution"];
  }

  speakableGroupName = [(_INPBSendMessageIntent *)self speakableGroupName];
  dictionaryRepresentation7 = [speakableGroupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"speakableGroupName"];

  v41 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v16 = [(NSString *)self->_alternativeConversationIdentifier hash];
  v15 = [(NSArray *)self->_attachments hash];
  v14 = [(_INPBString *)self->_content hash];
  v13 = [(NSString *)self->_conversationIdentifier hash];
  if ([(_INPBSendMessageIntent *)self hasEffect])
  {
    v3 = 2654435761 * self->_effect;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_INPBString *)self->_groupName hash];
  v5 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v6 = [(NSString *)self->_notificationThreadIdentifier hash];
  if ([(_INPBSendMessageIntent *)self hasOutgoingMessageType])
  {
    v7 = 2654435761 * self->_outgoingMessageType;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSArray *)self->_recipients hash];
  v9 = [(_INPBContact *)self->_sender hash];
  v10 = [(NSString *)self->_serviceName hash];
  if ([(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution])
  {
    v11 = 2654435761 * self->_shouldHideSiriAttribution;
  }

  else
  {
    v11 = 0;
  }

  return v15 ^ v16 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(_INPBDataString *)self->_speakableGroupName hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_69;
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];
  alternativeConversationIdentifier2 = [equalCopy alternativeConversationIdentifier];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  alternativeConversationIdentifier3 = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];
  if (alternativeConversationIdentifier3)
  {
    v8 = alternativeConversationIdentifier3;
    alternativeConversationIdentifier4 = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];
    alternativeConversationIdentifier5 = [equalCopy alternativeConversationIdentifier];
    v11 = [alternativeConversationIdentifier4 isEqual:alternativeConversationIdentifier5];

    if (!v11)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self attachments];
  alternativeConversationIdentifier2 = [equalCopy attachments];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  attachments = [(_INPBSendMessageIntent *)self attachments];
  if (attachments)
  {
    v13 = attachments;
    attachments2 = [(_INPBSendMessageIntent *)self attachments];
    attachments3 = [equalCopy attachments];
    v16 = [attachments2 isEqual:attachments3];

    if (!v16)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self content];
  alternativeConversationIdentifier2 = [equalCopy content];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  content = [(_INPBSendMessageIntent *)self content];
  if (content)
  {
    v18 = content;
    content2 = [(_INPBSendMessageIntent *)self content];
    content3 = [equalCopy content];
    v21 = [content2 isEqual:content3];

    if (!v21)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self conversationIdentifier];
  alternativeConversationIdentifier2 = [equalCopy conversationIdentifier];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  conversationIdentifier = [(_INPBSendMessageIntent *)self conversationIdentifier];
  if (conversationIdentifier)
  {
    v23 = conversationIdentifier;
    conversationIdentifier2 = [(_INPBSendMessageIntent *)self conversationIdentifier];
    conversationIdentifier3 = [equalCopy conversationIdentifier];
    v26 = [conversationIdentifier2 isEqual:conversationIdentifier3];

    if (!v26)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  hasEffect = [(_INPBSendMessageIntent *)self hasEffect];
  if (hasEffect != [equalCopy hasEffect])
  {
    goto LABEL_69;
  }

  if ([(_INPBSendMessageIntent *)self hasEffect])
  {
    if ([equalCopy hasEffect])
    {
      effect = self->_effect;
      if (effect != [equalCopy effect])
      {
        goto LABEL_69;
      }
    }
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self groupName];
  alternativeConversationIdentifier2 = [equalCopy groupName];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  groupName = [(_INPBSendMessageIntent *)self groupName];
  if (groupName)
  {
    v30 = groupName;
    groupName2 = [(_INPBSendMessageIntent *)self groupName];
    groupName3 = [equalCopy groupName];
    v33 = [groupName2 isEqual:groupName3];

    if (!v33)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self intentMetadata];
  alternativeConversationIdentifier2 = [equalCopy intentMetadata];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  intentMetadata = [(_INPBSendMessageIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v35 = intentMetadata;
    intentMetadata2 = [(_INPBSendMessageIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v38 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v38)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];
  alternativeConversationIdentifier2 = [equalCopy notificationThreadIdentifier];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  notificationThreadIdentifier = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];
  if (notificationThreadIdentifier)
  {
    v40 = notificationThreadIdentifier;
    notificationThreadIdentifier2 = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];
    notificationThreadIdentifier3 = [equalCopy notificationThreadIdentifier];
    v43 = [notificationThreadIdentifier2 isEqual:notificationThreadIdentifier3];

    if (!v43)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  hasOutgoingMessageType = [(_INPBSendMessageIntent *)self hasOutgoingMessageType];
  if (hasOutgoingMessageType != [equalCopy hasOutgoingMessageType])
  {
    goto LABEL_69;
  }

  if ([(_INPBSendMessageIntent *)self hasOutgoingMessageType])
  {
    if ([equalCopy hasOutgoingMessageType])
    {
      outgoingMessageType = self->_outgoingMessageType;
      if (outgoingMessageType != [equalCopy outgoingMessageType])
      {
        goto LABEL_69;
      }
    }
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self recipients];
  alternativeConversationIdentifier2 = [equalCopy recipients];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  recipients = [(_INPBSendMessageIntent *)self recipients];
  if (recipients)
  {
    v47 = recipients;
    recipients2 = [(_INPBSendMessageIntent *)self recipients];
    recipients3 = [equalCopy recipients];
    v50 = [recipients2 isEqual:recipients3];

    if (!v50)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self sender];
  alternativeConversationIdentifier2 = [equalCopy sender];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  sender = [(_INPBSendMessageIntent *)self sender];
  if (sender)
  {
    v52 = sender;
    sender2 = [(_INPBSendMessageIntent *)self sender];
    sender3 = [equalCopy sender];
    v55 = [sender2 isEqual:sender3];

    if (!v55)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self serviceName];
  alternativeConversationIdentifier2 = [equalCopy serviceName];
  if ((alternativeConversationIdentifier != 0) == (alternativeConversationIdentifier2 == 0))
  {
    goto LABEL_68;
  }

  serviceName = [(_INPBSendMessageIntent *)self serviceName];
  if (serviceName)
  {
    v57 = serviceName;
    serviceName2 = [(_INPBSendMessageIntent *)self serviceName];
    serviceName3 = [equalCopy serviceName];
    v60 = [serviceName2 isEqual:serviceName3];

    if (!v60)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  hasShouldHideSiriAttribution = [(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution];
  if (hasShouldHideSiriAttribution != [equalCopy hasShouldHideSiriAttribution])
  {
    goto LABEL_69;
  }

  if ([(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution])
  {
    if ([equalCopy hasShouldHideSiriAttribution])
    {
      shouldHideSiriAttribution = self->_shouldHideSiriAttribution;
      if (shouldHideSiriAttribution != [equalCopy shouldHideSiriAttribution])
      {
        goto LABEL_69;
      }
    }
  }

  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self speakableGroupName];
  alternativeConversationIdentifier2 = [equalCopy speakableGroupName];
  if ((alternativeConversationIdentifier != 0) != (alternativeConversationIdentifier2 == 0))
  {
    speakableGroupName = [(_INPBSendMessageIntent *)self speakableGroupName];
    if (!speakableGroupName)
    {

LABEL_72:
      v68 = 1;
      goto LABEL_70;
    }

    v64 = speakableGroupName;
    speakableGroupName2 = [(_INPBSendMessageIntent *)self speakableGroupName];
    speakableGroupName3 = [equalCopy speakableGroupName];
    v67 = [speakableGroupName2 isEqual:speakableGroupName3];

    if (v67)
    {
      goto LABEL_72;
    }
  }

  else
  {
LABEL_68:
  }

LABEL_69:
  v68 = 0;
LABEL_70:

  return v68;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSendMessageIntent allocWithZone:](_INPBSendMessageIntent init];
  v6 = [(NSString *)self->_alternativeConversationIdentifier copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setAlternativeConversationIdentifier:v6];

  v7 = [(NSArray *)self->_attachments copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setAttachments:v7];

  v8 = [(_INPBString *)self->_content copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setContent:v8];

  v9 = [(NSString *)self->_conversationIdentifier copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setConversationIdentifier:v9];

  if ([(_INPBSendMessageIntent *)self hasEffect])
  {
    [(_INPBSendMessageIntent *)v5 setEffect:[(_INPBSendMessageIntent *)self effect]];
  }

  v10 = [(_INPBString *)self->_groupName copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setGroupName:v10];

  v11 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setIntentMetadata:v11];

  v12 = [(NSString *)self->_notificationThreadIdentifier copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setNotificationThreadIdentifier:v12];

  if ([(_INPBSendMessageIntent *)self hasOutgoingMessageType])
  {
    [(_INPBSendMessageIntent *)v5 setOutgoingMessageType:[(_INPBSendMessageIntent *)self outgoingMessageType]];
  }

  v13 = [(NSArray *)self->_recipients copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setRecipients:v13];

  v14 = [(_INPBContact *)self->_sender copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setSender:v14];

  v15 = [(NSString *)self->_serviceName copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setServiceName:v15];

  if ([(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution])
  {
    [(_INPBSendMessageIntent *)v5 setShouldHideSiriAttribution:[(_INPBSendMessageIntent *)self shouldHideSiriAttribution]];
  }

  v16 = [(_INPBDataString *)self->_speakableGroupName copyWithZone:zone];
  [(_INPBSendMessageIntent *)v5 setSpeakableGroupName:v16];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSendMessageIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSendMessageIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSendMessageIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v49 = *MEMORY[0x1E69E9840];
  toCopy = to;
  alternativeConversationIdentifier = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];

  if (alternativeConversationIdentifier)
  {
    alternativeConversationIdentifier = self->_alternativeConversationIdentifier;
    PBDataWriterWriteStringField();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = self->_attachments;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v9);
  }

  content = [(_INPBSendMessageIntent *)self content];

  if (content)
  {
    content2 = [(_INPBSendMessageIntent *)self content];
    PBDataWriterWriteSubmessage();
  }

  conversationIdentifier = [(_INPBSendMessageIntent *)self conversationIdentifier];

  if (conversationIdentifier)
  {
    conversationIdentifier = self->_conversationIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSendMessageIntent *)self hasEffect])
  {
    effect = self->_effect;
    PBDataWriterWriteInt32Field();
  }

  groupName = [(_INPBSendMessageIntent *)self groupName];

  if (groupName)
  {
    groupName2 = [(_INPBSendMessageIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSendMessageIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSendMessageIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  notificationThreadIdentifier = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];

  if (notificationThreadIdentifier)
  {
    notificationThreadIdentifier = self->_notificationThreadIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSendMessageIntent *)self hasOutgoingMessageType])
  {
    outgoingMessageType = self->_outgoingMessageType;
    PBDataWriterWriteInt32Field();
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = self->_recipients;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      v29 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v39 + 1) + 8 * v29);
        PBDataWriterWriteSubmessage();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v27);
  }

  sender = [(_INPBSendMessageIntent *)self sender];

  if (sender)
  {
    sender2 = [(_INPBSendMessageIntent *)self sender];
    PBDataWriterWriteSubmessage();
  }

  serviceName = [(_INPBSendMessageIntent *)self serviceName];

  if (serviceName)
  {
    serviceName = self->_serviceName;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution])
  {
    shouldHideSiriAttribution = self->_shouldHideSiriAttribution;
    PBDataWriterWriteBOOLField();
  }

  speakableGroupName = [(_INPBSendMessageIntent *)self speakableGroupName];

  if (speakableGroupName)
  {
    speakableGroupName2 = [(_INPBSendMessageIntent *)self speakableGroupName];
    PBDataWriterWriteSubmessage();
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)setHasShouldHideSiriAttribution:(BOOL)attribution
{
  if (attribution)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setServiceName:(id)name
{
  v4 = [name copy];
  serviceName = self->_serviceName;
  self->_serviceName = v4;

  MEMORY[0x1EEE66BB8](v4, serviceName);
}

- (void)addRecipient:(id)recipient
{
  recipientCopy = recipient;
  recipients = self->_recipients;
  v8 = recipientCopy;
  if (!recipients)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_recipients;
    self->_recipients = array;

    recipientCopy = v8;
    recipients = self->_recipients;
  }

  [(NSArray *)recipients addObject:recipientCopy];
}

- (void)setRecipients:(id)recipients
{
  v4 = [recipients mutableCopy];
  recipients = self->_recipients;
  self->_recipients = v4;

  MEMORY[0x1EEE66BB8](v4, recipients);
}

- (int)StringAsOutgoingMessageType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"OUTGOING_MESSAGE_TEXT"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"OUTGOING_MESSAGE_AUDIO"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasOutgoingMessageType:(BOOL)type
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

- (void)setOutgoingMessageType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_outgoingMessageType = type;
  }
}

- (void)setNotificationThreadIdentifier:(id)identifier
{
  v4 = [identifier copy];
  notificationThreadIdentifier = self->_notificationThreadIdentifier;
  self->_notificationThreadIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, notificationThreadIdentifier);
}

- (int)StringAsEffect:(id)effect
{
  effectCopy = effect;
  if ([effectCopy isEqualToString:@"HAPPY_BIRTHDAY"])
  {
    v4 = 1;
  }

  else if ([effectCopy isEqualToString:@"CONFETTI"])
  {
    v4 = 2;
  }

  else if ([effectCopy isEqualToString:@"LASERS"])
  {
    v4 = 3;
  }

  else if ([effectCopy isEqualToString:@"FIREWORKS"])
  {
    v4 = 4;
  }

  else if ([effectCopy isEqualToString:@"SHOOTING_STAR"])
  {
    v4 = 5;
  }

  else if ([effectCopy isEqualToString:@"INVISBLE_INK"])
  {
    v4 = 6;
  }

  else if ([effectCopy isEqualToString:@"GENTLE"])
  {
    v4 = 7;
  }

  else if ([effectCopy isEqualToString:@"LOUD"])
  {
    v4 = 8;
  }

  else if ([effectCopy isEqualToString:@"IMPACT"])
  {
    v4 = 9;
  }

  else if ([effectCopy isEqualToString:@"SPARKLES"])
  {
    v4 = 10;
  }

  else if ([effectCopy isEqualToString:@"HEART"])
  {
    v4 = 11;
  }

  else if ([effectCopy isEqualToString:@"ECHO"])
  {
    v4 = 12;
  }

  else if ([effectCopy isEqualToString:@"SPOTLIGHT"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setEffect:(int)effect
{
  has = self->_has;
  if (effect == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_effect = effect;
  }
}

- (void)setConversationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  conversationIdentifier = self->_conversationIdentifier;
  self->_conversationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, conversationIdentifier);
}

- (void)addAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  attachments = self->_attachments;
  v8 = attachmentsCopy;
  if (!attachments)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_attachments;
    self->_attachments = array;

    attachmentsCopy = v8;
    attachments = self->_attachments;
  }

  [(NSArray *)attachments addObject:attachmentsCopy];
}

- (void)setAttachments:(id)attachments
{
  v4 = [attachments mutableCopy];
  attachments = self->_attachments;
  self->_attachments = v4;

  MEMORY[0x1EEE66BB8](v4, attachments);
}

- (void)setAlternativeConversationIdentifier:(id)identifier
{
  v4 = [identifier copy];
  alternativeConversationIdentifier = self->_alternativeConversationIdentifier;
  self->_alternativeConversationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, alternativeConversationIdentifier);
}

@end