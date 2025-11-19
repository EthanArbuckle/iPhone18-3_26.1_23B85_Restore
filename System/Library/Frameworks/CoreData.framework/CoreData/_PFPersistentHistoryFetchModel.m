@interface _PFPersistentHistoryFetchModel
+ (id)newFetchHistoryModelForCoordinator:andOptions:;
+ (void)_invalidateStaticCaches;
+ (void)initialize;
@end

@implementation _PFPersistentHistoryFetchModel

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {

    objc_opt_self();
  }
}

+ (void)_invalidateStaticCaches
{
  v2 = historyFetchModel;
  if (historyFetchModel)
  {
    v3 = historyFetchModel;
    atomic_compare_exchange_strong(&historyFetchModel, &v3, 0);
    if (v3 == v2)
    {
    }
  }
}

+ (id)newFetchHistoryModelForCoordinator:andOptions:
{
  v21[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!historyFetchModel)
  {
    v0 = objc_autoreleasePoolPush();
    v1 = [[NSEntityDescription alloc] _initWithName:@"Transaction"];
    v2 = [[NSAttributeDescription alloc] _initWithName:@"author" type:700];
    [v1 _addProperty:v2];

    v3 = [[NSAttributeDescription alloc] _initWithName:@"contextName" type:700];
    [v1 _addProperty:v3];

    v4 = [[NSAttributeDescription alloc] _initWithName:@"bundleID" type:700];
    [v1 _addProperty:v4];

    v5 = [[NSAttributeDescription alloc] _initWithName:@"processID" type:700];
    [v1 _addProperty:v5];

    v6 = [[NSAttributeDescription alloc] _initWithName:@"timestamp" type:900];
    [v1 _addProperty:v6];

    v7 = [[NSAttributeDescription alloc] _initWithName:@"transactionNumber" type:300];
    [v1 _addProperty:v7];

    v8 = [[NSAttributeDescription alloc] _initWithName:@"token" type:300];
    [v1 _addProperty:v8];

    v9 = [[NSEntityDescription alloc] _initWithName:@"Change"];
    v10 = [[NSAttributeDescription alloc] _initWithName:@"changeID" type:300];
    [v9 _addProperty:v10];

    v11 = [[NSAttributeDescription alloc] _initWithName:@"changeType" type:300];
    [v9 _addProperty:v11];

    v12 = [[NSAttributeDescription alloc] _initWithName:@"changedEntity" type:300];
    [v9 _addProperty:v12];

    v13 = objc_alloc_init(NSAttributeDescription);
    [(NSPropertyDescription *)v13 setName:@"changedObjectID"];
    if (v13)
    {
      [(NSPropertyDescription *)v13 _throwIfNotEditable];
      v13->_type = 2000;
    }

    [v9 _addProperty:v13];

    v14 = [[NSRelationshipDescription alloc] _initWithName:@"changes"];
    v15 = [[NSRelationshipDescription alloc] _initWithName:@"transaction"];
    [v15 setDestinationEntity:v1];
    [v15 setInverseRelationship:v14];
    [v14 setDestinationEntity:v9];
    [v14 setInverseRelationship:v15];
    [v15 setMaxCount:1];
    [v15 setMinCount:1];
    [v1 _addProperty:v14];

    [v9 _addProperty:v15];
    [v1 _flattenProperties];
    [v9 _flattenProperties];
    v16 = [NSManagedObjectModel alloc];
    v21[0] = v1;
    v21[1] = v9;
    v17 = -[NSManagedObjectModel _initWithEntities:](v16, "_initWithEntities:", [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2]);
    [v17 _setModelsReferenceIDOffset:{+[_PFPersistentHistoryFetchModel ancillaryEntityOffset](_PFPersistentHistoryFetchModel, "ancillaryEntityOffset")}];
    [v17 _setIsEditable:0];

    objc_autoreleasePoolPop(v0);
    v18 = 0;
    atomic_compare_exchange_strong(&historyFetchModel, &v18, v17);
    if (v18)
    {
    }
  }

  result = historyFetchModel;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

@end