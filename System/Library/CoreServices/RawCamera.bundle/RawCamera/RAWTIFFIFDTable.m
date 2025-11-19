@interface RAWTIFFIFDTable
- (RAWTIFFIFDTable)initWithValueBlock:(id)a3 forwardNamespace:(id)a4 reverseNamespace:(id)a5;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (id)objectForKeyedSubscript:(id)a3;
@end

@implementation RAWTIFFIFDTable

- (RAWTIFFIFDTable)initWithValueBlock:(id)a3 forwardNamespace:(id)a4 reverseNamespace:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23.receiver = self;
  v23.super_class = RAWTIFFIFDTable;
  v11 = [(RAWTIFFIFDTable *)&v23 init];
  v15 = v11;
  if (v11)
  {
    objc_msgSend_setMValueBlock_(v11, v12, v8, v13, v14);
    objc_msgSend_setMNamespace_(v15, v16, v9, v17, v18);
    objc_msgSend_setMNamespaceReverse_(v15, v19, v10, v20, v21);
  }

  return v15;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
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
      v5 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, a3, v8, v9);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)objectForKeyedSubscript:(id)a3
{
  v4 = a3;
  v9 = objc_msgSend_mNamespaceReverse(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, v4, v11, v12);

  v17 = objc_msgSend_objectForKeyedSubscript_(v13, v14, @"TagID", v15, v16);
  v18 = (*(self->mValueBlock + 2))();
  v23 = objc_msgSend_unsignedIntValue(v17, v19, v20, v21, v22);
  v27 = objc_msgSend_objectAtIndexedSubscript_(v18, v24, v23, v25, v26);

  return v27;
}

@end