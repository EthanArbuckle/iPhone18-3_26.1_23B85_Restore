@interface BCManagedObjectIDChanges
- (BCManagedObjectIDChanges)initWithAdded:(id)added updated:(id)updated deleted:(id)deleted context:(id)context;
@end

@implementation BCManagedObjectIDChanges

- (BCManagedObjectIDChanges)initWithAdded:(id)added updated:(id)updated deleted:(id)deleted context:(id)context
{
  addedCopy = added;
  updatedCopy = updated;
  deletedCopy = deleted;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = BCManagedObjectIDChanges;
  v14 = [(BCManagedObjectIDChanges *)&v22 init];
  if (v14)
  {
    v15 = [addedCopy copy];
    addedObjects = v14->_addedObjects;
    v14->_addedObjects = v15;

    v17 = [updatedCopy copy];
    updatedObjects = v14->_updatedObjects;
    v14->_updatedObjects = v17;

    v19 = [deletedCopy copy];
    deletedObjects = v14->_deletedObjects;
    v14->_deletedObjects = v19;

    objc_storeStrong(&v14->_context, context);
  }

  return v14;
}

@end