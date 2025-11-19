@interface CKSQLiteReferencedDictionaryValueTable
- (id)fetchPrimaryKeyForEntry:(id)a3;
- (id)tableForReferenceProperty:(id)a3;
@end

@implementation CKSQLiteReferencedDictionaryValueTable

- (id)tableForReferenceProperty:(id)a3
{
  v4 = a3;
  if ((objc_msgSend_isEqualToString_(v4, v5, @"key") & 1) != 0 || objc_msgSend_isEqualToString_(v4, v6, @"value"))
  {
    v8 = objc_msgSend_tableGroup(self, v6, v7);
    v10 = objc_msgSend_singletonInstanceInGroup_(CKSQLiteUniquedStringTable, v9, v8);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = CKSQLiteReferencedDictionaryValueTable;
    v10 = [(CKSQLiteTable *)&v12 tableForReferenceProperty:v4];
  }

  return v10;
}

- (id)fetchPrimaryKeyForEntry:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v14[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v14, 1);
  v11 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v10, v9, v4, &unk_1EFA85DA0, off_1EA910EA8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end