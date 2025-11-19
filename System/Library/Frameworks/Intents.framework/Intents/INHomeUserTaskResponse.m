@interface INHomeUserTaskResponse
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INHomeUserTaskResponse)initWithCoder:(id)a3;
- (INHomeUserTaskResponse)initWithUserTask:(id)a3 taskOutcome:(int64_t)a4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHomeUserTaskResponse

- (id)_dictionaryRepresentation
{
  v10[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"userTask";
  userTask = self->_userTask;
  v4 = userTask;
  if (!userTask)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v9[1] = @"taskOutcome";
  v10[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_taskOutcome];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:2];

  if (!userTask)
  {
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeUserTaskResponse;
  v6 = [(INHomeUserTaskResponse *)&v11 description];
  v7 = [(INHomeUserTaskResponse *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_userTask];

  [v7 if_setObjectIfNonNil:v8 forKey:@"userTask"];
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
  [v7 if_setObjectIfNonNil:v11 forKey:@"taskOutcome"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  userTask = self->_userTask;
  v5 = a3;
  [v5 encodeObject:userTask forKey:@"userTask"];
  [v5 encodeInteger:self->_taskOutcome forKey:@"taskOutcome"];
}

- (INHomeUserTaskResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userTask"];
  v6 = [v4 decodeIntegerForKey:@"taskOutcome"];

  v7 = [(INHomeUserTaskResponse *)self initWithUserTask:v5 taskOutcome:v6];
  return v7;
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

- (INHomeUserTaskResponse)initWithUserTask:(id)a3 taskOutcome:(int64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = INHomeUserTaskResponse;
  v7 = [(INHomeUserTaskResponse *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    userTask = v7->_userTask;
    v7->_userTask = v8;

    v7->_taskOutcome = a4;
  }

  return v7;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"userTask"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"taskOutcome"];
    v13 = INHomeTaskOutcomeWithString(v12);

    v14 = [[a1 alloc] initWithUserTask:v11 taskOutcome:v13];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end