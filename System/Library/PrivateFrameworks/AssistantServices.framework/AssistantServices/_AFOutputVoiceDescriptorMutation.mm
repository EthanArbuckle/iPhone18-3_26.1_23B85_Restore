@interface _AFOutputVoiceDescriptorMutation
- (_AFOutputVoiceDescriptorMutation)initWithBase:(id)base;
- (id)getLocalizedDisplay;
- (id)getLocalizedDisplayWithRegion;
@end

@implementation _AFOutputVoiceDescriptorMutation

- (id)getLocalizedDisplayWithRegion
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    localizedDisplayWithRegion = self->_localizedDisplayWithRegion;
  }

  else
  {
    localizedDisplayWithRegion = [(AFOutputVoiceDescriptor *)self->_base localizedDisplayWithRegion];
  }

  return localizedDisplayWithRegion;
}

- (id)getLocalizedDisplay
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    localizedDisplay = self->_localizedDisplay;
  }

  else
  {
    localizedDisplay = [(AFOutputVoiceDescriptor *)self->_base localizedDisplay];
  }

  return localizedDisplay;
}

- (_AFOutputVoiceDescriptorMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFOutputVoiceDescriptorMutation;
  v6 = [(_AFOutputVoiceDescriptorMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end