@interface AFAccessibilityState
+ (id)newWithBuilder:(id)builder;
- (AFAccessibilityState)initWithBuilder:(id)builder;
- (AFAccessibilityState)initWithCoder:(id)coder;
- (AFAccessibilityState)initWithIsVoiceOverTouchEnabled:(int64_t)enabled isVibrationDisabled:(int64_t)disabled;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFAccessibilityState

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  isVoiceOverTouchEnabled = self->_isVoiceOverTouchEnabled;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:isVoiceOverTouchEnabled];
  [coderCopy encodeObject:v7 forKey:@"AFAccessibilityState::isVoiceOverTouchEnabled"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_isVibrationDisabled];
  [coderCopy encodeObject:v8 forKey:@"AFAccessibilityState::isVibrationDisabled"];
}

- (AFAccessibilityState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAccessibilityState::isVoiceOverTouchEnabled"];
  integerValue = [v5 integerValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFAccessibilityState::isVibrationDisabled"];

  integerValue2 = [v7 integerValue];

  return [(AFAccessibilityState *)self initWithIsVoiceOverTouchEnabled:integerValue isVibrationDisabled:integerValue2];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)_descriptionWithIndent:(unint64_t)indent
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

- (AFAccessibilityState)initWithIsVoiceOverTouchEnabled:(int64_t)enabled isVibrationDisabled:(int64_t)disabled
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __76__AFAccessibilityState_initWithIsVoiceOverTouchEnabled_isVibrationDisabled___block_invoke;
  v5[3] = &__block_descriptor_48_e40_v16__0___AFAccessibilityStateMutating__8l;
  v5[4] = enabled;
  v5[5] = disabled;
  return [(AFAccessibilityState *)self initWithBuilder:v5];
}

void __76__AFAccessibilityState_initWithIsVoiceOverTouchEnabled_isVibrationDisabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setIsVoiceOverTouchEnabled:v3];
  [v4 setIsVibrationDisabled:*(a1 + 40)];
}

- (AFAccessibilityState)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = AFAccessibilityState;
  v5 = [(AFAccessibilityState *)&v9 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFAccessibilityStateMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFAccessibilityStateMutation *)v7 isDirty])
    {
      v6->_isVoiceOverTouchEnabled = [(_AFAccessibilityStateMutation *)v7 getIsVoiceOverTouchEnabled];
      v6->_isVibrationDisabled = [(_AFAccessibilityStateMutation *)v7 getIsVibrationDisabled];
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
    v5 = [[_AFAccessibilityStateMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
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