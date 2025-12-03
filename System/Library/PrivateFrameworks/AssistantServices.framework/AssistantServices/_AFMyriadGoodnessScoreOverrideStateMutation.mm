@interface _AFMyriadGoodnessScoreOverrideStateMutation
- (_AFMyriadGoodnessScoreOverrideStateMutation)initWithBase:(id)base;
- (id)getReason;
- (int64_t)getOverrideOption;
@end

@implementation _AFMyriadGoodnessScoreOverrideStateMutation

- (id)getReason
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    reason = self->_reason;
  }

  else
  {
    reason = [(AFMyriadGoodnessScoreOverrideState *)self->_base reason];
  }

  return reason;
}

- (int64_t)getOverrideOption
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_overrideOption;
  }

  else
  {
    return [(AFMyriadGoodnessScoreOverrideState *)self->_base overrideOption];
  }
}

- (_AFMyriadGoodnessScoreOverrideStateMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFMyriadGoodnessScoreOverrideStateMutation;
  v6 = [(_AFMyriadGoodnessScoreOverrideStateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end