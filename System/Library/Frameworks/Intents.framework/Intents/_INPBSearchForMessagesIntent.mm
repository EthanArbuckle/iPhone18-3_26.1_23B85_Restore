@interface _INPBSearchForMessagesIntent
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForMessagesIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsAttributes:(id)attributes;
- (unint64_t)hash;
- (void)addAttribute:(int)attribute;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v4 forKeyedSubscript:@"attribute"];
  }

  content = [(_INPBSearchForMessagesIntent *)self content];
  dictionaryRepresentation = [content dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"content"];

  conversationIdentifier = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
  dictionaryRepresentation2 = [conversationIdentifier dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"conversationIdentifier"];

  dateTimeRange = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
  dictionaryRepresentation3 = [dateTimeRange dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"dateTimeRange"];

  groupName = [(_INPBSearchForMessagesIntent *)self groupName];
  dictionaryRepresentation4 = [groupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"groupName"];

  identifier = [(_INPBSearchForMessagesIntent *)self identifier];
  dictionaryRepresentation5 = [identifier dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"identifier"];

  intentMetadata = [(_INPBSearchForMessagesIntent *)self intentMetadata];
  dictionaryRepresentation6 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"intentMetadata"];

  notificationIdentifier = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
  dictionaryRepresentation7 = [notificationIdentifier dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"notificationIdentifier"];

  recipient = [(_INPBSearchForMessagesIntent *)self recipient];
  dictionaryRepresentation8 = [recipient dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"recipient"];

  searchTerm = [(_INPBSearchForMessagesIntent *)self searchTerm];
  dictionaryRepresentation9 = [searchTerm dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"searchTerm"];

  sender = [(_INPBSearchForMessagesIntent *)self sender];
  dictionaryRepresentation10 = [sender dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"sender"];

  speakableGroupName = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
  dictionaryRepresentation11 = [speakableGroupName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"speakableGroupName"];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_58;
  }

  content = [(_INPBSearchForMessagesIntent *)self content];
  content2 = [equalCopy content];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  content3 = [(_INPBSearchForMessagesIntent *)self content];
  if (content3)
  {
    v8 = content3;
    content4 = [(_INPBSearchForMessagesIntent *)self content];
    content5 = [equalCopy content];
    v11 = [content4 isEqual:content5];

    if (!v11)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
  content2 = [equalCopy conversationIdentifier];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  conversationIdentifier = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
  if (conversationIdentifier)
  {
    v13 = conversationIdentifier;
    conversationIdentifier2 = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
    conversationIdentifier3 = [equalCopy conversationIdentifier];
    v16 = [conversationIdentifier2 isEqual:conversationIdentifier3];

    if (!v16)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
  content2 = [equalCopy dateTimeRange];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  dateTimeRange = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
  if (dateTimeRange)
  {
    v18 = dateTimeRange;
    dateTimeRange2 = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
    dateTimeRange3 = [equalCopy dateTimeRange];
    v21 = [dateTimeRange2 isEqual:dateTimeRange3];

    if (!v21)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self groupName];
  content2 = [equalCopy groupName];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  groupName = [(_INPBSearchForMessagesIntent *)self groupName];
  if (groupName)
  {
    v23 = groupName;
    groupName2 = [(_INPBSearchForMessagesIntent *)self groupName];
    groupName3 = [equalCopy groupName];
    v26 = [groupName2 isEqual:groupName3];

    if (!v26)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self identifier];
  content2 = [equalCopy identifier];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  identifier = [(_INPBSearchForMessagesIntent *)self identifier];
  if (identifier)
  {
    v28 = identifier;
    identifier2 = [(_INPBSearchForMessagesIntent *)self identifier];
    identifier3 = [equalCopy identifier];
    v31 = [identifier2 isEqual:identifier3];

    if (!v31)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self intentMetadata];
  content2 = [equalCopy intentMetadata];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  intentMetadata = [(_INPBSearchForMessagesIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v33 = intentMetadata;
    intentMetadata2 = [(_INPBSearchForMessagesIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v36 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v36)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
  content2 = [equalCopy notificationIdentifier];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  notificationIdentifier = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
  if (notificationIdentifier)
  {
    v38 = notificationIdentifier;
    notificationIdentifier2 = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
    notificationIdentifier3 = [equalCopy notificationIdentifier];
    v41 = [notificationIdentifier2 isEqual:notificationIdentifier3];

    if (!v41)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self recipient];
  content2 = [equalCopy recipient];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  recipient = [(_INPBSearchForMessagesIntent *)self recipient];
  if (recipient)
  {
    v43 = recipient;
    recipient2 = [(_INPBSearchForMessagesIntent *)self recipient];
    recipient3 = [equalCopy recipient];
    v46 = [recipient2 isEqual:recipient3];

    if (!v46)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self searchTerm];
  content2 = [equalCopy searchTerm];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  searchTerm = [(_INPBSearchForMessagesIntent *)self searchTerm];
  if (searchTerm)
  {
    v48 = searchTerm;
    searchTerm2 = [(_INPBSearchForMessagesIntent *)self searchTerm];
    searchTerm3 = [equalCopy searchTerm];
    v51 = [searchTerm2 isEqual:searchTerm3];

    if (!v51)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self sender];
  content2 = [equalCopy sender];
  if ((content != 0) == (content2 == 0))
  {
    goto LABEL_57;
  }

  sender = [(_INPBSearchForMessagesIntent *)self sender];
  if (sender)
  {
    v53 = sender;
    sender2 = [(_INPBSearchForMessagesIntent *)self sender];
    sender3 = [equalCopy sender];
    v56 = [sender2 isEqual:sender3];

    if (!v56)
    {
      goto LABEL_58;
    }
  }

  else
  {
  }

  content = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
  content2 = [equalCopy speakableGroupName];
  if ((content != 0) != (content2 == 0))
  {
    speakableGroupName = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
    if (!speakableGroupName)
    {

LABEL_61:
      v62 = 1;
      goto LABEL_59;
    }

    v58 = speakableGroupName;
    speakableGroupName2 = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
    speakableGroupName3 = [equalCopy speakableGroupName];
    v61 = [speakableGroupName2 isEqual:speakableGroupName3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForMessagesIntent allocWithZone:](_INPBSearchForMessagesIntent init];
  PBRepeatedInt32Copy();
  v6 = [(_INPBStringList *)self->_content copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setContent:v6];

  v7 = [(_INPBStringList *)self->_conversationIdentifier copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setConversationIdentifier:v7];

  v8 = [(_INPBDateTimeRange *)self->_dateTimeRange copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setDateTimeRange:v8];

  v9 = [(_INPBStringList *)self->_groupName copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setGroupName:v9];

  v10 = [(_INPBStringList *)self->_identifier copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setIdentifier:v10];

  v11 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setIntentMetadata:v11];

  v12 = [(_INPBStringList *)self->_notificationIdentifier copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setNotificationIdentifier:v12];

  v13 = [(_INPBContactList *)self->_recipient copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setRecipient:v13];

  v14 = [(_INPBStringList *)self->_searchTerm copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setSearchTerm:v14];

  v15 = [(_INPBContactList *)self->_sender copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setSender:v15];

  v16 = [(_INPBDataStringList *)self->_speakableGroupName copyWithZone:zone];
  [(_INPBSearchForMessagesIntent *)v5 setSpeakableGroupName:v16];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForMessagesIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForMessagesIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForMessagesIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  p_attributes = &self->_attributes;
  toCopy = to;
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

  content = [(_INPBSearchForMessagesIntent *)self content];

  if (content)
  {
    content2 = [(_INPBSearchForMessagesIntent *)self content];
    PBDataWriterWriteSubmessage();
  }

  conversationIdentifier = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];

  if (conversationIdentifier)
  {
    conversationIdentifier2 = [(_INPBSearchForMessagesIntent *)self conversationIdentifier];
    PBDataWriterWriteSubmessage();
  }

  dateTimeRange = [(_INPBSearchForMessagesIntent *)self dateTimeRange];

  if (dateTimeRange)
  {
    dateTimeRange2 = [(_INPBSearchForMessagesIntent *)self dateTimeRange];
    PBDataWriterWriteSubmessage();
  }

  groupName = [(_INPBSearchForMessagesIntent *)self groupName];

  if (groupName)
  {
    groupName2 = [(_INPBSearchForMessagesIntent *)self groupName];
    PBDataWriterWriteSubmessage();
  }

  identifier = [(_INPBSearchForMessagesIntent *)self identifier];

  if (identifier)
  {
    identifier2 = [(_INPBSearchForMessagesIntent *)self identifier];
    PBDataWriterWriteSubmessage();
  }

  intentMetadata = [(_INPBSearchForMessagesIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBSearchForMessagesIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  notificationIdentifier = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];

  if (notificationIdentifier)
  {
    notificationIdentifier2 = [(_INPBSearchForMessagesIntent *)self notificationIdentifier];
    PBDataWriterWriteSubmessage();
  }

  recipient = [(_INPBSearchForMessagesIntent *)self recipient];

  if (recipient)
  {
    recipient2 = [(_INPBSearchForMessagesIntent *)self recipient];
    PBDataWriterWriteSubmessage();
  }

  searchTerm = [(_INPBSearchForMessagesIntent *)self searchTerm];

  if (searchTerm)
  {
    searchTerm2 = [(_INPBSearchForMessagesIntent *)self searchTerm];
    PBDataWriterWriteSubmessage();
  }

  sender = [(_INPBSearchForMessagesIntent *)self sender];

  if (sender)
  {
    sender2 = [(_INPBSearchForMessagesIntent *)self sender];
    PBDataWriterWriteSubmessage();
  }

  speakableGroupName = [(_INPBSearchForMessagesIntent *)self speakableGroupName];

  v28 = toCopy;
  if (speakableGroupName)
  {
    speakableGroupName2 = [(_INPBSearchForMessagesIntent *)self speakableGroupName];
    PBDataWriterWriteSubmessage();

    v28 = toCopy;
  }
}

- (int)StringAsAttributes:(id)attributes
{
  attributesCopy = attributes;
  if ([attributesCopy isEqualToString:@"READ"])
  {
    v4 = 1;
  }

  else if ([attributesCopy isEqualToString:@"UNREAD"])
  {
    v4 = 2;
  }

  else if ([attributesCopy isEqualToString:@"FLAGGED"])
  {
    v4 = 3;
  }

  else if ([attributesCopy isEqualToString:@"UNFLAGGED"])
  {
    v4 = 4;
  }

  else if ([attributesCopy isEqualToString:@"PLAYED"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addAttribute:(int)attribute
{
  if (attribute != 0x7FFFFFFF)
  {
    PBRepeatedInt32Add();
  }
}

@end