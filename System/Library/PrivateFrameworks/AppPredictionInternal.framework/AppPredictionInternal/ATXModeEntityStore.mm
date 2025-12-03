@interface ATXModeEntityStore
- (ATXModeEntityStore)init;
- (ATXModeEntityStore)initWithModeMetadataConstants:(id)constants;
- (id)appEntityForBundleId:(id)id;
@end

@implementation ATXModeEntityStore

- (ATXModeEntityStore)init
{
  v3 = objc_opt_new();
  v4 = [(ATXModeEntityStore *)self initWithModeMetadataConstants:v3];

  return v4;
}

- (ATXModeEntityStore)initWithModeMetadataConstants:(id)constants
{
  constantsCopy = constants;
  v10.receiver = self;
  v10.super_class = ATXModeEntityStore;
  v6 = [(ATXModeEntityStore *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    entityStore = v6->_entityStore;
    v6->_entityStore = v7;

    objc_storeStrong(&v6->_modeMetadataConstants, constants);
  }

  return v6;
}

- (id)appEntityForBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    v5 = [ATXSessionTaggingAppEntity keyForBundleId:idCopy];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [(NSMutableDictionary *)selfCopy->_entityStore objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = [(NSMutableDictionary *)selfCopy->_entityStore objectForKeyedSubscript:v5];
    }

    else
    {
      v8 = [[ATXSessionTaggingAppEntity alloc] initWithBundleId:idCopy modeMetadataConstants:selfCopy->_modeMetadataConstants];
      [(NSMutableDictionary *)selfCopy->_entityStore setObject:v8 forKeyedSubscript:v5];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end