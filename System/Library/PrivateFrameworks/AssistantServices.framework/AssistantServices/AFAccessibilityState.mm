@interface AFAccessibilityState
+ (id)newWithBuilder:(id)a3;
- (AFAccessibilityState)initWithBuilder:(id)a3;
- (AFAccessibilityState)initWithCoder:(id)a3;
- (AFAccessibilityState)initWithIsVoiceOverTouchEnabled:(int64_t)a3 isVibrationDisabled:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFAccessibilityState

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  isVoiceOverTouchEnabled = self->_isVoiceOverTouchEnabled;
  v6 = a3;
  v7 = [v4 numberWithInteger:isVoiceOverTouchEnabled];
  [v6 encodeObject:v7 forKey:@"AFAccessibilityState::isVoiceOverTouchEnabled"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_isVibrationDisabled];
  [v6 encodeObject:v8 forKey:@"AFAccessibilityState::isVibrationDisabled"];
}

- (AFAccessibilityState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAccessibilityState::isVoiceOverTouchEnabled"];
  v6 = [v5 integerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFAccessibilityState::isVibrationDisabled"];

  v8 = [v7 integerValue];

  return [(AFAccessibilityState *)self initWithIsVoiceOverTouchEnabled:v6 isVibrationDisabled:v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      isVoiceOverTouchEnabled = self->_isVoiceOverTouchEnabled;
      if (isVoiceOverTouchEnabled == [(AFAccessibilityState *)v5 isVoiceOverTouchEnabled])
      {
        isVibrationDisabled = self->_isVibrationDisabled;
        v8 = isVibrationDisabled == [(AFAccessibilityState *)v5 isVibrationDisabled];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_isVoiceOverTouchEnabled];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_isVibrationDisabled];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14.receiver = self;
  v14.super_class = AFAccessibilityState;
  v5 = [(AFAccessibilityState *)&v14 description];
  isVoiceOverTouchEnabled = self->_isVoiceOverTouchEnabled;
  if (isVoiceOverTouchEnabled > 2)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E7347958[isVoiceOverTouchEnabled];
  }

  v8 = v7;
  isVibrationDisabled = self->_isVibrationDisabled;
  if (isVibrationDisabled > 2)
  {
    v10 = @"(unknown)";
  }

  else
  {
    v10 = off_1E7347958[isVibrationDisabled];
  }

  v11 = v10;
  v12 = [v4 initWithFormat:@"%@ {isVoiceOverTouchEnabled = %@, isVibrationDisabled = %@}", v5, v8, v11];

  return v12;
}

- (AFAccessibilityState)initWithIsVoiceOverTouchEnabled:(int64_t)a3 isVibrationDisabled:(int64_t)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__AFAccessibilityState_initWithIsVoiceOverTouchEnabled_isVibrationDisabled___block_invoke;
  v5[3] = &__block_descriptor_48_e40_v16__0___AFAccessibilityStateMutating__8l;
  v5[4] = a3;
  v5[5] = a4;
  return [(AFAccessibilityState *)self initWithBuilder:v5];
}

void __76__AFAccessibilityState_initWithIsVoiceOverTouchEnabled_isVibrationDisabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIsVoiceOverTouchEnabled:v3];
  [v4 setIsVibrationDisabled:*(a1 + 40)];
}

- (AFAccessibilityState)initWithBuilder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AFAccessibilityState;
  v5 = [(AFAccessibilityState *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFAccessibilityStateMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFAccessibilityStateMutation *)v7 isDirty])
    {
      v6->_isVoiceOverTouchEnabled = [(_AFAccessibilityStateMutation *)v7 getIsVoiceOverTouchEnabled];
      v6->_isVibrationDisabled = [(_AFAccessibilityStateMutation *)v7 getIsVibrationDisabled];
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
    v5 = [[_AFAccessibilityStateMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFAccessibilityStateMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFAccessibilityState);
      v6->_isVoiceOverTouchEnabled = [(_AFAccessibilityStateMutation *)v5 getIsVoiceOverTouchEnabled];
      v6->_isVibrationDisabled = [(_AFAccessibilityStateMutation *)v5 getIsVibrationDisabled];
    }

    else
    {
      v6 = [(AFAccessibilityState *)self copy];
    }
  }

  else
  {
    v6 = [(AFAccessibilityState *)self copy];
  }

  return v6;
}

@end