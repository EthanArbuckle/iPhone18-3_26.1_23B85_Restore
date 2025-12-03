@interface RAWTIFFIFDTable
- (RAWTIFFIFDTable)initWithValueBlock:(id)block forwardNamespace:(id)namespace reverseNamespace:(id)reverseNamespace;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
- (id)objectForKeyedSubscript:(id)subscript;
@end

@implementation RAWTIFFIFDTable

- (RAWTIFFIFDTable)initWithValueBlock:(id)block forwardNamespace:(id)namespace reverseNamespace:(id)reverseNamespace
{
  blockCopy = block;
  namespaceCopy = namespace;
  reverseNamespaceCopy = reverseNamespace;
  v23.receiver = self;
  v23.super_class = RAWTIFFIFDTable;
  v11 = [(RAWTIFFIFDTable *)&v23 init];
  v15 = v11;
  if (v11)
  {
    objc_msgSend_setMValueBlock_(v11, v12, blockCopy, v13, v14);
    objc_msgSend_setMNamespace_(v15, v16, namespaceCopy, v17, v18);
    objc_msgSend_setMNamespaceReverse_(v15, v19, reverseNamespaceCopy, v20, v21);
  }

  return v15;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  v4 = (*(self->mValueBlock + 2))();
  objc_opt_class();
  v5 = v4;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, subscript, v8, v9);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  v9 = objc_msgSend_mNamespaceReverse(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, subscriptCopy, v11, v12);

  v17 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"TagID", v15, v16);
  v18 = (*(self->mValueBlock + 2))();
  v23 = objc_msgSend_unsignedIntValue(v17, v19, v20, v21, v22);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v18, v24, v23, v25, v26);

  return v27;
}

@end