@interface INCallGroupConversationFilter
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INCallGroupConversationFilter)initWithCaller:(id)caller participants:(id)participants matchCallerAndParticipantsExactly:(id)exactly callGroup:(id)group;
- (INCallGroupConversationFilter)initWithCoder:(id)coder;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCallGroupConversationFilter

- (void)_intents_updateContainerWithCache:(id)cache
{
  v17 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  caller = [(INCallGroupConversationFilter *)self caller];
  [caller _intents_updateContainerWithCache:cacheCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  participants = [(INCallGroupConversationFilter *)self participants];
  v7 = [participants countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(participants);
        }

        [*(*(&v12 + 1) + 8 * v10++) _intents_updateContainerWithCache:cacheCopy];
      }

      while (v8 != v10);
      v8 = [participants countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_intents_cacheableObjects
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  caller = [(INCallGroupConversationFilter *)self caller];
  _intents_cacheableObjects = [caller _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  participants = [(INCallGroupConversationFilter *)self participants];
  v7 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(participants);
        }

        _intents_cacheableObjects2 = [*(*(&v16 + 1) + 8 * v10) _intents_cacheableObjects];
        [v3 unionSet:_intents_cacheableObjects2];

        ++v10;
      }

      while (v8 != v10);
      v8 = [participants countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  null = caller;
  if (!caller)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"participants";
  participants = self->_participants;
  null2 = participants;
  if (!participants)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"matchCallerAndParticipantsExactly";
  matchCallerAndParticipantsExactly = self->_matchCallerAndParticipantsExactly;
  null3 = matchCallerAndParticipantsExactly;
  if (!matchCallerAndParticipantsExactly)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"callGroup";
  callGroup = self->_callGroup;
  null4 = callGroup;
  if (!callGroup)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCallGroupConversationFilter;
  v6 = [(INCallGroupConversationFilter *)&v11 description];
  _dictionaryRepresentation = [(INCallGroupConversationFilter *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_caller];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"caller"];

  v9 = [encoderCopy encodeObject:self->_participants];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"participants"];

  v10 = [encoderCopy encodeObject:self->_matchCallerAndParticipantsExactly];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"matchCallerAndParticipantsExactly"];

  v11 = [encoderCopy encodeObject:self->_callGroup];

  [dictionary if_setObjectIfNonNil:v11 forKey:@"callGroup"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  caller = self->_caller;
  coderCopy = coder;
  [coderCopy encodeObject:caller forKey:@"caller"];
  [coderCopy encodeObject:self->_participants forKey:@"participants"];
  [coderCopy encodeObject:self->_matchCallerAndParticipantsExactly forKey:@"matchCallerAndParticipantsExactly"];
  [coderCopy encodeObject:self->_callGroup forKey:@"callGroup"];
}

- (INCallGroupConversationFilter)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caller"];
  v6 = MEMORY[0x1E695DFD8];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"participants"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchCallerAndParticipantsExactly"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callGroup"];

  v12 = [(INCallGroupConversationFilter *)self initWithCaller:v5 participants:v9 matchCallerAndParticipantsExactly:v10 callGroup:v11];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INCallGroupConversationFilter)initWithCaller:(id)caller participants:(id)participants matchCallerAndParticipantsExactly:(id)exactly callGroup:(id)group
{
  callerCopy = caller;
  participantsCopy = participants;
  exactlyCopy = exactly;
  groupCopy = group;
  v24.receiver = self;
  v24.super_class = INCallGroupConversationFilter;
  v14 = [(INCallGroupConversationFilter *)&v24 init];
  if (v14)
  {
    v15 = [callerCopy copy];
    caller = v14->_caller;
    v14->_caller = v15;

    v17 = [participantsCopy copy];
    participants = v14->_participants;
    v14->_participants = v17;

    v19 = [exactlyCopy copy];
    matchCallerAndParticipantsExactly = v14->_matchCallerAndParticipantsExactly;
    v14->_matchCallerAndParticipantsExactly = v19;

    v21 = [groupCopy copy];
    callGroup = v14->_callGroup;
    v14->_callGroup = v21;
  }

  return v14;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"caller"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"participants"];
    v14 = [decoderCopy decodeObjectsOfClass:v12 from:v13];

    v15 = [fromCopy objectForKeyedSubscript:@"matchCallerAndParticipantsExactly"];
    v16 = objc_opt_class();
    v17 = [fromCopy objectForKeyedSubscript:@"callGroup"];
    v18 = [decoderCopy decodeObjectOfClass:v16 from:v17];

    v19 = [[self alloc] initWithCaller:v11 participants:v14 matchCallerAndParticipantsExactly:v15 callGroup:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end