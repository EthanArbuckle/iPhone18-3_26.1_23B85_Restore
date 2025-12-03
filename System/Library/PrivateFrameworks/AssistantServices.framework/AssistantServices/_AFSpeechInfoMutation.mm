@interface _AFSpeechInfoMutation
- (_AFSpeechInfoMutation)initWithBase:(id)base;
- (id)getSpeechRecognizedCommand;
@end

@implementation _AFSpeechInfoMutation

- (id)getSpeechRecognizedCommand
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    speechRecognizedCommand = self->_speechRecognizedCommand;
  }

  else
  {
    speechRecognizedCommand = [(AFSpeechInfo *)self->_base speechRecognizedCommand];
  }

  return speechRecognizedCommand;
}

- (_AFSpeechInfoMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFSpeechInfoMutation;
  v6 = [(_AFSpeechInfoMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end