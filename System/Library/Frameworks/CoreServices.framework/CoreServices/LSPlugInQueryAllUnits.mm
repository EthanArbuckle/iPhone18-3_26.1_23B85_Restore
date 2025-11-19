@interface LSPlugInQueryAllUnits
- (void)sort:(BOOL)a3 pluginIDs:(id)a4 andYield:(id)a5 context:(LSContext *)a6;
@end

@implementation LSPlugInQueryAllUnits

- (void)sort:(BOOL)a3 pluginIDs:(id)a4 andYield:(id)a5 context:(LSContext *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = [LSPlugInQueryAllUnitsResult alloc];
  v14 = [v10 allObjects];

  v12 = _LSDatabaseGetCacheGUID(a6->db);
  v13 = [(LSPlugInQueryAllUnitsResult *)v11 initWithPlugInUnits:v14 forDatabaseWithUUID:v12];
  (*(a5 + 2))(v9, v13, 0);
}

@end