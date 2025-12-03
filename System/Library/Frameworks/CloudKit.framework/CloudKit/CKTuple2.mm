@interface CKTuple2
- (BOOL)isEqual:(id)equal;
- (CKTuple2)initWithObject1:(id)object1 object2:(id)object2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)objectAtIndexedSubscript:(unint64_t)subscript;
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

- (CKTuple2)initWithObject1:(id)object1 object2:(id)object2
{
  object1Copy = object1;
  object2Copy = object2;
  v13.receiver = self;
  v13.super_class = CKTuple2;
  v8 = [(CKTuple2 *)&v13 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setV1_(v8, v9, object1Copy);
    objc_msgSend_setV2_(v10, v11, object2Copy);
  }

  return v10;
}

- (id)objectAtIndexedSubscript:(unint64_t)subscript
{
  if (subscript == 1)
  {
    v3 = objc_msgSend_v2(self, a2, 1);
  }

  else
  {
    if (subscript)
    {
      v6 = [CKException alloc];
      v8 = objc_msgSend_initWithCode_format_(v6, v7, 12, @"Invalid tuple index: %lu", subscript);
      objc_exception_throw(v8);
    }

    v3 = objc_msgSend_v1(self, a2, 0);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_msgSend_v1(self, a2, zone);
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