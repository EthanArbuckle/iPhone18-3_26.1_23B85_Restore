@interface _AFSpeechTestRequestOptionsMutation
- (_AFSpeechTestRequestOptionsMutation)initWithBase:(id)a3;
- (id)getJitContext;
- (id)getOverrideModelPath;
@end

@implementation _AFSpeechTestRequestOptionsMutation

- (id)getOverrideModelPath
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_overrideModelPath;
  }

  else
  {
    v2 = [(AFSpeechTestRequestOptions *)self->_base overrideModelPath];
  }

  return v2;
}

- (id)getJitContext
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_jitContext;
  }

  else
  {
    v2 = [(AFSpeechTestRequestOptions *)self->_base jitContext];
  }

  return v2;
}

- (_AFSpeechTestRequestOptionsMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSpeechTestRequestOptionsMutation;
  v6 = [(_AFSpeechTestRequestOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end