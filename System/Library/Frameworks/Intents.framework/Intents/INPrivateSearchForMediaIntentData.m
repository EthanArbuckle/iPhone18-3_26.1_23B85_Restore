@interface INPrivateSearchForMediaIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INPrivateSearchForMediaIntentData)initWithCoder:(id)a3;
- (INPrivateSearchForMediaIntentData)initWithPrivateMediaIntentData:(id)a3 audioSearchResults:(id)a4 internalSignals:(id)a5 appInferred:(id)a6 pegasusMetaData:(id)a7;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INPrivateSearchForMediaIntentData

- (void)_intents_updateContainerWithCache:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(INPrivateSearchForMediaIntentData *)self audioSearchResults];
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
  v4 = [(INPrivateSearchForMediaIntentData *)self audioSearchResults];
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
  v23[5] = *MEMORY[0x1E69E9840];
  v18 = @"privateMediaIntentData";
  privateMediaIntentData = self->_privateMediaIntentData;
  v4 = privateMediaIntentData;
  if (!privateMediaIntentData)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v4;
  v23[0] = v4;
  v19 = @"audioSearchResults";
  audioSearchResults = self->_audioSearchResults;
  v6 = audioSearchResults;
  if (!audioSearchResults)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v6;
  v20 = @"internalSignals";
  internalSignals = self->_internalSignals;
  v8 = internalSignals;
  if (!internalSignals)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v8;
  v21 = @"appInferred";
  appInferred = self->_appInferred;
  v10 = appInferred;
  if (!appInferred)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v10;
  v22 = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  v12 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (pegasusMetaData)
  {
    if (appInferred)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (appInferred)
    {
LABEL_13:
      if (internalSignals)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (internalSignals)
  {
LABEL_14:
    if (audioSearchResults)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (privateMediaIntentData)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!audioSearchResults)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (privateMediaIntentData)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivateSearchForMediaIntentData;
  v6 = [(INPrivateSearchForMediaIntentData *)&v11 description];
  v7 = [(INPrivateSearchForMediaIntentData *)self _dictionaryRepresentation];
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

  v11 = [v6 encodeObject:self->_appInferred];
  [v7 if_setObjectIfNonNil:v11 forKey:@"appInferred"];

  v12 = [v6 encodeObject:self->_pegasusMetaData];

  [v7 if_setObjectIfNonNil:v12 forKey:@"pegasusMetaData"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  privateMediaIntentData = self->_privateMediaIntentData;
  v5 = a3;
  [v5 encodeObject:privateMediaIntentData forKey:@"privateMediaIntentData"];
  [v5 encodeObject:self->_audioSearchResults forKey:@"audioSearchResults"];
  [v5 encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [v5 encodeObject:self->_appInferred forKey:@"appInferred"];
  [v5 encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
}

- (INPrivateSearchForMediaIntentData)initWithCoder:(id)a3
{
  v22[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaIntentData"];
  v6 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"audioSearchResults"];

  v10 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:3];
  v12 = [v10 setWithArray:{v11, v19, v20}];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"internalSignals"];

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appInferred"];
  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];

  v16 = [(INPrivateSearchForMediaIntentData *)self initWithPrivateMediaIntentData:v5 audioSearchResults:v9 internalSignals:v13 appInferred:v14 pegasusMetaData:v15];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      privateMediaIntentData = self->_privateMediaIntentData;
      v11 = 0;
      if (privateMediaIntentData == v5->_privateMediaIntentData || [(INPrivateMediaIntentData *)privateMediaIntentData isEqual:?])
      {
        audioSearchResults = self->_audioSearchResults;
        if (audioSearchResults == v5->_audioSearchResults || [(NSArray *)audioSearchResults isEqual:?])
        {
          internalSignals = self->_internalSignals;
          if (internalSignals == v5->_internalSignals || [(NSArray *)internalSignals isEqual:?])
          {
            appInferred = self->_appInferred;
            if (appInferred == v5->_appInferred || [(NSNumber *)appInferred isEqual:?])
            {
              pegasusMetaData = self->_pegasusMetaData;
              if (pegasusMetaData == v5->_pegasusMetaData || [(NSData *)pegasusMetaData isEqual:?])
              {
                v11 = 1;
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(INPrivateMediaIntentData *)self->_privateMediaIntentData hash];
  v4 = [(NSArray *)self->_audioSearchResults hash]^ v3;
  v5 = [(NSArray *)self->_internalSignals hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_appInferred hash];
  return v6 ^ [(NSData *)self->_pegasusMetaData hash];
}

- (INPrivateSearchForMediaIntentData)initWithPrivateMediaIntentData:(id)a3 audioSearchResults:(id)a4 internalSignals:(id)a5 appInferred:(id)a6 pegasusMetaData:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v29.receiver = self;
  v29.super_class = INPrivateSearchForMediaIntentData;
  v17 = [(INPrivateSearchForMediaIntentData *)&v29 init];
  if (v17)
  {
    v18 = [v12 copy];
    privateMediaIntentData = v17->_privateMediaIntentData;
    v17->_privateMediaIntentData = v18;

    v20 = [v13 copy];
    audioSearchResults = v17->_audioSearchResults;
    v17->_audioSearchResults = v20;

    v22 = [v14 copy];
    internalSignals = v17->_internalSignals;
    v17->_internalSignals = v22;

    v24 = [v15 copy];
    appInferred = v17->_appInferred;
    v17->_appInferred = v24;

    v26 = [v16 copy];
    pegasusMetaData = v17->_pegasusMetaData;
    v17->_pegasusMetaData = v26;
  }

  return v17;
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
    v16 = [v8 objectForKeyedSubscript:@"appInferred"];
    v17 = objc_opt_class();
    v18 = [v8 objectForKeyedSubscript:@"pegasusMetaData"];
    v19 = [v7 decodeObjectOfClass:v17 from:v18];

    v20 = [[a1 alloc] initWithPrivateMediaIntentData:v11 audioSearchResults:v14 internalSignals:v15 appInferred:v16 pegasusMetaData:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end