@interface CKSQLiteContainerIDTable
- (id)entryForReferent:(id)a3;
- (id)fetchPrimaryKeyForEntry:(id)a3;
- (id)referenceWasDeleted:(id)a3;
- (id)referentForEntry:(id)a3 error:(id *)a4;
- (id)tableForReferenceProperty:(id)a3;
- (void)defaultSearchOrder:(id)a3;
@end

@implementation CKSQLiteContainerIDTable

- (id)entryForReferent:(id)a3
{
  v4 = a3;
  objc_msgSend_db(self, v5, v6);

  if ((objc_msgSend_matchesContainerID_(self->_cachedEntry, v7, v4) & 1) == 0)
  {
    v8 = [CKContainerIDTableEntry alloc];
    v10 = objc_msgSend_initWithCKContainerID_(v8, v9, v4);
    cachedEntry = self->_cachedEntry;
    self->_cachedEntry = v10;
  }

  v12 = self->_cachedEntry;
  v13 = v12;

  return v12;
}

- (id)referentForEntry:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_msgSend_db(self, v6, v7);

  v10 = objc_msgSend_containerID(v5, v8, v9);

  return v10;
}

- (id)referenceWasDeleted:(id)a3
{
  v4 = a3;
  objc_msgSend_db(self, v5, v6);

  v9 = objc_msgSend_containerIDKey(self->_cachedEntry, v7, v8);
  isEqualToNumber = objc_msgSend_isEqualToNumber_(v9, v10, v4);

  if (isEqualToNumber)
  {
    objc_msgSend_setContainerIDKey_(self->_cachedEntry, v12, 0);
  }

  v15.receiver = self;
  v15.super_class = CKSQLiteContainerIDTable;
  v13 = [(CKSQLiteReferencedObjectTable *)&v15 referenceWasDeleted:v4];

  return v13;
}

- (id)tableForReferenceProperty:(id)a3
{
  v4 = a3;
  if (objc_msgSend_isEqualToString_(v4, v5, @"containerIdentifier"))
  {
    v8 = objc_msgSend_tableGroup(self, v6, v7);
    v10 = objc_msgSend_singletonInstanceInGroup_(CKSQLiteUniquedStringTable, v9, v8);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKSQLiteContainerIDTable;
    v10 = [(CKSQLiteTable *)&v12 tableForReferenceProperty:v4];
  }

  return v10;
}

- (void)defaultSearchOrder:(id)a3
{
  v5 = a3;
  objc_msgSend_orderAscendingByProperty_(v5, v3, @"containerIdentifier");
  objc_msgSend_orderAscendingByProperty_(v5, v4, @"environment");
}

- (id)fetchPrimaryKeyForEntry:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v14[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v14, 1);
  v11 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v10, v9, v4, &unk_1EFA85DB8, off_1EA911358);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end