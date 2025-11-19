@interface CKTuple5
- (BOOL)isEqual:(id)a3;
- (CKTuple5)initWithObject1:(id)a3 object2:(id)a4 object3:(id)a5 object4:(id)a6 object5:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation CKTuple5

- (CKTuple5)initWithObject1:(id)a3 object2:(id)a4 object3:(id)a5 object4:(id)a6 object5:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = CKTuple5;
  v17 = [(CKTuple5 *)&v25 init];
  v19 = v17;
  if (v17)
  {
    objc_msgSend_setV1_(v17, v18, v12);
    objc_msgSend_setV2_(v19, v20, v13);
    objc_msgSend_setV3_(v19, v21, v14);
    objc_msgSend_setV4_(v19, v22, v15);
    objc_msgSend_setV5_(v19, v23, v16);
  }

  return v19;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_15;
      }

      v3 = objc_msgSend_v2(self, a2, 1);
    }

    else
    {
      v3 = objc_msgSend_v1(self, a2, 0);
    }
  }

  else
  {
    switch(a3)
    {
      case 2uLL:
        v3 = objc_msgSend_v3(self, a2, 2);
        break;
      case 3uLL:
        v3 = objc_msgSend_v4(self, a2, 3);
        break;
      case 4uLL:
        v3 = objc_msgSend_v5(self, a2, 4);
        break;
      default:
LABEL_15:
        v6 = [CKException alloc];
        v8 = objc_msgSend_initWithCode_format_(v6, v7, 12, @"Invalid tuple index: %lu", a3);
        objc_exception_throw(v8);
    }
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
  v22 = objc_msgSend_v4(self, v20, v21);
  v25 = v13 ^ v19 ^ objc_msgSend_hash(v22, v23, v24);
  v28 = objc_msgSend_v5(self, v26, v27);
  v31 = objc_msgSend_hash(v28, v29, v30);

  return v25 ^ v31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v40 = 1;
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
        goto LABEL_10;
      }

      v15 = objc_msgSend_v2(self, v13, v14);
      v18 = objc_msgSend_v2(v5, v16, v17);
      v19 = CKObjectsAreBothNilOrEqual(v15, v18);

      if (!v19)
      {
        goto LABEL_10;
      }

      v22 = objc_msgSend_v3(self, v20, v21);
      v25 = objc_msgSend_v3(v5, v23, v24);
      v26 = CKObjectsAreBothNilOrEqual(v22, v25);

      if (!v26)
      {
        goto LABEL_10;
      }

      v29 = objc_msgSend_v4(self, v27, v28);
      v32 = objc_msgSend_v4(v5, v30, v31);
      v33 = CKObjectsAreBothNilOrEqual(v29, v32);

      if (v33)
      {
        v36 = objc_msgSend_v5(self, v34, v35);
        v39 = objc_msgSend_v5(v5, v37, v38);
        v40 = CKObjectsAreBothNilOrEqual(v36, v39);
      }

      else
      {
LABEL_10:
        v40 = 0;
      }
    }

    else
    {
      v40 = 0;
    }
  }

  return v40;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_msgSend_v1(self, a2, a3);
  if (!objc_msgSend_conformsToProtocol_(v4, v5, &unk_1EFA87B00))
  {
    goto LABEL_10;
  }

  v8 = objc_msgSend_v2(self, v6, v7);
  if (!objc_msgSend_conformsToProtocol_(v8, v9, &unk_1EFA87B00))
  {
LABEL_9:

LABEL_10:
LABEL_11:
    v56 = [CKException alloc];
    v58 = objc_msgSend_initWithCode_format_(v56, v57, 12, @"Tuple value does not conform to NSCopying");
    objc_exception_throw(v58);
  }

  v12 = objc_msgSend_v3(self, v10, v11);
  if (!objc_msgSend_conformsToProtocol_(v12, v13, &unk_1EFA87B00))
  {
LABEL_8:

    goto LABEL_9;
  }

  v16 = objc_msgSend_v4(self, v14, v15);
  if (!objc_msgSend_conformsToProtocol_(v16, v17, &unk_1EFA87B00))
  {

    goto LABEL_8;
  }

  v20 = objc_msgSend_v5(self, v18, v19);
  v22 = objc_msgSend_conformsToProtocol_(v20, v21, &unk_1EFA87B00);

  if (!v22)
  {
    goto LABEL_11;
  }

  v23 = objc_alloc(objc_opt_class());
  v59 = objc_msgSend_v1(self, v24, v25);
  v28 = objc_msgSend_copy(v59, v26, v27);
  v31 = objc_msgSend_v2(self, v29, v30);
  v34 = objc_msgSend_copy(v31, v32, v33);
  v37 = objc_msgSend_v3(self, v35, v36);
  v40 = objc_msgSend_copy(v37, v38, v39);
  v43 = objc_msgSend_v4(self, v41, v42);
  v46 = objc_msgSend_copy(v43, v44, v45);
  v49 = objc_msgSend_v5(self, v47, v48);
  v52 = objc_msgSend_copy(v49, v50, v51);
  v54 = objc_msgSend_initWithObject1_object2_object3_object4_object5_(v23, v53, v28, v34, v40, v46, v52);

  return v54;
}

@end