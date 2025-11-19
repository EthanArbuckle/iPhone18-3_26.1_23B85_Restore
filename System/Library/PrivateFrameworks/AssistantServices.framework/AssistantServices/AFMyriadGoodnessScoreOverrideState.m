@interface AFMyriadGoodnessScoreOverrideState
+ (id)newWithBuilder:(id)a3;
- (AFMyriadGoodnessScoreOverrideState)initWithBuilder:(id)a3;
- (AFMyriadGoodnessScoreOverrideState)initWithCoder:(id)a3;
- (AFMyriadGoodnessScoreOverrideState)initWithOverrideOption:(int64_t)a3 reason:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFMyriadGoodnessScoreOverrideState

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  overrideOption = self->_overrideOption;
  v7 = a3;
  v6 = [v4 numberWithInteger:overrideOption];
  [v7 encodeObject:v6 forKey:@"AFMyriadGoodnessScoreOverrideState::overrideOption"];

  [v7 encodeObject:self->_reason forKey:@"AFMyriadGoodnessScoreOverrideState::reason"];
}

- (AFMyriadGoodnessScoreOverrideState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadGoodnessScoreOverrideState::overrideOption"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadGoodnessScoreOverrideState::reason"];

  v8 = [(AFMyriadGoodnessScoreOverrideState *)self initWithOverrideOption:v6 reason:v7];
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
      overrideOption = self->_overrideOption;
      if (overrideOption == [(AFMyriadGoodnessScoreOverrideState *)v5 overrideOption])
      {
        v7 = [(AFMyriadGoodnessScoreOverrideState *)v5 reason];
        reason = self->_reason;
        v9 = reason == v7 || [(NSString *)reason isEqual:v7];
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
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_overrideOption];
  v4 = [v3 hash];
  v5 = [(NSString *)self->_reason hash];

  return v5 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = AFMyriadGoodnessScoreOverrideState;
  v5 = [(AFMyriadGoodnessScoreOverrideState *)&v11 description];
  overrideOption = self->_overrideOption;
  if (overrideOption > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7345DF8[overrideOption];
  }

  v8 = v7;
  v9 = [v4 initWithFormat:@"%@ {overrideOption = %@, reason = %@}", v5, v8, self->_reason];

  return v9;
}

- (AFMyriadGoodnessScoreOverrideState)initWithOverrideOption:(int64_t)a3 reason:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AFMyriadGoodnessScoreOverrideState_initWithOverrideOption_reason___block_invoke;
  v10[3] = &unk_1E7345790;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [(AFMyriadGoodnessScoreOverrideState *)self initWithBuilder:v10];

  return v8;
}

void __68__AFMyriadGoodnessScoreOverrideState_initWithOverrideOption_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setOverrideOption:v3];
  [v4 setReason:*(a1 + 32)];
}

- (AFMyriadGoodnessScoreOverrideState)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFMyriadGoodnessScoreOverrideState;
  v5 = [(AFMyriadGoodnessScoreOverrideState *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFMyriadGoodnessScoreOverrideStateMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFMyriadGoodnessScoreOverrideStateMutation *)v7 isDirty])
    {
      v6->_overrideOption = [(_AFMyriadGoodnessScoreOverrideStateMutation *)v7 getOverrideOption];
      v8 = [(_AFMyriadGoodnessScoreOverrideStateMutation *)v7 getReason];
      v9 = [v8 copy];
      reason = v6->_reason;
      v6->_reason = v9;
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
    v5 = [[_AFMyriadGoodnessScoreOverrideStateMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFMyriadGoodnessScoreOverrideStateMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMyriadGoodnessScoreOverrideState);
      v6->_overrideOption = [(_AFMyriadGoodnessScoreOverrideStateMutation *)v5 getOverrideOption];
      v7 = [(_AFMyriadGoodnessScoreOverrideStateMutation *)v5 getReason];
      v8 = [v7 copy];
      reason = v6->_reason;
      v6->_reason = v8;
    }

    else
    {
      v6 = [(AFMyriadGoodnessScoreOverrideState *)self copy];
    }
  }

  else
  {
    v6 = [(AFMyriadGoodnessScoreOverrideState *)self copy];
  }

  return v6;
}

@end