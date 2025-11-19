@interface BCManagedObjectIDChanges
- (BCManagedObjectIDChanges)initWithAdded:(id)a3 updated:(id)a4 deleted:(id)a5 context:(id)a6;
@end

@implementation BCManagedObjectIDChanges

- (BCManagedObjectIDChanges)initWithAdded:(id)a3 updated:(id)a4 deleted:(id)a5 context:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = BCManagedObjectIDChanges;
  v14 = [(BCManagedObjectIDChanges *)&v22 init];
  if (v14)
  {
    v15 = [v10 copy];
    addedObjects = v14->_addedObjects;
    v14->_addedObjects = v15;

    v17 = [v11 copy];
    updatedObjects = v14->_updatedObjects;
    v14->_updatedObjects = v17;

    v19 = [v12 copy];
    deletedObjects = v14->_deletedObjects;
    v14->_deletedObjects = v19;

    objc_storeStrong(&v14->_context, a6);
  }

  return v14;
}

@end