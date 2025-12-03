@interface INPrivateSearchForMediaIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INPrivateSearchForMediaIntentData)initWithCoder:(id)coder;
- (INPrivateSearchForMediaIntentData)initWithPrivateMediaIntentData:(id)data audioSearchResults:(id)results internalSignals:(id)signals appInferred:(id)inferred pegasusMetaData:(id)metaData;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPrivateSearchForMediaIntentData

- (void)_intents_updateContainerWithCache:(id)cache
{
  v16 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  audioSearchResults = [(INPrivateSearchForMediaIntentData *)self audioSearchResults];
  v6 = [audioSearchResults countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(audioSearchResults);
        }

        [*(*(&v11 + 1) + 8 * v9++) _intents_updateContainerWithCache:cacheCopy];
      }

      while (v7 != v9);
      v7 = [audioSearchResults countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  audioSearchResults = [(INPrivateSearchForMediaIntentData *)self audioSearchResults];
  v5 = [audioSearchResults countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(audioSearchResults);
        }

        _intents_cacheableObjects = [*(*(&v14 + 1) + 8 * v8) _intents_cacheableObjects];
        [v3 unionSet:_intents_cacheableObjects];

        ++v8;
      }

      while (v6 != v8);
      v6 = [audioSearchResults countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  null = privateMediaIntentData;
  if (!privateMediaIntentData)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v16 = null;
  v23[0] = null;
  v19 = @"audioSearchResults";
  audioSearchResults = self->_audioSearchResults;
  null2 = audioSearchResults;
  if (!audioSearchResults)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v20 = @"internalSignals";
  internalSignals = self->_internalSignals;
  null3 = internalSignals;
  if (!internalSignals)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v21 = @"appInferred";
  appInferred = self->_appInferred;
  null4 = appInferred;
  if (!appInferred)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22 = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  null5 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivateSearchForMediaIntentData;
  v6 = [(INPrivateSearchForMediaIntentData *)&v11 description];
  _dictionaryRepresentation = [(INPrivateSearchForMediaIntentData *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_privateMediaIntentData];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"privateMediaIntentData"];

  v9 = [encoderCopy encodeObject:self->_audioSearchResults];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"audioSearchResults"];

  v10 = [encoderCopy encodeObject:self->_internalSignals];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"internalSignals"];

  v11 = [encoderCopy encodeObject:self->_appInferred];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"appInferred"];

  v12 = [encoderCopy encodeObject:self->_pegasusMetaData];

  [dictionary if_setObjectIfNonNil:v12 forKey:@"pegasusMetaData"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  privateMediaIntentData = self->_privateMediaIntentData;
  coderCopy = coder;
  [coderCopy encodeObject:privateMediaIntentData forKey:@"privateMediaIntentData"];
  [coderCopy encodeObject:self->_audioSearchResults forKey:@"audioSearchResults"];
  [coderCopy encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [coderCopy encodeObject:self->_appInferred forKey:@"appInferred"];
  [coderCopy encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
}

- (INPrivateSearchForMediaIntentData)initWithCoder:(id)coder
{
  v22[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaIntentData"];
  v6 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"audioSearchResults"];

  v10 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:3];
  v12 = [v10 setWithArray:{v11, v19, v20}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"internalSignals"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appInferred"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];

  v16 = [(INPrivateSearchForMediaIntentData *)self initWithPrivateMediaIntentData:v5 audioSearchResults:v9 internalSignals:v13 appInferred:v14 pegasusMetaData:v15];
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INPrivateSearchForMediaIntentData)initWithPrivateMediaIntentData:(id)data audioSearchResults:(id)results internalSignals:(id)signals appInferred:(id)inferred pegasusMetaData:(id)metaData
{
  dataCopy = data;
  resultsCopy = results;
  signalsCopy = signals;
  inferredCopy = inferred;
  metaDataCopy = metaData;
  v29.receiver = self;
  v29.super_class = INPrivateSearchForMediaIntentData;
  v17 = [(INPrivateSearchForMediaIntentData *)&v29 init];
  if (v17)
  {
    v18 = [dataCopy copy];
    privateMediaIntentData = v17->_privateMediaIntentData;
    v17->_privateMediaIntentData = v18;

    v20 = [resultsCopy copy];
    audioSearchResults = v17->_audioSearchResults;
    v17->_audioSearchResults = v20;

    v22 = [signalsCopy copy];
    internalSignals = v17->_internalSignals;
    v17->_internalSignals = v22;

    v24 = [inferredCopy copy];
    appInferred = v17->_appInferred;
    v17->_appInferred = v24;

    v26 = [metaDataCopy copy];
    pegasusMetaData = v17->_pegasusMetaData;
    v17->_pegasusMetaData = v26;
  }

  return v17;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"privateMediaIntentData"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"audioSearchResults"];
    v14 = [decoderCopy decodeObjectsOfClass:v12 from:v13];

    v15 = [fromCopy objectForKeyedSubscript:@"internalSignals"];
    v16 = [fromCopy objectForKeyedSubscript:@"appInferred"];
    v17 = objc_opt_class();
    v18 = [fromCopy objectForKeyedSubscript:@"pegasusMetaData"];
    v19 = [decoderCopy decodeObjectOfClass:v17 from:v18];

    v20 = [[self alloc] initWithPrivateMediaIntentData:v11 audioSearchResults:v14 internalSignals:v15 appInferred:v16 pegasusMetaData:v19];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end