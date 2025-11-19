@interface AMSEngagementMessageEvent
- (AMSEngagementMessageEvent)initWithServiceType:(id)a3 placementInfo:(id)a4;
- (AMSEngagementMessageEvent)initWithServiceType:(id)a3 placements:(id)a4;
- (NSDictionary)engagementData;
@end

@implementation AMSEngagementMessageEvent

- (NSDictionary)engagementData
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8[0] = @"source";
  v8[1] = @"eventType";
  v9[0] = @"AMS";
  v9[1] = @"MessageRequest";
  v8[2] = @"serviceType";
  v3 = [(AMSEngagementMessageEvent *)self serviceType];
  v9[2] = v3;
  v8[3] = @"placements";
  v4 = [(AMSEngagementMessageEvent *)self placementInfo];
  v5 = [v4 ams_mapWithTransform:&__block_literal_global_48];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

- (AMSEngagementMessageEvent)initWithServiceType:(id)a3 placements:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      v13 = 0;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * v13);
        v15 = [AMSEngagementPlacementInfo alloc];
        v16 = [(AMSEngagementPlacementInfo *)v15 initWithPlacement:v14 context:0, v20];
        [v8 addObject:v16];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v17 = [MEMORY[0x1E695DEC8] arrayWithArray:v8];
  v18 = [(AMSEngagementMessageEvent *)self initWithServiceType:v6 placementInfo:v17];

  return v18;
}

- (AMSEngagementMessageEvent)initWithServiceType:(id)a3 placementInfo:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSEngagementMessageEvent;
  v9 = [(AMSEngagementMessageEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_serviceType, a3);
    objc_storeStrong(&v10->_placementInfo, a4);
  }

  return v10;
}

@end