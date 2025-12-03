@interface _INPBCallGroupConversationFilter
- (BOOL)isEqual:(id)equal;
- (_INPBCallGroupConversationFilter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParticipants:(id)participants;
- (void)encodeWithCoder:(id)coder;
- (void)setParticipants:(id)participants;
- (void)writeTo:(id)to;
@end

@implementation _INPBCallGroupConversationFilter

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  callGroup = [(_INPBCallGroupConversationFilter *)self callGroup];
  dictionaryRepresentation = [callGroup dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"callGroup"];

  caller = [(_INPBCallGroupConversationFilter *)self caller];
  dictionaryRepresentation2 = [caller dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"caller"];

  if ([(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCallGroupConversationFilter matchCallerAndParticipantsExactly](self, "matchCallerAndParticipantsExactly")}];
    [dictionary setObject:v8 forKeyedSubscript:@"matchCallerAndParticipantsExactly"];
  }

  if ([(NSArray *)self->_participants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = self->_participants;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation3 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [dictionary setObject:array forKeyedSubscript:@"participants"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBCallGroup *)self->_callGroup hash];
  v4 = [(_INPBContact *)self->_caller hash];
  if ([(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly])
  {
    v5 = 2654435761 * self->_matchCallerAndParticipantsExactly;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSArray *)self->_participants hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  callGroup = [(_INPBCallGroupConversationFilter *)self callGroup];
  callGroup2 = [equalCopy callGroup];
  if ((callGroup != 0) == (callGroup2 == 0))
  {
    goto LABEL_20;
  }

  callGroup3 = [(_INPBCallGroupConversationFilter *)self callGroup];
  if (callGroup3)
  {
    v8 = callGroup3;
    callGroup4 = [(_INPBCallGroupConversationFilter *)self callGroup];
    callGroup5 = [equalCopy callGroup];
    v11 = [callGroup4 isEqual:callGroup5];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  callGroup = [(_INPBCallGroupConversationFilter *)self caller];
  callGroup2 = [equalCopy caller];
  if ((callGroup != 0) == (callGroup2 == 0))
  {
    goto LABEL_20;
  }

  caller = [(_INPBCallGroupConversationFilter *)self caller];
  if (caller)
  {
    v13 = caller;
    caller2 = [(_INPBCallGroupConversationFilter *)self caller];
    caller3 = [equalCopy caller];
    v16 = [caller2 isEqual:caller3];

    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  hasMatchCallerAndParticipantsExactly = [(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly];
  if (hasMatchCallerAndParticipantsExactly != [equalCopy hasMatchCallerAndParticipantsExactly])
  {
    goto LABEL_21;
  }

  if ([(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly])
  {
    if ([equalCopy hasMatchCallerAndParticipantsExactly])
    {
      matchCallerAndParticipantsExactly = self->_matchCallerAndParticipantsExactly;
      if (matchCallerAndParticipantsExactly != [equalCopy matchCallerAndParticipantsExactly])
      {
        goto LABEL_21;
      }
    }
  }

  callGroup = [(_INPBCallGroupConversationFilter *)self participants];
  callGroup2 = [equalCopy participants];
  if ((callGroup != 0) != (callGroup2 == 0))
  {
    participants = [(_INPBCallGroupConversationFilter *)self participants];
    if (!participants)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = participants;
    participants2 = [(_INPBCallGroupConversationFilter *)self participants];
    participants3 = [equalCopy participants];
    v23 = [participants2 isEqual:participants3];

    if (v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_21:
  v24 = 0;
LABEL_22:

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCallGroupConversationFilter allocWithZone:](_INPBCallGroupConversationFilter init];
  v6 = [(_INPBCallGroup *)self->_callGroup copyWithZone:zone];
  [(_INPBCallGroupConversationFilter *)v5 setCallGroup:v6];

  v7 = [(_INPBContact *)self->_caller copyWithZone:zone];
  [(_INPBCallGroupConversationFilter *)v5 setCaller:v7];

  if ([(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly])
  {
    [(_INPBCallGroupConversationFilter *)v5 setMatchCallerAndParticipantsExactly:[(_INPBCallGroupConversationFilter *)self matchCallerAndParticipantsExactly]];
  }

  v8 = [(NSArray *)self->_participants copyWithZone:zone];
  [(_INPBCallGroupConversationFilter *)v5 setParticipants:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCallGroupConversationFilter *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCallGroupConversationFilter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCallGroupConversationFilter *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  callGroup = [(_INPBCallGroupConversationFilter *)self callGroup];

  if (callGroup)
  {
    callGroup2 = [(_INPBCallGroupConversationFilter *)self callGroup];
    PBDataWriterWriteSubmessage();
  }

  caller = [(_INPBCallGroupConversationFilter *)self caller];

  if (caller)
  {
    caller2 = [(_INPBCallGroupConversationFilter *)self caller];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly])
  {
    matchCallerAndParticipantsExactly = self->_matchCallerAndParticipantsExactly;
    PBDataWriterWriteBOOLField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_participants;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * v14);
        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)addParticipants:(id)participants
{
  participantsCopy = participants;
  participants = self->_participants;
  v8 = participantsCopy;
  if (!participants)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_participants;
    self->_participants = array;

    participantsCopy = v8;
    participants = self->_participants;
  }

  [(NSArray *)participants addObject:participantsCopy];
}

- (void)setParticipants:(id)participants
{
  v4 = [participants mutableCopy];
  participants = self->_participants;
  self->_participants = v4;

  MEMORY[0x1EEE66BB8](v4, participants);
}

@end