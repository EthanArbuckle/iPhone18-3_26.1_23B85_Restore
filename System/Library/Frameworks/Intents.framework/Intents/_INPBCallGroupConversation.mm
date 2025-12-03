@interface _INPBCallGroupConversation
- (BOOL)isEqual:(id)equal;
- (_INPBCallGroupConversation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOtherParticipants:(id)participants;
- (void)encodeWithCoder:(id)coder;
- (void)setConversationId:(id)id;
- (void)setOtherParticipants:(id)participants;
- (void)writeTo:(id)to;
@end

@implementation _INPBCallGroupConversation

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  callGroup = [(_INPBCallGroupConversation *)self callGroup];
  dictionaryRepresentation = [callGroup dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"callGroup"];

  caller = [(_INPBCallGroupConversation *)self caller];
  dictionaryRepresentation2 = [caller dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"caller"];

  if (self->_conversationId)
  {
    conversationId = [(_INPBCallGroupConversation *)self conversationId];
    v9 = [conversationId copy];
    [dictionary setObject:v9 forKeyedSubscript:@"conversationId"];
  }

  if ([(NSArray *)self->_otherParticipants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_otherParticipants;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation3 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"otherParticipants"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBCallGroup *)self->_callGroup hash];
  v4 = [(_INPBContactValue *)self->_caller hash]^ v3;
  v5 = [(NSString *)self->_conversationId hash];
  return v4 ^ v5 ^ [(NSArray *)self->_otherParticipants hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  callGroup = [(_INPBCallGroupConversation *)self callGroup];
  callGroup2 = [equalCopy callGroup];
  if ((callGroup != 0) == (callGroup2 == 0))
  {
    goto LABEL_21;
  }

  callGroup3 = [(_INPBCallGroupConversation *)self callGroup];
  if (callGroup3)
  {
    v8 = callGroup3;
    callGroup4 = [(_INPBCallGroupConversation *)self callGroup];
    callGroup5 = [equalCopy callGroup];
    v11 = [callGroup4 isEqual:callGroup5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  callGroup = [(_INPBCallGroupConversation *)self caller];
  callGroup2 = [equalCopy caller];
  if ((callGroup != 0) == (callGroup2 == 0))
  {
    goto LABEL_21;
  }

  caller = [(_INPBCallGroupConversation *)self caller];
  if (caller)
  {
    v13 = caller;
    caller2 = [(_INPBCallGroupConversation *)self caller];
    caller3 = [equalCopy caller];
    v16 = [caller2 isEqual:caller3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  callGroup = [(_INPBCallGroupConversation *)self conversationId];
  callGroup2 = [equalCopy conversationId];
  if ((callGroup != 0) == (callGroup2 == 0))
  {
    goto LABEL_21;
  }

  conversationId = [(_INPBCallGroupConversation *)self conversationId];
  if (conversationId)
  {
    v18 = conversationId;
    conversationId2 = [(_INPBCallGroupConversation *)self conversationId];
    conversationId3 = [equalCopy conversationId];
    v21 = [conversationId2 isEqual:conversationId3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  callGroup = [(_INPBCallGroupConversation *)self otherParticipants];
  callGroup2 = [equalCopy otherParticipants];
  if ((callGroup != 0) != (callGroup2 == 0))
  {
    otherParticipants = [(_INPBCallGroupConversation *)self otherParticipants];
    if (!otherParticipants)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = otherParticipants;
    otherParticipants2 = [(_INPBCallGroupConversation *)self otherParticipants];
    otherParticipants3 = [equalCopy otherParticipants];
    v26 = [otherParticipants2 isEqual:otherParticipants3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCallGroupConversation allocWithZone:](_INPBCallGroupConversation init];
  v6 = [(_INPBCallGroup *)self->_callGroup copyWithZone:zone];
  [(_INPBCallGroupConversation *)v5 setCallGroup:v6];

  v7 = [(_INPBContactValue *)self->_caller copyWithZone:zone];
  [(_INPBCallGroupConversation *)v5 setCaller:v7];

  v8 = [(NSString *)self->_conversationId copyWithZone:zone];
  [(_INPBCallGroupConversation *)v5 setConversationId:v8];

  v9 = [(NSArray *)self->_otherParticipants copyWithZone:zone];
  [(_INPBCallGroupConversation *)v5 setOtherParticipants:v9];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCallGroupConversation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCallGroupConversation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCallGroupConversation *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x1E69E9840];
  toCopy = to;
  callGroup = [(_INPBCallGroupConversation *)self callGroup];

  if (callGroup)
  {
    callGroup2 = [(_INPBCallGroupConversation *)self callGroup];
    PBDataWriterWriteSubmessage();
  }

  caller = [(_INPBCallGroupConversation *)self caller];

  if (caller)
  {
    caller2 = [(_INPBCallGroupConversation *)self caller];
    PBDataWriterWriteSubmessage();
  }

  conversationId = [(_INPBCallGroupConversation *)self conversationId];

  if (conversationId)
  {
    conversationId = self->_conversationId;
    PBDataWriterWriteStringField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_otherParticipants;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)addOtherParticipants:(id)participants
{
  participantsCopy = participants;
  otherParticipants = self->_otherParticipants;
  v8 = participantsCopy;
  if (!otherParticipants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_otherParticipants;
    self->_otherParticipants = array;

    participantsCopy = v8;
    otherParticipants = self->_otherParticipants;
  }

  [(NSArray *)otherParticipants addObject:participantsCopy];
}

- (void)setOtherParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  otherParticipants = self->_otherParticipants;
  self->_otherParticipants = v4;

  MEMORY[0x1EEE66BB8](v4, otherParticipants);
}

- (void)setConversationId:(id)id
{
  v4 = [id copy];
  conversationId = self->_conversationId;
  self->_conversationId = v4;

  MEMORY[0x1EEE66BB8](v4, conversationId);
}

@end