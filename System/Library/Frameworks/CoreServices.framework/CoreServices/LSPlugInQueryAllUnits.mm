@interface LSPlugInQueryAllUnits
- (void)sort:(BOOL)sort pluginIDs:(id)ds andYield:(id)yield context:(LSContext *)context;
@end

@implementation LSPlugInQueryAllUnits

- (void)sort:(BOOL)sort pluginIDs:(id)ds andYield:(id)yield context:(LSContext *)context
{
  yieldCopy = yield;
  dsCopy = ds;
  v11 = [LSPlugInQueryAllUnitsResult alloc];
  allObjects = [dsCopy allObjects];

  v12 = _LSDatabaseGetCacheGUID(context->db);
  v13 = [(LSPlugInQueryAllUnitsResult *)v11 initWithPlugInUnits:allObjects forDatabaseWithUUID:v12];
  (*(yield + 2))(yieldCopy, v13, 0);
}

@end