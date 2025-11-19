@interface _INPBSearchForMessagesIntent
- (BOOL)isEqual:(id)a3;
- (_INPBSearchForMessagesIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsAttributes:(id)a3;
- (unint64_t)hash;
- (void)addAttribute:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSearchForMessagesIntent

- (void)dealloc
{
  [(_INPBSearchForMessagesIntent *)self clearAttributes];
  v3.receiver = self;
  v3.super_class = _INPBSearchForMessagesIntent;
  [(_INPBSearchForMessagesIntent *)&v3 dealloc];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_attributes.count)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[_INPBSearchForMessagesIntent attributesCount](self, "attributesCount")}];
    if ([(_INPBSearchForMessagesIntent *)self attributesCount])
    {
      v5 = 0;
      do
      {
        v6 = self->_attributes.list[v5] - 1;
        if (v6 >= 5)
        {
          v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_attributes.list[v5]];
        }

        else
        {
          v7 = *(&off_1E727F8E0 + v6);
        }

        [v4 addObject:v7];

        ++v5;
      }

      while (v5 < [(_INPBSearchForMessagesIntent *)self attributesCount]);
    }

    [v3 setObject:v4 forKeyedSubscript:@"attribute"];
  }

  v8 = [(_INPBSearchForMessagesIntent *)self content];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"content"];

  v10 = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"conversationIdentifier"];

  v12 = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
  v13 = [v12 dictionaryRepresentation];
  [v3 setObject:v13 forKeyedSubscript:@"dateTimeRange"];

  v14 = [(_INPBSearchForMessagesIntent *)self groupName];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"groupName"];

  v16 = [(_INPBSearchForMessagesIntent *)self identifier];
  v17 = [v16 dictionaryRepresentation];
  [v3 setObject:v17 forKeyedSubscript:@"identifier"];

  v18 = [(_INPBSearchForMessagesIntent *)self intentMetadata];
  v19 = [v18 dictionaryRepresentation];
  [v3 setObject:v19 forKeyedSubscript:@"intentMetadata"];

  v20 = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
  v21 = [v20 dictionaryRepresentation];
  [v3 setObject:v21 forKeyedSubscript:@"notificationIdentifier"];

  v22 = [(_INPBSearchForMessagesIntent *)self recipient];
  v23 = [v22 dictionaryRepresentation];
  [v3 setObject:v23 forKeyedSubscript:@"recipient"];

  v24 = [(_INPBSearchForMessagesIntent *)self searchTerm];
  v25 = [v24 dictionaryRepresentation];
  [v3 setObject:v25 forKeyedSubscript:@"searchTerm"];

  v26 = [(_INPBSearchForMessagesIntent *)self sender];
  v27 = [v26 dictionaryRepresentation];
  [v3 setObject:v27 forKeyedSubscript:@"sender"];

  v28 = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
  v29 = [v28 dictionaryRepresentation];
  [v3 setObject:v29 forKeyedSubscript:@"speakableGroupName"];

  return v3;
}

- (unint64_t)hash
{
  v3 = PBRepeatedInt32Hash();
  v4 = [(_INPBStringList *)self->_content hash]^ v3;
  v5 = [(_INPBStringList *)self->_conversationIdentifier hash];
  v6 = v4 ^ v5 ^ [(_INPBDateTimeRange *)self->_dateTimeRange hash];
  v7 = [(_INPBStringList *)self->_groupName hash];
  v8 = v7 ^ [(_INPBStringList *)self->_identifier hash];
  v9 = v6 ^ v8 ^ [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v10 = [(_INPBStringList *)self->_notificationIdentifier hash];
  v11 = v10 ^ [(_INPBContactList *)self->_recipient hash];
  v12 = v11 ^ [(_INPBStringList *)self->_searchTerm hash];
  v13 = v9 ^ v12 ^ [(_INPBContactList *)self->_sender hash];
  return v13 ^ [(_INPBDataStringList *)self->_speakableGroupName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_58;
  }

  v5 = [(_INPBSearchForMessagesIntent *)self content];
  v6 = [v4 content];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v7 = [(_INPBSearchForMessagesIntent *)self content];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBSearchForMessagesIntent *)self content];
    v10 = [v4 content];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
  v6 = [v4 conversationIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v12 = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
    v15 = [v4 conversationIdentifier];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
  v6 = [v4 dateTimeRange];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v17 = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
    v20 = [v4 dateTimeRange];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self groupName];
  v6 = [v4 groupName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v22 = [(_INPBSearchForMessagesIntent *)self groupName];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBSearchForMessagesIntent *)self groupName];
    v25 = [v4 groupName];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self identifier];
  v6 = [v4 identifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v27 = [(_INPBSearchForMessagesIntent *)self identifier];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBSearchForMessagesIntent *)self identifier];
    v30 = [v4 identifier];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v32 = [(_INPBSearchForMessagesIntent *)self intentMetadata];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBSearchForMessagesIntent *)self intentMetadata];
    v35 = [v4 intentMetadata];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
  v6 = [v4 notificationIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v37 = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
    v40 = [v4 notificationIdentifier];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self recipient];
  v6 = [v4 recipient];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v42 = [(_INPBSearchForMessagesIntent *)self recipient];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBSearchForMessagesIntent *)self recipient];
    v45 = [v4 recipient];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self searchTerm];
  v6 = [v4 searchTerm];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v47 = [(_INPBSearchForMessagesIntent *)self searchTerm];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBSearchForMessagesIntent *)self searchTerm];
    v50 = [v4 searchTerm];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self sender];
  v6 = [v4 sender];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_57;
  }

  v52 = [(_INPBSearchForMessagesIntent *)self sender];
  if (v52)
  {
    v53 = v52;
    v54 = [(_INPBSearchForMessagesIntent *)self sender];
    v55 = [v4 sender];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  v5 = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
  v6 = [v4 speakableGroupName];
  if ((v5 != 0) != (v6 == 0))
  {
    v57 = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
    if (!v57)
    {

LABEL_61:
      v62 = 1;
      goto LABEL_59;
    }

    v58 = v57;
    v59 = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
    v60 = [v4 speakableGroupName];
    v61 = [v59 isEqual:v60];

    if (v61)
    {
      goto LABEL_61;
    }
  }

  else
  {
LABEL_57:
  }

LABEL_58:
  v62 = 0;
LABEL_59:

  return v62;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSearchForMessagesIntent allocWithZone:](_INPBSearchForMessagesIntent init];
  PBRepeatedInt32Copy();
  v6 = [(_INPBStringList *)self->_content copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setContent:v6];

  v7 = [(_INPBStringList *)self->_conversationIdentifier copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setConversationIdentifier:v7];

  v8 = [(_INPBDateTimeRange *)self->_dateTimeRange copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setDateTimeRange:v8];

  v9 = [(_INPBStringList *)self->_groupName copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setGroupName:v9];

  v10 = [(_INPBStringList *)self->_identifier copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setIdentifier:v10];

  v11 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setIntentMetadata:v11];

  v12 = [(_INPBStringList *)self->_notificationIdentifier copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setNotificationIdentifier:v12];

  v13 = [(_INPBContactList *)self->_recipient copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setRecipient:v13];

  v14 = [(_INPBStringList *)self->_searchTerm copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setSearchTerm:v14];

  v15 = [(_INPBContactList *)self->_sender copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setSender:v15];

  v16 = [(_INPBDataStringList *)self->_speakableGroupName copyWithZone:a3];
  [(_INPBSearchForMessagesIntent *)v5 setSpeakableGroupName:v16];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSearchForMessagesIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSearchForMessagesIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSearchForMessagesIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  p_attributes = &self->_attributes;
  v30 = a3;
  if (self->_attributes.count)
  {
    v5 = 0;
    do
    {
      v6 = p_attributes->list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_attributes.count);
  }

  v7 = [(_INPBSearchForMessagesIntent *)self content];

  if (v7)
  {
    v8 = [(_INPBSearchForMessagesIntent *)self content];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];

  if (v9)
  {
    v10 = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(_INPBSearchForMessagesIntent *)self dateTimeRange];

  if (v11)
  {
    v12 = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBSearchForMessagesIntent *)self groupName];

  if (v13)
  {
    v14 = [(_INPBSearchForMessagesIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBSearchForMessagesIntent *)self identifier];

  if (v15)
  {
    v16 = [(_INPBSearchForMessagesIntent *)self identifier];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBSearchForMessagesIntent *)self intentMetadata];

  if (v17)
  {
    v18 = [(_INPBSearchForMessagesIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];

  if (v19)
  {
    v20 = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(_INPBSearchForMessagesIntent *)self recipient];

  if (v21)
  {
    v22 = [(_INPBSearchForMessagesIntent *)self recipient];
    PBDataWriterWriteSubmessage();
  }

  v23 = [(_INPBSearchForMessagesIntent *)self searchTerm];

  if (v23)
  {
    v24 = [(_INPBSearchForMessagesIntent *)self searchTerm];
    PBDataWriterWriteSubmessage();
  }

  v25 = [(_INPBSearchForMessagesIntent *)self sender];

  if (v25)
  {
    v26 = [(_INPBSearchForMessagesIntent *)self sender];
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_INPBSearchForMessagesIntent *)self speakableGroupName];

  v28 = v30;
  if (v27)
  {
    v29 = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
    PBDataWriterWriteSubmessage();

    v28 = v30;
  }
}

- (int)StringAsAttributes:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"READ"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UNREAD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FLAGGED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"UNFLAGGED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"PLAYED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addAttribute:(int)a3
{
  if (a3 != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end