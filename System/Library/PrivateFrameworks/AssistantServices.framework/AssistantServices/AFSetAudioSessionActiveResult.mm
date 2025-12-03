@interface AFSetAudioSessionActiveResult
+ (id)newWithBuilder:(id)builder;
- (AFSetAudioSessionActiveResult)initWithAudioSessionID:(unsigned int)d error:(id)error;
- (AFSetAudioSessionActiveResult)initWithBuilder:(id)builder;
- (AFSetAudioSessionActiveResult)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSetAudioSessionActiveResult

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  audioSessionID = self->_audioSessionID;
  coderCopy = coder;
  v6 = [v4 numberWithUnsignedInt:audioSessionID];
  [coderCopy encodeObject:v6 forKey:@"AFSetAudioSessionActiveResult::audioSessionID"];

  [coderCopy encodeObject:self->_error forKey:@"AFSetAudioSessionActiveResult::error"];
}

- (AFSetAudioSessionActiveResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSetAudioSessionActiveResult::audioSessionID"];
  unsignedIntValue = [v5 unsignedIntValue];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSetAudioSessionActiveResult::error"];

  v8 = [(AFSetAudioSessionActiveResult *)self initWithAudioSessionID:unsignedIntValue error:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      audioSessionID = self->_audioSessionID;
      if (audioSessionID == [(AFSetAudioSessionActiveResult *)v5 audioSessionID])
      {
        error = [(AFSetAudioSessionActiveResult *)v5 error];
        error = self->_error;
        v9 = error == error || [(NSError *)error isEqual:error];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_audioSessionID];
  v4 = [v3 hash];
  v5 = [(NSError *)self->_error hash];

  return v5 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSetAudioSessionActiveResult;
  v5 = [(AFSetAudioSessionActiveResult *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {audioSessionID = %u, error = %@}", v5, self->_audioSessionID, self->_error];

  return v6;
}

- (AFSetAudioSessionActiveResult)initWithAudioSessionID:(unsigned int)d error:(id)error
{
  errorCopy = error;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__AFSetAudioSessionActiveResult_initWithAudioSessionID_error___block_invoke;
  v10[3] = &unk_1E7349488;
  dCopy = d;
  v11 = errorCopy;
  v7 = errorCopy;
  v8 = [(AFSetAudioSessionActiveResult *)self initWithBuilder:v10];

  return v8;
}

void __62__AFSetAudioSessionActiveResult_initWithAudioSessionID_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setAudioSessionID:v3];
  [v4 setError:*(a1 + 32)];
}

- (AFSetAudioSessionActiveResult)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFSetAudioSessionActiveResult;
  v5 = [(AFSetAudioSessionActiveResult *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSetAudioSessionActiveResultMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSetAudioSessionActiveResultMutation *)v7 isDirty])
    {
      v6->_audioSessionID = [(_AFSetAudioSessionActiveResultMutation *)v7 getAudioSessionID];
      getError = [(_AFSetAudioSessionActiveResultMutation *)v7 getError];
      v9 = [getError copy];
      error = v6->_error;
      v6->_error = v9;
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
    v5 = [[_AFSetAudioSessionActiveResultMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSetAudioSessionActiveResultMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSetAudioSessionActiveResult);
      v6->_audioSessionID = [(_AFSetAudioSessionActiveResultMutation *)v5 getAudioSessionID];
      getError = [(_AFSetAudioSessionActiveResultMutation *)v5 getError];
      v8 = [getError copy];
      error = v6->_error;
      v6->_error = v8;
    }

    else
    {
      v6 = [(AFSetAudioSessionActiveResult *)self copy];
    }
  }

  else
  {
    v6 = [(AFSetAudioSessionActiveResult *)self copy];
  }

  return v6;
}

@end