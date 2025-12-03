@interface INPrivateAddMediaIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INPrivateAddMediaIntentData)initWithCoder:(id)coder;
- (INPrivateAddMediaIntentData)initWithPrivateMediaIntentData:(id)data audioSearchResults:(id)results internalSignals:(id)signals pegasusMetaData:(id)metaData;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPrivateAddMediaIntentData

- (id)_dictionaryRepresentation
{
  v15[4] = *MEMORY[0x1E69E9840];
  v14[0] = @"privateMediaIntentData";
  privateMediaIntentData = self->_privateMediaIntentData;
  null = privateMediaIntentData;
  if (!privateMediaIntentData)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"audioSearchResults";
  audioSearchResults = self->_audioSearchResults;
  null2 = audioSearchResults;
  if (!audioSearchResults)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"internalSignals";
  internalSignals = self->_internalSignals;
  null3 = internalSignals;
  if (!internalSignals)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = null3;
  v14[3] = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  null4 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null4;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivateAddMediaIntentData;
  v6 = [(INPrivateAddMediaIntentData *)&v11 description];
  _dictionaryRepresentation = [(INPrivateAddMediaIntentData *)self _dictionaryRepresentation];
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

  v11 = [encoderCopy encodeObject:self->_pegasusMetaData];

  [dictionary if_setObjectIfNonNil:v11 forKey:@"pegasusMetaData"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  privateMediaIntentData = self->_privateMediaIntentData;
  coderCopy = coder;
  [coderCopy encodeObject:privateMediaIntentData forKey:@"privateMediaIntentData"];
  [coderCopy encodeObject:self->_audioSearchResults forKey:@"audioSearchResults"];
  [coderCopy encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [coderCopy encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
}

- (INPrivateAddMediaIntentData)initWithCoder:(id)coder
{
  v21[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaIntentData"];
  v6 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"audioSearchResults"];

  v10 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:3];
  v12 = [v10 setWithArray:{v11, v18, v19}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"internalSignals"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];

  v15 = [(INPrivateAddMediaIntentData *)self initWithPrivateMediaIntentData:v5 audioSearchResults:v9 internalSignals:v13 pegasusMetaData:v14];
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

- (INPrivateAddMediaIntentData)initWithPrivateMediaIntentData:(id)data audioSearchResults:(id)results internalSignals:(id)signals pegasusMetaData:(id)metaData
{
  dataCopy = data;
  resultsCopy = results;
  signalsCopy = signals;
  metaDataCopy = metaData;
  v24.receiver = self;
  v24.super_class = INPrivateAddMediaIntentData;
  v14 = [(INPrivateAddMediaIntentData *)&v24 init];
  if (v14)
  {
    v15 = [dataCopy copy];
    privateMediaIntentData = v14->_privateMediaIntentData;
    v14->_privateMediaIntentData = v15;

    v17 = [resultsCopy copy];
    audioSearchResults = v14->_audioSearchResults;
    v14->_audioSearchResults = v17;

    v19 = [signalsCopy copy];
    internalSignals = v14->_internalSignals;
    v14->_internalSignals = v19;

    v21 = [metaDataCopy copy];
    pegasusMetaData = v14->_pegasusMetaData;
    v14->_pegasusMetaData = v21;
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
    v10 = [fromCopy objectForKeyedSubscript:@"privateMediaIntentData"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"audioSearchResults"];
    v14 = [decoderCopy decodeObjectsOfClass:v12 from:v13];

    v15 = [fromCopy objectForKeyedSubscript:@"internalSignals"];
    v16 = objc_opt_class();
    v17 = [fromCopy objectForKeyedSubscript:@"pegasusMetaData"];
    v18 = [decoderCopy decodeObjectOfClass:v16 from:v17];

    v19 = [[self alloc] initWithPrivateMediaIntentData:v11 audioSearchResults:v14 internalSignals:v15 pegasusMetaData:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  v16 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  audioSearchResults = [(INPrivateAddMediaIntentData *)self audioSearchResults];
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
  audioSearchResults = [(INPrivateAddMediaIntentData *)self audioSearchResults];
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

@end