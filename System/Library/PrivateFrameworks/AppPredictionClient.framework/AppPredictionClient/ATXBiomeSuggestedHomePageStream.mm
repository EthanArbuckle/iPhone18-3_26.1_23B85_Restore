@interface ATXBiomeSuggestedHomePageStream
- (ATXBiomeSuggestedHomePageStream)initWithStoreConfig:(id)config;
- (void)sendEvent:(id)event;
@end

@implementation ATXBiomeSuggestedHomePageStream

- (ATXBiomeSuggestedHomePageStream)initWithStoreConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = ATXBiomeSuggestedHomePageStream;
  v5 = [(ATXBiomeSuggestedHomePageStream *)&v11 init];
  if (v5)
  {
    if (configCopy)
    {
      atx_storeConfig = configCopy;
    }

    else
    {
      atx_storeConfig = [MEMORY[0x1E698F130] atx_storeConfig];
    }

    v7 = atx_storeConfig;
    v8 = [objc_alloc(MEMORY[0x1E698F318]) initWithPrivateStreamIdentifier:@"ATXBiomeSuggestedHomePageStream" storeConfig:atx_storeConfig eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  source = [(ATXBiomeSuggestedHomePageStream *)self source];
  [source sendEvent:eventCopy];
}

@end