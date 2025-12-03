@interface _AFMyriadPerceptualAudioHashMutation
- (_AFMyriadPerceptualAudioHashMutation)initWithBase:(id)base;
- (id)getData;
@end

@implementation _AFMyriadPerceptualAudioHashMutation

- (id)getData
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    data = self->_data;
  }

  else
  {
    data = [(AFMyriadPerceptualAudioHash *)self->_base data];
  }

  return data;
}

- (_AFMyriadPerceptualAudioHashMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFMyriadPerceptualAudioHashMutation;
  v6 = [(_AFMyriadPerceptualAudioHashMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end