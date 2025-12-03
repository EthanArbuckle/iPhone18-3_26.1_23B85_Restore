@interface VCMediaNegotiatorResults
- (VCMediaNegotiatorResults)init;
- (unsigned)maxBandwidthWithArbiterMode:(unsigned __int8)mode connectionType:(int)type;
- (void)addBandwidthConfigurations:(id)configurations;
- (void)dealloc;
@end

@implementation VCMediaNegotiatorResults

- (VCMediaNegotiatorResults)init
{
  v5 = *MEMORY[0x1E69E9840];
  v4.receiver = self;
  v4.super_class = VCMediaNegotiatorResults;
  v2 = [(VCMediaNegotiatorResults *)&v4 init];
  if (v2)
  {
    v2->_remoteUserAgent = @"Viceroy 1.7.0/GK";
    v2->_bandwidthConfigurations = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCMediaNegotiatorResults;
  [(VCMediaNegotiatorResults *)&v3 dealloc];
}

- (void)addBandwidthConfigurations:(id)configurations
{
  bandwidthConfigurations = self->_bandwidthConfigurations;
  allObjects = [configurations allObjects];

  [(NSMutableSet *)bandwidthConfigurations addObjectsFromArray:allObjects];
}

- (unsigned)maxBandwidthWithArbiterMode:(unsigned __int8)mode connectionType:(int)type
{
  modeCopy = mode;
  v19 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  bandwidthConfigurations = self->_bandwidthConfigurations;
  v7 = [(NSMutableSet *)bandwidthConfigurations countByEnumeratingWithState:&v15 objects:v14 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  maxBandwidth = 0;
  v10 = *v16;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v16 != v10)
      {
        objc_enumerationMutation(bandwidthConfigurations);
      }

      v12 = *(*(&v15 + 1) + 8 * i);
      if ([v12 connectionType] == type)
      {
        if ([v12 mode] == modeCopy)
        {
          return [v12 maxBandwidth];
        }

        if ([v12 isDefaultMode])
        {
          maxBandwidth = [v12 maxBandwidth];
        }
      }
    }

    v8 = [(NSMutableSet *)bandwidthConfigurations countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  return maxBandwidth;
}

@end