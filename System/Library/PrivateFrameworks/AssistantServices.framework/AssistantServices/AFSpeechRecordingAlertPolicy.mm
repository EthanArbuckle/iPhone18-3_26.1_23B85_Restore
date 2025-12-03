@interface AFSpeechRecordingAlertPolicy
+ (id)newWithBuilder:(id)builder;
- (AFSpeechRecordingAlertPolicy)initWithBuilder:(id)builder;
- (AFSpeechRecordingAlertPolicy)initWithCoder:(id)coder;
- (AFSpeechRecordingAlertPolicy)initWithStartingAlertBehavior:(id)behavior stoppedAlertBehavior:(id)alertBehavior stoppedWithErrorAlertBehavior:(id)errorAlertBehavior;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFSpeechRecordingAlertPolicy

- (void)encodeWithCoder:(id)coder
{
  startingAlertBehavior = self->_startingAlertBehavior;
  coderCopy = coder;
  [coderCopy encodeObject:startingAlertBehavior forKey:@"AFSpeechRecordingAlertPolicy::startingAlertBehavior"];
  [coderCopy encodeObject:self->_stoppedAlertBehavior forKey:@"AFSpeechRecordingAlertPolicy::stoppedAlertBehavior"];
  [coderCopy encodeObject:self->_stoppedWithErrorAlertBehavior forKey:@"AFSpeechRecordingAlertPolicy::stoppedWithErrorAlertBehavior"];
}

- (AFSpeechRecordingAlertPolicy)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechRecordingAlertPolicy::startingAlertBehavior"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechRecordingAlertPolicy::stoppedAlertBehavior"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFSpeechRecordingAlertPolicy::stoppedWithErrorAlertBehavior"];

  v8 = [(AFSpeechRecordingAlertPolicy *)self initWithStartingAlertBehavior:v5 stoppedAlertBehavior:v6 stoppedWithErrorAlertBehavior:v7];
  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      startingAlertBehavior = [(AFSpeechRecordingAlertPolicy *)v5 startingAlertBehavior];
      startingAlertBehavior = self->_startingAlertBehavior;
      if (startingAlertBehavior == startingAlertBehavior || [(AFSpeechRecordingAlertBehavior *)startingAlertBehavior isEqual:startingAlertBehavior])
      {
        stoppedAlertBehavior = [(AFSpeechRecordingAlertPolicy *)v5 stoppedAlertBehavior];
        stoppedAlertBehavior = self->_stoppedAlertBehavior;
        if (stoppedAlertBehavior == stoppedAlertBehavior || [(AFSpeechRecordingAlertBehavior *)stoppedAlertBehavior isEqual:stoppedAlertBehavior])
        {
          stoppedWithErrorAlertBehavior = [(AFSpeechRecordingAlertPolicy *)v5 stoppedWithErrorAlertBehavior];
          stoppedWithErrorAlertBehavior = self->_stoppedWithErrorAlertBehavior;
          v12 = stoppedWithErrorAlertBehavior == stoppedWithErrorAlertBehavior || [(AFSpeechRecordingAlertBehavior *)stoppedWithErrorAlertBehavior isEqual:stoppedWithErrorAlertBehavior];
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

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFSpeechRecordingAlertPolicy;
  v5 = [(AFSpeechRecordingAlertPolicy *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {startingAlertBehavior = %@, stoppedAlertBehavior = %@, stoppedWithErrorAlertBehavior = %@}", v5, self->_startingAlertBehavior, self->_stoppedAlertBehavior, self->_stoppedWithErrorAlertBehavior];

  return v6;
}

- (AFSpeechRecordingAlertPolicy)initWithStartingAlertBehavior:(id)behavior stoppedAlertBehavior:(id)alertBehavior stoppedWithErrorAlertBehavior:(id)errorAlertBehavior
{
  behaviorCopy = behavior;
  alertBehaviorCopy = alertBehavior;
  errorAlertBehaviorCopy = errorAlertBehavior;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __113__AFSpeechRecordingAlertPolicy_initWithStartingAlertBehavior_stoppedAlertBehavior_stoppedWithErrorAlertBehavior___block_invoke;
  v16[3] = &unk_1E7344740;
  v17 = behaviorCopy;
  v18 = alertBehaviorCopy;
  v19 = errorAlertBehaviorCopy;
  v11 = errorAlertBehaviorCopy;
  v12 = alertBehaviorCopy;
  v13 = behaviorCopy;
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

- (AFSpeechRecordingAlertPolicy)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = AFSpeechRecordingAlertPolicy;
  v5 = [(AFSpeechRecordingAlertPolicy *)&v18 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFSpeechRecordingAlertPolicyMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFSpeechRecordingAlertPolicyMutation *)v7 isDirty])
    {
      getStartingAlertBehavior = [(_AFSpeechRecordingAlertPolicyMutation *)v7 getStartingAlertBehavior];
      v9 = [getStartingAlertBehavior copy];
      startingAlertBehavior = v6->_startingAlertBehavior;
      v6->_startingAlertBehavior = v9;

      getStoppedAlertBehavior = [(_AFSpeechRecordingAlertPolicyMutation *)v7 getStoppedAlertBehavior];
      v12 = [getStoppedAlertBehavior copy];
      stoppedAlertBehavior = v6->_stoppedAlertBehavior;
      v6->_stoppedAlertBehavior = v12;

      getStoppedWithErrorAlertBehavior = [(_AFSpeechRecordingAlertPolicyMutation *)v7 getStoppedWithErrorAlertBehavior];
      v15 = [getStoppedWithErrorAlertBehavior copy];
      stoppedWithErrorAlertBehavior = v6->_stoppedWithErrorAlertBehavior;
      v6->_stoppedWithErrorAlertBehavior = v15;
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
    v5 = [[_AFSpeechRecordingAlertPolicyMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFSpeechRecordingAlertPolicyMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFSpeechRecordingAlertPolicy);
      getStartingAlertBehavior = [(_AFSpeechRecordingAlertPolicyMutation *)v5 getStartingAlertBehavior];
      v8 = [getStartingAlertBehavior copy];
      startingAlertBehavior = v6->_startingAlertBehavior;
      v6->_startingAlertBehavior = v8;

      getStoppedAlertBehavior = [(_AFSpeechRecordingAlertPolicyMutation *)v5 getStoppedAlertBehavior];
      v11 = [getStoppedAlertBehavior copy];
      stoppedAlertBehavior = v6->_stoppedAlertBehavior;
      v6->_stoppedAlertBehavior = v11;

      getStoppedWithErrorAlertBehavior = [(_AFSpeechRecordingAlertPolicyMutation *)v5 getStoppedWithErrorAlertBehavior];
      v14 = [getStoppedWithErrorAlertBehavior copy];
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