@interface VCMediaNegotiatorResults
- (VCMediaNegotiatorResults)init;
- (unsigned)maxBandwidthWithArbiterMode:(unsigned __int8)a3 connectionType:(int)a4;
- (void)addBandwidthConfigurations:(id)a3;
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

- (void)addBandwidthConfigurations:(id)a3
{
  bandwidthConfigurations = self->_bandwidthConfigurations;
  v4 = [a3 allObjects];

  [(NSMutableSet *)bandwidthConfigurations addObjectsFromArray:v4];
}

- (unsigned)maxBandwidthWithArbiterMode:(unsigned __int8)a3 connectionType:(int)a4
{
  v5 = a3;
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
  v9 = 0;
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
      if ([v12 connectionType] == a4)
      {
        if ([v12 mode] == v5)
        {
          return [v12 maxBandwidth];
        }

        if ([v12 isDefaultMode])
        {
          v9 = [v12 maxBandwidth];
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

  return v9;
}

@end