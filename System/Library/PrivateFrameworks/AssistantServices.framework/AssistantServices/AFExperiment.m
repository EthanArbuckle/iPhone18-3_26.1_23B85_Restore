@interface AFExperiment
+ (id)newWithBuilder:(id)a3;
- (AFExperiment)initWithBuilder:(id)a3;
- (AFExperiment)initWithCoder:(id)a3;
- (AFExperiment)initWithConfigurationIdentifier:(id)a3 configurationVersion:(id)a4 deploymentGroupIdentifier:(id)a5 deploymentGroupProperties:(id)a6 deploymentReason:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)playsSessionInactiveSoundForSiriVOXSounds;
- (BOOL)playsSound;
- (BOOL)playsTwoShotSoundForSiriVOXSounds;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)featureGroups;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v2 = [(AFExperiment *)self deploymentGroupProperties];
  v3 = [v2 objectForKey:@"playsSessionInactiveSound"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)playsTwoShotSoundForSiriVOXSounds
{
  v2 = [(AFExperiment *)self deploymentGroupProperties];
  v3 = [v2 objectForKey:@"playsTwoShotSound"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  configurationIdentifier = self->_configurationIdentifier;
  v5 = a3;
  [v5 encodeObject:configurationIdentifier forKey:@"AFExperiment::configurationIdentifier"];
  [v5 encodeObject:self->_configurationVersion forKey:@"AFExperiment::configurationVersion"];
  [v5 encodeObject:self->_deploymentGroupIdentifier forKey:@"AFExperiment::deploymentGroupIdentifier"];
  [v5 encodeObject:self->_deploymentGroupProperties forKey:@"AFExperiment::deploymentGroupProperties"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_deploymentReason];
  [v5 encodeObject:v6 forKey:@"AFExperiment::deploymentReason"];
}

- (AFExperiment)initWithCoder:(id)a3
{
  v3 = a3;
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperiment::configurationIdentifier"];
  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperiment::configurationVersion"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperiment::deploymentGroupIdentifier"];
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
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"AFExperiment::deploymentGroupProperties"];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFExperiment::deploymentReason"];

  v17 = [v16 integerValue];
  v18 = [(AFExperiment *)self initWithConfigurationIdentifier:v23 configurationVersion:v22 deploymentGroupIdentifier:v21 deploymentGroupProperties:v15 deploymentReason:v17];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      deploymentReason = self->_deploymentReason;
      if (deploymentReason == [(AFExperiment *)v5 deploymentReason])
      {
        v7 = [(AFExperiment *)v5 configurationIdentifier];
        configurationIdentifier = self->_configurationIdentifier;
        if (configurationIdentifier == v7 || [(NSString *)configurationIdentifier isEqual:v7])
        {
          v9 = [(AFExperiment *)v5 configurationVersion];
          configurationVersion = self->_configurationVersion;
          if (configurationVersion == v9 || [(NSString *)configurationVersion isEqual:v9])
          {
            v11 = [(AFExperiment *)v5 deploymentGroupIdentifier];
            deploymentGroupIdentifier = self->_deploymentGroupIdentifier;
            if (deploymentGroupIdentifier == v11 || [(NSString *)deploymentGroupIdentifier isEqual:v11])
            {
              v13 = [(AFExperiment *)v5 deploymentGroupProperties];
              deploymentGroupProperties = self->_deploymentGroupProperties;
              v15 = deploymentGroupProperties == v13 || [(NSDictionary *)deploymentGroupProperties isEqual:v13];
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFExperiment)initWithConfigurationIdentifier:(id)a3 configurationVersion:(id)a4 deploymentGroupIdentifier:(id)a5 deploymentGroupProperties:(id)a6 deploymentReason:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __138__AFExperiment_initWithConfigurationIdentifier_configurationVersion_deploymentGroupIdentifier_deploymentGroupProperties_deploymentReason___block_invoke;
  v22[3] = &unk_1E7344790;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = a7;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
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

- (AFExperiment)initWithBuilder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = AFExperiment;
  v5 = [(AFExperiment *)&v21 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFExperimentMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFExperimentMutation *)v7 isDirty])
    {
      v8 = [(_AFExperimentMutation *)v7 getConfigurationIdentifier];
      v9 = [v8 copy];
      configurationIdentifier = v6->_configurationIdentifier;
      v6->_configurationIdentifier = v9;

      v11 = [(_AFExperimentMutation *)v7 getConfigurationVersion];
      v12 = [v11 copy];
      configurationVersion = v6->_configurationVersion;
      v6->_configurationVersion = v12;

      v14 = [(_AFExperimentMutation *)v7 getDeploymentGroupIdentifier];
      v15 = [v14 copy];
      deploymentGroupIdentifier = v6->_deploymentGroupIdentifier;
      v6->_deploymentGroupIdentifier = v15;

      v17 = [(_AFExperimentMutation *)v7 getDeploymentGroupProperties];
      v18 = [v17 copy];
      deploymentGroupProperties = v6->_deploymentGroupProperties;
      v6->_deploymentGroupProperties = v18;

      v6->_deploymentReason = [(_AFExperimentMutation *)v7 getDeploymentReason];
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
    v5 = [[_AFExperimentMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFExperimentMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFExperiment);
      v7 = [(_AFExperimentMutation *)v5 getConfigurationIdentifier];
      v8 = [v7 copy];
      configurationIdentifier = v6->_configurationIdentifier;
      v6->_configurationIdentifier = v8;

      v10 = [(_AFExperimentMutation *)v5 getConfigurationVersion];
      v11 = [v10 copy];
      configurationVersion = v6->_configurationVersion;
      v6->_configurationVersion = v11;

      v13 = [(_AFExperimentMutation *)v5 getDeploymentGroupIdentifier];
      v14 = [v13 copy];
      deploymentGroupIdentifier = v6->_deploymentGroupIdentifier;
      v6->_deploymentGroupIdentifier = v14;

      v16 = [(_AFExperimentMutation *)v5 getDeploymentGroupProperties];
      v17 = [v16 copy];
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
  v2 = [(AFExperiment *)self deploymentGroupProperties];
  v3 = [v2 objectForKey:@"playsSound"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)logExperimentExposureForInvocationFeedbacks
{
  v4 = +[AFAnalytics sharedAnalytics];
  v3 = AFAnalyticsContextCreateWithExperiment(self);
  [v4 logEventWithType:3403 context:v3];
}

- (unint64_t)featureGroups
{
  v2 = [(AFExperiment *)self deploymentGroupProperties];
  v3 = [v2 objectForKey:@"featureGroups"];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

@end