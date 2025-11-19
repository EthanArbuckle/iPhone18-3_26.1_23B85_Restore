@interface _AFSetAudioSessionActiveResultMutation
- (_AFSetAudioSessionActiveResultMutation)initWithBase:(id)a3;
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
    v2 = self->_error;
  }

  else
  {
    v2 = [(AFSetAudioSessionActiveResult *)self->_base error];
  }

  return v2;
}

- (_AFSetAudioSessionActiveResultMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSetAudioSessionActiveResultMutation;
  v6 = [(_AFSetAudioSessionActiveResultMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end