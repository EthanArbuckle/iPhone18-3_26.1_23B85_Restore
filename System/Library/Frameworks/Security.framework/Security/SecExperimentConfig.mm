@interface SecExperimentConfig
- (BOOL)isSampled;
- (BOOL)shouldRunWithSamplingRate:(id)rate;
- (SecExperimentConfig)initWithConfiguration:(id)configuration;
- (unsigned)hostHash;
@end

@implementation SecExperimentConfig

- (BOOL)isSampled
{
  hostHash = [(SecExperimentConfig *)self hostHash];
  if (!hostHash || [(SecExperimentConfig *)self fleetSampleRate]< hostHash)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SecExperimentConfig deviceSampleRate](self, "deviceSampleRate")}];
  v6 = [(SecExperimentConfig *)self shouldRunWithSamplingRate:v5];

  return v6;
}

- (BOOL)shouldRunWithSamplingRate:(id)rate
{
  if (!rate)
  {
    return 0;
  }

  rateCopy = rate;
  v4 = arc4random();
  unsignedIntegerValue = [rateCopy unsignedIntegerValue];

  return (4295000000.0 / unsignedIntegerValue) > v4;
}

- (unsigned)hostHash
{
  if (sec_experiment_host_hash_onceToken != -1)
  {
    dispatch_once(&sec_experiment_host_hash_onceToken, &__block_literal_global);
  }

  return sec_experiment_host_hash_hash;
}

- (SecExperimentConfig)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (configurationCopy && (v14.receiver = self, v14.super_class = SecExperimentConfig, v5 = [(SecExperimentConfig *)&v14 init], (self = v5) != 0))
  {
    [(SecExperimentConfig *)v5 setConfig:configurationCopy];
    v6 = [configurationCopy objectForKey:@"ExpName"];
    [(SecExperimentConfig *)self setIdentifier:v6];

    v7 = [configurationCopy objectForKey:@"DeviceSampleRate"];
    v8 = v7;
    if (v7)
    {
      -[SecExperimentConfig setDeviceSampleRate:](self, "setDeviceSampleRate:", [v7 unsignedIntValue]);
    }

    v9 = [configurationCopy objectForKey:@"FleetSampleRate"];
    v10 = v9;
    if (v9)
    {
      -[SecExperimentConfig setFleetSampleRate:](self, "setFleetSampleRate:", [v9 unsignedIntValue]);
    }

    v11 = [configurationCopy objectForKey:@"ConfigData"];
    [(SecExperimentConfig *)self setConfigurationData:v11];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end