@interface CKSQLiteUniquedStringTable
- (id)entryForReferent:(id)referent;
- (id)fetchPrimaryKeyForEntry:(id)entry;
@end

@implementation CKSQLiteUniquedStringTable

- (id)entryForReferent:(id)referent
{
  referentCopy = referent;
  v4 = objc_alloc_init(CKSQLiteUniquedStringTableEntry);
  objc_msgSend_setString_(v4, v5, referentCopy);

  return v4;
}

- (id)fetchPrimaryKeyForEntry:(id)entry
{
  v14[1] = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v14[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v14, 1);
  v11 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v10, v9, entryCopy, &unk_1EFA85D10, off_1EA910E30);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end