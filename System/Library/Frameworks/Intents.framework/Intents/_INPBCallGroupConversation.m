@interface _INPBCallGroupConversation
- (BOOL)isEqual:(id)a3;
- (_INPBCallGroupConversation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOtherParticipants:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setConversationId:(id)a3;
- (void)setOtherParticipants:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCallGroupConversation

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBCallGroupConversation *)self callGroup];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"callGroup"];

  v6 = [(_INPBCallGroupConversation *)self caller];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"caller"];

  if (self->_conversationId)
  {
    v8 = [(_INPBCallGroupConversation *)self conversationId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"conversationId"];
  }

  if ([(NSArray *)self->_otherParticipants count])
  {
    v10 = [MEMORY[0x1E695DF70] array];
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

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v3 setObject:v10 forKeyedSubscript:@"otherParticipants"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBCallGroup *)self->_callGroup hash];
  v4 = [(_INPBContactValue *)self->_caller hash]^ v3;
  v5 = [(NSString *)self->_conversationId hash];
  return v4 ^ v5 ^ [(NSArray *)self->_otherParticipants hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(_INPBCallGroupConversation *)self callGroup];
  v6 = [v4 callGroup];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(_INPBCallGroupConversation *)self callGroup];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCallGroupConversation *)self callGroup];
    v10 = [v4 callGroup];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCallGroupConversation *)self caller];
  v6 = [v4 caller];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(_INPBCallGroupConversation *)self caller];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCallGroupConversation *)self caller];
    v15 = [v4 caller];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCallGroupConversation *)self conversationId];
  v6 = [v4 conversationId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(_INPBCallGroupConversation *)self conversationId];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBCallGroupConversation *)self conversationId];
    v20 = [v4 conversationId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(_INPBCallGroupConversation *)self otherParticipants];
  v6 = [v4 otherParticipants];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(_INPBCallGroupConversation *)self otherParticipants];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(_INPBCallGroupConversation *)self otherParticipants];
    v25 = [v4 otherParticipants];
    v26 = [v24 isEqual:v25];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCallGroupConversation allocWithZone:](_INPBCallGroupConversation init];
  v6 = [(_INPBCallGroup *)self->_callGroup copyWithZone:a3];
  [(_INPBCallGroupConversation *)v5 setCallGroup:v6];

  v7 = [(_INPBContactValue *)self->_caller copyWithZone:a3];
  [(_INPBCallGroupConversation *)v5 setCaller:v7];

  v8 = [(NSString *)self->_conversationId copyWithZone:a3];
  [(_INPBCallGroupConversation *)v5 setConversationId:v8];

  v9 = [(NSArray *)self->_otherParticipants copyWithZone:a3];
  [(_INPBCallGroupConversation *)v5 setOtherParticipants:v9];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCallGroupConversation *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCallGroupConversation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCallGroupConversation *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBCallGroupConversation *)self callGroup];

  if (v5)
  {
    v6 = [(_INPBCallGroupConversation *)self callGroup];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBCallGroupConversation *)self caller];

  if (v7)
  {
    v8 = [(_INPBCallGroupConversation *)self caller];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBCallGroupConversation *)self conversationId];

  if (v9)
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

- (void)addOtherParticipants:(id)a3
{
  v4 = a3;
  otherParticipants = self->_otherParticipants;
  v8 = v4;
  if (!otherParticipants)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_otherParticipants;
    self->_otherParticipants = v6;

    v4 = v8;
    otherParticipants = self->_otherParticipants;
  }

  [(NSArray *)otherParticipants addObject:v4];
}

- (void)setOtherParticipants:(id)a3
{
  v4 = [a3 mutableCopy];
  otherParticipants = self->_otherParticipants;
  self->_otherParticipants = v4;

  MEMORY[0x1EEE66BB8](v4, otherParticipants);
}

- (void)setConversationId:(id)a3
{
  v4 = [a3 copy];
  conversationId = self->_conversationId;
  self->_conversationId = v4;

  MEMORY[0x1EEE66BB8](v4, conversationId);
}

@end