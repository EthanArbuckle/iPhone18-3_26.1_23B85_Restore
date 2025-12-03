@interface MPAVCompanionEndpointRoutingDataSource
- (id)discoverySessionConfiguration;
- (id)getRoutesForCategory:(id)category;
@end

@implementation MPAVCompanionEndpointRoutingDataSource

- (id)getRoutesForCategory:(id)category
{
  v20 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18.receiver = self;
  v18.super_class = MPAVCompanionEndpointRoutingDataSource;
  [(MPAVEndpointRoutingDataSource *)&v18 getRoutesForCategory:categoryCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 isPhoneRoute])
        {
          [v5 addObject:v11];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [v5 copy];

  return v12;
}

- (id)discoverySessionConfiguration
{
  v3 = [objc_alloc(MEMORY[0x1E69B09C8]) initWithEndpointFeatures:16];
  [v3 setTargetAudioSessionID:{-[MPAVEndpointRoutingDataSource targetSessionID](self, "targetSessionID")}];

  return v3;
}

@end