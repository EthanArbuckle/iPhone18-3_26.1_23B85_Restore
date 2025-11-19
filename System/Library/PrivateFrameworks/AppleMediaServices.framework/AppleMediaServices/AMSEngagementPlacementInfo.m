@interface AMSEngagementPlacementInfo
- (AMSEngagementPlacementInfo)initWithPlacement:(id)a3 context:(id)a4;
- (id)makeRawDictionary;
@end

@implementation AMSEngagementPlacementInfo

- (id)makeRawDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AMSEngagementPlacementInfo *)self placement];
  [v3 setObject:v4 forKeyedSubscript:@"placement"];

  v5 = [(AMSEngagementPlacementInfo *)self context];

  v6 = MEMORY[0x1E695DF90];
  if (v5)
  {
    v7 = [(AMSEngagementPlacementInfo *)self context];
    v8 = [v6 dictionaryWithDictionary:v7];
  }

  else
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
  }

  if ([(AMSEngagementPlacementInfo *)self supportsMultipleMessages])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSEngagementPlacementInfo supportsMultipleMessages](self, "supportsMultipleMessages")}];
    [v8 setObject:v9 forKeyedSubscript:@"supportsMultipleMessages"];
  }

  if ([v8 count])
  {
    v10 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v8];
    [v3 setObject:v10 forKeyedSubscript:@"context"];
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v3];

  return v11;
}

- (AMSEngagementPlacementInfo)initWithPlacement:(id)a3 context:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSEngagementPlacementInfo;
  v9 = [(AMSEngagementPlacementInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placement, a3);
    objc_storeStrong(&v10->_context, a4);
    v10->_supportsMultipleMessages = 0;
  }

  return v10;
}

@end