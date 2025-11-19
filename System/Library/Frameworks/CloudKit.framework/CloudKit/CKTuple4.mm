@interface CKTuple4
- (BOOL)isEqual:(id)a3;
- (CKTuple4)initWithObject1:(id)a3 object2:(id)a4 object3:(id)a5 object4:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation CKTuple4

- (CKTuple4)initWithObject1:(id)a3 object2:(id)a4 object3:(id)a5 object4:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v21.receiver = self;
  v21.super_class = CKTuple4;
  v14 = [(CKTuple4 *)&v21 init];
  v16 = v14;
  if (v14)
  {
    objc_msgSend_setV1_(v14, v15, v10);
    objc_msgSend_setV2_(v16, v17, v11);
    objc_msgSend_setV3_(v16, v18, v12);
    objc_msgSend_setV4_(v16, v19, v13);
  }

  return v16;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = objc_msgSend_v3(self, a2, 2);
    }

    else
    {
      if (a3 != 3)
      {
        goto LABEL_13;
      }

      v3 = objc_msgSend_v4(self, a2, 3);
    }
  }

  else
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v3 = objc_msgSend_v2(self, a2, 1);
        goto LABEL_10;
      }

LABEL_13:
      v6 = [CKException alloc];
      v8 = objc_msgSend_initWithCode_format_(v6, v7, 12, @"Invalid tuple index: %lu", a3);
      objc_exception_throw(v8);
    }

    v3 = objc_msgSend_v1(self, a2, 0);
  }

LABEL_10:

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
  v22 = objc_msgSend_v4(self, v20, v21);
  v25 = v19 ^ objc_msgSend_hash(v22, v23, v24);

  return v13 ^ v25;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v33 = 1;
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

      if (!v12)
      {
        goto LABEL_9;
      }

      v15 = objc_msgSend_v2(self, v13, v14);
      v18 = objc_msgSend_v2(v5, v16, v17);
      v19 = CKObjectsAreBothNilOrEqual(v15, v18);

      if (!v19)
      {
        goto LABEL_9;
      }

      v22 = objc_msgSend_v3(self, v20, v21);
      v25 = objc_msgSend_v3(v5, v23, v24);
      v26 = CKObjectsAreBothNilOrEqual(v22, v25);

      if (v26)
      {
        v29 = objc_msgSend_v4(self, v27, v28);
        v32 = objc_msgSend_v4(v5, v30, v31);
        v33 = CKObjectsAreBothNilOrEqual(v29, v32);
      }

      else
      {
LABEL_9:
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }
  }

  return v33;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_v1(self, a2, a3);
  if (!objc_msgSend_conformsToProtocol_(v4, v5, &unk_1EFA87B00))
  {
    goto LABEL_8;
  }

  v8 = objc_msgSend_v2(self, v6, v7);
  if (!objc_msgSend_conformsToProtocol_(v8, v9, &unk_1EFA87B00))
  {
LABEL_7:

LABEL_8:
LABEL_9:
    v47 = [CKException alloc];
    v49 = objc_msgSend_initWithCode_format_(v47, v48, 12, @"Tuple value does not conform to NSCopying");
    objc_exception_throw(v49);
  }

  v12 = objc_msgSend_v3(self, v10, v11);
  if ((objc_msgSend_conformsToProtocol_(v12, v13, &unk_1EFA87B00) & 1) == 0)
  {

    goto LABEL_7;
  }

  v16 = objc_msgSend_v4(self, v14, v15);
  v18 = objc_msgSend_conformsToProtocol_(v16, v17, &unk_1EFA87B00);

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = objc_alloc(objc_opt_class());
  v22 = objc_msgSend_v1(self, v20, v21);
  v25 = objc_msgSend_copy(v22, v23, v24);
  v28 = objc_msgSend_v2(self, v26, v27);
  v31 = objc_msgSend_copy(v28, v29, v30);
  v34 = objc_msgSend_v3(self, v32, v33);
  v37 = objc_msgSend_copy(v34, v35, v36);
  v40 = objc_msgSend_v4(self, v38, v39);
  v43 = objc_msgSend_copy(v40, v41, v42);
  v45 = objc_msgSend_initWithObject1_object2_object3_object4_(v19, v44, v25, v31, v37, v43);

  return v45;
}

@end