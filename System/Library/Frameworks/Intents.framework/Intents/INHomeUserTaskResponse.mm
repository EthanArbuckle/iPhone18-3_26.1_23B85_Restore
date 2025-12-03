@interface INHomeUserTaskResponse
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INHomeUserTaskResponse)initWithCoder:(id)coder;
- (INHomeUserTaskResponse)initWithUserTask:(id)task taskOutcome:(int64_t)outcome;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeUserTaskResponse

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"userTask";
  userTask = self->_userTask;
  null = userTask;
  if (!userTask)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"taskOutcome";
  v10[0] = null;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskOutcome];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!userTask)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeUserTaskResponse;
  v6 = [(INHomeUserTaskResponse *)&v11 description];
  _dictionaryRepresentation = [(INHomeUserTaskResponse *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_userTask];

  [dictionary if_setObjectIfNonNil:v8 forKey:@"userTask"];
  v9 = self->_taskOutcome - 1;
  if (v9 > 0x16)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E7286CE8[v9];
  }

  v11 = v10;
  [dictionary if_setObjectIfNonNil:v11 forKey:@"taskOutcome"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  userTask = self->_userTask;
  coderCopy = coder;
  [coderCopy encodeObject:userTask forKey:@"userTask"];
  [coderCopy encodeInteger:self->_taskOutcome forKey:@"taskOutcome"];
}

- (INHomeUserTaskResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userTask"];
  v6 = [coderCopy decodeIntegerForKey:@"taskOutcome"];

  v7 = [(INHomeUserTaskResponse *)self initWithUserTask:v5 taskOutcome:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      userTask = self->_userTask;
      v7 = (userTask == v5->_userTask || [(INHomeUserTask *)userTask isEqual:?]) && self->_taskOutcome == v5->_taskOutcome;
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
  v3 = [(INHomeUserTask *)self->_userTask hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskOutcome];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (INHomeUserTaskResponse)initWithUserTask:(id)task taskOutcome:(int64_t)outcome
{
  taskCopy = task;
  v11.receiver = self;
  v11.super_class = INHomeUserTaskResponse;
  v7 = [(INHomeUserTaskResponse *)&v11 init];
  if (v7)
  {
    v8 = [taskCopy copy];
    userTask = v7->_userTask;
    v7->_userTask = v8;

    v7->_taskOutcome = outcome;
  }

  return v7;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"userTask"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"taskOutcome"];
    v13 = INHomeTaskOutcomeWithString(v12);

    v14 = [[self alloc] initWithUserTask:v11 taskOutcome:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end