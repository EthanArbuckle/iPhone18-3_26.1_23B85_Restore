@interface AFSetAudioSessionActiveContext
+ (id)newWithBuilder:(id)a3;
- (AFSetAudioSessionActiveContext)initWithBuilder:(id)a3;
- (AFSetAudioSessionActiveContext)initWithCoder:(id)a3;
- (AFSetAudioSessionActiveContext)initWithOptions:(unint64_t)a3 reason:(int64_t)a4 speechRequestOptions:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSetAudioSessionActiveContext

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  options = self->_options;
  v8 = a3;
  v6 = [v4 numberWithUnsignedInteger:options];
  [v8 encodeObject:v6 forKey:@"AFSetAudioSessionActiveContext::options"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reason];
  [v8 encodeObject:v7 forKey:@"AFSetAudioSessionActiveContext::reason"];

  [v8 encodeObject:self->_speechRequestOptions forKey:@"AFSetAudioSessionActiveContext::speechRequestOptions"];
}

- (AFSetAudioSessionActiveContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSetAudioSessionActiveContext::options"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSetAudioSessionActiveContext::reason"];
  v8 = [v7 integerValue];

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSetAudioSessionActiveContext::speechRequestOptions"];

  v10 = [(AFSetAudioSessionActiveContext *)self initWithOptions:v6 reason:v8 speechRequestOptions:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      options = self->_options;
      if (options == [(AFSetAudioSessionActiveContext *)v5 options]&& (reason = self->_reason, reason == [(AFSetAudioSessionActiveContext *)v5 reason]))
      {
        v8 = [(AFSetAudioSessionActiveContext *)v5 speechRequestOptions];
        speechRequestOptions = self->_speechRequestOptions;
        v10 = speechRequestOptions == v8 || [(AFSpeechRequestOptions *)speechRequestOptions isEqual:v8];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_options];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_reason];
  v6 = [v5 hash] ^ v4;
  v7 = [(AFSpeechRequestOptions *)self->_speechRequestOptions hash];

  return v6 ^ v7;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  reason = self->_reason;
  if (reason > 3)
  {
    v5 = @"(unknown)";
  }

  else
  {
    v5 = off_1E7346120[reason];
  }

  v6 = v5;
  v7 = [v3 initWithFormat:@"reason = %@", v6];

  return v7;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13.receiver = self;
  v13.super_class = AFSetAudioSessionActiveContext;
  v5 = [(AFSetAudioSessionActiveContext *)&v13 description];
  v6 = AFSetAudioSessionActiveOptionsGetNames(self->_options);
  v7 = [v6 componentsJoinedByString:@"|"];
  reason = self->_reason;
  if (reason > 3)
  {
    v9 = @"(unknown)";
  }

  else
  {
    v9 = off_1E7346120[reason];
  }

  v10 = v9;
  v11 = [v4 initWithFormat:@"%@ {options = %@, reason = %@, speechRequestOptions = %@}", v5, v7, v10, self->_speechRequestOptions];

  return v11;
}

- (AFSetAudioSessionActiveContext)initWithOptions:(unint64_t)a3 reason:(int64_t)a4 speechRequestOptions:(id)a5
{
  v8 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__AFSetAudioSessionActiveContext_initWithOptions_reason_speechRequestOptions___block_invoke;
  v12[3] = &unk_1E7342378;
  v14 = a3;
  v15 = a4;
  v13 = v8;
  v9 = v8;
  v10 = [(AFSetAudioSessionActiveContext *)self initWithBuilder:v12];

  return v10;
}

void __78__AFSetAudioSessionActiveContext_initWithOptions_reason_speechRequestOptions___block_invoke(void *a1, void *a2)
{
  v3 = a1[5];
  v4 = a2;
  [v4 setOptions:v3];
  [v4 setReason:a1[6]];
  [v4 setSpeechRequestOptions:a1[4]];
}

- (AFSetAudioSessionActiveContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFSetAudioSessionActiveContext;
  v5 = [(AFSetAudioSessionActiveContext *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSetAudioSessionActiveContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSetAudioSessionActiveContextMutation *)v7 isDirty])
    {
      v6->_options = [(_AFSetAudioSessionActiveContextMutation *)v7 getOptions];
      v6->_reason = [(_AFSetAudioSessionActiveContextMutation *)v7 getReason];
      v8 = [(_AFSetAudioSessionActiveContextMutation *)v7 getSpeechRequestOptions];
      v9 = [v8 copy];
      speechRequestOptions = v6->_speechRequestOptions;
      v6->_speechRequestOptions = v9;
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
    v5 = [[_AFSetAudioSessionActiveContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSetAudioSessionActiveContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSetAudioSessionActiveContext);
      v6->_options = [(_AFSetAudioSessionActiveContextMutation *)v5 getOptions];
      v6->_reason = [(_AFSetAudioSessionActiveContextMutation *)v5 getReason];
      v7 = [(_AFSetAudioSessionActiveContextMutation *)v5 getSpeechRequestOptions];
      v8 = [v7 copy];
      speechRequestOptions = v6->_speechRequestOptions;
      v6->_speechRequestOptions = v8;
    }

    else
    {
      v6 = [(AFSetAudioSessionActiveContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFSetAudioSessionActiveContext *)self copy];
  }

  return v6;
}

@end