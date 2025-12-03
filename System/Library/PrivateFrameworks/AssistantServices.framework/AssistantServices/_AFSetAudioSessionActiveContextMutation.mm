@interface _AFSetAudioSessionActiveContextMutation
- (_AFSetAudioSessionActiveContextMutation)initWithBase:(id)base;
- (id)getSpeechRequestOptions;
- (int64_t)getReason;
- (unint64_t)getOptions;
@end

@implementation _AFSetAudioSessionActiveContextMutation

- (unint64_t)getOptions
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_options;
  }

  else
  {
    return [(AFSetAudioSessionActiveContext *)self->_base options];
  }
}

- (int64_t)getReason
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_reason;
  }

  else
  {
    return [(AFSetAudioSessionActiveContext *)self->_base reason];
  }
}

- (id)getSpeechRequestOptions
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    speechRequestOptions = self->_speechRequestOptions;
  }

  else
  {
    speechRequestOptions = [(AFSetAudioSessionActiveContext *)self->_base speechRequestOptions];
  }

  return speechRequestOptions;
}

- (_AFSetAudioSessionActiveContextMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSetAudioSessionActiveContextMutation;
  v6 = [(_AFSetAudioSessionActiveContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end