@interface AUHostingServiceInstanceMap
+ (id)sharedInstance;
- (AUHostingServiceInstanceMap)init;
- (id)retrieveInstance:(id)instance;
- (void)registerInstance:(id)instance instance:(id)a4;
- (void)unregisterInstance:(id)instance;
@end

@implementation AUHostingServiceInstanceMap

- (id)retrieveInstance:(id)instance
{
  instanceCopy = instance;
  v5 = self->_instances;
  objc_sync_enter(v5);
  instances = self->_instances;
  uUIDString = [instanceCopy UUIDString];
  v8 = [(NSMutableDictionary *)instances objectForKeyedSubscript:uUIDString];

  objc_sync_exit(v5);

  return v8;
}

- (void)unregisterInstance:(id)instance
{
  instanceCopy = instance;
  v4 = self->_instances;
  objc_sync_enter(v4);
  if (instanceCopy)
  {
    instances = self->_instances;
    uUIDString = [instanceCopy UUIDString];
    [(NSMutableDictionary *)instances removeObjectForKey:uUIDString];
  }

  objc_sync_exit(v4);
}

- (void)registerInstance:(id)instance instance:(id)a4
{
  instanceCopy = instance;
  v6 = a4;
  v7 = self->_instances;
  objc_sync_enter(v7);
  allKeys = [(NSMutableDictionary *)self->_instances allKeys];
  uUIDString = [instanceCopy UUIDString];
  v10 = [allKeys containsObject:uUIDString];

  if (v10)
  {
    std::terminate();
  }

  instances = self->_instances;
  uUIDString2 = [instanceCopy UUIDString];
  [(NSMutableDictionary *)instances setObject:v6 forKeyedSubscript:uUIDString2];

  objc_sync_exit(v7);
}

- (AUHostingServiceInstanceMap)init
{
  v6.receiver = self;
  v6.super_class = AUHostingServiceInstanceMap;
  v2 = [(AUHostingServiceInstanceMap *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    instances = v2->_instances;
    v2->_instances = v3;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (+[AUHostingServiceInstanceMap sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[AUHostingServiceInstanceMap sharedInstance]::onceToken, &__block_literal_global_8445);
  }

  v3 = +[AUHostingServiceInstanceMap sharedInstance]::sSharedInstance;

  return v3;
}

uint64_t __45__AUHostingServiceInstanceMap_sharedInstance__block_invoke()
{
  +[AUHostingServiceInstanceMap sharedInstance]::sSharedInstance = objc_alloc_init(AUHostingServiceInstanceMap);

  return MEMORY[0x1EEE66BB8]();
}

@end