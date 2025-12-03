@interface CKPackageTableEntryEnumerator
- (CKPackageTableEntryEnumerator)initWithPackageTable:(id)table;
- (id)nextObject;
- (id)nextObjectBatch;
@end

@implementation CKPackageTableEntryEnumerator

- (CKPackageTableEntryEnumerator)initWithPackageTable:(id)table
{
  tableCopy = table;
  v9.receiver = self;
  v9.super_class = CKPackageTableEntryEnumerator;
  v6 = [(CKPackageTableEntryEnumerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_packageTable, table);
  }

  return v7;
}

- (id)nextObjectBatch
{
  packageTable = self->_packageTable;
  fetchIndex = self->_fetchIndex;
  v12 = 0;
  v5 = objc_msgSend_fetchEntryBatchWithStartingIndex_error_(packageTable, a2, fetchIndex, &v12);
  v8 = v12;
  if (v8)
  {
    objc_msgSend_setEnumerationError_(self, v6, v8);
  }

  else if (objc_msgSend_count(v5, v6, v7))
  {
    self->_fetchIndex += objc_msgSend_count(v5, v9, v10);
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (id)nextObject
{
  v6 = objc_msgSend_nextObject(self->_entryEnumerator, a2, v2);
  if (!v6)
  {
    v7 = objc_msgSend_nextObjectBatch(self, v4, v5);
    v10 = objc_msgSend_objectEnumerator(v7, v8, v9);
    entryEnumerator = self->_entryEnumerator;
    self->_entryEnumerator = v10;

    v6 = objc_msgSend_nextObject(self->_entryEnumerator, v12, v13);
  }

  return v6;
}

@end