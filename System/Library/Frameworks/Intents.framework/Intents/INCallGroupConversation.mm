@interface INCallGroupConversation
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INCallGroupConversation)initWithCoder:(id)coder;
- (INCallGroupConversation)initWithConversationId:(id)id caller:(id)caller otherParticipants:(id)participants callGroup:(id)group;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCallGroupConversation

- (void)_intents_updateContainerWithCache:(id)cache
{
  v17 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  caller = [(INCallGroupConversation *)self caller];
  [caller _intents_updateContainerWithCache:cacheCopy];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  otherParticipants = [(INCallGroupConversation *)self otherParticipants];
  v7 = [otherParticipants countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(otherParticipants);
        }

        [*(*(&v12 + 1) + 8 * v10++) _intents_updateContainerWithCache:cacheCopy];
      }

      while (v8 != v10);
      v8 = [otherParticipants countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_intents_cacheableObjects
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  caller = [(INCallGroupConversation *)self caller];
  _intents_cacheableObjects = [caller _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  otherParticipants = [(INCallGroupConversation *)self otherParticipants];
  v7 = [otherParticipants countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(otherParticipants);
        }

        _intents_cacheableObjects2 = [*(*(&v16 + 1) + 8 * v10) _intents_cacheableObjects];
        [v3 unionSet:_intents_cacheableObjects2];

        ++v10;
      }

      while (v8 != v10);
      v8 = [otherParticipants countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  null = conversationId;
  if (!conversationId)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"caller";
  caller = self->_caller;
  null2 = caller;
  if (!caller)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"otherParticipants";
  otherParticipants = self->_otherParticipants;
  null3 = otherParticipants;
  if (!otherParticipants)
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCallGroupConversation;
  v6 = [(INCallGroupConversation *)&v11 description];
  _dictionaryRepresentation = [(INCallGroupConversation *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_conversationId];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"conversationId"];

  v9 = [encoderCopy encodeObject:self->_caller];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"caller"];

  v10 = [encoderCopy encodeObject:self->_otherParticipants];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"otherParticipants"];

  v11 = [encoderCopy encodeObject:self->_callGroup];

  [dictionary if_setObjectIfNonNil:v11 forKey:@"callGroup"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  conversationId = self->_conversationId;
  coderCopy = coder;
  [coderCopy encodeObject:conversationId forKey:@"conversationId"];
  [coderCopy encodeObject:self->_caller forKey:@"caller"];
  [coderCopy encodeObject:self->_otherParticipants forKey:@"otherParticipants"];
  [coderCopy encodeObject:self->_callGroup forKey:@"callGroup"];
}

- (INCallGroupConversation)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"conversationId"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caller"];
  v10 = MEMORY[0x1E695DFD8];
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"otherParticipants"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callGroup"];

  v15 = [(INCallGroupConversation *)self initWithConversationId:v8 caller:v9 otherParticipants:v13 callGroup:v14];
  v16 = *MEMORY[0x1E69E9840];
  return v15;
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

- (INCallGroupConversation)initWithConversationId:(id)id caller:(id)caller otherParticipants:(id)participants callGroup:(id)group
{
  idCopy = id;
  callerCopy = caller;
  participantsCopy = participants;
  groupCopy = group;
  v24.receiver = self;
  v24.super_class = INCallGroupConversation;
  v14 = [(INCallGroupConversation *)&v24 init];
  if (v14)
  {
    v15 = [idCopy copy];
    conversationId = v14->_conversationId;
    v14->_conversationId = v15;

    v17 = [callerCopy copy];
    caller = v14->_caller;
    v14->_caller = v17;

    v19 = [participantsCopy copy];
    otherParticipants = v14->_otherParticipants;
    v14->_otherParticipants = v19;

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
    v9 = [fromCopy objectForKeyedSubscript:@"conversationId"];
    v10 = objc_opt_class();
    v11 = [fromCopy objectForKeyedSubscript:@"caller"];
    v12 = [decoderCopy decodeObjectOfClass:v10 from:v11];

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"otherParticipants"];
    v15 = [decoderCopy decodeObjectsOfClass:v13 from:v14];

    v16 = objc_opt_class();
    v17 = [fromCopy objectForKeyedSubscript:@"callGroup"];
    v18 = [decoderCopy decodeObjectOfClass:v16 from:v17];

    v19 = [[self alloc] initWithConversationId:v9 caller:v12 otherParticipants:v15 callGroup:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end