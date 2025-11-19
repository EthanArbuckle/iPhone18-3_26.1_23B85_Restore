@interface CKDistributedTimestampSparseVector
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (CKDistributedTimestampSparseVector)init;
- (CKDistributedTimestampSparseVector)initWithCoder:(id)a3;
- (id)allSiteIdentifiers;
- (id)clockValuesForSiteIdentifier:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)vectorFilteredByModifier:(id)a3;
- (id)vectorFilteredBySiteIdentifiers:(id)a3;
- (unint64_t)hash;
- (unint64_t)timestampCount;
- (unint64_t)timestampCountForSiteIdentifier:(id)a3;
- (void)_setBackingState:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDistributedTimestampSparseVector

- (id)allSiteIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x1E695DFD8];
  v6 = objc_msgSend_clockValues(v2, v4, v5);
  v9 = objc_msgSend_allKeys(v6, v7, v8);
  v11 = objc_msgSend_setWithArray_(v3, v10, v9);

  objc_sync_exit(v2);

  return v11;
}

- (CKDistributedTimestampSparseVector)init
{
  v6.receiver = self;
  v6.super_class = CKDistributedTimestampSparseVector;
  v2 = [(CKDistributedTimestampSparseVector *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    objc_msgSend__setBackingState_(v2, v4, v3);
  }

  return v2;
}

- (unint64_t)timestampCount
{
  v2 = self;
  objc_sync_enter(v2);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = objc_msgSend_clockValues(v2, v3, v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_18843D3DC;
  v9[3] = &unk_1E70BD2C0;
  v9[4] = &v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v9);

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  objc_sync_exit(v2);

  return v7;
}

+ (void)initialize
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v7[0] = objc_opt_class();
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v4, v7, 1);
  sub_1886CEE50(a1, v3, v5, 0, 1);

  v6 = *MEMORY[0x1E69E9840];
}

- (CKDistributedTimestampSparseVector)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKDistributedTimestampSparseVector;
  v5 = [(CKDistributedTimestampSparseVector *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v6, v12, v7, v8, v9, v10, v11, 0);
    v14 = NSStringFromSelector(sel_clockValues);
    v16 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v15, v13, v14);

    objc_msgSend__setBackingState_(v5, v17, v16);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_clockValues(v5, v6, v7);
  v9 = NSStringFromSelector(sel_clockValues);
  objc_msgSend_encodeObject_forKey_(v11, v10, v8, v9);

  objc_sync_exit(v5);
  objc_autoreleasePoolPop(v4);
}

- (void)_setBackingState:(id)a3
{
  v5 = objc_msgSend_CKDeepCopy(a3, a2, a3);
  objc_msgSend___setBackingStateNoCopy_(self, v4, v5);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = objc_opt_new();
  v7 = objc_msgSend_clockValues(v3, v5, v6);
  objc_msgSend__setBackingState_(v4, v8, v7);

  objc_sync_exit(v3);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    isEqual = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self;
      objc_sync_enter(v6);
      v7 = v5;
      objc_sync_enter(v7);
      v10 = objc_msgSend_clockValues(v6, v8, v9);
      v15 = objc_msgSend_clockValues(v7, v11, v12);
      if (v10 == v15)
      {
        isEqual = 1;
      }

      else
      {
        v16 = objc_msgSend_clockValues(v6, v13, v14);
        v19 = objc_msgSend_clockValues(v7, v17, v18);
        isEqual = objc_msgSend_isEqual_(v16, v20, v19);
      }

      objc_sync_exit(v7);
      objc_sync_exit(v6);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

- (unint64_t)hash
{
  v2 = self;
  objc_sync_enter(v2);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = objc_msgSend_clockValues(v2, v3, v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188556098;
  v9[3] = &unk_1E70BD2C0;
  v9[4] = &v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v9);

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  objc_sync_exit(v2);

  return v7;
}

- (unint64_t)timestampCountForSiteIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_clockValues(v5, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v4);
  v13 = objc_msgSend_count(v10, v11, v12);

  objc_sync_exit(v5);
  return v13;
}

- (id)clockValuesForSiteIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_clockValues(v5, v6, v7);
  v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, v4);

  v13 = objc_msgSend_copy(v10, v11, v12);
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;

  objc_sync_exit(v5);

  return v16;
}

- (id)vectorFilteredBySiteIdentifiers:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_opt_new();
  v9 = objc_msgSend_clockValues(v5, v7, v8);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_188556464;
  v20 = &unk_1E70BD2E8;
  v10 = v4;
  v21 = v10;
  v11 = v6;
  v22 = v11;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v12, &v17);

  v15 = objc_msgSend_copy(v11, v13, v14, v17, v18, v19, v20);
  objc_sync_exit(v5);

  return v15;
}

- (id)vectorFilteredByModifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_opt_new();
  v9 = objc_msgSend_clockValues(v5, v7, v8);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1885566AC;
  v20 = &unk_1E70BD2E8;
  v10 = v4;
  v21 = v10;
  v11 = v6;
  v22 = v11;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v12, &v17);

  v15 = objc_msgSend_copy(v11, v13, v14, v17, v18, v19, v20);
  objc_sync_exit(v5);

  return v15;
}

@end