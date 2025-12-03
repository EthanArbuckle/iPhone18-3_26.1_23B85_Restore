@interface _INPBSendMessageIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSendMessageIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addSentMessages:(id)messages;
- (void)encodeWithCoder:(id)coder;
- (void)setSentMessages:(id)messages;
- (void)writeTo:(id)to;
@end

@implementation _INPBSendMessageIntentResponse

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  sentMessage = [(_INPBSendMessageIntentResponse *)self sentMessage];
  dictionaryRepresentation = [sentMessage dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sentMessage"];

  if ([(NSArray *)self->_sentMessages count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_sentMessages;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"sentMessages"];
  }

  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  sentMessage = [(_INPBSendMessageIntentResponse *)self sentMessage];
  sentMessage2 = [equalCopy sentMessage];
  if ((sentMessage != 0) == (sentMessage2 == 0))
  {
    goto LABEL_11;
  }

  sentMessage3 = [(_INPBSendMessageIntentResponse *)self sentMessage];
  if (sentMessage3)
  {
    v8 = sentMessage3;
    sentMessage4 = [(_INPBSendMessageIntentResponse *)self sentMessage];
    sentMessage5 = [equalCopy sentMessage];
    v11 = [sentMessage4 isEqual:sentMessage5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  sentMessage = [(_INPBSendMessageIntentResponse *)self sentMessages];
  sentMessage2 = [equalCopy sentMessages];
  if ((sentMessage != 0) != (sentMessage2 == 0))
  {
    sentMessages = [(_INPBSendMessageIntentResponse *)self sentMessages];
    if (!sentMessages)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = sentMessages;
    sentMessages2 = [(_INPBSendMessageIntentResponse *)self sentMessages];
    sentMessages3 = [equalCopy sentMessages];
    v16 = [sentMessages2 isEqual:sentMessages3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSendMessageIntentResponse allocWithZone:](_INPBSendMessageIntentResponse init];
  v6 = [(_INPBMessage *)self->_sentMessage copyWithZone:zone];
  [(_INPBSendMessageIntentResponse *)v5 setSentMessage:v6];

  v7 = [(NSArray *)self->_sentMessages copyWithZone:zone];
  [(_INPBSendMessageIntentResponse *)v5 setSentMessages:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSendMessageIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSendMessageIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSendMessageIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  sentMessage = [(_INPBSendMessageIntentResponse *)self sentMessage];

  if (sentMessage)
  {
    sentMessage2 = [(_INPBSendMessageIntentResponse *)self sentMessage];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_sentMessages;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)addSentMessages:(id)messages
{
  messagesCopy = messages;
  sentMessages = self->_sentMessages;
  v8 = messagesCopy;
  if (!sentMessages)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_sentMessages;
    self->_sentMessages = array;

    messagesCopy = v8;
    sentMessages = self->_sentMessages;
  }

  [(NSArray *)sentMessages addObject:messagesCopy];
}

- (void)setSentMessages:(id)messages
{
  v4 = [messages mutableCopy];
  sentMessages = self->_sentMessages;
  self->_sentMessages = v4;

  MEMORY[0x1EEE66BB8](v4, sentMessages);
}

@end