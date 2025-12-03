@interface BCRemoteManagedObjectIDChanges
- (BCRemoteManagedObjectIDChanges)initWithAdded:(id)added updated:(id)updated deleted:(id)deleted context:(id)context;
- (id)description;
@end

@implementation BCRemoteManagedObjectIDChanges

- (BCRemoteManagedObjectIDChanges)initWithAdded:(id)added updated:(id)updated deleted:(id)deleted context:(id)context
{
  addedCopy = added;
  updatedCopy = updated;
  deletedCopy = deleted;
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = BCRemoteManagedObjectIDChanges;
  v14 = [(BCRemoteManagedObjectIDChanges *)&v22 init];
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

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  addedObjects = [(BCRemoteManagedObjectIDChanges *)self addedObjects];
  bu_prettyDescription = [addedObjects bu_prettyDescription];
  updatedObjects = [(BCRemoteManagedObjectIDChanges *)self updatedObjects];
  bu_prettyDescription2 = [updatedObjects bu_prettyDescription];
  deletedObjects = [(BCRemoteManagedObjectIDChanges *)self deletedObjects];
  bu_prettyDescription3 = [deletedObjects bu_prettyDescription];
  v11 = [NSString stringWithFormat:@"<%@:%p added:%@ updated:%@ deleted:%@>", v4, self, bu_prettyDescription, bu_prettyDescription2, bu_prettyDescription3];

  return v11;
}

@end