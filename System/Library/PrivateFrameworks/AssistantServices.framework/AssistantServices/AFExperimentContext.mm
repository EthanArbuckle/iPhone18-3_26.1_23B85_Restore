@interface AFExperimentContext
+ (id)newWithBuilder:(id)a3;
- (AFExperimentContext)initWithBuilder:(id)a3;
- (AFExperimentContext)initWithCoder:(id)a3;
- (AFExperimentContext)initWithExperimentsByConfigurationIdentifier:(id)a3;
- (AFExperimentForSiriVOXSounds)experimentForSiriVOXSounds;
- (AFExperimentForSiriVOXTapToSiriBehavior)experimentForSiriVOXTapToSiriBehavior;
- (AFInvocationFeedbackExperiment)invocationFeedbackExperiment;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation AFExperimentContext

- (AFInvocationFeedbackExperiment)invocationFeedbackExperiment
{
  v2 = [(AFExperimentContext *)self experimentsByConfigurationIdentifier];
  v3 = [v2 objectForKey:@"invocation_feedback_experiment"];

  return v3;
}

- (AFExperimentForSiriVOXSounds)experimentForSiriVOXSounds
{
  v2 = [(AFExperimentContext *)self experimentsByConfigurationIdentifier];
  v3 = [v2 objectForKey:@"siri_vox_sounds_experiment"];

  return v3;
}

- (AFExperimentContext)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"AFExperimentContext::experimentsByConfigurationIdentifier"];

  v10 = [(AFExperimentContext *)self initWithExperimentsByConfigurationIdentifier:v9];
  return v10;
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
      v5 = [(AFExperimentContext *)v4 experimentsByConfigurationIdentifier];
      experimentsByConfigurationIdentifier = self->_experimentsByConfigurationIdentifier;
      v7 = experimentsByConfigurationIdentifier == v5 || [(NSDictionary *)experimentsByConfigurationIdentifier isEqual:v5];
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
  v8.super_class = AFExperimentContext;
  v5 = [(AFExperimentContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {experimentsByConfigurationIdentifier = %@}", v5, self->_experimentsByConfigurationIdentifier];

  return v6;
}

- (AFExperimentContext)initWithExperimentsByConfigurationIdentifier:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__AFExperimentContext_initWithExperimentsByConfigurationIdentifier___block_invoke;
  v8[3] = &unk_1E73460C8;
  v9 = v4;
  v5 = v4;
  v6 = [(AFExperimentContext *)self initWithBuilder:v8];

  return v6;
}

- (AFExperimentContext)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFExperimentContext;
  v5 = [(AFExperimentContext *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFExperimentContextMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFExperimentContextMutation *)v7 isDirty])
    {
      v8 = [(_AFExperimentContextMutation *)v7 getExperimentsByConfigurationIdentifier];
      v9 = [v8 copy];
      experimentsByConfigurationIdentifier = v6->_experimentsByConfigurationIdentifier;
      v6->_experimentsByConfigurationIdentifier = v9;
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
    v5 = [[_AFExperimentContextMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFExperimentContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperimentContext);
      v7 = [(_AFExperimentContextMutation *)v5 getExperimentsByConfigurationIdentifier];
      v8 = [v7 copy];
      experimentsByConfigurationIdentifier = v6->_experimentsByConfigurationIdentifier;
      v6->_experimentsByConfigurationIdentifier = v8;
    }

    else
    {
      v6 = [(AFExperimentContext *)self copy];
    }
  }

  else
  {
    v6 = [(AFExperimentContext *)self copy];
  }

  return v6;
}

- (AFExperimentForSiriVOXTapToSiriBehavior)experimentForSiriVOXTapToSiriBehavior
{
  v2 = [(AFExperimentContext *)self experimentsByConfigurationIdentifier];
  v3 = [v2 objectForKey:@"siri_vox_tap_to_siri_behavior_experiment"];

  return v3;
}

@end