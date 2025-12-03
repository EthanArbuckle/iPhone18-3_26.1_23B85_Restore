@interface _AFSpeechTestRequestOptionsMutation
- (_AFSpeechTestRequestOptionsMutation)initWithBase:(id)base;
- (id)getJitContext;
- (id)getOverrideModelPath;
@end

@implementation _AFSpeechTestRequestOptionsMutation

- (id)getOverrideModelPath
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    overrideModelPath = self->_overrideModelPath;
  }

  else
  {
    overrideModelPath = [(AFSpeechTestRequestOptions *)self->_base overrideModelPath];
  }

  return overrideModelPath;
}

- (id)getJitContext
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    jitContext = self->_jitContext;
  }

  else
  {
    jitContext = [(AFSpeechTestRequestOptions *)self->_base jitContext];
  }

  return jitContext;
}

- (_AFSpeechTestRequestOptionsMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSpeechTestRequestOptionsMutation;
  v6 = [(_AFSpeechTestRequestOptionsMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end