@interface _AFMyriadGoodnessScoreOverrideStateMutation
- (_AFMyriadGoodnessScoreOverrideStateMutation)initWithBase:(id)a3;
- (id)getReason;
- (int64_t)getOverrideOption;
@end

@implementation _AFMyriadGoodnessScoreOverrideStateMutation

- (id)getReason
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_reason;
  }

  else
  {
    v2 = [(AFMyriadGoodnessScoreOverrideState *)self->_base reason];
  }

  return v2;
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

- (_AFMyriadGoodnessScoreOverrideStateMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFMyriadGoodnessScoreOverrideStateMutation;
  v6 = [(_AFMyriadGoodnessScoreOverrideStateMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end