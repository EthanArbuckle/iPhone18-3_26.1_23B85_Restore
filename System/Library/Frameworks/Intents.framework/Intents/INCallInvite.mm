@interface INCallInvite
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCallInvite)initWithCoder:(id)a3;
- (INCallInvite)initWithParticipants:(id)a3 inviteType:(int64_t)a4 callURL:(id)a5;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCallInvite

- (void)_intents_updateContainerWithCache:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(INCallInvite *)self participants];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) _intents_updateContainerWithCache:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(INCallInvite *)self participants];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v14 + 1) + 8 * v8) _intents_cacheableObjects];
        [v3 unionSet:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  v4 = participants;
  if (!participants)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v4;
  v11[1] = @"inviteType";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_inviteType];
  v12[1] = v5;
  v11[2] = @"callURL";
  callURL = self->_callURL;
  v7 = callURL;
  if (!callURL)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v12[2] = v7;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCallInvite;
  v6 = [(INCallInvite *)&v11 description];
  v7 = [(INCallInvite *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_participants];
  [v7 if_setObjectIfNonNil:v8 forKey:@"participants"];

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
  [v7 if_setObjectIfNonNil:v11 forKey:@"inviteType"];

  v12 = [v6 encodeObject:self->_callURL];

  [v7 if_setObjectIfNonNil:v12 forKey:@"callURL"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  participants = self->_participants;
  v5 = a3;
  [v5 encodeObject:participants forKey:@"participants"];
  [v5 encodeInteger:self->_inviteType forKey:@"inviteType"];
  [v5 encodeObject:self->_callURL forKey:@"callURL"];
}

- (INCallInvite)initWithCoder:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"participants"];

  v9 = [v5 decodeIntegerForKey:@"inviteType"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"callURL"];

  v11 = [(INCallInvite *)self initWithParticipants:v8 inviteType:v9 callURL:v10];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INCallInvite)initWithParticipants:(id)a3 inviteType:(int64_t)a4 callURL:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = INCallInvite;
  v10 = [(INCallInvite *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    participants = v10->_participants;
    v10->_participants = v11;

    v10->_inviteType = a4;
    v13 = [v9 copy];
    callURL = v10->_callURL;
    v10->_callURL = v13;
  }

  return v10;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"participants"];
    v11 = [v7 decodeObjectsOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"inviteType"];
    v13 = INCallInviteTypeWithString(v12);

    v14 = objc_opt_class();
    v15 = [v8 objectForKeyedSubscript:@"callURL"];
    v16 = [v7 decodeObjectOfClass:v14 from:v15];

    v17 = [[a1 alloc] initWithParticipants:v11 inviteType:v13 callURL:v16];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end