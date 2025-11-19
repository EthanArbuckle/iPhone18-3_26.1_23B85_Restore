@interface INCallRecord
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCallRecord)initWithCoder:(id)a3;
- (INCallRecord)initWithIdentifier:(NSString *)identifier dateCreated:(NSDate *)dateCreated callRecordType:(INCallRecordType)callRecordType callCapability:(INCallCapability)callCapability callDuration:(NSNumber *)callDuration unseen:(NSNumber *)unseen participants:(NSArray *)participants numberOfCalls:(NSNumber *)numberOfCalls isCallerIdBlocked:(NSNumber *)isCallerIdBlocked;
- (INCallRecord)initWithIdentifier:(id)a3 dateCreated:(id)a4 callRecordType:(int64_t)a5 callCapability:(int64_t)a6 callDuration:(id)a7 unseen:(id)a8 preferredCallProvider:(int64_t)a9 participants:(id)a10 numberOfCalls:(id)a11 providerId:(id)a12 providerBundleId:(id)a13 isCallerIdBlocked:(id)a14;
- (INCallRecord)initWithIdentifier:(id)a3 dateCreated:(id)a4 caller:(id)a5 callRecordType:(int64_t)a6 callCapability:(int64_t)a7 callDuration:(id)a8 unseen:(id)a9 numberOfCalls:(id)a10 isCallerIdBlocked:(id)a11;
- (INCallRecord)initWithIdentifier:(id)a3 dateCreated:(id)a4 caller:(id)a5 callRecordType:(int64_t)a6 callCapability:(int64_t)a7 callDuration:(id)a8 unseen:(id)a9 preferredCallProvider:(int64_t)a10 numberOfCalls:(id)a11 providerId:(id)a12 providerBundleId:(id)a13 isCallerIdBlocked:(id)a14;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INCallRecord

- (INCallRecord)initWithIdentifier:(id)a3 dateCreated:(id)a4 caller:(id)a5 callRecordType:(int64_t)a6 callCapability:(int64_t)a7 callDuration:(id)a8 unseen:(id)a9 numberOfCalls:(id)a10 isCallerIdBlocked:(id)a11
{
  v28[1] = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  if (a5)
  {
    v28[0] = a5;
    v21 = MEMORY[0x1E695DEC8];
    v22 = a5;
    a5 = [v21 arrayWithObjects:v28 count:1];
  }

  v23 = [(INCallRecord *)self initWithIdentifier:v15 dateCreated:v16 callRecordType:a6 callCapability:a7 callDuration:v17 unseen:v18 participants:a5 numberOfCalls:v19 isCallerIdBlocked:v20];

  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (INCallRecord)initWithIdentifier:(id)a3 dateCreated:(id)a4 caller:(id)a5 callRecordType:(int64_t)a6 callCapability:(int64_t)a7 callDuration:(id)a8 unseen:(id)a9 preferredCallProvider:(int64_t)a10 numberOfCalls:(id)a11 providerId:(id)a12 providerBundleId:(id)a13 isCallerIdBlocked:(id)a14
{
  v34[1] = *MEMORY[0x1E69E9840];
  v17 = a3;
  v18 = a4;
  v19 = a8;
  v20 = a9;
  v21 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  if (a5)
  {
    v34[0] = a5;
    v25 = MEMORY[0x1E695DEC8];
    v26 = a5;
    v27 = [v25 arrayWithObjects:v34 count:1];
  }

  else
  {
    v27 = 0;
  }

  v28 = [(INCallRecord *)self initWithIdentifier:v17 dateCreated:v18 callRecordType:a6 callCapability:a7 callDuration:v19 unseen:v20 preferredCallProvider:a10 participants:v27 numberOfCalls:v21 providerId:v22 providerBundleId:v23 isCallerIdBlocked:v24];

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(INCallRecord(Deprecated) *)self caller];
  [v5 _intents_updateContainerWithCache:v4];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(INCallRecord *)self participants];
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
  v4 = [(INCallRecord(Deprecated) *)self caller];
  v5 = [v4 _intents_cacheableObjects];
  [v3 unionSet:v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(INCallRecord *)self participants];
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
  v33[12] = *MEMORY[0x1E69E9840];
  identifier = self->_identifier;
  v31 = identifier;
  v32[0] = @"identifier";
  if (!identifier)
  {
    identifier = [MEMORY[0x1E695DFB0] null];
  }

  v24 = identifier;
  v33[0] = identifier;
  v32[1] = @"dateCreated";
  dateCreated = self->_dateCreated;
  v30 = dateCreated;
  if (!dateCreated)
  {
    dateCreated = [MEMORY[0x1E695DFB0] null];
  }

  v23 = dateCreated;
  v33[1] = dateCreated;
  v32[2] = @"callRecordType";
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:self->_callRecordType];
  v33[2] = v29;
  v32[3] = @"callDuration";
  callDuration = self->_callDuration;
  v28 = callDuration;
  if (!callDuration)
  {
    callDuration = [MEMORY[0x1E695DFB0] null];
  }

  v22 = callDuration;
  v33[3] = callDuration;
  v32[4] = @"unseen";
  unseen = self->_unseen;
  v27 = unseen;
  if (!unseen)
  {
    unseen = [MEMORY[0x1E695DFB0] null];
  }

  v21 = unseen;
  v33[4] = unseen;
  v32[5] = @"callCapability";
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:self->_callCapability];
  v33[5] = v26;
  v32[6] = @"numberOfCalls";
  numberOfCalls = self->_numberOfCalls;
  v8 = numberOfCalls;
  if (!numberOfCalls)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v33[6] = v8;
  v32[7] = @"preferredCallProvider";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{self->_preferredCallProvider, v8}];
  v33[7] = v9;
  v32[8] = @"providerId";
  providerId = self->_providerId;
  v11 = providerId;
  if (!providerId)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v33[8] = v11;
  v32[9] = @"providerBundleId";
  providerBundleId = self->_providerBundleId;
  v13 = providerBundleId;
  if (!providerBundleId)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v33[9] = v13;
  v32[10] = @"isCallerIdBlocked";
  isCallerIdBlocked = self->_isCallerIdBlocked;
  v15 = isCallerIdBlocked;
  if (!isCallerIdBlocked)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v33[10] = v15;
  v32[11] = @"participants";
  participants = self->_participants;
  v17 = participants;
  if (!participants)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v33[11] = v17;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:12];
  if (participants)
  {
    if (isCallerIdBlocked)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (isCallerIdBlocked)
    {
LABEL_21:
      if (providerBundleId)
      {
        goto LABEL_22;
      }

LABEL_38:

      if (providerId)
      {
        goto LABEL_23;
      }

      goto LABEL_39;
    }
  }

  if (!providerBundleId)
  {
    goto LABEL_38;
  }

LABEL_22:
  if (providerId)
  {
    goto LABEL_23;
  }

LABEL_39:

LABEL_23:
  if (!numberOfCalls)
  {
  }

  if (!v27)
  {
  }

  if (!v28)
  {
  }

  if (!v30)
  {
  }

  if (!v31)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v25;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCallRecord;
  v6 = [(INCallRecord *)&v11 description];
  v7 = [(INCallRecord *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_identifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"identifier"];

  v9 = [v6 encodeObject:self->_dateCreated];
  [v7 if_setObjectIfNonNil:v9 forKey:@"dateCreated"];

  v10 = self->_callRecordType - 1;
  if (v10 > 7)
  {
    v11 = @"unknown";
  }

  else
  {
    v11 = off_1E7280748[v10];
  }

  v12 = v11;
  [v7 if_setObjectIfNonNil:v12 forKey:@"callRecordType"];

  v13 = [v6 encodeObject:self->_callDuration];
  [v7 if_setObjectIfNonNil:v13 forKey:@"callDuration"];

  v14 = [v6 encodeObject:self->_unseen];
  [v7 if_setObjectIfNonNil:v14 forKey:@"unseen"];

  callCapability = self->_callCapability;
  v16 = @"unknown";
  if (callCapability == 2)
  {
    v16 = @"videoCall";
  }

  if (callCapability == 1)
  {
    v17 = @"audioCall";
  }

  else
  {
    v17 = v16;
  }

  v18 = v17;
  [v7 if_setObjectIfNonNil:v18 forKey:@"callCapability"];

  v19 = [v6 encodeObject:self->_numberOfCalls];
  [v7 if_setObjectIfNonNil:v19 forKey:@"numberOfCalls"];

  v20 = self->_preferredCallProvider - 1;
  if (v20 > 2)
  {
    v21 = @"unknown";
  }

  else
  {
    v21 = off_1E7281D58[v20];
  }

  v22 = v21;
  [v7 if_setObjectIfNonNil:v22 forKey:@"preferredCallProvider"];

  v23 = [v6 encodeObject:self->_providerId];
  [v7 if_setObjectIfNonNil:v23 forKey:@"providerId"];

  v24 = [v6 encodeObject:self->_providerBundleId];
  [v7 if_setObjectIfNonNil:v24 forKey:@"providerBundleId"];

  v25 = [v6 encodeObject:self->_isCallerIdBlocked];
  [v7 if_setObjectIfNonNil:v25 forKey:@"isCallerIdBlocked"];

  v26 = [v6 encodeObject:self->_participants];

  [v7 if_setObjectIfNonNil:v26 forKey:@"participants"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_dateCreated forKey:@"dateCreated"];
  [v5 encodeInteger:self->_callRecordType forKey:@"callRecordType"];
  [v5 encodeObject:self->_callDuration forKey:@"callDuration"];
  [v5 encodeObject:self->_unseen forKey:@"unseen"];
  [v5 encodeInteger:self->_callCapability forKey:@"callCapability"];
  [v5 encodeObject:self->_numberOfCalls forKey:@"numberOfCalls"];
  [v5 encodeInteger:self->_preferredCallProvider forKey:@"preferredCallProvider"];
  [v5 encodeObject:self->_providerId forKey:@"providerId"];
  [v5 encodeObject:self->_providerBundleId forKey:@"providerBundleId"];
  [v5 encodeObject:self->_isCallerIdBlocked forKey:@"isCallerIdBlocked"];
  [v5 encodeObject:self->_participants forKey:@"participants"];
}

- (INCallRecord)initWithCoder:(id)a3
{
  v32[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v30 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];

  v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
  v28 = [v4 decodeIntegerForKey:@"callRecordType"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callDuration"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unseen"];
  v27 = [v4 decodeIntegerForKey:@"callCapability"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfCalls"];
  v26 = [v4 decodeIntegerForKey:@"preferredCallProvider"];
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"providerId"];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"providerBundleId"];

  v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isCallerIdBlocked"];
  v19 = MEMORY[0x1E695DFD8];
  v32[0] = objc_opt_class();
  v32[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v21 = [v19 setWithArray:v20];
  v22 = [v4 decodeObjectOfClasses:v21 forKey:@"participants"];

  v23 = [(INCallRecord *)self initWithIdentifier:v30 dateCreated:v29 callRecordType:v28 callCapability:v27 callDuration:v7 unseen:v8 preferredCallProvider:v26 participants:v22 numberOfCalls:v9 providerId:v13 providerBundleId:v17 isCallerIdBlocked:v18];
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      identifier = self->_identifier;
      if (identifier != v5->_identifier && ![(NSString *)identifier isEqual:?])
      {
        goto LABEL_27;
      }

      dateCreated = self->_dateCreated;
      if (dateCreated != v5->_dateCreated && ![(NSDate *)dateCreated isEqual:?])
      {
        goto LABEL_27;
      }

      if (self->_callRecordType == v5->_callRecordType && ((callDuration = self->_callDuration, callDuration == v5->_callDuration) || [(NSNumber *)callDuration isEqual:?]) && ((unseen = self->_unseen, unseen == v5->_unseen) || [(NSNumber *)unseen isEqual:?]) && self->_callCapability == v5->_callCapability && ((numberOfCalls = self->_numberOfCalls, numberOfCalls == v5->_numberOfCalls) || [(NSNumber *)numberOfCalls isEqual:?]) && self->_preferredCallProvider == v5->_preferredCallProvider && ((providerId = self->_providerId, providerId == v5->_providerId) || [(NSString *)providerId isEqual:?]) && ((providerBundleId = self->_providerBundleId, providerBundleId == v5->_providerBundleId) || [(NSString *)providerBundleId isEqual:?]) && ((isCallerIdBlocked = self->_isCallerIdBlocked, isCallerIdBlocked == v5->_isCallerIdBlocked) || [(NSNumber *)isCallerIdBlocked isEqual:?]) && ((participants = self->_participants, participants == v5->_participants) || [(NSArray *)participants isEqual:?]))
      {
        v15 = 1;
      }

      else
      {
LABEL_27:
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSDate *)self->_dateCreated hash]^ v3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_callRecordType];
  v6 = [v5 hash];
  v7 = v4 ^ [(NSNumber *)self->_callDuration hash]^ v6;
  v8 = [(NSNumber *)self->_unseen hash];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_callCapability];
  v10 = v7 ^ v8 ^ [v9 hash];
  v11 = [(NSNumber *)self->_numberOfCalls hash];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_preferredCallProvider];
  v13 = v11 ^ [v12 hash];
  v14 = v10 ^ v13 ^ [(NSString *)self->_providerId hash];
  v15 = [(NSString *)self->_providerBundleId hash];
  v16 = v15 ^ [(NSNumber *)self->_isCallerIdBlocked hash];
  v17 = v16 ^ [(NSArray *)self->_participants hash];

  return v14 ^ v17;
}

- (INCallRecord)initWithIdentifier:(id)a3 dateCreated:(id)a4 callRecordType:(int64_t)a5 callCapability:(int64_t)a6 callDuration:(id)a7 unseen:(id)a8 preferredCallProvider:(int64_t)a9 participants:(id)a10 numberOfCalls:(id)a11 providerId:(id)a12 providerBundleId:(id)a13 isCallerIdBlocked:(id)a14
{
  v48 = a3;
  v19 = a4;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = a13;
  v26 = a14;
  v49.receiver = self;
  v49.super_class = INCallRecord;
  v27 = [(INCallRecord *)&v49 init];
  if (v27)
  {
    v28 = [v48 copy];
    identifier = v27->_identifier;
    v27->_identifier = v28;

    v30 = [v19 copy];
    dateCreated = v27->_dateCreated;
    v27->_dateCreated = v30;

    v27->_callRecordType = a5;
    v32 = [v20 copy];
    callDuration = v27->_callDuration;
    v27->_callDuration = v32;

    v34 = [v21 copy];
    unseen = v27->_unseen;
    v27->_unseen = v34;

    v27->_callCapability = a6;
    v36 = [v23 copy];
    numberOfCalls = v27->_numberOfCalls;
    v27->_numberOfCalls = v36;

    v27->_preferredCallProvider = a9;
    v38 = [v24 copy];
    providerId = v27->_providerId;
    v27->_providerId = v38;

    v40 = [v25 copy];
    providerBundleId = v27->_providerBundleId;
    v27->_providerBundleId = v40;

    v42 = [v26 copy];
    isCallerIdBlocked = v27->_isCallerIdBlocked;
    v27->_isCallerIdBlocked = v42;

    v44 = [v22 copy];
    participants = v27->_participants;
    v27->_participants = v44;
  }

  return v27;
}

- (INCallRecord)initWithIdentifier:(NSString *)identifier dateCreated:(NSDate *)dateCreated callRecordType:(INCallRecordType)callRecordType callCapability:(INCallCapability)callCapability callDuration:(NSNumber *)callDuration unseen:(NSNumber *)unseen participants:(NSArray *)participants numberOfCalls:(NSNumber *)numberOfCalls isCallerIdBlocked:(NSNumber *)isCallerIdBlocked
{
  v17 = identifier;
  v18 = dateCreated;
  v19 = callDuration;
  v20 = unseen;
  v21 = participants;
  v22 = numberOfCalls;
  v23 = isCallerIdBlocked;
  v40.receiver = self;
  v40.super_class = INCallRecord;
  v24 = [(INCallRecord *)&v40 init];
  if (v24)
  {
    v25 = [(NSString *)v17 copy];
    v26 = v24->_identifier;
    v24->_identifier = v25;

    v27 = [(NSDate *)v18 copy];
    v28 = v24->_dateCreated;
    v24->_dateCreated = v27;

    v24->_callRecordType = callRecordType;
    v29 = [(NSNumber *)v19 copy];
    v30 = v24->_callDuration;
    v24->_callDuration = v29;

    v31 = [(NSNumber *)v20 copy];
    v32 = v24->_unseen;
    v24->_unseen = v31;

    v24->_callCapability = callCapability;
    v33 = [(NSNumber *)v22 copy];
    v34 = v24->_numberOfCalls;
    v24->_numberOfCalls = v33;

    v35 = [(NSNumber *)v23 copy];
    v36 = v24->_isCallerIdBlocked;
    v24->_isCallerIdBlocked = v35;

    v37 = [(NSArray *)v21 copy];
    v38 = v24->_participants;
    v24->_participants = v37;
  }

  return v24;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = [v8 objectForKeyedSubscript:@"identifier"];
    v34 = a1;
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"dateCreated"];
    v33 = [v7 decodeObjectOfClass:v9 from:v10];

    v11 = [v8 objectForKeyedSubscript:@"callRecordType"];
    v29 = INCallRecordTypeWithString(v11);

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"callDuration"];
    v28 = [v7 decodeObjectOfClass:v12 from:v13];

    v32 = [v8 objectForKeyedSubscript:@"unseen"];
    v14 = [v8 objectForKeyedSubscript:@"callCapability"];
    v30 = INCallCapabilityWithString(v14);

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"numberOfCalls"];
    v27 = [v7 decodeObjectOfClass:v15 from:v16];

    v17 = [v8 objectForKeyedSubscript:@"preferredCallProvider"];
    v18 = INPreferredCallProviderWithString(v17);

    v26 = [v8 objectForKeyedSubscript:@"providerId"];
    v19 = [v8 objectForKeyedSubscript:@"providerBundleId"];
    v20 = [v8 objectForKeyedSubscript:@"isCallerIdBlocked"];
    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"participants"];
    v23 = [v7 decodeObjectsOfClass:v21 from:v22];

    v24 = [[v34 alloc] initWithIdentifier:v31 dateCreated:v33 callRecordType:v29 callCapability:v30 callDuration:v28 unseen:v32 preferredCallProvider:v18 participants:v23 numberOfCalls:v27 providerId:v26 providerBundleId:v19 isCallerIdBlocked:v20];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

@end