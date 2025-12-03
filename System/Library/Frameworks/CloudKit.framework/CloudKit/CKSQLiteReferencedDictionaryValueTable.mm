@interface CKSQLiteReferencedDictionaryValueTable
- (id)fetchPrimaryKeyForEntry:(id)entry;
- (id)tableForReferenceProperty:(id)property;
@end

@implementation CKSQLiteReferencedDictionaryValueTable

- (id)tableForReferenceProperty:(id)property
{
  propertyCopy = property;
  if ((objc_msgSend_isEqualToString_(propertyCopy, v5, @"key") & 1) != 0 || objc_msgSend_isEqualToString_(propertyCopy, v6, @"value"))
  {
    v8 = objc_msgSend_tableGroup(self, v6, v7);
    v10 = objc_msgSend_singletonInstanceInGroup_(CKSQLiteUniquedStringTable, v9, v8);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKSQLiteReferencedDictionaryValueTable;
    v10 = [(CKSQLiteTable *)&v12 tableForReferenceProperty:propertyCopy];
  }

  return v10;
}

- (id)fetchPrimaryKeyForEntry:(id)entry
{
  v14[1] = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v14[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v14, 1);
  v11 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v10, v9, entryCopy, &unk_1EFA85DA0, off_1EA910EA8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end