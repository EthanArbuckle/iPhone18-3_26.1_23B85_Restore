@interface AFSiriActivationResult
+ (id)newWithBuilder:(id)a3;
- (AFSiriActivationResult)initWithActionType:(int64_t)a3 error:(id)a4;
- (AFSiriActivationResult)initWithBuilder:(id)a3;
- (AFSiriActivationResult)initWithCoder:(id)a3;
- (AFSiriActivationResult)initWithDictionaryRepresentation:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSiriActivationResult

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  actionType = self->_actionType;
  if (actionType > 6)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E73435E8[actionType];
  }

  v6 = v5;
  [v3 setObject:v6 forKey:@"actionType"];

  error = self->_error;
  if (error)
  {
    [v3 setObject:error forKey:@"error"];
  }

  v8 = [v3 copy];

  return v8;
}

- (AFSiriActivationResult)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"actionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = AFSiriActivationActionTypeGetFromName(v5);
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 objectForKey:@"error"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    self = [(AFSiriActivationResult *)self initWithActionType:v6 error:v9];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  actionType = self->_actionType;
  v7 = a3;
  v6 = [v4 numberWithInteger:actionType];
  [v7 encodeObject:v6 forKey:@"AFSiriActivationResult::actionType"];

  [v7 encodeObject:self->_error forKey:@"AFSiriActivationResult::error"];
}

- (AFSiriActivationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationResult::actionType"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationResult::error"];

  v8 = [(AFSiriActivationResult *)self initWithActionType:v6 error:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      actionType = self->_actionType;
      if (actionType == [(AFSiriActivationResult *)v5 actionType])
      {
        v7 = [(AFSiriActivationResult *)v5 error];
        error = self->_error;
        v9 = error == v7 || [(NSError *)error isEqual:v7];
      }

      else
      {
        v9 = 0;
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
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_actionType];
  v4 = [v3 hash];
  v5 = [(NSError *)self->_error hash];

  return v5 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = AFSiriActivationResult;
  v5 = [(AFSiriActivationResult *)&v11 description];
  actionType = self->_actionType;
  if (actionType > 6)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E73435E8[actionType];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {actionType = %@, error = %@}", v5, v8, self->_error];

  return v9;
}

- (AFSiriActivationResult)initWithActionType:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__AFSiriActivationResult_initWithActionType_error___block_invoke;
  v10[3] = &unk_1E7348EB8;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [(AFSiriActivationResult *)self initWithBuilder:v10];

  return v8;
}

void __51__AFSiriActivationResult_initWithActionType_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setActionType:v3];
  [v4 setError:*(a1 + 32)];
}

- (AFSiriActivationResult)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFSiriActivationResult;
  v5 = [(AFSiriActivationResult *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSiriActivationResultMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSiriActivationResultMutation *)v7 isDirty])
    {
      v6->_actionType = [(_AFSiriActivationResultMutation *)v7 getActionType];
      v8 = [(_AFSiriActivationResultMutation *)v7 getError];
      v9 = [v8 copy];
      error = v6->_error;
      v6->_error = v9;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFSiriActivationResultMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSiriActivationResultMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSiriActivationResult);
      v6->_actionType = [(_AFSiriActivationResultMutation *)v5 getActionType];
      v7 = [(_AFSiriActivationResultMutation *)v5 getError];
      v8 = [v7 copy];
      error = v6->_error;
      v6->_error = v8;
    }

    else
    {
      v6 = [(AFSiriActivationResult *)self copy];
    }
  }

  else
  {
    v6 = [(AFSiriActivationResult *)self copy];
  }

  return v6;
}

@end