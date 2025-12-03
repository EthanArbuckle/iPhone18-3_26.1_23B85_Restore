@interface INHomeEntityResponse
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INHomeEntityResponse)initWithCoder:(id)coder;
- (INHomeEntityResponse)initWithEntity:(id)entity taskResponses:(id)responses;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeEntityResponse

- (id)_dictionaryRepresentation
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"entity";
  entity = self->_entity;
  null = entity;
  if (!entity)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"taskResponses";
  v11[0] = null;
  taskResponses = self->_taskResponses;
  null2 = taskResponses;
  if (!taskResponses)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (taskResponses)
  {
    if (entity)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (entity)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeEntityResponse;
  v6 = [(INHomeEntityResponse *)&v11 description];
  _dictionaryRepresentation = [(INHomeEntityResponse *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_entity];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"entity"];

  v9 = [encoderCopy encodeObject:self->_taskResponses];

  [dictionary if_setObjectIfNonNil:v9 forKey:@"taskResponses"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  entity = self->_entity;
  coderCopy = coder;
  [coderCopy encodeObject:entity forKey:@"entity"];
  [coderCopy encodeObject:self->_taskResponses forKey:@"taskResponses"];
}

- (INHomeEntityResponse)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entity"];
  v6 = MEMORY[0x1E695DFD8];
  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"taskResponses"];

  v10 = [(INHomeEntityResponse *)self initWithEntity:v5 taskResponses:v9];
  v11 = *MEMORY[0x1E69E9840];
  return v10;
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
      entity = self->_entity;
      v8 = 0;
      if (entity == v5->_entity || [(INHomeEntity *)entity isEqual:?])
      {
        taskResponses = self->_taskResponses;
        if (taskResponses == v5->_taskResponses || [(NSArray *)taskResponses isEqual:?])
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

- (INHomeEntityResponse)initWithEntity:(id)entity taskResponses:(id)responses
{
  entityCopy = entity;
  responsesCopy = responses;
  v14.receiver = self;
  v14.super_class = INHomeEntityResponse;
  v8 = [(INHomeEntityResponse *)&v14 init];
  if (v8)
  {
    v9 = [entityCopy copy];
    entity = v8->_entity;
    v8->_entity = v9;

    v11 = [responsesCopy copy];
    taskResponses = v8->_taskResponses;
    v8->_taskResponses = v11;
  }

  return v8;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"entity"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = objc_opt_class();
    v13 = [fromCopy objectForKeyedSubscript:@"taskResponses"];
    v14 = [decoderCopy decodeObjectsOfClass:v12 from:v13];

    v15 = [[self alloc] initWithEntity:v11 taskResponses:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end