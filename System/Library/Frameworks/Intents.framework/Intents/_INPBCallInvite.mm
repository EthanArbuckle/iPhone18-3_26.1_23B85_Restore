@interface _INPBCallInvite
- (BOOL)isEqual:(id)a3;
- (_INPBCallInvite)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsInviteType:(id)a3;
- (unint64_t)hash;
- (void)addParticipants:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setInviteType:(int)a3;
- (void)setParticipants:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCallInvite

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCallInvite *)self callURL];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"callURL"];

  if ([(_INPBCallInvite *)self hasInviteType])
  {
    v6 = [(_INPBCallInvite *)self inviteType];
    if ((v6 - 1) >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E72889B0[(v6 - 1)];
    }

    [v3 setObject:v7 forKeyedSubscript:@"inviteType"];
  }

  if ([(NSArray *)self->_participants count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
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

          v14 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"participants"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(_INPBCallInvite *)self callURL];
  v6 = [v4 callURL];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_15;
  }

  v7 = [(_INPBCallInvite *)self callURL];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCallInvite *)self callURL];
    v10 = [v4 callURL];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v12 = [(_INPBCallInvite *)self hasInviteType];
  if (v12 != [v4 hasInviteType])
  {
    goto LABEL_16;
  }

  if ([(_INPBCallInvite *)self hasInviteType])
  {
    if ([v4 hasInviteType])
    {
      inviteType = self->_inviteType;
      if (inviteType != [v4 inviteType])
      {
        goto LABEL_16;
      }
    }
  }

  v5 = [(_INPBCallInvite *)self participants];
  v6 = [v4 participants];
  if ((v5 != 0) != (v6 == 0))
  {
    v14 = [(_INPBCallInvite *)self participants];
    if (!v14)
    {

LABEL_19:
      v19 = 1;
      goto LABEL_17;
    }

    v15 = v14;
    v16 = [(_INPBCallInvite *)self participants];
    v17 = [v4 participants];
    v18 = [v16 isEqual:v17];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCallInvite allocWithZone:](_INPBCallInvite init];
  v6 = [(_INPBURLValue *)self->_callURL copyWithZone:a3];
  [(_INPBCallInvite *)v5 setCallURL:v6];

  if ([(_INPBCallInvite *)self hasInviteType])
  {
    [(_INPBCallInvite *)v5 setInviteType:[(_INPBCallInvite *)self inviteType]];
  }

  v7 = [(NSArray *)self->_participants copyWithZone:a3];
  [(_INPBCallInvite *)v5 setParticipants:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCallInvite *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCallInvite)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCallInvite *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBCallInvite *)self callURL];

  if (v5)
  {
    v6 = [(_INPBCallInvite *)self callURL];
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

- (void)addParticipants:(id)a3
{
  v4 = a3;
  participants = self->_participants;
  v8 = v4;
  if (!participants)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_participants;
    self->_participants = v6;

    v4 = v8;
    participants = self->_participants;
  }

  [(NSArray *)participants addObject:v4];
}

- (void)setParticipants:(id)a3
{
  v4 = [a3 mutableCopy];
  participants = self->_participants;
  self->_participants = v4;

  MEMORY[0x1EEE66BB8](v4, participants);
}

- (int)StringAsInviteType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ADD"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RING"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"LINK"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setInviteType:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_inviteType = a3;
  }
}

@end