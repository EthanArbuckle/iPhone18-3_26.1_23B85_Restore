@interface CKTuple2
- (BOOL)isEqual:(id)a3;
- (CKTuple2)initWithObject1:(id)a3 object2:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation CKTuple2

- (unint64_t)hash
{
  v4 = objc_msgSend_v1(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_v2(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (CKTuple2)initWithObject1:(id)a3 object2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CKTuple2;
  v8 = [(CKTuple2 *)&v13 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setV1_(v8, v9, v6);
    objc_msgSend_setV2_(v10, v11, v7);
  }

  return v10;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 == 1)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v19 = 1;
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

      if (v12)
      {
        v15 = objc_msgSend_v2(self, v13, v14);
        v18 = objc_msgSend_v2(v5, v16, v17);
        v19 = CKObjectsAreBothNilOrEqual(v15, v18);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_v1(self, a2, a3);
  if ((objc_msgSend_conformsToProtocol_(v4, v5, &unk_1EFA87B00) & 1) == 0)
  {

LABEL_5:
    v27 = [CKException alloc];
    v29 = objc_msgSend_initWithCode_format_(v27, v28, 12, @"Tuple value does not conform to NSCopying");
    objc_exception_throw(v29);
  }

  v8 = objc_msgSend_v2(self, v6, v7);
  v10 = objc_msgSend_conformsToProtocol_(v8, v9, &unk_1EFA87B00);

  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_v1(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  v20 = objc_msgSend_v2(self, v18, v19);
  v23 = objc_msgSend_copy(v20, v21, v22);
  v25 = objc_msgSend_initWithObject1_object2_(v11, v24, v17, v23);

  return v25;
}

@end