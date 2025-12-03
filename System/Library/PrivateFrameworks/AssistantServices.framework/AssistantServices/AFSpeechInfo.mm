@interface AFSpeechInfo
+ (id)newWithBuilder:(id)builder;
- (AFSpeechInfo)initWithBuilder:(id)builder;
- (AFSpeechInfo)initWithCoder:(id)coder;
- (AFSpeechInfo)initWithDictionaryRepresentation:(id)representation;
- (AFSpeechInfo)initWithSpeechRecognizedCommand:(id)command;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation AFSpeechInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  speechRecognizedCommand = self->_speechRecognizedCommand;
  if (speechRecognizedCommand)
  {
    dictionary = [(SASSpeechRecognized *)speechRecognizedCommand dictionary];
    v6 = [dictionary copy];
    [v3 setObject:v6 forKey:@"speechRecognizedCommand"];
  }

  v7 = [v3 copy];

  return v7;
}

- (AFSpeechInfo)initWithDictionaryRepresentation:(id)representation
{
  if (representation)
  {
    v4 = [representation objectForKey:@"speechRecognizedCommand"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x1E69C7A00] aceObjectWithDictionary:v4];
    }

    else
    {
      v5 = 0;
    }

    self = [(AFSpeechInfo *)self initWithSpeechRecognizedCommand:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (AFSpeechInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechInfo::speechRecognizedCommand"];

  v6 = [(AFSpeechInfo *)self initWithSpeechRecognizedCommand:v5];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      speechRecognizedCommand = [(AFSpeechInfo *)equalCopy speechRecognizedCommand];
      speechRecognizedCommand = self->_speechRecognizedCommand;
      v7 = speechRecognizedCommand == speechRecognizedCommand || [(SASSpeechRecognized *)speechRecognizedCommand isEqual:speechRecognizedCommand];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSpeechInfo;
  v5 = [(AFSpeechInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {speechRecognizedCommand = %@}", v5, self->_speechRecognizedCommand];

  return v6;
}

- (AFSpeechInfo)initWithSpeechRecognizedCommand:(id)command
{
  commandCopy = command;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AFSpeechInfo_initWithSpeechRecognizedCommand___block_invoke;
  v8[3] = &unk_1E7342E20;
  v9 = commandCopy;
  v5 = commandCopy;
  v6 = [(AFSpeechInfo *)self initWithBuilder:v8];

  return v6;
}

- (AFSpeechInfo)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFSpeechInfo;
  v5 = [(AFSpeechInfo *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSpeechInfoMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSpeechInfoMutation *)v7 isDirty])
    {
      getSpeechRecognizedCommand = [(_AFSpeechInfoMutation *)v7 getSpeechRecognizedCommand];
      v9 = [getSpeechRecognizedCommand copy];
      speechRecognizedCommand = v6->_speechRecognizedCommand;
      v6->_speechRecognizedCommand = v9;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFSpeechInfoMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSpeechInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechInfo);
      getSpeechRecognizedCommand = [(_AFSpeechInfoMutation *)v5 getSpeechRecognizedCommand];
      v8 = [getSpeechRecognizedCommand copy];
      speechRecognizedCommand = v6->_speechRecognizedCommand;
      v6->_speechRecognizedCommand = v8;
    }

    else
    {
      v6 = [(AFSpeechInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFSpeechInfo *)self copy];
  }

  return v6;
}

@end