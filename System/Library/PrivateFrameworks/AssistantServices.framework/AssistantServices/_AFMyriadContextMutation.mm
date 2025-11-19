@interface _AFMyriadContextMutation
- (_AFMyriadContextMutation)initWithBase:(id)a3;
- (id)getOverrideState;
- (id)getPerceptualAudioHash;
- (int64_t)getActivationSource;
- (unint64_t)getActivationExpirationTime;
- (unint64_t)getTimestamp;
@end

@implementation _AFMyriadContextMutation

- (unint64_t)getActivationExpirationTime
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    return self->_activationExpirationTime;
  }

  else
  {
    return [(AFMyriadContext *)self->_base activationExpirationTime];
  }
}

- (int64_t)getActivationSource
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    return self->_activationSource;
  }

  else
  {
    return [(AFMyriadContext *)self->_base activationSource];
  }
}

- (id)getOverrideState
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_overrideState;
  }

  else
  {
    v2 = [(AFMyriadContext *)self->_base overrideState];
  }

  return v2;
}

- (id)getPerceptualAudioHash
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_perceptualAudioHash;
  }

  else
  {
    v2 = [(AFMyriadContext *)self->_base perceptualAudioHash];
  }

  return v2;
}

- (unint64_t)getTimestamp
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_timestamp;
  }

  else
  {
    return [(AFMyriadContext *)self->_base timestamp];
  }
}

- (_AFMyriadContextMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFMyriadContextMutation;
  v6 = [(_AFMyriadContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end