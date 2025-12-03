@interface AFExperiment
+ (id)newWithBuilder:(id)builder;
- (AFExperiment)initWithBuilder:(id)builder;
- (AFExperiment)initWithCoder:(id)coder;
- (AFExperiment)initWithConfigurationIdentifier:(id)identifier configurationVersion:(id)version deploymentGroupIdentifier:(id)groupIdentifier deploymentGroupProperties:(id)properties deploymentReason:(int64_t)reason;
- (BOOL)isEqual:(id)equal;
- (BOOL)playsSessionInactiveSoundForSiriVOXSounds;
- (BOOL)playsSound;
- (BOOL)playsTwoShotSoundForSiriVOXSounds;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)featureGroups;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)logExperimentExposureForInvocationFeedbacks;
- (void)logExperimentExposureForSiriVOXSounds;
- (void)logExperimentExposureForTapToSiriBehavior;
@end

@implementation AFExperiment

- (void)logExperimentExposureForSiriVOXSounds
{
  v4 = +[AFAnalytics sharedAnalytics];
  v3 = AFAnalyticsContextCreateWithExperiment(self);
  [v4 logEventWithType:3401 context:v3];
}

- (BOOL)playsSessionInactiveSoundForSiriVOXSounds
{
  deploymentGroupProperties = [(AFExperiment *)self deploymentGroupProperties];
  v3 = [deploymentGroupProperties objectForKey:@"playsSessionInactiveSound"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (BOOL)playsTwoShotSoundForSiriVOXSounds
{
  deploymentGroupProperties = [(AFExperiment *)self deploymentGroupProperties];
  v3 = [deploymentGroupProperties objectForKey:@"playsTwoShotSound"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)encodeWithCoder:(id)coder
{
  configurationIdentifier = self->_configurationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:configurationIdentifier forKey:@"AFExperiment::configurationIdentifier"];
  [coderCopy encodeObject:self->_configurationVersion forKey:@"AFExperiment::configurationVersion"];
  [coderCopy encodeObject:self->_deploymentGroupIdentifier forKey:@"AFExperiment::deploymentGroupIdentifier"];
  [coderCopy encodeObject:self->_deploymentGroupProperties forKey:@"AFExperiment::deploymentGroupProperties"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deploymentReason];
  [coderCopy encodeObject:v6 forKey:@"AFExperiment::deploymentReason"];
}

- (AFExperiment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperiment::configurationIdentifier"];
  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperiment::configurationVersion"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperiment::deploymentGroupIdentifier"];
  v20 = MEMORY[0x1E695DFD8];
  v21 = v4;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v20 setWithObjects:{v5, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"AFExperiment::deploymentGroupProperties"];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFExperiment::deploymentReason"];

  integerValue = [v16 integerValue];
  v18 = [(AFExperiment *)self initWithConfigurationIdentifier:v23 configurationVersion:v22 deploymentGroupIdentifier:v21 deploymentGroupProperties:v15 deploymentReason:integerValue];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      deploymentReason = self->_deploymentReason;
      if (deploymentReason == [(AFExperiment *)v5 deploymentReason])
      {
        configurationIdentifier = [(AFExperiment *)v5 configurationIdentifier];
        configurationIdentifier = self->_configurationIdentifier;
        if (configurationIdentifier == configurationIdentifier || [(NSString *)configurationIdentifier isEqual:configurationIdentifier])
        {
          configurationVersion = [(AFExperiment *)v5 configurationVersion];
          configurationVersion = self->_configurationVersion;
          if (configurationVersion == configurationVersion || [(NSString *)configurationVersion isEqual:configurationVersion])
          {
            deploymentGroupIdentifier = [(AFExperiment *)v5 deploymentGroupIdentifier];
            deploymentGroupIdentifier = self->_deploymentGroupIdentifier;
            if (deploymentGroupIdentifier == deploymentGroupIdentifier || [(NSString *)deploymentGroupIdentifier isEqual:deploymentGroupIdentifier])
            {
              deploymentGroupProperties = [(AFExperiment *)v5 deploymentGroupProperties];
              deploymentGroupProperties = self->_deploymentGroupProperties;
              v15 = deploymentGroupProperties == deploymentGroupProperties || [(NSDictionary *)deploymentGroupProperties isEqual:deploymentGroupProperties];
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_configurationIdentifier hash];
  v4 = [(NSString *)self->_configurationVersion hash]^ v3;
  v5 = [(NSString *)self->_deploymentGroupIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSDictionary *)self->_deploymentGroupProperties hash];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deploymentReason];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15.receiver = self;
  v15.super_class = AFExperiment;
  v5 = [(AFExperiment *)&v15 description];
  configurationIdentifier = self->_configurationIdentifier;
  configurationVersion = self->_configurationVersion;
  deploymentGroupIdentifier = self->_deploymentGroupIdentifier;
  deploymentGroupProperties = self->_deploymentGroupProperties;
  deploymentReason = self->_deploymentReason;
  if (deploymentReason > 2)
  {
    v11 = @"(unknown)";
  }

  else
  {
    v11 = off_1E73464A0[deploymentReason];
  }

  v12 = v11;
  v13 = [v4 initWithFormat:@"%@ {configurationIdentifier = %@, configurationVersion = %@, deploymentGroupIdentifier = %@, deploymentGroupProperties = %@, deploymentReason = %@}", v5, configurationIdentifier, configurationVersion, deploymentGroupIdentifier, deploymentGroupProperties, v12];

  return v13;
}

- (AFExperiment)initWithConfigurationIdentifier:(id)identifier configurationVersion:(id)version deploymentGroupIdentifier:(id)groupIdentifier deploymentGroupProperties:(id)properties deploymentReason:(int64_t)reason
{
  identifierCopy = identifier;
  versionCopy = version;
  groupIdentifierCopy = groupIdentifier;
  propertiesCopy = properties;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __138__AFExperiment_initWithConfigurationIdentifier_configurationVersion_deploymentGroupIdentifier_deploymentGroupProperties_deploymentReason___block_invoke;
  v22[3] = &unk_1E7344790;
  v23 = identifierCopy;
  v24 = versionCopy;
  v25 = groupIdentifierCopy;
  v26 = propertiesCopy;
  reasonCopy = reason;
  v16 = propertiesCopy;
  v17 = groupIdentifierCopy;
  v18 = versionCopy;
  v19 = identifierCopy;
  v20 = [(AFExperiment *)self initWithBuilder:v22];

  return v20;
}

void __138__AFExperiment_initWithConfigurationIdentifier_configurationVersion_deploymentGroupIdentifier_deploymentGroupProperties_deploymentReason___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setConfigurationIdentifier:v3];
  [v4 setConfigurationVersion:a1[5]];
  [v4 setDeploymentGroupIdentifier:a1[6]];
  [v4 setDeploymentGroupProperties:a1[7]];
  [v4 setDeploymentReason:a1[8]];
}

- (AFExperiment)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v21.receiver = self;
  v21.super_class = AFExperiment;
  v5 = [(AFExperiment *)&v21 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFExperimentMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFExperimentMutation *)v7 isDirty])
    {
      getConfigurationIdentifier = [(_AFExperimentMutation *)v7 getConfigurationIdentifier];
      v9 = [getConfigurationIdentifier copy];
      configurationIdentifier = v6->_configurationIdentifier;
      v6->_configurationIdentifier = v9;

      getConfigurationVersion = [(_AFExperimentMutation *)v7 getConfigurationVersion];
      v12 = [getConfigurationVersion copy];
      configurationVersion = v6->_configurationVersion;
      v6->_configurationVersion = v12;

      getDeploymentGroupIdentifier = [(_AFExperimentMutation *)v7 getDeploymentGroupIdentifier];
      v15 = [getDeploymentGroupIdentifier copy];
      deploymentGroupIdentifier = v6->_deploymentGroupIdentifier;
      v6->_deploymentGroupIdentifier = v15;

      getDeploymentGroupProperties = [(_AFExperimentMutation *)v7 getDeploymentGroupProperties];
      v18 = [getDeploymentGroupProperties copy];
      deploymentGroupProperties = v6->_deploymentGroupProperties;
      v6->_deploymentGroupProperties = v18;

      v6->_deploymentReason = [(_AFExperimentMutation *)v7 getDeploymentReason];
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
    v5 = [[_AFExperimentMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFExperimentMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperiment);
      getConfigurationIdentifier = [(_AFExperimentMutation *)v5 getConfigurationIdentifier];
      v8 = [getConfigurationIdentifier copy];
      configurationIdentifier = v6->_configurationIdentifier;
      v6->_configurationIdentifier = v8;

      getConfigurationVersion = [(_AFExperimentMutation *)v5 getConfigurationVersion];
      v11 = [getConfigurationVersion copy];
      configurationVersion = v6->_configurationVersion;
      v6->_configurationVersion = v11;

      getDeploymentGroupIdentifier = [(_AFExperimentMutation *)v5 getDeploymentGroupIdentifier];
      v14 = [getDeploymentGroupIdentifier copy];
      deploymentGroupIdentifier = v6->_deploymentGroupIdentifier;
      v6->_deploymentGroupIdentifier = v14;

      getDeploymentGroupProperties = [(_AFExperimentMutation *)v5 getDeploymentGroupProperties];
      v17 = [getDeploymentGroupProperties copy];
      deploymentGroupProperties = v6->_deploymentGroupProperties;
      v6->_deploymentGroupProperties = v17;

      v6->_deploymentReason = [(_AFExperimentMutation *)v5 getDeploymentReason];
    }

    else
    {
      v6 = [(AFExperiment *)self copy];
    }
  }

  else
  {
    v6 = [(AFExperiment *)self copy];
  }

  return v6;
}

- (void)logExperimentExposureForTapToSiriBehavior
{
  v4 = +[AFAnalytics sharedAnalytics];
  v3 = AFAnalyticsContextCreateWithExperiment(self);
  [v4 logEventWithType:3402 context:v3];
}

- (BOOL)playsSound
{
  deploymentGroupProperties = [(AFExperiment *)self deploymentGroupProperties];
  v3 = [deploymentGroupProperties objectForKey:@"playsSound"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)logExperimentExposureForInvocationFeedbacks
{
  v4 = +[AFAnalytics sharedAnalytics];
  v3 = AFAnalyticsContextCreateWithExperiment(self);
  [v4 logEventWithType:3403 context:v3];
}

- (unint64_t)featureGroups
{
  deploymentGroupProperties = [(AFExperiment *)self deploymentGroupProperties];
  v3 = [deploymentGroupProperties objectForKey:@"featureGroups"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

@end