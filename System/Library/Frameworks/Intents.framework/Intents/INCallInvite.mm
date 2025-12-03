@interface INCallInvite
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INCallInvite)initWithCoder:(id)coder;
- (INCallInvite)initWithParticipants:(id)participants inviteType:(int64_t)type callURL:(id)l;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INCallInvite

- (void)_intents_updateContainerWithCache:(id)cache
{
  v16 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  participants = [(INCallInvite *)self participants];
  v6 = [participants countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(participants);
        }

        [*(*(&v11 + 1) + 8 * v9++) _intents_updateContainerWithCache:cacheCopy];
      }

      while (v7 != v9);
      v7 = [participants countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_intents_cacheableObjects
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  participants = [(INCallInvite *)self participants];
  v5 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(participants);
        }

        _intents_cacheableObjects = [*(*(&v14 + 1) + 8 * v8) _intents_cacheableObjects];
        [v3 unionSet:_intents_cacheableObjects];

        ++v8;
      }

      while (v6 != v8);
      v6 = [participants countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v10 = v3;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

- (id)_dictionaryRepresentation
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = @"participants";
  participants = self->_participants;
  null = participants;
  if (!participants)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = null;
  v11[1] = @"inviteType";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_inviteType];
  v12[1] = v5;
  v11[2] = @"callURL";
  callURL = self->_callURL;
  null2 = callURL;
  if (!callURL)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = null2;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  if (!callURL)
  {
  }

  if (!participants)
  {
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCallInvite;
  v6 = [(INCallInvite *)&v11 description];
  _dictionaryRepresentation = [(INCallInvite *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_participants];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"participants"];

  v9 = self->_inviteType - 1;
  if (v9 > 2)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E72889C8[v9];
  }

  v11 = v10;
  [dictionary if_setObjectIfNonNil:v11 forKey:@"inviteType"];

  v12 = [encoderCopy encodeObject:self->_callURL];

  [dictionary if_setObjectIfNonNil:v12 forKey:@"callURL"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  participants = self->_participants;
  coderCopy = coder;
  [coderCopy encodeObject:participants forKey:@"participants"];
  [coderCopy encodeInteger:self->_inviteType forKey:@"inviteType"];
  [coderCopy encodeObject:self->_callURL forKey:@"callURL"];
}

- (INCallInvite)initWithCoder:(id)coder
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"participants"];

  v9 = [coderCopy decodeIntegerForKey:@"inviteType"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callURL"];

  v11 = [(INCallInvite *)self initWithParticipants:v8 inviteType:v9 callURL:v10];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      participants = self->_participants;
      v8 = 0;
      if ((participants == v5->_participants || [(NSArray *)participants isEqual:?]) && self->_inviteType == v5->_inviteType)
      {
        callURL = self->_callURL;
        if (callURL == v5->_callURL || [(NSURL *)callURL isEqual:?])
        {
          v8 = 1;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_participants hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_inviteType];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSURL *)self->_callURL hash];

  return v5 ^ v6;
}

- (INCallInvite)initWithParticipants:(id)participants inviteType:(int64_t)type callURL:(id)l
{
  participantsCopy = participants;
  lCopy = l;
  v16.receiver = self;
  v16.super_class = INCallInvite;
  v10 = [(INCallInvite *)&v16 init];
  if (v10)
  {
    v11 = [participantsCopy copy];
    participants = v10->_participants;
    v10->_participants = v11;

    v10->_inviteType = type;
    v13 = [lCopy copy];
    callURL = v10->_callURL;
    v10->_callURL = v13;
  }

  return v10;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"participants"];
    v11 = [decoderCopy decodeObjectsOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"inviteType"];
    v13 = INCallInviteTypeWithString(v12);

    v14 = objc_opt_class();
    v15 = [fromCopy objectForKeyedSubscript:@"callURL"];
    v16 = [decoderCopy decodeObjectOfClass:v14 from:v15];

    v17 = [[self alloc] initWithParticipants:v11 inviteType:v13 callURL:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end