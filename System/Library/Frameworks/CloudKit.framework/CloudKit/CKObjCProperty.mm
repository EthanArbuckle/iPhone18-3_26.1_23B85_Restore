@interface CKObjCProperty
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation CKObjCProperty

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v17.receiver = self;
  v17.super_class = CKObjCProperty;
  v4 = [(CKObjCProperty *)&v17 description];
  v7 = objc_msgSend_name(self, v5, v6);
  v10 = objc_msgSend_type(self, v8, v9);
  v13 = objc_msgSend_name(v10, v11, v12);
  v15 = objc_msgSend_stringWithFormat_(v3, v14, @"<%@: %@ (%@)>", v4, v7, v13);

  return v15;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self)
    {
      v5 = compareCopy;
      v8 = objc_msgSend_name(self, v6, v7);
      v11 = objc_msgSend_name(v5, v9, v10);

      self = objc_msgSend_compare_(v8, v12, v11);
    }
  }

  else
  {
    self = -1;
  }

  return self;
}

@end