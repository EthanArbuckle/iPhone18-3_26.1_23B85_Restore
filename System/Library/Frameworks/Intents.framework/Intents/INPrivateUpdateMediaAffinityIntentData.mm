@interface INPrivateUpdateMediaAffinityIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INPrivateUpdateMediaAffinityIntentData)initWithCoder:(id)coder;
- (INPrivateUpdateMediaAffinityIntentData)initWithPrivateMediaIntentData:(id)data internalSignals:(id)signals pegasusMetaData:(id)metaData;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INPrivateUpdateMediaAffinityIntentData

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"privateMediaIntentData";
  privateMediaIntentData = self->_privateMediaIntentData;
  null = privateMediaIntentData;
  if (!privateMediaIntentData)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = null;
  v12[1] = @"internalSignals";
  internalSignals = self->_internalSignals;
  null2 = internalSignals;
  if (!internalSignals)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v12[2] = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  null3 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = null3;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];
  if (pegasusMetaData)
  {
    if (internalSignals)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (privateMediaIntentData)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!internalSignals)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (privateMediaIntentData)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivateUpdateMediaAffinityIntentData;
  v6 = [(INPrivateUpdateMediaAffinityIntentData *)&v11 description];
  _dictionaryRepresentation = [(INPrivateUpdateMediaAffinityIntentData *)self _dictionaryRepresentation];
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

  v9 = [encoderCopy encodeObject:self->_internalSignals];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"internalSignals"];

  v10 = [encoderCopy encodeObject:self->_pegasusMetaData];

  [dictionary if_setObjectIfNonNil:v10 forKey:@"pegasusMetaData"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  privateMediaIntentData = self->_privateMediaIntentData;
  coderCopy = coder;
  [coderCopy encodeObject:privateMediaIntentData forKey:@"privateMediaIntentData"];
  [coderCopy encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [coderCopy encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
}

- (INPrivateUpdateMediaAffinityIntentData)initWithCoder:(id)coder
{
  v17 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaIntentData"];
  v6 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:3];
  v8 = [v6 setWithArray:{v7, v14, v15}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"internalSignals"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];

  v11 = [(INPrivateUpdateMediaAffinityIntentData *)self initWithPrivateMediaIntentData:v5 internalSignals:v9 pegasusMetaData:v10];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      privateMediaIntentData = self->_privateMediaIntentData;
      v9 = 0;
      if (privateMediaIntentData == v5->_privateMediaIntentData || [(INPrivateMediaIntentData *)privateMediaIntentData isEqual:?])
      {
        internalSignals = self->_internalSignals;
        if (internalSignals == v5->_internalSignals || [(NSArray *)internalSignals isEqual:?])
        {
          pegasusMetaData = self->_pegasusMetaData;
          if (pegasusMetaData == v5->_pegasusMetaData || [(NSData *)pegasusMetaData isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(INPrivateMediaIntentData *)self->_privateMediaIntentData hash];
  v4 = [(NSArray *)self->_internalSignals hash]^ v3;
  return v4 ^ [(NSData *)self->_pegasusMetaData hash];
}

- (INPrivateUpdateMediaAffinityIntentData)initWithPrivateMediaIntentData:(id)data internalSignals:(id)signals pegasusMetaData:(id)metaData
{
  dataCopy = data;
  signalsCopy = signals;
  metaDataCopy = metaData;
  v19.receiver = self;
  v19.super_class = INPrivateUpdateMediaAffinityIntentData;
  v11 = [(INPrivateUpdateMediaAffinityIntentData *)&v19 init];
  if (v11)
  {
    v12 = [dataCopy copy];
    privateMediaIntentData = v11->_privateMediaIntentData;
    v11->_privateMediaIntentData = v12;

    v14 = [signalsCopy copy];
    internalSignals = v11->_internalSignals;
    v11->_internalSignals = v14;

    v16 = [metaDataCopy copy];
    pegasusMetaData = v11->_pegasusMetaData;
    v11->_pegasusMetaData = v16;
  }

  return v11;
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

    v12 = [fromCopy objectForKeyedSubscript:@"internalSignals"];
    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"pegasusMetaData"];
    v15 = [decoderCopy decodeObjectOfClass:v13 from:v14];

    v16 = [[self alloc] initWithPrivateMediaIntentData:v11 internalSignals:v12 pegasusMetaData:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end