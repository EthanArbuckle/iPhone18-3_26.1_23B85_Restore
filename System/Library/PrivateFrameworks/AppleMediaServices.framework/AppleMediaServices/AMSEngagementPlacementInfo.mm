@interface AMSEngagementPlacementInfo
- (AMSEngagementPlacementInfo)initWithPlacement:(id)placement context:(id)context;
- (id)makeRawDictionary;
@end

@implementation AMSEngagementPlacementInfo

- (id)makeRawDictionary
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  placement = [(AMSEngagementPlacementInfo *)self placement];
  [dictionary setObject:placement forKeyedSubscript:@"placement"];

  context = [(AMSEngagementPlacementInfo *)self context];

  v6 = MEMORY[0x1E695DF90];
  if (context)
  {
    context2 = [(AMSEngagementPlacementInfo *)self context];
    dictionary2 = [v6 dictionaryWithDictionary:context2];
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  }

  if ([(AMSEngagementPlacementInfo *)self supportsMultipleMessages])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[AMSEngagementPlacementInfo supportsMultipleMessages](self, "supportsMultipleMessages")}];
    [dictionary2 setObject:v9 forKeyedSubscript:@"supportsMultipleMessages"];
  }

  if ([dictionary2 count])
  {
    v10 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary2];
    [dictionary setObject:v10 forKeyedSubscript:@"context"];
  }

  v11 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];

  return v11;
}

- (AMSEngagementPlacementInfo)initWithPlacement:(id)placement context:(id)context
{
  placementCopy = placement;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = AMSEngagementPlacementInfo;
  v9 = [(AMSEngagementPlacementInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_placement, placement);
    objc_storeStrong(&v10->_context, context);
    v10->_supportsMultipleMessages = 0;
  }

  return v10;
}

@end