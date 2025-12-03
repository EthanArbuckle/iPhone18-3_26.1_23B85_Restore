@interface CRLWPRenderingAttributeOverrideController
- (CRLWPRenderingAttributeOverrideController)init;
- (id)overrideWithKey:(id)key forStorage:(id)storage;
- (id)overridesForStorage:(id)storage;
- (void)addOverride:(id)override forStorage:(id)storage;
- (void)removeAllOverridesForStorage:(id)storage;
- (void)removeOverrideWithKey:(id)key forStorage:(id)storage;
- (void)reset;
@end

@implementation CRLWPRenderingAttributeOverrideController

- (CRLWPRenderingAttributeOverrideController)init
{
  v6.receiver = self;
  v6.super_class = CRLWPRenderingAttributeOverrideController;
  v2 = [(CRLWPRenderingAttributeOverrideController *)&v6 init];
  if (v2)
  {
    v3 = +[NSMapTable weakToStrongObjectsMapTable];
    map = v2->_map;
    v2->_map = v3;
  }

  return v2;
}

- (void)reset
{
  obj = self->_map;
  objc_sync_enter(obj);
  [(NSMapTable *)self->_map removeAllObjects];
  objc_sync_exit(obj);
}

- (void)addOverride:(id)override forStorage:(id)storage
{
  overrideCopy = override;
  storageCopy = storage;
  v7 = self->_map;
  objc_sync_enter(v7);
  v8 = objc_opt_class();
  v9 = [(CRLWPRenderingAttributeOverrideController *)self map];
  v10 = [v9 objectForKey:storageCopy];
  v11 = sub_100013F00(v8, v10);

  if (!v11)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = [(CRLWPRenderingAttributeOverrideController *)self map];
    [v12 setObject:v11 forKey:storageCopy];
  }

  v13 = [overrideCopy key];
  [v11 setObject:overrideCopy forKeyedSubscript:v13];

  objc_sync_exit(v7);
}

- (void)removeAllOverridesForStorage:(id)storage
{
  storageCopy = storage;
  v4 = self->_map;
  objc_sync_enter(v4);
  [(NSMapTable *)self->_map removeObjectForKey:storageCopy];
  objc_sync_exit(v4);
}

- (void)removeOverrideWithKey:(id)key forStorage:(id)storage
{
  keyCopy = key;
  storageCopy = storage;
  v7 = self->_map;
  objc_sync_enter(v7);
  v8 = objc_opt_class();
  v9 = [(CRLWPRenderingAttributeOverrideController *)self map];
  v10 = [v9 objectForKey:storageCopy];
  v11 = sub_100013F00(v8, v10);
  [v11 setObject:0 forKeyedSubscript:keyCopy];

  objc_sync_exit(v7);
}

- (id)overrideWithKey:(id)key forStorage:(id)storage
{
  keyCopy = key;
  storageCopy = storage;
  v8 = self->_map;
  objc_sync_enter(v8);
  v9 = [(CRLWPRenderingAttributeOverrideController *)self map];
  v10 = [v9 objectForKey:storageCopy];
  v11 = [v10 objectForKeyedSubscript:keyCopy];

  objc_sync_exit(v8);

  return v11;
}

- (id)overridesForStorage:(id)storage
{
  storageCopy = storage;
  v5 = self->_map;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)self->_map objectForKey:storageCopy];
  allValues = [v6 allValues];

  objc_sync_exit(v5);

  return allValues;
}

@end