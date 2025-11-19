@interface INPrivateUpdateMediaAffinityIntentData
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INPrivateUpdateMediaAffinityIntentData)initWithCoder:(id)a3;
- (INPrivateUpdateMediaAffinityIntentData)initWithPrivateMediaIntentData:(id)a3 internalSignals:(id)a4 pegasusMetaData:(id)a5;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INPrivateUpdateMediaAffinityIntentData

- (id)_dictionaryRepresentation
{
  v13[3] = *MEMORY[0x1E69E9840];
  v12[0] = @"privateMediaIntentData";
  privateMediaIntentData = self->_privateMediaIntentData;
  v4 = privateMediaIntentData;
  if (!privateMediaIntentData)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v13[0] = v4;
  v12[1] = @"internalSignals";
  internalSignals = self->_internalSignals;
  v6 = internalSignals;
  if (!internalSignals)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = v6;
  v12[2] = @"pegasusMetaData";
  pegasusMetaData = self->_pegasusMetaData;
  v8 = pegasusMetaData;
  if (!pegasusMetaData)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v13[2] = v8;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INPrivateUpdateMediaAffinityIntentData;
  v6 = [(INPrivateUpdateMediaAffinityIntentData *)&v11 description];
  v7 = [(INPrivateUpdateMediaAffinityIntentData *)self _dictionaryRepresentation];
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

  v9 = [v6 encodeObject:self->_internalSignals];
  [v7 if_setObjectIfNonNil:v9 forKey:@"internalSignals"];

  v10 = [v6 encodeObject:self->_pegasusMetaData];

  [v7 if_setObjectIfNonNil:v10 forKey:@"pegasusMetaData"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  privateMediaIntentData = self->_privateMediaIntentData;
  v5 = a3;
  [v5 encodeObject:privateMediaIntentData forKey:@"privateMediaIntentData"];
  [v5 encodeObject:self->_internalSignals forKey:@"internalSignals"];
  [v5 encodeObject:self->_pegasusMetaData forKey:@"pegasusMetaData"];
}

- (INPrivateUpdateMediaAffinityIntentData)initWithCoder:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privateMediaIntentData"];
  v6 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:3];
  v8 = [v6 setWithArray:{v7, v14, v15}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"internalSignals"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pegasusMetaData"];

  v11 = [(INPrivateUpdateMediaAffinityIntentData *)self initWithPrivateMediaIntentData:v5 internalSignals:v9 pegasusMetaData:v10];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INPrivateUpdateMediaAffinityIntentData)initWithPrivateMediaIntentData:(id)a3 internalSignals:(id)a4 pegasusMetaData:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = INPrivateUpdateMediaAffinityIntentData;
  v11 = [(INPrivateUpdateMediaAffinityIntentData *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    privateMediaIntentData = v11->_privateMediaIntentData;
    v11->_privateMediaIntentData = v12;

    v14 = [v9 copy];
    internalSignals = v11->_internalSignals;
    v11->_internalSignals = v14;

    v16 = [v10 copy];
    pegasusMetaData = v11->_pegasusMetaData;
    v11->_pegasusMetaData = v16;
  }

  return v11;
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

    v12 = [v8 objectForKeyedSubscript:@"internalSignals"];
    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"pegasusMetaData"];
    v15 = [v7 decodeObjectOfClass:v13 from:v14];

    v16 = [[a1 alloc] initWithPrivateMediaIntentData:v11 internalSignals:v12 pegasusMetaData:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end