@interface ATXModeEntityStore
- (ATXModeEntityStore)init;
- (ATXModeEntityStore)initWithModeMetadataConstants:(id)a3;
- (id)appEntityForBundleId:(id)a3;
@end

@implementation ATXModeEntityStore

- (ATXModeEntityStore)init
{
  v3 = objc_opt_new();
  v4 = [(ATXModeEntityStore *)self initWithModeMetadataConstants:v3];

  return v4;
}

- (ATXModeEntityStore)initWithModeMetadataConstants:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = ATXModeEntityStore;
  v6 = [(ATXModeEntityStore *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    entityStore = v6->_entityStore;
    v6->_entityStore = v7;

    objc_storeStrong(&v6->_modeMetadataConstants, a3);
  }

  return v6;
}

- (id)appEntityForBundleId:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [ATXSessionTaggingAppEntity keyForBundleId:v4];
    v6 = self;
    objc_sync_enter(v6);
    v7 = [(NSMutableDictionary *)v6->_entityStore objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)v6->_entityStore objectForKeyedSubscript:v5];
    }

    else
    {
      v8 = [[ATXSessionTaggingAppEntity alloc] initWithBundleId:v4 modeMetadataConstants:v6->_modeMetadataConstants];
      [(NSMutableDictionary *)v6->_entityStore setObject:v8 forKeyedSubscript:v5];
    }

    objc_sync_exit(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end