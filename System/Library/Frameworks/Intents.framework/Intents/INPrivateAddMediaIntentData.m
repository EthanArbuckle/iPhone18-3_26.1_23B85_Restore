@interface INPrivateAddMediaIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INPrivateAddMediaIntentData)initWithCoder:(id)a3;
- (INPrivateAddMediaIntentData)initWithPrivateMediaIntentData:(id)a3 audioSearchResults:(id)a4 internalSignals:(id)a5 pegasusMetaData:(id)a6;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INPrivateAddMediaIntentData

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"privateMediaIntentData";
  privateMediaIntentData = self->_privateMediaIntentData;
  v4 = privateMediaIntentData;
  if (!privateMediaIntentData)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"audioSearchResults";
  audioSearchResults = self->_audioSearchResults;
  v6 = audioSearchResults;
  if (!audioSearchResults)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
  v14[2] = @"internalSignals";
  internalSignals = self->_internalSignals;
  v8 = internalSignals;
  if (!internalSignals)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v8;
  v14[3] = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  v10 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:4];
  if (pegasusMetaData)
  {
    if (internalSignals)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (internalSignals)
    {
LABEL_11:
      if (audioSearchResults)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (privateMediaIntentData)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!audioSearchResults)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (privateMediaIntentData)
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
  v11.super_class = INPrivateAddMediaIntentData;
  v6 = [(INPrivateAddMediaIntentData *)&v11 description];
  v7 = [(INPrivateAddMediaIntentData *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_privateMediaIntentData];
  [v7 if_setObjectIfNonNil:v8 forKey:@"privateMediaIntentData"];

  v9 = [v6 encodeObject:self->_audioSearchResults];
  [v7 if_setObjectIfNonNil:v9 forKey:@"audioSearchResults"];

  v10 = [v6 encodeObject:self->_internalSignals];
  [v7 if_setObjectIfNonNil:v10 forKey:@"internalSignals"];

  v11 = [v6 encodeObject:self->_pegasusMetaData];

  [v7 if_setObjectIfNonNil:v11 forKey:@"pegasusMetaData"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  privateMediaIntentData = self->_privateMediaIntentData;
  v5 = a3;
  [v5 encodeObject:privateMediaIntentData forKey:@"privateMediaIntentData"];
  [v5 encodeObject:self->_audioSearchResults forKey:@"audioSearchResults"];
  [v5 encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [v5 encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
}

- (INPrivateAddMediaIntentData)initWithCoder:(id)a3
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaIntentData"];
  v6 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"audioSearchResults"];

  v10 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:3];
  v12 = [v10 setWithArray:{v11, v18, v19}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"internalSignals"];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];

  v15 = [(INPrivateAddMediaIntentData *)self initWithPrivateMediaIntentData:v5 audioSearchResults:v9 internalSignals:v13 pegasusMetaData:v14];
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
      privateMediaIntentData = self->_privateMediaIntentData;
      v10 = 0;
      if (privateMediaIntentData == v5->_privateMediaIntentData || [(INPrivateMediaIntentData *)privateMediaIntentData isEqual:?])
      {
        audioSearchResults = self->_audioSearchResults;
        if (audioSearchResults == v5->_audioSearchResults || [(NSArray *)audioSearchResults isEqual:?])
        {
          internalSignals = self->_internalSignals;
          if (internalSignals == v5->_internalSignals || [(NSArray *)internalSignals isEqual:?])
          {
            pegasusMetaData = self->_pegasusMetaData;
            if (pegasusMetaData == v5->_pegasusMetaData || [(NSData *)pegasusMetaData isEqual:?])
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
  v3 = [(INPrivateMediaIntentData *)self->_privateMediaIntentData hash];
  v4 = [(NSArray *)self->_audioSearchResults hash]^ v3;
  v5 = [(NSArray *)self->_internalSignals hash];
  return v4 ^ v5 ^ [(NSData *)self->_pegasusMetaData hash];
}

- (INPrivateAddMediaIntentData)initWithPrivateMediaIntentData:(id)a3 audioSearchResults:(id)a4 internalSignals:(id)a5 pegasusMetaData:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = INPrivateAddMediaIntentData;
  v14 = [(INPrivateAddMediaIntentData *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    privateMediaIntentData = v14->_privateMediaIntentData;
    v14->_privateMediaIntentData = v15;

    v17 = [v11 copy];
    audioSearchResults = v14->_audioSearchResults;
    v14->_audioSearchResults = v17;

    v19 = [v12 copy];
    internalSignals = v14->_internalSignals;
    v14->_internalSignals = v19;

    v21 = [v13 copy];
    pegasusMetaData = v14->_pegasusMetaData;
    v14->_pegasusMetaData = v21;
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
    v10 = [v8 objectForKeyedSubscript:@"privateMediaIntentData"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [v8 objectForKeyedSubscript:@"audioSearchResults"];
    v14 = [v7 decodeObjectsOfClass:v12 from:v13];

    v15 = [v8 objectForKeyedSubscript:@"internalSignals"];
    v16 = objc_opt_class();
    v17 = [v8 objectForKeyedSubscript:@"pegasusMetaData"];
    v18 = [v7 decodeObjectOfClass:v16 from:v17];

    v19 = [[a1 alloc] initWithPrivateMediaIntentData:v11 audioSearchResults:v14 internalSignals:v15 pegasusMetaData:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(INPrivateAddMediaIntentData *)self audioSearchResults];
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
  v4 = [(INPrivateAddMediaIntentData *)self audioSearchResults];
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