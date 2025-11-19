@interface _INPBSendMessageIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSendMessageIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsEffect:(id)a3;
- (int)StringAsOutgoingMessageType:(id)a3;
- (unint64_t)hash;
- (void)addAttachments:(id)a3;
- (void)addRecipient:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAlternativeConversationIdentifier:(id)a3;
- (void)setAttachments:(id)a3;
- (void)setConversationIdentifier:(id)a3;
- (void)setEffect:(int)a3;
- (void)setHasOutgoingMessageType:(BOOL)a3;
- (void)setHasShouldHideSiriAttribution:(BOOL)a3;
- (void)setNotificationThreadIdentifier:(id)a3;
- (void)setOutgoingMessageType:(int)a3;
- (void)setRecipients:(id)a3;
- (void)setServiceName:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSendMessageIntent

- (id)dictionaryRepresentation
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alternativeConversationIdentifier)
  {
    v4 = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"alternativeConversationIdentifier"];
  }

  if ([(NSArray *)self->_attachments count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v47 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"attachments"];
  }

  v13 = [(_INPBSendMessageIntent *)self content];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"content"];

  if (self->_conversationIdentifier)
  {
    v15 = [(_INPBSendMessageIntent *)self conversationIdentifier];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"conversationIdentifier"];
  }

  if ([(_INPBSendMessageIntent *)self hasEffect])
  {
    v17 = [(_INPBSendMessageIntent *)self effect];
    if ((v17 - 1) >= 0xD)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v17];
    }

    else
    {
      v18 = off_1E7281848[(v17 - 1)];
    }

    [v3 setObject:v18 forKeyedSubscript:@"effect"];
  }

  v19 = [(_INPBSendMessageIntent *)self groupName];
  v20 = [v19 dictionaryRepresentation];
  [v3 setObject:v20 forKeyedSubscript:@"groupName"];

  v21 = [(_INPBSendMessageIntent *)self intentMetadata];
  v22 = [v21 dictionaryRepresentation];
  [v3 setObject:v22 forKeyedSubscript:@"intentMetadata"];

  if (self->_notificationThreadIdentifier)
  {
    v23 = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"notificationThreadIdentifier"];
  }

  if ([(_INPBSendMessageIntent *)self hasOutgoingMessageType])
  {
    v25 = [(_INPBSendMessageIntent *)self outgoingMessageType];
    if (v25 == 1)
    {
      v26 = @"OUTGOING_MESSAGE_TEXT";
    }

    else if (v25 == 2)
    {
      v26 = @"OUTGOING_MESSAGE_AUDIO";
    }

    else
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v25];
    }

    [v3 setObject:v26 forKeyedSubscript:@"outgoingMessageType"];
  }

  if ([(NSArray *)self->_recipients count])
  {
    v27 = [MEMORY[0x1E695DF70] array];
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

          v33 = [*(*(&v43 + 1) + 8 * j) dictionaryRepresentation];
          [v27 addObject:v33];
        }

        v30 = [(NSArray *)v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v30);
    }

    [v3 setObject:v27 forKeyedSubscript:@"recipient"];
  }

  v34 = [(_INPBSendMessageIntent *)self sender];
  v35 = [v34 dictionaryRepresentation];
  [v3 setObject:v35 forKeyedSubscript:@"sender"];

  if (self->_serviceName)
  {
    v36 = [(_INPBSendMessageIntent *)self serviceName];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"serviceName"];
  }

  if ([(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSendMessageIntent shouldHideSiriAttribution](self, "shouldHideSiriAttribution")}];
    [v3 setObject:v38 forKeyedSubscript:@"shouldHideSiriAttribution"];
  }

  v39 = [(_INPBSendMessageIntent *)self speakableGroupName];
  v40 = [v39 dictionaryRepresentation];
  [v3 setObject:v40 forKeyedSubscript:@"speakableGroupName"];

  v41 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_69;
  }

  v5 = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];
  v6 = [v4 alternativeConversationIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v7 = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];
    v10 = [v4 alternativeConversationIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageIntent *)self attachments];
  v6 = [v4 attachments];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v12 = [(_INPBSendMessageIntent *)self attachments];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSendMessageIntent *)self attachments];
    v15 = [v4 attachments];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageIntent *)self content];
  v6 = [v4 content];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v17 = [(_INPBSendMessageIntent *)self content];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSendMessageIntent *)self content];
    v20 = [v4 content];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageIntent *)self conversationIdentifier];
  v6 = [v4 conversationIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v22 = [(_INPBSendMessageIntent *)self conversationIdentifier];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBSendMessageIntent *)self conversationIdentifier];
    v25 = [v4 conversationIdentifier];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v27 = [(_INPBSendMessageIntent *)self hasEffect];
  if (v27 != [v4 hasEffect])
  {
    goto LABEL_69;
  }

  if ([(_INPBSendMessageIntent *)self hasEffect])
  {
    if ([v4 hasEffect])
    {
      effect = self->_effect;
      if (effect != [v4 effect])
      {
        goto LABEL_69;
      }
    }
  }

  v5 = [(_INPBSendMessageIntent *)self groupName];
  v6 = [v4 groupName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v29 = [(_INPBSendMessageIntent *)self groupName];
  if (v29)
  {
    v30 = v29;
    v31 = [(_INPBSendMessageIntent *)self groupName];
    v32 = [v4 groupName];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v34 = [(_INPBSendMessageIntent *)self intentMetadata];
  if (v34)
  {
    v35 = v34;
    v36 = [(_INPBSendMessageIntent *)self intentMetadata];
    v37 = [v4 intentMetadata];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];
  v6 = [v4 notificationThreadIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v39 = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];
  if (v39)
  {
    v40 = v39;
    v41 = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];
    v42 = [v4 notificationThreadIdentifier];
    v43 = [v41 isEqual:v42];

    if (!v43)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v44 = [(_INPBSendMessageIntent *)self hasOutgoingMessageType];
  if (v44 != [v4 hasOutgoingMessageType])
  {
    goto LABEL_69;
  }

  if ([(_INPBSendMessageIntent *)self hasOutgoingMessageType])
  {
    if ([v4 hasOutgoingMessageType])
    {
      outgoingMessageType = self->_outgoingMessageType;
      if (outgoingMessageType != [v4 outgoingMessageType])
      {
        goto LABEL_69;
      }
    }
  }

  v5 = [(_INPBSendMessageIntent *)self recipients];
  v6 = [v4 recipients];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v46 = [(_INPBSendMessageIntent *)self recipients];
  if (v46)
  {
    v47 = v46;
    v48 = [(_INPBSendMessageIntent *)self recipients];
    v49 = [v4 recipients];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageIntent *)self sender];
  v6 = [v4 sender];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v51 = [(_INPBSendMessageIntent *)self sender];
  if (v51)
  {
    v52 = v51;
    v53 = [(_INPBSendMessageIntent *)self sender];
    v54 = [v4 sender];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v5 = [(_INPBSendMessageIntent *)self serviceName];
  v6 = [v4 serviceName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_68;
  }

  v56 = [(_INPBSendMessageIntent *)self serviceName];
  if (v56)
  {
    v57 = v56;
    v58 = [(_INPBSendMessageIntent *)self serviceName];
    v59 = [v4 serviceName];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_69;
    }
  }

  else
  {
  }

  v61 = [(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution];
  if (v61 != [v4 hasShouldHideSiriAttribution])
  {
    goto LABEL_69;
  }

  if ([(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution])
  {
    if ([v4 hasShouldHideSiriAttribution])
    {
      shouldHideSiriAttribution = self->_shouldHideSiriAttribution;
      if (shouldHideSiriAttribution != [v4 shouldHideSiriAttribution])
      {
        goto LABEL_69;
      }
    }
  }

  v5 = [(_INPBSendMessageIntent *)self speakableGroupName];
  v6 = [v4 speakableGroupName];
  if ((v5 != 0) != (v6 == 0))
  {
    v63 = [(_INPBSendMessageIntent *)self speakableGroupName];
    if (!v63)
    {

LABEL_72:
      v68 = 1;
      goto LABEL_70;
    }

    v64 = v63;
    v65 = [(_INPBSendMessageIntent *)self speakableGroupName];
    v66 = [v4 speakableGroupName];
    v67 = [v65 isEqual:v66];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSendMessageIntent allocWithZone:](_INPBSendMessageIntent init];
  v6 = [(NSString *)self->_alternativeConversationIdentifier copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setAlternativeConversationIdentifier:v6];

  v7 = [(NSArray *)self->_attachments copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setAttachments:v7];

  v8 = [(_INPBString *)self->_content copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setContent:v8];

  v9 = [(NSString *)self->_conversationIdentifier copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setConversationIdentifier:v9];

  if ([(_INPBSendMessageIntent *)self hasEffect])
  {
    [(_INPBSendMessageIntent *)v5 setEffect:[(_INPBSendMessageIntent *)self effect]];
  }

  v10 = [(_INPBString *)self->_groupName copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setGroupName:v10];

  v11 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setIntentMetadata:v11];

  v12 = [(NSString *)self->_notificationThreadIdentifier copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setNotificationThreadIdentifier:v12];

  if ([(_INPBSendMessageIntent *)self hasOutgoingMessageType])
  {
    [(_INPBSendMessageIntent *)v5 setOutgoingMessageType:[(_INPBSendMessageIntent *)self outgoingMessageType]];
  }

  v13 = [(NSArray *)self->_recipients copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setRecipients:v13];

  v14 = [(_INPBContact *)self->_sender copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setSender:v14];

  v15 = [(NSString *)self->_serviceName copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setServiceName:v15];

  if ([(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution])
  {
    [(_INPBSendMessageIntent *)v5 setShouldHideSiriAttribution:[(_INPBSendMessageIntent *)self shouldHideSiriAttribution]];
  }

  v16 = [(_INPBDataString *)self->_speakableGroupName copyWithZone:a3];
  [(_INPBSendMessageIntent *)v5 setSpeakableGroupName:v16];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSendMessageIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSendMessageIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSendMessageIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBSendMessageIntent *)self alternativeConversationIdentifier];

  if (v5)
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

  v13 = [(_INPBSendMessageIntent *)self content];

  if (v13)
  {
    v14 = [(_INPBSendMessageIntent *)self content];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBSendMessageIntent *)self conversationIdentifier];

  if (v15)
  {
    conversationIdentifier = self->_conversationIdentifier;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSendMessageIntent *)self hasEffect])
  {
    effect = self->_effect;
    PBDataWriterWriteInt32Field();
  }

  v18 = [(_INPBSendMessageIntent *)self groupName];

  if (v18)
  {
    v19 = [(_INPBSendMessageIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(_INPBSendMessageIntent *)self intentMetadata];

  if (v20)
  {
    v21 = [(_INPBSendMessageIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(_INPBSendMessageIntent *)self notificationThreadIdentifier];

  if (v22)
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

  v31 = [(_INPBSendMessageIntent *)self sender];

  if (v31)
  {
    v32 = [(_INPBSendMessageIntent *)self sender];
    PBDataWriterWriteSubmessage();
  }

  v33 = [(_INPBSendMessageIntent *)self serviceName];

  if (v33)
  {
    serviceName = self->_serviceName;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBSendMessageIntent *)self hasShouldHideSiriAttribution])
  {
    shouldHideSiriAttribution = self->_shouldHideSiriAttribution;
    PBDataWriterWriteBOOLField();
  }

  v36 = [(_INPBSendMessageIntent *)self speakableGroupName];

  if (v36)
  {
    v37 = [(_INPBSendMessageIntent *)self speakableGroupName];
    PBDataWriterWriteSubmessage();
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)setHasShouldHideSiriAttribution:(BOOL)a3
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

- (void)setServiceName:(id)a3
{
  v4 = [a3 copy];
  serviceName = self->_serviceName;
  self->_serviceName = v4;

  MEMORY[0x1EEE66BB8](v4, serviceName);
}

- (void)addRecipient:(id)a3
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

- (int)StringAsOutgoingMessageType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"OUTGOING_MESSAGE_TEXT"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"OUTGOING_MESSAGE_AUDIO"])
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

- (void)setHasOutgoingMessageType:(BOOL)a3
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

- (void)setOutgoingMessageType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_outgoingMessageType = a3;
  }
}

- (void)setNotificationThreadIdentifier:(id)a3
{
  v4 = [a3 copy];
  notificationThreadIdentifier = self->_notificationThreadIdentifier;
  self->_notificationThreadIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, notificationThreadIdentifier);
}

- (int)StringAsEffect:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HAPPY_BIRTHDAY"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONFETTI"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LASERS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FIREWORKS"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SHOOTING_STAR"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"INVISBLE_INK"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"GENTLE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"LOUD"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"IMPACT"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SPARKLES"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"HEART"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"ECHO"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"SPOTLIGHT"])
  {
    v4 = 13;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setEffect:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_effect = a3;
  }
}

- (void)setConversationIdentifier:(id)a3
{
  v4 = [a3 copy];
  conversationIdentifier = self->_conversationIdentifier;
  self->_conversationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, conversationIdentifier);
}

- (void)addAttachments:(id)a3
{
  v4 = a3;
  attachments = self->_attachments;
  v8 = v4;
  if (!attachments)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_attachments;
    self->_attachments = v6;

    v4 = v8;
    attachments = self->_attachments;
  }

  [(NSArray *)attachments addObject:v4];
}

- (void)setAttachments:(id)a3
{
  v4 = [a3 mutableCopy];
  attachments = self->_attachments;
  self->_attachments = v4;

  MEMORY[0x1EEE66BB8](v4, attachments);
}

- (void)setAlternativeConversationIdentifier:(id)a3
{
  v4 = [a3 copy];
  alternativeConversationIdentifier = self->_alternativeConversationIdentifier;
  self->_alternativeConversationIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, alternativeConversationIdentifier);
}

@end