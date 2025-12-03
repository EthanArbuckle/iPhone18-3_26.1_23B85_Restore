@interface CKSQLiteContainerIDTable
- (id)entryForReferent:(id)referent;
- (id)fetchPrimaryKeyForEntry:(id)entry;
- (id)referenceWasDeleted:(id)deleted;
- (id)referentForEntry:(id)entry error:(id *)error;
- (id)tableForReferenceProperty:(id)property;
- (void)defaultSearchOrder:(id)order;
@end

@implementation CKSQLiteContainerIDTable

- (id)entryForReferent:(id)referent
{
  referentCopy = referent;
  objc_msgSend_db(self, v5, v6);

  if ((objc_msgSend_matchesContainerID_(self->_cachedEntry, v7, referentCopy) & 1) == 0)
  {
    v8 = [CKContainerIDTableEntry alloc];
    v10 = objc_msgSend_initWithCKContainerID_(v8, v9, referentCopy);
    cachedEntry = self->_cachedEntry;
    self->_cachedEntry = v10;
  }

  v12 = self->_cachedEntry;
  v13 = v12;

  return v12;
}

- (id)referentForEntry:(id)entry error:(id *)error
{
  entryCopy = entry;
  objc_msgSend_db(self, v6, v7);

  v10 = objc_msgSend_containerID(entryCopy, v8, v9);

  return v10;
}

- (id)referenceWasDeleted:(id)deleted
{
  deletedCopy = deleted;
  objc_msgSend_db(self, v5, v6);

  v9 = objc_msgSend_containerIDKey(self->_cachedEntry, v7, v8);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v9, v10, deletedCopy);

  if (isEqualToNumber)
  {
    objc_msgSend_setContainerIDKey_(self->_cachedEntry, v12, 0);
  }

  v15.receiver = self;
  v15.super_class = CKSQLiteContainerIDTable;
  v13 = [(CKSQLiteReferencedObjectTable *)&v15 referenceWasDeleted:deletedCopy];

  return v13;
}

- (id)tableForReferenceProperty:(id)property
{
  propertyCopy = property;
  if (objc_msgSend_isEqualToString_(propertyCopy, v5, @"containerIdentifier"))
  {
    v8 = objc_msgSend_tableGroup(self, v6, v7);
    v10 = objc_msgSend_singletonInstanceInGroup_(CKSQLiteUniquedStringTable, v9, v8);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKSQLiteContainerIDTable;
    v10 = [(CKSQLiteTable *)&v12 tableForReferenceProperty:propertyCopy];
  }

  return v10;
}

- (void)defaultSearchOrder:(id)order
{
  orderCopy = order;
  objc_msgSend_orderAscendingByProperty_(orderCopy, v3, @"containerIdentifier");
  objc_msgSend_orderAscendingByProperty_(orderCopy, v4, @"environment");
}

- (id)fetchPrimaryKeyForEntry:(id)entry
{
  v14[1] = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v14[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v14, 1);
  v11 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v10, v9, entryCopy, &unk_1EFA85DB8, off_1EA911358);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end