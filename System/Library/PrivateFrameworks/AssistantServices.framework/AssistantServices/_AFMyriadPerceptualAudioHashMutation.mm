@interface _AFMyriadPerceptualAudioHashMutation
- (_AFMyriadPerceptualAudioHashMutation)initWithBase:(id)a3;
- (id)getData;
@end

@implementation _AFMyriadPerceptualAudioHashMutation

- (id)getData
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_data;
  }

  else
  {
    v2 = [(AFMyriadPerceptualAudioHash *)self->_base data];
  }

  return v2;
}

- (_AFMyriadPerceptualAudioHashMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFMyriadPerceptualAudioHashMutation;
  v6 = [(_AFMyriadPerceptualAudioHashMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end