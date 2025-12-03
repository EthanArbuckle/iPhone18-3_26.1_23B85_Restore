@interface SecExperiment
- (BOOL)experimentIsAllowedForProcess;
- (BOOL)isSamplingDisabled;
- (BOOL)isSamplingDisabledWithDefault:(BOOL)default;
- (NSString)identifier;
- (SecExperiment)initWithName:(const char *)name;
- (id)copyExperimentConfiguration;
- (id)copyExperimentConfigurationFromUserDefaults;
- (id)copyRandomExperimentConfigurationFromAsset:(id)asset;
- (id)copyRemoteExperimentAsset;
@end

@implementation SecExperiment

- (NSString)identifier
{
  cachedConfig = [(SecExperiment *)self cachedConfig];

  if (cachedConfig)
  {
    cachedConfig2 = [(SecExperiment *)self cachedConfig];
    identifier = [cachedConfig2 identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (id)copyExperimentConfiguration
{
  cachedConfig = [(SecExperiment *)self cachedConfig];

  if (cachedConfig)
  {
    [(SecExperiment *)self cachedConfig];
    return objc_claimAutoreleasedReturnValue();
  }

  else
  {
    copyExperimentConfigurationFromUserDefaults = [(SecExperiment *)self copyExperimentConfigurationFromUserDefaults];
    if (copyExperimentConfigurationFromUserDefaults)
    {
      v6 = [[SecExperimentConfig alloc] initWithConfiguration:copyExperimentConfigurationFromUserDefaults];
      [(SecExperiment *)self setCachedConfig:v6];

      cachedConfig2 = [(SecExperiment *)self cachedConfig];
    }

    else
    {
      copyRemoteExperimentAsset = [(SecExperiment *)self copyRemoteExperimentAsset];
      if (copyRemoteExperimentAsset)
      {
        v8 = [(SecExperiment *)self copyRandomExperimentConfigurationFromAsset:copyRemoteExperimentAsset];
        v9 = [[SecExperimentConfig alloc] initWithConfiguration:v8];
        [(SecExperiment *)self setCachedConfig:v9];

        cachedConfig2 = [(SecExperiment *)self cachedConfig];
      }

      else
      {
        cachedConfig2 = 0;
      }
    }
  }

  return cachedConfig2;
}

- (id)copyRandomExperimentConfigurationFromAsset:(id)asset
{
  v3 = [asset valueForKey:@"ConfigArray"];
  if (v3)
  {
    v4 = [v3 objectAtIndex:{arc4random() % objc_msgSend(v3, "count")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)copyRemoteExperimentAsset
{
  cf = 0;
  v3 = SecTrustOTASecExperimentCopyAsset(&cf);
  if (v3)
  {
    name = [(SecExperiment *)self name];
    v5 = [v3 valueForKey:name];
  }

  else
  {
    v5 = 0;
  }

  v6 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v6);
  }

  return v5;
}

- (id)copyExperimentConfigurationFromUserDefaults
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (standardUserDefaults)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kSecExperimentDefaultsDomain];
    v5 = [standardUserDefaults persistentDomainForName:v4];
    v6 = [v5 mutableCopy];

    if (v6)
    {
      name = [(SecExperiment *)self name];
      v8 = [v6 objectForKeyedSubscript:name];

      if (v8)
      {
        v8 = [v6 objectForKeyedSubscript:name];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isSamplingDisabled
{
  samplingDisabled = [(SecExperiment *)self samplingDisabled];

  return [(SecExperiment *)self isSamplingDisabledWithDefault:samplingDisabled];
}

- (BOOL)isSamplingDisabledWithDefault:(BOOL)default
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (standardUserDefaults)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kSecExperimentDefaultsDomain];
    v6 = [standardUserDefaults persistentDomainForName:v5];
    v7 = [v6 mutableCopy];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableSampling"];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        v10 = [v7 objectForKeyedSubscript:v8];
        default = [v10 BOOLValue];
      }
    }
  }

  return default;
}

- (BOOL)experimentIsAllowedForProcess
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x3032000000;
  v5[3] = __Block_byref_object_copy_;
  v5[4] = __Block_byref_object_dispose_;
  v6 = &unk_1EFAAC5E0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SecExperiment_experimentIsAllowedForProcess__block_invoke;
  block[3] = &unk_1E70E1270;
  block[4] = v5;
  if (experimentIsAllowedForProcess_onceToken != -1)
  {
    dispatch_once(&experimentIsAllowedForProcess_onceToken, block);
  }

  v2 = experimentIsAllowedForProcess_isAllowed;
  _Block_object_dispose(v5, 8);

  return v2;
}

void __46__SecExperiment_experimentIsAllowedForProcess__block_invoke()
{
  getpid();
  if (!csops())
  {
    experimentIsAllowedForProcess_isAllowed = 1;
  }
}

uint64_t __46__SecExperiment_experimentIsAllowedForProcess__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isEqualToString:*(a1 + 32)];
  if (result)
  {
    experimentIsAllowedForProcess_isAllowed = 1;
    *a4 = 1;
  }

  return result;
}

- (SecExperiment)initWithName:(const char *)name
{
  selfCopy2 = name;
  if (name)
  {
    v7.receiver = self;
    v7.super_class = SecExperiment;
    self = [(SecExperiment *)&v7 init];
    if (self)
    {
      selfCopy = self;
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:selfCopy2];
      [(SecExperiment *)selfCopy setName:v5];

      self = selfCopy;
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

@end