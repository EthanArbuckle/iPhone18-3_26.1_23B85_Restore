@interface CKTuple3
- (BOOL)isEqual:(id)a3;
- (CKTuple3)initWithObject1:(id)a3 object2:(id)a4 object3:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation CKTuple3

- (CKTuple3)initWithObject1:(id)a3 object2:(id)a4 object3:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = CKTuple3;
  v11 = [(CKTuple3 *)&v17 init];
  v13 = v11;
  if (v11)
  {
    objc_msgSend_setV1_(v11, v12, v8);
    objc_msgSend_setV2_(v13, v14, v9);
    objc_msgSend_setV3_(v13, v15, v10);
  }

  return v13;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 == 2)
  {
    v3 = objc_msgSend_v3(self, a2, 2);
  }

  else if (a3 == 1)
  {
    v3 = objc_msgSend_v2(self, a2, 1);
  }

  else
  {
    if (a3)
    {
      v6 = [CKException alloc];
      v8 = objc_msgSend_initWithCode_format_(v6, v7, 12, @"Invalid tuple index: %lu", a3);
      objc_exception_throw(v8);
    }

    v3 = objc_msgSend_v1(self, a2, 0);
  }

  return v3;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_v1(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_v2(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_v3(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_v1(self, v6, v7);
      v11 = objc_msgSend_v1(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual(v8, v11);

      if (v12 && (objc_msgSend_v2(self, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_v2(v5, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = CKObjectsAreBothNilOrEqual(v15, v18), v18, v15, v19))
      {
        v22 = objc_msgSend_v3(self, v20, v21);
        v25 = objc_msgSend_v3(v5, v23, v24);
        v26 = CKObjectsAreBothNilOrEqual(v22, v25);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_v1(self, a2, a3);
  if (!objc_msgSend_conformsToProtocol_(v4, v5, &unk_1EFA87B00))
  {
    goto LABEL_6;
  }

  v8 = objc_msgSend_v2(self, v6, v7);
  if ((objc_msgSend_conformsToProtocol_(v8, v9, &unk_1EFA87B00) & 1) == 0)
  {

LABEL_6:
LABEL_7:
    v37 = [CKException alloc];
    v39 = objc_msgSend_initWithCode_format_(v37, v38, 12, @"Tuple value does not conform to NSCopying");
    objc_exception_throw(v39);
  }

  v12 = objc_msgSend_v3(self, v10, v11);
  v14 = objc_msgSend_conformsToProtocol_(v12, v13, &unk_1EFA87B00);

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = objc_alloc(objc_opt_class());
  v18 = objc_msgSend_v1(self, v16, v17);
  v21 = objc_msgSend_copy(v18, v19, v20);
  v24 = objc_msgSend_v2(self, v22, v23);
  v27 = objc_msgSend_copy(v24, v25, v26);
  v30 = objc_msgSend_v3(self, v28, v29);
  v33 = objc_msgSend_copy(v30, v31, v32);
  v35 = objc_msgSend_initWithObject1_object2_object3_(v15, v34, v21, v27, v33);

  return v35;
}

@end