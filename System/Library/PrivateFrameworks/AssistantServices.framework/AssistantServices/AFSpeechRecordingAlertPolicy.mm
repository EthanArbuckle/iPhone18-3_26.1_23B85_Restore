@interface AFSpeechRecordingAlertPolicy
+ (id)newWithBuilder:(id)a3;
- (AFSpeechRecordingAlertPolicy)initWithBuilder:(id)a3;
- (AFSpeechRecordingAlertPolicy)initWithCoder:(id)a3;
- (AFSpeechRecordingAlertPolicy)initWithStartingAlertBehavior:(id)a3 stoppedAlertBehavior:(id)a4 stoppedWithErrorAlertBehavior:(id)a5;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFSpeechRecordingAlertPolicy

- (void)encodeWithCoder:(id)a3
{
  startingAlertBehavior = self->_startingAlertBehavior;
  v5 = a3;
  [v5 encodeObject:startingAlertBehavior forKey:@"AFSpeechRecordingAlertPolicy::startingAlertBehavior"];
  [v5 encodeObject:self->_stoppedAlertBehavior forKey:@"AFSpeechRecordingAlertPolicy::stoppedAlertBehavior"];
  [v5 encodeObject:self->_stoppedWithErrorAlertBehavior forKey:@"AFSpeechRecordingAlertPolicy::stoppedWithErrorAlertBehavior"];
}

- (AFSpeechRecordingAlertPolicy)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechRecordingAlertPolicy::startingAlertBehavior"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechRecordingAlertPolicy::stoppedAlertBehavior"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechRecordingAlertPolicy::stoppedWithErrorAlertBehavior"];

  v8 = [(AFSpeechRecordingAlertPolicy *)self initWithStartingAlertBehavior:v5 stoppedAlertBehavior:v6 stoppedWithErrorAlertBehavior:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AFSpeechRecordingAlertPolicy *)v5 startingAlertBehavior];
      startingAlertBehavior = self->_startingAlertBehavior;
      if (startingAlertBehavior == v6 || [(AFSpeechRecordingAlertBehavior *)startingAlertBehavior isEqual:v6])
      {
        v8 = [(AFSpeechRecordingAlertPolicy *)v5 stoppedAlertBehavior];
        stoppedAlertBehavior = self->_stoppedAlertBehavior;
        if (stoppedAlertBehavior == v8 || [(AFSpeechRecordingAlertBehavior *)stoppedAlertBehavior isEqual:v8])
        {
          v10 = [(AFSpeechRecordingAlertPolicy *)v5 stoppedWithErrorAlertBehavior];
          stoppedWithErrorAlertBehavior = self->_stoppedWithErrorAlertBehavior;
          v12 = stoppedWithErrorAlertBehavior == v10 || [(AFSpeechRecordingAlertBehavior *)stoppedWithErrorAlertBehavior isEqual:v10];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(AFSpeechRecordingAlertBehavior *)self->_startingAlertBehavior hash];
  v4 = [(AFSpeechRecordingAlertBehavior *)self->_stoppedAlertBehavior hash]^ v3;
  return v4 ^ [(AFSpeechRecordingAlertBehavior *)self->_stoppedWithErrorAlertBehavior hash];
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSpeechRecordingAlertPolicy;
  v5 = [(AFSpeechRecordingAlertPolicy *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {startingAlertBehavior = %@, stoppedAlertBehavior = %@, stoppedWithErrorAlertBehavior = %@}", v5, self->_startingAlertBehavior, self->_stoppedAlertBehavior, self->_stoppedWithErrorAlertBehavior];

  return v6;
}

- (AFSpeechRecordingAlertPolicy)initWithStartingAlertBehavior:(id)a3 stoppedAlertBehavior:(id)a4 stoppedWithErrorAlertBehavior:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __113__AFSpeechRecordingAlertPolicy_initWithStartingAlertBehavior_stoppedAlertBehavior_stoppedWithErrorAlertBehavior___block_invoke;
  v16[3] = &unk_1E7344740;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = [(AFSpeechRecordingAlertPolicy *)self initWithBuilder:v16];

  return v14;
}

void __113__AFSpeechRecordingAlertPolicy_initWithStartingAlertBehavior_stoppedAlertBehavior_stoppedWithErrorAlertBehavior___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setStartingAlertBehavior:v3];
  [v4 setStoppedAlertBehavior:a1[5]];
  [v4 setStoppedWithErrorAlertBehavior:a1[6]];
}

- (AFSpeechRecordingAlertPolicy)initWithBuilder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AFSpeechRecordingAlertPolicy;
  v5 = [(AFSpeechRecordingAlertPolicy *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFSpeechRecordingAlertPolicyMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFSpeechRecordingAlertPolicyMutation *)v7 isDirty])
    {
      v8 = [(_AFSpeechRecordingAlertPolicyMutation *)v7 getStartingAlertBehavior];
      v9 = [v8 copy];
      startingAlertBehavior = v6->_startingAlertBehavior;
      v6->_startingAlertBehavior = v9;

      v11 = [(_AFSpeechRecordingAlertPolicyMutation *)v7 getStoppedAlertBehavior];
      v12 = [v11 copy];
      stoppedAlertBehavior = v6->_stoppedAlertBehavior;
      v6->_stoppedAlertBehavior = v12;

      v14 = [(_AFSpeechRecordingAlertPolicyMutation *)v7 getStoppedWithErrorAlertBehavior];
      v15 = [v14 copy];
      stoppedWithErrorAlertBehavior = v6->_stoppedWithErrorAlertBehavior;
      v6->_stoppedWithErrorAlertBehavior = v15;
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
    v5 = [[_AFSpeechRecordingAlertPolicyMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFSpeechRecordingAlertPolicyMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechRecordingAlertPolicy);
      v7 = [(_AFSpeechRecordingAlertPolicyMutation *)v5 getStartingAlertBehavior];
      v8 = [v7 copy];
      startingAlertBehavior = v6->_startingAlertBehavior;
      v6->_startingAlertBehavior = v8;

      v10 = [(_AFSpeechRecordingAlertPolicyMutation *)v5 getStoppedAlertBehavior];
      v11 = [v10 copy];
      stoppedAlertBehavior = v6->_stoppedAlertBehavior;
      v6->_stoppedAlertBehavior = v11;

      v13 = [(_AFSpeechRecordingAlertPolicyMutation *)v5 getStoppedWithErrorAlertBehavior];
      v14 = [v13 copy];
      stoppedWithErrorAlertBehavior = v6->_stoppedWithErrorAlertBehavior;
      v6->_stoppedWithErrorAlertBehavior = v14;
    }

    else
    {
      v6 = [(AFSpeechRecordingAlertPolicy *)self copy];
    }
  }

  else
  {
    v6 = [(AFSpeechRecordingAlertPolicy *)self copy];
  }

  return v6;
}

@end