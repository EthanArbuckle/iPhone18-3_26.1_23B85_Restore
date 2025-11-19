@interface SecExperiment
- (BOOL)experimentIsAllowedForProcess;
- (BOOL)isSamplingDisabled;
- (BOOL)isSamplingDisabledWithDefault:(BOOL)a3;
- (NSString)identifier;
- (SecExperiment)initWithName:(const char *)a3;
- (id)copyExperimentConfiguration;
- (id)copyExperimentConfigurationFromUserDefaults;
- (id)copyRandomExperimentConfigurationFromAsset:(id)a3;
- (id)copyRemoteExperimentAsset;
@end

@implementation SecExperiment

- (NSString)identifier
{
  v3 = [(SecExperiment *)self cachedConfig];

  if (v3)
  {
    v4 = [(SecExperiment *)self cachedConfig];
    v5 = [v4 identifier];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyExperimentConfiguration
{
  v3 = [(SecExperiment *)self cachedConfig];

  if (v3)
  {
    [(SecExperiment *)self cachedConfig];
    return objc_claimAutoreleasedReturnValue();
  }

  else
  {
    v5 = [(SecExperiment *)self copyExperimentConfigurationFromUserDefaults];
    if (v5)
    {
      v6 = [[SecExperimentConfig alloc] initWithConfiguration:v5];
      [(SecExperiment *)self setCachedConfig:v6];

      v4 = [(SecExperiment *)self cachedConfig];
    }

    else
    {
      v7 = [(SecExperiment *)self copyRemoteExperimentAsset];
      if (v7)
      {
        v8 = [(SecExperiment *)self copyRandomExperimentConfigurationFromAsset:v7];
        v9 = [[SecExperimentConfig alloc] initWithConfiguration:v8];
        [(SecExperiment *)self setCachedConfig:v9];

        v4 = [(SecExperiment *)self cachedConfig];
      }

      else
      {
        v4 = 0;
      }
    }
  }

  return v4;
}

- (id)copyRandomExperimentConfigurationFromAsset:(id)a3
{
  v3 = [a3 valueForKey:@"ConfigArray"];
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
    v4 = [(SecExperiment *)self name];
    v5 = [v3 valueForKey:v4];
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
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kSecExperimentDefaultsDomain];
    v5 = [v3 persistentDomainForName:v4];
    v6 = [v5 mutableCopy];

    if (v6)
    {
      v7 = [(SecExperiment *)self name];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (v8)
      {
        v8 = [v6 objectForKeyedSubscript:v7];
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
  v3 = [(SecExperiment *)self samplingDisabled];

  return [(SecExperiment *)self isSamplingDisabledWithDefault:v3];
}

- (BOOL)isSamplingDisabledWithDefault:(BOOL)a3
{
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:kSecExperimentDefaultsDomain];
    v6 = [v4 persistentDomainForName:v5];
    v7 = [v6 mutableCopy];

    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"disableSampling"];
      v9 = [v7 objectForKeyedSubscript:v8];

      if (v9)
      {
        v10 = [v7 objectForKeyedSubscript:v8];
        a3 = [v10 BOOLValue];
      }
    }
  }

  return a3;
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

- (SecExperiment)initWithName:(const char *)a3
{
  v3 = a3;
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = SecExperiment;
    self = [(SecExperiment *)&v7 init];
    if (self)
    {
      v4 = self;
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
      [(SecExperiment *)v4 setName:v5];

      self = v4;
      v3 = self;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

@end