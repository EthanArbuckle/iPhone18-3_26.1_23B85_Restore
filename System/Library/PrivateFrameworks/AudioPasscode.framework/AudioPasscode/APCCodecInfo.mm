@interface APCCodecInfo
+ (BOOL)isSupportedCodecCapability:(id)capability;
+ (BOOL)isSupportedCodecConfiguration:(id)configuration;
+ (Class)configurationClassForName:(id)name;
+ (id)supportedConfigurationClasses;
+ (id)supportedDecoders;
+ (id)supportedEncoders;
@end

@implementation APCCodecInfo

+ (id)supportedDecoders
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(EchoCodecCapability);
  v3 = objc_alloc_init(NullCodecCapability);
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)supportedEncoders
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(EchoCodecCapability);
  v3 = objc_alloc_init(NullCodecCapability);
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)supportedConfigurationClasses
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];
  [v2 addObject:objc_opt_class()];

  return v2;
}

+ (Class)configurationClassForName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = +[APCCodecInfo supportedConfigurationClasses];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = objc_alloc_init(v8);
        algorithmName = [v9 algorithmName];
        v11 = [algorithmName isEqualToString:nameCopy];

        if (v11)
        {
          v12 = v8;

          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  if ([nameCopy isEqualToString:@"default"])
  {
    v12 = objc_opt_class();
  }

  else
  {
    v12 = 0;
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (BOOL)isSupportedCodecCapability:(id)capability
{
  capabilityCopy = capability;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

+ (BOOL)isSupportedCodecConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 0;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

@end