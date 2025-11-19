@interface ATXContextHeuristicsBiomeStream
- (ATXContextHeuristicsBiomeStream)initWithStoreConfig:(id)a3;
@end

@implementation ATXContextHeuristicsBiomeStream

- (ATXContextHeuristicsBiomeStream)initWithStoreConfig:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ATXContextHeuristicsBiomeStream;
  v5 = [(ATXContextHeuristicsBiomeStream *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CF17F8] atx_storeConfig];
    }

    v7 = v6;
    v8 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"contextHeuristics" storeConfig:v6 eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

@end