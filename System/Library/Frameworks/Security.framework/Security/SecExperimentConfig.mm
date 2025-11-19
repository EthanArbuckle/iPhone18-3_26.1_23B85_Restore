@interface SecExperimentConfig
- (BOOL)isSampled;
- (BOOL)shouldRunWithSamplingRate:(id)a3;
- (SecExperimentConfig)initWithConfiguration:(id)a3;
- (unsigned)hostHash;
@end

@implementation SecExperimentConfig

- (BOOL)isSampled
{
  v3 = [(SecExperimentConfig *)self hostHash];
  if (!v3 || [(SecExperimentConfig *)self fleetSampleRate]< v3)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SecExperimentConfig deviceSampleRate](self, "deviceSampleRate")}];
  v6 = [(SecExperimentConfig *)self shouldRunWithSamplingRate:v5];

  return v6;
}

- (BOOL)shouldRunWithSamplingRate:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = arc4random();
  v5 = [v3 unsignedIntegerValue];

  return (4295000000.0 / v5) > v4;
}

- (unsigned)hostHash
{
  if (sec_experiment_host_hash_onceToken != -1)
  {
    dispatch_once(&sec_experiment_host_hash_onceToken, &__block_literal_global);
  }

  return sec_experiment_host_hash_hash;
}

- (SecExperimentConfig)initWithConfiguration:(id)a3
{
  v4 = a3;
  if (v4 && (v14.receiver = self, v14.super_class = SecExperimentConfig, v5 = [(SecExperimentConfig *)&v14 init], (self = v5) != 0))
  {
    [(SecExperimentConfig *)v5 setConfig:v4];
    v6 = [v4 objectForKey:@"ExpName"];
    [(SecExperimentConfig *)self setIdentifier:v6];

    v7 = [v4 objectForKey:@"DeviceSampleRate"];
    v8 = v7;
    if (v7)
    {
      -[SecExperimentConfig setDeviceSampleRate:](self, "setDeviceSampleRate:", [v7 unsignedIntValue]);
    }

    v9 = [v4 objectForKey:@"FleetSampleRate"];
    v10 = v9;
    if (v9)
    {
      -[SecExperimentConfig setFleetSampleRate:](self, "setFleetSampleRate:", [v9 unsignedIntValue]);
    }

    v11 = [v4 objectForKey:@"ConfigData"];
    [(SecExperimentConfig *)self setConfigurationData:v11];

    self = self;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end