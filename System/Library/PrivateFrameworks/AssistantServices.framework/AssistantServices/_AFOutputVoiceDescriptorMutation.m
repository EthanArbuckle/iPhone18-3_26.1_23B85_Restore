@interface _AFOutputVoiceDescriptorMutation
- (_AFOutputVoiceDescriptorMutation)initWithBase:(id)a3;
- (id)getLocalizedDisplay;
- (id)getLocalizedDisplayWithRegion;
@end

@implementation _AFOutputVoiceDescriptorMutation

- (id)getLocalizedDisplayWithRegion
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    v2 = self->_localizedDisplayWithRegion;
  }

  else
  {
    v2 = [(AFOutputVoiceDescriptor *)self->_base localizedDisplayWithRegion];
  }

  return v2;
}

- (id)getLocalizedDisplay
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_localizedDisplay;
  }

  else
  {
    v2 = [(AFOutputVoiceDescriptor *)self->_base localizedDisplay];
  }

  return v2;
}

- (_AFOutputVoiceDescriptorMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFOutputVoiceDescriptorMutation;
  v6 = [(_AFOutputVoiceDescriptorMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end