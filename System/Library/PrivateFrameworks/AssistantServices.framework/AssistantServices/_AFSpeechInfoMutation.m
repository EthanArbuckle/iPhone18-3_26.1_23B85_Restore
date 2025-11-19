@interface _AFSpeechInfoMutation
- (_AFSpeechInfoMutation)initWithBase:(id)a3;
- (id)getSpeechRecognizedCommand;
@end

@implementation _AFSpeechInfoMutation

- (id)getSpeechRecognizedCommand
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    v2 = self->_speechRecognizedCommand;
  }

  else
  {
    v2 = [(AFSpeechInfo *)self->_base speechRecognizedCommand];
  }

  return v2;
}

- (_AFSpeechInfoMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFSpeechInfoMutation;
  v6 = [(_AFSpeechInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end