@interface CKMergeableDeltaMetadataReplacementValues
- (CKMergeableDeltaMetadataReplacementValues)init;
- (id)description;
@end

@implementation CKMergeableDeltaMetadataReplacementValues

- (CKMergeableDeltaMetadataReplacementValues)init
{
  v8.receiver = self;
  v8.super_class = CKMergeableDeltaMetadataReplacementValues;
  v2 = [(CKMergeableDeltaMetadataReplacementValues *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    replacementDeltaMetadatas = v2->_replacementDeltaMetadatas;
    v2->_replacementDeltaMetadatas = v3;

    v5 = objc_opt_new();
    removableDeltaMetadatas = v2->_removableDeltaMetadatas;
    v2->_removableDeltaMetadatas = v5;
  }

  return v2;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  objc_msgSend_appendFormat_(v3, v6, @"<%@ %p;", v5, self);

  v9 = objc_msgSend_replacementDeltaMetadatas(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_replacementDeltaMetadatas(self, v13, v14);
    objc_msgSend_appendFormat_(v3, v16, @" replacementDeltaMetadatas=%@", v15);
  }

  v17 = objc_msgSend_removableDeltaMetadatas(self, v13, v14);
  v20 = objc_msgSend_count(v17, v18, v19);

  if (v20)
  {
    v23 = objc_msgSend_removableDeltaMetadatas(self, v21, v22);
    objc_msgSend_appendFormat_(v3, v24, @", removableDeltaMetadatas=%@", v23);
  }

  v25 = objc_msgSend_updatedNextDeltaMetadata(self, v21, v22);

  if (v25)
  {
    v28 = objc_msgSend_updatedNextDeltaMetadata(self, v26, v27);
    objc_msgSend_appendFormat_(v3, v29, @", updatedNextDeltaMetadata=%@", v28);
  }

  objc_msgSend_appendFormat_(v3, v26, @">");

  return v3;
}

@end