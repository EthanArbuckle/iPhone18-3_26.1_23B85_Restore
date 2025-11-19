@interface AFSpeechInfo
+ (id)newWithBuilder:(id)a3;
- (AFSpeechInfo)initWithBuilder:(id)a3;
- (AFSpeechInfo)initWithCoder:(id)a3;
- (AFSpeechInfo)initWithDictionaryRepresentation:(id)a3;
- (AFSpeechInfo)initWithSpeechRecognizedCommand:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation AFSpeechInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  speechRecognizedCommand = self->_speechRecognizedCommand;
  if (speechRecognizedCommand)
  {
    v5 = [(SASSpeechRecognized *)speechRecognizedCommand dictionary];
    v6 = [v5 copy];
    [v3 setObject:v6 forKey:@"speechRecognizedCommand"];
  }

  v7 = [v3 copy];

  return v7;
}

- (AFSpeechInfo)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKey:@"speechRecognizedCommand"];
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
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AFSpeechInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechInfo::speechRecognizedCommand"];

  v6 = [(AFSpeechInfo *)self initWithSpeechRecognizedCommand:v5];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(AFSpeechInfo *)v4 speechRecognizedCommand];
      speechRecognizedCommand = self->_speechRecognizedCommand;
      v7 = speechRecognizedCommand == v5 || [(SASSpeechRecognized *)speechRecognizedCommand isEqual:v5];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSpeechInfo;
  v5 = [(AFSpeechInfo *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {speechRecognizedCommand = %@}", v5, self->_speechRecognizedCommand];

  return v6;
}

- (AFSpeechInfo)initWithSpeechRecognizedCommand:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__AFSpeechInfo_initWithSpeechRecognizedCommand___block_invoke;
  v8[3] = &unk_1E7342E20;
  v9 = v4;
  v5 = v4;
  v6 = [(AFSpeechInfo *)self initWithBuilder:v8];

  return v6;
}

- (AFSpeechInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFSpeechInfo;
  v5 = [(AFSpeechInfo *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSpeechInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSpeechInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFSpeechInfoMutation *)v7 getSpeechRecognizedCommand];
      v9 = [v8 copy];
      speechRecognizedCommand = v6->_speechRecognizedCommand;
      v6->_speechRecognizedCommand = v9;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFSpeechInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSpeechInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechInfo);
      v7 = [(_AFSpeechInfoMutation *)v5 getSpeechRecognizedCommand];
      v8 = [v7 copy];
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