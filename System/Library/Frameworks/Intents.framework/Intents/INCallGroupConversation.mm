@interface INCallGroupConversation
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCallGroupConversation)initWithCoder:(id)a3;
- (INCallGroupConversation)initWithConversationId:(id)a3 caller:(id)a4 otherParticipants:(id)a5 callGroup:(id)a6;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCallGroupConversation

- (void)_intents_updateContainerWithCache:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INCallGroupConversation *)self caller];
  [v5 _intents_updateContainerWithCache:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(INCallGroupConversation *)self otherParticipants];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) _intents_updateContainerWithCache:v4];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_intents_cacheableObjects
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(INCallGroupConversation *)self caller];
  v5 = [v4 _intents_cacheableObjects];
  [v3 unionSet:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(INCallGroupConversation *)self otherParticipants];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) _intents_cacheableObjects];
        [v3 unionSet:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v3 count])
  {
    v12 = v3;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"conversationId";
  conversationId = self->_conversationId;
  v4 = conversationId;
  if (!conversationId)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"caller";
  caller = self->_caller;
  v6 = caller;
  if (!caller)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"otherParticipants";
  otherParticipants = self->_otherParticipants;
  v8 = otherParticipants;
  if (!otherParticipants)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v8;
  v14[3] = @"callGroup";
  callGroup = self->_callGroup;
  v10 = callGroup;
  if (!callGroup)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (callGroup)
  {
    if (otherParticipants)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (otherParticipants)
    {
LABEL_11:
      if (caller)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (conversationId)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!caller)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (conversationId)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCallGroupConversation;
  v6 = [(INCallGroupConversation *)&v11 description];
  v7 = [(INCallGroupConversation *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_conversationId];
  [v7 if_setObjectIfNonNil:v8 forKey:@"conversationId"];

  v9 = [v6 encodeObject:self->_caller];
  [v7 if_setObjectIfNonNil:v9 forKey:@"caller"];

  v10 = [v6 encodeObject:self->_otherParticipants];
  [v7 if_setObjectIfNonNil:v10 forKey:@"otherParticipants"];

  v11 = [v6 encodeObject:self->_callGroup];

  [v7 if_setObjectIfNonNil:v11 forKey:@"callGroup"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  conversationId = self->_conversationId;
  v5 = a3;
  [v5 encodeObject:conversationId forKey:@"conversationId"];
  [v5 encodeObject:self->_caller forKey:@"caller"];
  [v5 encodeObject:self->_otherParticipants forKey:@"otherParticipants"];
  [v5 encodeObject:self->_callGroup forKey:@"callGroup"];
}

- (INCallGroupConversation)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"conversationId"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"caller"];
  v10 = MEMORY[0x1E695DFD8];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [v5 decodeObjectOfClasses:v12 forKey:@"otherParticipants"];

  v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"callGroup"];

  v15 = [(INCallGroupConversation *)self initWithConversationId:v8 caller:v9 otherParticipants:v13 callGroup:v14];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      conversationId = self->_conversationId;
      v10 = 0;
      if (conversationId == v5->_conversationId || [(NSString *)conversationId isEqual:?])
      {
        caller = self->_caller;
        if (caller == v5->_caller || [(INPerson *)caller isEqual:?])
        {
          otherParticipants = self->_otherParticipants;
          if (otherParticipants == v5->_otherParticipants || [(NSArray *)otherParticipants isEqual:?])
          {
            callGroup = self->_callGroup;
            if (callGroup == v5->_callGroup || [(INCallGroup *)callGroup isEqual:?])
            {
              v10 = 1;
            }
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_conversationId hash];
  v4 = [(INPerson *)self->_caller hash]^ v3;
  v5 = [(NSArray *)self->_otherParticipants hash];
  return v4 ^ v5 ^ [(INCallGroup *)self->_callGroup hash];
}

- (INCallGroupConversation)initWithConversationId:(id)a3 caller:(id)a4 otherParticipants:(id)a5 callGroup:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = INCallGroupConversation;
  v14 = [(INCallGroupConversation *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    conversationId = v14->_conversationId;
    v14->_conversationId = v15;

    v17 = [v11 copy];
    caller = v14->_caller;
    v14->_caller = v17;

    v19 = [v12 copy];
    otherParticipants = v14->_otherParticipants;
    v14->_otherParticipants = v19;

    v21 = [v13 copy];
    callGroup = v14->_callGroup;
    v14->_callGroup = v21;
  }

  return v14;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 objectForKeyedSubscript:@"conversationId"];
    v10 = objc_opt_class();
    v11 = [v8 objectForKeyedSubscript:@"caller"];
    v12 = [v7 decodeObjectOfClass:v10 from:v11];

    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"otherParticipants"];
    v15 = [v7 decodeObjectsOfClass:v13 from:v14];

    v16 = objc_opt_class();
    v17 = [v8 objectForKeyedSubscript:@"callGroup"];
    v18 = [v7 decodeObjectOfClass:v16 from:v17];

    v19 = [[a1 alloc] initWithConversationId:v9 caller:v12 otherParticipants:v15 callGroup:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end