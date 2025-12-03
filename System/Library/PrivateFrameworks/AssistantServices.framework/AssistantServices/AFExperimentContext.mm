@interface AFExperimentContext
+ (id)newWithBuilder:(id)builder;
- (AFExperimentContext)initWithBuilder:(id)builder;
- (AFExperimentContext)initWithCoder:(id)coder;
- (AFExperimentContext)initWithExperimentsByConfigurationIdentifier:(id)identifier;
- (AFExperimentForSiriVOXSounds)experimentForSiriVOXSounds;
- (AFExperimentForSiriVOXTapToSiriBehavior)experimentForSiriVOXTapToSiriBehavior;
- (AFInvocationFeedbackExperiment)invocationFeedbackExperiment;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation AFExperimentContext

- (AFInvocationFeedbackExperiment)invocationFeedbackExperiment
{
  experimentsByConfigurationIdentifier = [(AFExperimentContext *)self experimentsByConfigurationIdentifier];
  v3 = [experimentsByConfigurationIdentifier objectForKey:@"invocation_feedback_experiment"];

  return v3;
}

- (AFExperimentForSiriVOXSounds)experimentForSiriVOXSounds
{
  experimentsByConfigurationIdentifier = [(AFExperimentContext *)self experimentsByConfigurationIdentifier];
  v3 = [experimentsByConfigurationIdentifier objectForKey:@"siri_vox_sounds_experiment"];

  return v3;
}

- (AFExperimentContext)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"AFExperimentContext::experimentsByConfigurationIdentifier"];

  v10 = [(AFExperimentContext *)self initWithExperimentsByConfigurationIdentifier:v9];
  return v10;
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
      experimentsByConfigurationIdentifier = [(AFExperimentContext *)equalCopy experimentsByConfigurationIdentifier];
      experimentsByConfigurationIdentifier = self->_experimentsByConfigurationIdentifier;
      v7 = experimentsByConfigurationIdentifier == experimentsByConfigurationIdentifier || [(NSDictionary *)experimentsByConfigurationIdentifier isEqual:experimentsByConfigurationIdentifier];
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
  v8.super_class = AFExperimentContext;
  v5 = [(AFExperimentContext *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {experimentsByConfigurationIdentifier = %@}", v5, self->_experimentsByConfigurationIdentifier];

  return v6;
}

- (AFExperimentContext)initWithExperimentsByConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__AFExperimentContext_initWithExperimentsByConfigurationIdentifier___block_invoke;
  v8[3] = &unk_1E73460C8;
  v9 = identifierCopy;
  v5 = identifierCopy;
  v6 = [(AFExperimentContext *)self initWithBuilder:v8];

  return v6;
}

- (AFExperimentContext)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v12.receiver = self;
  v12.super_class = AFExperimentContext;
  v5 = [(AFExperimentContext *)&v12 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFExperimentContextMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFExperimentContextMutation *)v7 isDirty])
    {
      getExperimentsByConfigurationIdentifier = [(_AFExperimentContextMutation *)v7 getExperimentsByConfigurationIdentifier];
      v9 = [getExperimentsByConfigurationIdentifier copy];
      experimentsByConfigurationIdentifier = v6->_experimentsByConfigurationIdentifier;
      v6->_experimentsByConfigurationIdentifier = v9;
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
    v5 = [[_AFExperimentContextMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFExperimentContextMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperimentContext);
      getExperimentsByConfigurationIdentifier = [(_AFExperimentContextMutation *)v5 getExperimentsByConfigurationIdentifier];
      v8 = [getExperimentsByConfigurationIdentifier copy];
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
  experimentsByConfigurationIdentifier = [(AFExperimentContext *)self experimentsByConfigurationIdentifier];
  v3 = [experimentsByConfigurationIdentifier objectForKey:@"siri_vox_tap_to_siri_behavior_experiment"];

  return v3;
}

@end