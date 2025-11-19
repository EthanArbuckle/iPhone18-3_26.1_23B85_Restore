@interface CRLWPRenderingAttributeOverrideController
- (CRLWPRenderingAttributeOverrideController)init;
- (id)overrideWithKey:(id)a3 forStorage:(id)a4;
- (id)overridesForStorage:(id)a3;
- (void)addOverride:(id)a3 forStorage:(id)a4;
- (void)removeAllOverridesForStorage:(id)a3;
- (void)removeOverrideWithKey:(id)a3 forStorage:(id)a4;
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

- (void)addOverride:(id)a3 forStorage:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = self->_map;
  objc_sync_enter(v7);
  v8 = objc_opt_class();
  v9 = [(CRLWPRenderingAttributeOverrideController *)self map];
  v10 = [v9 objectForKey:v6];
  v11 = sub_100013F00(v8, v10);

  if (!v11)
  {
    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = [(CRLWPRenderingAttributeOverrideController *)self map];
    [v12 setObject:v11 forKey:v6];
  }

  v13 = [v14 key];
  [v11 setObject:v14 forKeyedSubscript:v13];

  objc_sync_exit(v7);
}

- (void)removeAllOverridesForStorage:(id)a3
{
  v5 = a3;
  v4 = self->_map;
  objc_sync_enter(v4);
  [(NSMapTable *)self->_map removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (void)removeOverrideWithKey:(id)a3 forStorage:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = self->_map;
  objc_sync_enter(v7);
  v8 = objc_opt_class();
  v9 = [(CRLWPRenderingAttributeOverrideController *)self map];
  v10 = [v9 objectForKey:v6];
  v11 = sub_100013F00(v8, v10);
  [v11 setObject:0 forKeyedSubscript:v12];

  objc_sync_exit(v7);
}

- (id)overrideWithKey:(id)a3 forStorage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->_map;
  objc_sync_enter(v8);
  v9 = [(CRLWPRenderingAttributeOverrideController *)self map];
  v10 = [v9 objectForKey:v7];
  v11 = [v10 objectForKeyedSubscript:v6];

  objc_sync_exit(v8);

  return v11;
}

- (id)overridesForStorage:(id)a3
{
  v4 = a3;
  v5 = self->_map;
  objc_sync_enter(v5);
  v6 = [(NSMapTable *)self->_map objectForKey:v4];
  v7 = [v6 allValues];

  objc_sync_exit(v5);

  return v7;
}

@end