@interface AFMyriadContext
+ (id)newWithBuilder:(id)a3;
- (AFMyriadContext)initWithBuilder:(id)a3;
- (AFMyriadContext)initWithCoder:(id)a3;
- (AFMyriadContext)initWithTimestamp:(unint64_t)a3 perceptualAudioHash:(id)a4 overrideState:(id)a5 activationSource:(int64_t)a6 activationExpirationTime:(unint64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFMyriadContext

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  timestamp = self->_timestamp;
  v6 = a3;
  v7 = [v4 numberWithUnsignedLongLong:timestamp];
  [v6 encodeObject:v7 forKey:@"AFMyriadContext::timestamp"];

  [v6 encodeObject:self->_perceptualAudioHash forKey:@"AFMyriadContext::perceptualAudioHash"];
  [v6 encodeObject:self->_overrideState forKey:@"AFMyriadContext::overrideState"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activationSource];
  [v6 encodeObject:v8 forKey:@"AFMyriadContext::activationSource"];

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_activationExpirationTime];
  [v6 encodeObject:v9 forKey:@"AFMyriadContext::activationExpirationTime"];
}

- (AFMyriadContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadContext::timestamp"];
  v6 = [v5 unsignedLongLongValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadContext::perceptualAudioHash"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadContext::overrideState"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadContext::activationSource"];
  v10 = [v9 integerValue];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFMyriadContext::activationExpirationTime"];

  v12 = [v11 unsignedLongLongValue];
  v13 = [(AFMyriadContext *)self initWithTimestamp:v6 perceptualAudioHash:v7 overrideState:v8 activationSource:v10 activationExpirationTime:v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      timestamp = self->_timestamp;
      if (timestamp == [(AFMyriadContext *)v5 timestamp]&& (activationSource = self->_activationSource, activationSource == [(AFMyriadContext *)v5 activationSource]) && (activationExpirationTime = self->_activationExpirationTime, activationExpirationTime == [(AFMyriadContext *)v5 activationExpirationTime]))
      {
        v9 = [(AFMyriadContext *)v5 perceptualAudioHash];
        perceptualAudioHash = self->_perceptualAudioHash;
        if (perceptualAudioHash == v9 || [(AFMyriadPerceptualAudioHash *)perceptualAudioHash isEqual:v9])
        {
          v11 = [(AFMyriadContext *)v5 overrideState];
          overrideState = self->_overrideState;
          v13 = overrideState == v11 || [(AFMyriadGoodnessScoreOverrideState *)overrideState isEqual:v11];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_timestamp];
  v4 = [v3 hash];
  v5 = [(AFMyriadPerceptualAudioHash *)self->_perceptualAudioHash hash];
  v6 = v5 ^ [(AFMyriadGoodnessScoreOverrideState *)self->_overrideState hash]^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activationSource];
  v8 = [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_activationExpirationTime];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14.receiver = self;
  v14.super_class = AFMyriadContext;
  v5 = [(AFMyriadContext *)&v14 description];
  timestamp = self->_timestamp;
  perceptualAudioHash = self->_perceptualAudioHash;
  overrideState = self->_overrideState;
  activationSource = self->_activationSource;
  if (activationSource > 0xF)
  {
    v10 = @"(unknown)";
  }

  else
  {
    v10 = off_1E7341EA8[activationSource];
  }

  v11 = v10;
  v12 = [v4 initWithFormat:@"%@ {timestamp = %llu, perceptualAudioHash = %@, overrideState = %@, activationSource = %@, activationExpirationTime = %llu}", v5, timestamp, perceptualAudioHash, overrideState, v11, self->_activationExpirationTime];

  return v12;
}

- (AFMyriadContext)initWithTimestamp:(unint64_t)a3 perceptualAudioHash:(id)a4 overrideState:(id)a5 activationSource:(int64_t)a6 activationExpirationTime:(unint64_t)a7
{
  v12 = a4;
  v13 = a5;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __113__AFMyriadContext_initWithTimestamp_perceptualAudioHash_overrideState_activationSource_activationExpirationTime___block_invoke;
  v18[3] = &unk_1E7342610;
  v19 = v12;
  v20 = v13;
  v21 = a3;
  v22 = a6;
  v23 = a7;
  v14 = v13;
  v15 = v12;
  v16 = [(AFMyriadContext *)self initWithBuilder:v18];

  return v16;
}

void __113__AFMyriadContext_initWithTimestamp_perceptualAudioHash_overrideState_activationSource_activationExpirationTime___block_invoke(void *a1, void *a2)
{
  v3 = a1[6];
  v4 = a2;
  [v4 setTimestamp:v3];
  [v4 setPerceptualAudioHash:a1[4]];
  [v4 setOverrideState:a1[5]];
  [v4 setActivationSource:a1[7]];
  [v4 setActivationExpirationTime:a1[8]];
}

- (AFMyriadContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = AFMyriadContext;
  v5 = [(AFMyriadContext *)&v15 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFMyriadContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFMyriadContextMutation *)v7 isDirty])
    {
      v6->_timestamp = [(_AFMyriadContextMutation *)v7 getTimestamp];
      v8 = [(_AFMyriadContextMutation *)v7 getPerceptualAudioHash];
      v9 = [v8 copy];
      perceptualAudioHash = v6->_perceptualAudioHash;
      v6->_perceptualAudioHash = v9;

      v11 = [(_AFMyriadContextMutation *)v7 getOverrideState];
      v12 = [v11 copy];
      overrideState = v6->_overrideState;
      v6->_overrideState = v12;

      v6->_activationSource = [(_AFMyriadContextMutation *)v7 getActivationSource];
      v6->_activationExpirationTime = [(_AFMyriadContextMutation *)v7 getActivationExpirationTime];
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
    v5 = [[_AFMyriadContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFMyriadContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFMyriadContext);
      v6->_timestamp = [(_AFMyriadContextMutation *)v5 getTimestamp];
      v7 = [(_AFMyriadContextMutation *)v5 getPerceptualAudioHash];
      v8 = [v7 copy];
      perceptualAudioHash = v6->_perceptualAudioHash;
      v6->_perceptualAudioHash = v8;

      v10 = [(_AFMyriadContextMutation *)v5 getOverrideState];
      v11 = [v10 copy];
      overrideState = v6->_overrideState;
      v6->_overrideState = v11;

      v6->_activationSource = [(_AFMyriadContextMutation *)v5 getActivationSource];
      v6->_activationExpirationTime = [(_AFMyriadContextMutation *)v5 getActivationExpirationTime];
    }

    else
    {
      v6 = [(AFMyriadContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFMyriadContext *)self copy];
  }

  return v6;
}

@end