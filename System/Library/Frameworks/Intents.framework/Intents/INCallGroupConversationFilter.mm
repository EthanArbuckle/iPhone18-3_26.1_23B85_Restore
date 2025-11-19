@interface INCallGroupConversationFilter
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCallGroupConversationFilter)initWithCaller:(id)a3 participants:(id)a4 matchCallerAndParticipantsExactly:(id)a5 callGroup:(id)a6;
- (INCallGroupConversationFilter)initWithCoder:(id)a3;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCallGroupConversationFilter

- (void)_intents_updateContainerWithCache:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INCallGroupConversationFilter *)self caller];
  [v5 _intents_updateContainerWithCache:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(INCallGroupConversationFilter *)self participants];
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
  v4 = [(INCallGroupConversationFilter *)self caller];
  v5 = [v4 _intents_cacheableObjects];
  [v3 unionSet:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(INCallGroupConversationFilter *)self participants];
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
  v14[0] = @"caller";
  caller = self->_caller;
  v4 = caller;
  if (!caller)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"participants";
  participants = self->_participants;
  v6 = participants;
  if (!participants)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"matchCallerAndParticipantsExactly";
  matchCallerAndParticipantsExactly = self->_matchCallerAndParticipantsExactly;
  v8 = matchCallerAndParticipantsExactly;
  if (!matchCallerAndParticipantsExactly)
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
    if (matchCallerAndParticipantsExactly)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (matchCallerAndParticipantsExactly)
    {
LABEL_11:
      if (participants)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (caller)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!participants)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (caller)
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
  v11.super_class = INCallGroupConversationFilter;
  v6 = [(INCallGroupConversationFilter *)&v11 description];
  v7 = [(INCallGroupConversationFilter *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_caller];
  [v7 if_setObjectIfNonNil:v8 forKey:@"caller"];

  v9 = [v6 encodeObject:self->_participants];
  [v7 if_setObjectIfNonNil:v9 forKey:@"participants"];

  v10 = [v6 encodeObject:self->_matchCallerAndParticipantsExactly];
  [v7 if_setObjectIfNonNil:v10 forKey:@"matchCallerAndParticipantsExactly"];

  v11 = [v6 encodeObject:self->_callGroup];

  [v7 if_setObjectIfNonNil:v11 forKey:@"callGroup"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  caller = self->_caller;
  v5 = a3;
  [v5 encodeObject:caller forKey:@"caller"];
  [v5 encodeObject:self->_participants forKey:@"participants"];
  [v5 encodeObject:self->_matchCallerAndParticipantsExactly forKey:@"matchCallerAndParticipantsExactly"];
  [v5 encodeObject:self->_callGroup forKey:@"callGroup"];
}

- (INCallGroupConversationFilter)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caller"];
  v6 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"participants"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchCallerAndParticipantsExactly"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callGroup"];

  v12 = [(INCallGroupConversationFilter *)self initWithCaller:v5 participants:v9 matchCallerAndParticipantsExactly:v10 callGroup:v11];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
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
      caller = self->_caller;
      v10 = 0;
      if (caller == v5->_caller || [(INPerson *)caller isEqual:?])
      {
        participants = self->_participants;
        if (participants == v5->_participants || [(NSArray *)participants isEqual:?])
        {
          matchCallerAndParticipantsExactly = self->_matchCallerAndParticipantsExactly;
          if (matchCallerAndParticipantsExactly == v5->_matchCallerAndParticipantsExactly || [(NSNumber *)matchCallerAndParticipantsExactly isEqual:?])
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
  v3 = [(INPerson *)self->_caller hash];
  v4 = [(NSArray *)self->_participants hash]^ v3;
  v5 = [(NSNumber *)self->_matchCallerAndParticipantsExactly hash];
  return v4 ^ v5 ^ [(INCallGroup *)self->_callGroup hash];
}

- (INCallGroupConversationFilter)initWithCaller:(id)a3 participants:(id)a4 matchCallerAndParticipantsExactly:(id)a5 callGroup:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = INCallGroupConversationFilter;
  v14 = [(INCallGroupConversationFilter *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    caller = v14->_caller;
    v14->_caller = v15;

    v17 = [v11 copy];
    participants = v14->_participants;
    v14->_participants = v17;

    v19 = [v12 copy];
    matchCallerAndParticipantsExactly = v14->_matchCallerAndParticipantsExactly;
    v14->_matchCallerAndParticipantsExactly = v19;

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
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"caller"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"participants"];
    v14 = [v7 decodeObjectsOfClass:v12 from:v13];

    v15 = [v8 objectForKeyedSubscript:@"matchCallerAndParticipantsExactly"];
    v16 = objc_opt_class();
    v17 = [v8 objectForKeyedSubscript:@"callGroup"];
    v18 = [v7 decodeObjectOfClass:v16 from:v17];

    v19 = [[a1 alloc] initWithCaller:v11 participants:v14 matchCallerAndParticipantsExactly:v15 callGroup:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end