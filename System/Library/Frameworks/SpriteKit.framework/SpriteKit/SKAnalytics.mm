@interface SKAnalytics
+ (id)instance;
- (id)getBundleID;
@end

@implementation SKAnalytics

+ (id)instance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__SKAnalytics_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (instance_dispatcher != -1)
  {
    dispatch_once(&instance_dispatcher, block);
  }

  v2 = instance_sharedInstance;

  return v2;
}

void __23__SKAnalytics_instance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = instance_sharedInstance;
  instance_sharedInstance = v1;
}

- (id)getBundleID
{
  bundleID = self->_bundleID;
  if (!bundleID)
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = self->_bundleID;
    self->_bundleID = v5;

    bundleID = self->_bundleID;
    if (!bundleID)
    {
      v7 = [MEMORY[0x277CCAC38] processInfo];
      v8 = [v7 processName];
      v9 = self->_bundleID;
      self->_bundleID = v8;

      bundleID = self->_bundleID;
    }
  }

  return bundleID;
}

id __40__SKAnalytics_sendAnalyticsDataWithKey___block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CBEB38];
  v6 = @"bundleID";
  v2 = [*(a1 + 32) getBundleID];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v1 dictionaryWithDictionary:v3];

  return v4;
}

@end