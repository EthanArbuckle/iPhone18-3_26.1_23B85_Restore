@interface NullCodecConfiguration
- (NullCodecConfiguration)init;
- (NullCodecConfiguration)initWithCoder:(id)coder;
- (NullCodecConfiguration)initWithCommandLineArgs:(id)args;
- (id)commandLineOptions;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NullCodecConfiguration

- (NullCodecConfiguration)init
{
  v3.receiver = self;
  v3.super_class = NullCodecConfiguration;
  return [(AUPasscodeCodecConfiguration *)&v3 initWithAlgorithmName:@"null"];
}

- (NullCodecConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = NullCodecConfiguration;
  v5 = [(AUPasscodeCodecConfiguration *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"retrievalCallbackInterval"];
    v5->_retrievalCallbackInterval = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(NullCodecConfiguration *)self retrievalCallbackInterval];
  [coderCopy encodeFloat:@"retrievalCallbackInterval" forKey:?];
  v5.receiver = self;
  v5.super_class = NullCodecConfiguration;
  [(AUPasscodeCodecConfiguration *)&v5 encodeWithCoder:coderCopy];
}

- (id)commandLineOptions
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [AUPasscodeCodecCommandLineOption optionWithSyntax:@"-t [seconds]" description:@"Set the time interval between irrelevant data retrieved handlers"];
  v10[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v9.receiver = self;
  v9.super_class = NullCodecConfiguration;
  commandLineOptions = [(AUPasscodeCodecConfiguration *)&v9 commandLineOptions];
  v6 = [commandLineOptions arrayByAddingObjectsFromArray:v4];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NullCodecConfiguration)initWithCommandLineArgs:(id)args
{
  argsCopy = args;
  v15.receiver = self;
  v15.super_class = NullCodecConfiguration;
  v5 = [(AUPasscodeCodecConfiguration *)&v15 initWithCommandLineArgs:argsCopy];
  v6 = v5;
  if (v5)
  {
    [(NullCodecConfiguration *)v5 setDefaultValues];
    v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v7 setNumberStyle:1];
    v8 = [argsCopy count];
    if ([argsCopy count])
    {
      v9 = 0;
      do
      {
        v10 = [argsCopy objectAtIndex:v9];
        if ([v10 isEqualToString:@"-t"])
        {
          v11 = v8 == 0;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          v12 = [argsCopy objectAtIndex:++v9];
          v13 = [v7 numberFromString:v12];
          v6->_retrievalCallbackInterval = [v13 unsignedIntegerValue];

          --v8;
        }

        --v8;

        ++v9;
      }

      while (v9 < [argsCopy count]);
    }
  }

  return v6;
}

@end