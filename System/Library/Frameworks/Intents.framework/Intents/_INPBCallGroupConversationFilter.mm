@interface _INPBCallGroupConversationFilter
- (BOOL)isEqual:(id)a3;
- (_INPBCallGroupConversationFilter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParticipants:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setParticipants:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCallGroupConversationFilter

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCallGroupConversationFilter *)self callGroup];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"callGroup"];

  v6 = [(_INPBCallGroupConversationFilter *)self caller];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"caller"];

  if ([(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBCallGroupConversationFilter matchCallerAndParticipantsExactly](self, "matchCallerAndParticipantsExactly")}];
    [v3 setObject:v8 forKeyedSubscript:@"matchCallerAndParticipantsExactly"];
  }

  if ([(NSArray *)self->_participants count])
  {
    v9 = [MEMORY[0x1E695DF70] array];
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

          v15 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:v15];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKeyedSubscript:@"participants"];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  v5 = [(_INPBCallGroupConversationFilter *)self callGroup];
  v6 = [v4 callGroup];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v7 = [(_INPBCallGroupConversationFilter *)self callGroup];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCallGroupConversationFilter *)self callGroup];
    v10 = [v4 callGroup];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v5 = [(_INPBCallGroupConversationFilter *)self caller];
  v6 = [v4 caller];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_20;
  }

  v12 = [(_INPBCallGroupConversationFilter *)self caller];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCallGroupConversationFilter *)self caller];
    v15 = [v4 caller];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v17 = [(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly];
  if (v17 != [v4 hasMatchCallerAndParticipantsExactly])
  {
    goto LABEL_21;
  }

  if ([(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly])
  {
    if ([v4 hasMatchCallerAndParticipantsExactly])
    {
      matchCallerAndParticipantsExactly = self->_matchCallerAndParticipantsExactly;
      if (matchCallerAndParticipantsExactly != [v4 matchCallerAndParticipantsExactly])
      {
        goto LABEL_21;
      }
    }
  }

  v5 = [(_INPBCallGroupConversationFilter *)self participants];
  v6 = [v4 participants];
  if ((v5 != 0) != (v6 == 0))
  {
    v19 = [(_INPBCallGroupConversationFilter *)self participants];
    if (!v19)
    {

LABEL_24:
      v24 = 1;
      goto LABEL_22;
    }

    v20 = v19;
    v21 = [(_INPBCallGroupConversationFilter *)self participants];
    v22 = [v4 participants];
    v23 = [v21 isEqual:v22];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCallGroupConversationFilter allocWithZone:](_INPBCallGroupConversationFilter init];
  v6 = [(_INPBCallGroup *)self->_callGroup copyWithZone:a3];
  [(_INPBCallGroupConversationFilter *)v5 setCallGroup:v6];

  v7 = [(_INPBContact *)self->_caller copyWithZone:a3];
  [(_INPBCallGroupConversationFilter *)v5 setCaller:v7];

  if ([(_INPBCallGroupConversationFilter *)self hasMatchCallerAndParticipantsExactly])
  {
    [(_INPBCallGroupConversationFilter *)v5 setMatchCallerAndParticipantsExactly:[(_INPBCallGroupConversationFilter *)self matchCallerAndParticipantsExactly]];
  }

  v8 = [(NSArray *)self->_participants copyWithZone:a3];
  [(_INPBCallGroupConversationFilter *)v5 setParticipants:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCallGroupConversationFilter *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCallGroupConversationFilter)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCallGroupConversationFilter *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBCallGroupConversationFilter *)self callGroup];

  if (v5)
  {
    v6 = [(_INPBCallGroupConversationFilter *)self callGroup];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBCallGroupConversationFilter *)self caller];

  if (v7)
  {
    v8 = [(_INPBCallGroupConversationFilter *)self caller];
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

@end