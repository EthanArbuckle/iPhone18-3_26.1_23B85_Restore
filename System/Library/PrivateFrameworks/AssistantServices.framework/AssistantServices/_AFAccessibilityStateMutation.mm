@interface _AFAccessibilityStateMutation
- (_AFAccessibilityStateMutation)initWithBase:(id)base;
- (int64_t)getIsVibrationDisabled;
- (int64_t)getIsVoiceOverTouchEnabled;
@end

@implementation _AFAccessibilityStateMutation

- (int64_t)getIsVibrationDisabled
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_isVibrationDisabled;
  }

  else
  {
    return [(AFAccessibilityState *)self->_base isVibrationDisabled];
  }
}

- (int64_t)getIsVoiceOverTouchEnabled
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_isVoiceOverTouchEnabled;
  }

  else
  {
    return [(AFAccessibilityState *)self->_base isVoiceOverTouchEnabled];
  }
}

- (_AFAccessibilityStateMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFAccessibilityStateMutation;
  v6 = [(_AFAccessibilityStateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end