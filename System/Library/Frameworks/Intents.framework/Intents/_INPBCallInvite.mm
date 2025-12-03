@interface _INPBCallInvite
- (BOOL)isEqual:(id)equal;
- (_INPBCallInvite)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsInviteType:(id)type;
- (unint64_t)hash;
- (void)addParticipants:(id)participants;
- (void)encodeWithCoder:(id)coder;
- (void)setInviteType:(int)type;
- (void)setParticipants:(id)participants;
- (void)writeTo:(id)to;
@end

@implementation _INPBCallInvite

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  callURL = [(_INPBCallInvite *)self callURL];
  dictionaryRepresentation = [callURL dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"callURL"];

  if ([(_INPBCallInvite *)self hasInviteType])
  {
    inviteType = [(_INPBCallInvite *)self inviteType];
    if ((inviteType - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", inviteType];
    }

    else
    {
      v7 = off_1E72889B0[(inviteType - 1)];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"inviteType"];
  }

  if ([(NSArray *)self->_participants count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = self->_participants;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"participants"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBURLValue *)self->_callURL hash];
  if ([(_INPBCallInvite *)self hasInviteType])
  {
    v4 = 2654435761 * self->_inviteType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSArray *)self->_participants hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  callURL = [(_INPBCallInvite *)self callURL];
  callURL2 = [equalCopy callURL];
  if ((callURL != 0) == (callURL2 == 0))
  {
    goto LABEL_15;
  }

  callURL3 = [(_INPBCallInvite *)self callURL];
  if (callURL3)
  {
    v8 = callURL3;
    callURL4 = [(_INPBCallInvite *)self callURL];
    callURL5 = [equalCopy callURL];
    v11 = [callURL4 isEqual:callURL5];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  hasInviteType = [(_INPBCallInvite *)self hasInviteType];
  if (hasInviteType != [equalCopy hasInviteType])
  {
    goto LABEL_16;
  }

  if ([(_INPBCallInvite *)self hasInviteType])
  {
    if ([equalCopy hasInviteType])
    {
      inviteType = self->_inviteType;
      if (inviteType != [equalCopy inviteType])
      {
        goto LABEL_16;
      }
    }
  }

  callURL = [(_INPBCallInvite *)self participants];
  callURL2 = [equalCopy participants];
  if ((callURL != 0) != (callURL2 == 0))
  {
    participants = [(_INPBCallInvite *)self participants];
    if (!participants)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = participants;
    participants2 = [(_INPBCallInvite *)self participants];
    participants3 = [equalCopy participants];
    v18 = [participants2 isEqual:participants3];

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v19 = 0;
LABEL_17:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCallInvite allocWithZone:](_INPBCallInvite init];
  v6 = [(_INPBURLValue *)self->_callURL copyWithZone:zone];
  [(_INPBCallInvite *)v5 setCallURL:v6];

  if ([(_INPBCallInvite *)self hasInviteType])
  {
    [(_INPBCallInvite *)v5 setInviteType:[(_INPBCallInvite *)self inviteType]];
  }

  v7 = [(NSArray *)self->_participants copyWithZone:zone];
  [(_INPBCallInvite *)v5 setParticipants:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCallInvite *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCallInvite)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCallInvite *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  callURL = [(_INPBCallInvite *)self callURL];

  if (callURL)
  {
    callURL2 = [(_INPBCallInvite *)self callURL];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBCallInvite *)self hasInviteType])
  {
    inviteType = self->_inviteType;
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_participants;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
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

- (int)StringAsInviteType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"ADD"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"RING"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"LINK"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setInviteType:(int)type
{
  has = self->_has;
  if (type == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_inviteType = type;
  }
}

@end