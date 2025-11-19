@interface AFSetAudioSessionActiveResult
+ (id)newWithBuilder:(id)a3;
- (AFSetAudioSessionActiveResult)initWithAudioSessionID:(unsigned int)a3 error:(id)a4;
- (AFSetAudioSessionActiveResult)initWithBuilder:(id)a3;
- (AFSetAudioSessionActiveResult)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSetAudioSessionActiveResult

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  audioSessionID = self->_audioSessionID;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInt:audioSessionID];
  [v7 encodeObject:v6 forKey:@"AFSetAudioSessionActiveResult::audioSessionID"];

  [v7 encodeObject:self->_error forKey:@"AFSetAudioSessionActiveResult::error"];
}

- (AFSetAudioSessionActiveResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSetAudioSessionActiveResult::audioSessionID"];
  v6 = [v5 unsignedIntValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSetAudioSessionActiveResult::error"];

  v8 = [(AFSetAudioSessionActiveResult *)self initWithAudioSessionID:v6 error:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      audioSessionID = self->_audioSessionID;
      if (audioSessionID == [(AFSetAudioSessionActiveResult *)v5 audioSessionID])
      {
        v7 = [(AFSetAudioSessionActiveResult *)v5 error];
        error = self->_error;
        v9 = error == v7 || [(NSError *)error isEqual:v7];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSetAudioSessionActiveResult;
  v5 = [(AFSetAudioSessionActiveResult *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {audioSessionID = %u, error = %@}", v5, self->_audioSessionID, self->_error];

  return v6;
}

- (AFSetAudioSessionActiveResult)initWithAudioSessionID:(unsigned int)a3 error:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__AFSetAudioSessionActiveResult_initWithAudioSessionID_error___block_invoke;
  v10[3] = &unk_1E7349488;
  v12 = a3;
  v11 = v6;
  v7 = v6;
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

- (AFSetAudioSessionActiveResult)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFSetAudioSessionActiveResult;
  v5 = [(AFSetAudioSessionActiveResult *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSetAudioSessionActiveResultMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSetAudioSessionActiveResultMutation *)v7 isDirty])
    {
      v6->_audioSessionID = [(_AFSetAudioSessionActiveResultMutation *)v7 getAudioSessionID];
      v8 = [(_AFSetAudioSessionActiveResultMutation *)v7 getError];
      v9 = [v8 copy];
      error = v6->_error;
      v6->_error = v9;
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
    v5 = [[_AFSetAudioSessionActiveResultMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSetAudioSessionActiveResultMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSetAudioSessionActiveResult);
      v6->_audioSessionID = [(_AFSetAudioSessionActiveResultMutation *)v5 getAudioSessionID];
      v7 = [(_AFSetAudioSessionActiveResultMutation *)v5 getError];
      v8 = [v7 copy];
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