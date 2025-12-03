@interface _AFSetAudioSessionActiveResultMutation
- (_AFSetAudioSessionActiveResultMutation)initWithBase:(id)base;
- (id)getError;
- (unsigned)getAudioSessionID;
@end

@implementation _AFSetAudioSessionActiveResultMutation

- (unsigned)getAudioSessionID
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_audioSessionID;
  }

  else
  {
    return [(AFSetAudioSessionActiveResult *)self->_base audioSessionID];
  }
}

- (id)getError
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    error = self->_error;
  }

  else
  {
    error = [(AFSetAudioSessionActiveResult *)self->_base error];
  }

  return error;
}

- (_AFSetAudioSessionActiveResultMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSetAudioSessionActiveResultMutation;
  v6 = [(_AFSetAudioSessionActiveResultMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end