@interface INCallRecordFilter
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCallRecordFilter)initWithCoder:(id)a3;
- (INCallRecordFilter)initWithParticipants:(NSArray *)participants callTypes:(INCallRecordTypeOptions)callTypes callCapability:(INCallCapability)callCapability;
- (INCallRecordFilter)initWithParticipants:(id)a3 callTypes:(unint64_t)a4 callCapability:(int64_t)a5 preferredCallProvider:(int64_t)a6;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCallRecordFilter

- (id)_dictionaryRepresentation
{
  v12[4] = *MEMORY[0x1E69E9840];
  v11[0] = @"participants";
  participants = self->_participants;
  v4 = participants;
  if (!participants)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v12[0] = v4;
  v11[1] = @"callTypes";
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_callTypes];
  v12[1] = v5;
  v11[2] = @"callCapability";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_callCapability];
  v12[2] = v6;
  v11[3] = @"preferredCallProvider";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredCallProvider];
  v12[3] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:4];

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
  v11.super_class = INCallRecordFilter;
  v6 = [(INCallRecordFilter *)&v11 description];
  v7 = [(INCallRecordFilter *)self _dictionaryRepresentation];
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
  v9 = INCallRecordTypeOptionsGetNames(self->_callTypes);
  [v7 if_setObjectIfNonNil:v9 forKey:@"callTypes"];

  callCapability = self->_callCapability;
  v11 = @"unknown";
  if (callCapability == 2)
  {
    v11 = @"videoCall";
  }

  if (callCapability == 1)
  {
    v12 = @"audioCall";
  }

  else
  {
    v12 = v11;
  }

  v13 = v12;
  [v7 if_setObjectIfNonNil:v13 forKey:@"callCapability"];

  v14 = self->_preferredCallProvider - 1;
  if (v14 > 2)
  {
    v15 = @"unknown";
  }

  else
  {
    v15 = off_1E7281D58[v14];
  }

  v16 = v15;
  [v7 if_setObjectIfNonNil:v16 forKey:@"preferredCallProvider"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  participants = self->_participants;
  v5 = a3;
  [v5 encodeObject:participants forKey:@"participants"];
  [v5 encodeInteger:self->_callTypes forKey:@"callTypes"];
  [v5 encodeInteger:self->_callCapability forKey:@"callCapability"];
  [v5 encodeInteger:self->_preferredCallProvider forKey:@"preferredCallProvider"];
}

- (INCallRecordFilter)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"participants"];

  v9 = [v5 decodeIntegerForKey:@"callTypes"];
  v10 = [v5 decodeIntegerForKey:@"callCapability"];
  v11 = [v5 decodeIntegerForKey:@"preferredCallProvider"];

  v12 = [(INCallRecordFilter *)self initWithParticipants:v8 callTypes:v9 callCapability:v10 preferredCallProvider:v11];
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      participants = self->_participants;
      v7 = (participants == v5->_participants || [(NSArray *)participants isEqual:?]) && self->_callTypes == v5->_callTypes && self->_callCapability == v5->_callCapability && self->_preferredCallProvider == v5->_preferredCallProvider;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_participants hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_callTypes];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_callCapability];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredCallProvider];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (INCallRecordFilter)initWithParticipants:(id)a3 callTypes:(unint64_t)a4 callCapability:(int64_t)a5 preferredCallProvider:(int64_t)a6
{
  v10 = a3;
  v15.receiver = self;
  v15.super_class = INCallRecordFilter;
  v11 = [(INCallRecordFilter *)&v15 init];
  if (v11)
  {
    v12 = [v10 copy];
    participants = v11->_participants;
    v11->_participants = v12;

    v11->_callTypes = a4;
    v11->_callCapability = a5;
    v11->_preferredCallProvider = a6;
  }

  return v11;
}

- (INCallRecordFilter)initWithParticipants:(NSArray *)participants callTypes:(INCallRecordTypeOptions)callTypes callCapability:(INCallCapability)callCapability
{
  v8 = participants;
  v13.receiver = self;
  v13.super_class = INCallRecordFilter;
  v9 = [(INCallRecordFilter *)&v13 init];
  if (v9)
  {
    v10 = [(NSArray *)v8 copy];
    v11 = v9->_participants;
    v9->_participants = v10;

    v9->_callTypes = callTypes;
    v9->_callCapability = callCapability;
  }

  return v9;
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

    v12 = [v8 objectForKeyedSubscript:@"callTypes"];
    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }

    v15 = v13;

    v16 = INCallRecordTypeOptionsWithNames(v15);
    v17 = [v8 objectForKeyedSubscript:@"callCapability"];
    v18 = INCallCapabilityWithString(v17);

    v19 = [v8 objectForKeyedSubscript:@"preferredCallProvider"];
    v20 = INPreferredCallProviderWithString(v19);

    v14 = [[a1 alloc] initWithParticipants:v11 callTypes:v16 callCapability:v18 preferredCallProvider:v20];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(INCallRecordFilter *)self participants];
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
  v4 = [(INCallRecordFilter *)self participants];
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

@end