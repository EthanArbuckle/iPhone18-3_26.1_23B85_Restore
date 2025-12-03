@interface AFSiriActivationResult
+ (id)newWithBuilder:(id)builder;
- (AFSiriActivationResult)initWithActionType:(int64_t)type error:(id)error;
- (AFSiriActivationResult)initWithBuilder:(id)builder;
- (AFSiriActivationResult)initWithCoder:(id)coder;
- (AFSiriActivationResult)initWithDictionaryRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (AFSiriActivationResult)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    v5 = [representationCopy objectForKey:@"actionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = AFSiriActivationActionTypeGetFromName(v5);
    }

    else
    {
      v6 = 0;
    }

    v8 = [representationCopy objectForKey:@"error"];

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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  actionType = self->_actionType;
  coderCopy = coder;
  v6 = [v4 numberWithInteger:actionType];
  [coderCopy encodeObject:v6 forKey:@"AFSiriActivationResult::actionType"];

  [coderCopy encodeObject:self->_error forKey:@"AFSiriActivationResult::error"];
}

- (AFSiriActivationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationResult::actionType"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSiriActivationResult::error"];

  v8 = [(AFSiriActivationResult *)self initWithActionType:integerValue error:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      actionType = self->_actionType;
      if (actionType == [(AFSiriActivationResult *)v5 actionType])
      {
        error = [(AFSiriActivationResult *)v5 error];
        error = self->_error;
        v9 = error == error || [(NSError *)error isEqual:error];
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFSiriActivationResult)initWithActionType:(int64_t)type error:(id)error
{
  errorCopy = error;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__AFSiriActivationResult_initWithActionType_error___block_invoke;
  v10[3] = &unk_1E7348EB8;
  v11 = errorCopy;
  typeCopy = type;
  v7 = errorCopy;
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

- (AFSiriActivationResult)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFSiriActivationResult;
  v5 = [(AFSiriActivationResult *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSiriActivationResultMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSiriActivationResultMutation *)v7 isDirty])
    {
      v6->_actionType = [(_AFSiriActivationResultMutation *)v7 getActionType];
      getError = [(_AFSiriActivationResultMutation *)v7 getError];
      v9 = [getError copy];
      error = v6->_error;
      v6->_error = v9;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFSiriActivationResultMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSiriActivationResultMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSiriActivationResult);
      v6->_actionType = [(_AFSiriActivationResultMutation *)v5 getActionType];
      getError = [(_AFSiriActivationResultMutation *)v5 getError];
      v8 = [getError copy];
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