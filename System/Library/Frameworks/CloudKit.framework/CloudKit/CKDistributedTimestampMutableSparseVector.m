@interface CKDistributedTimestampMutableSparseVector
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setBackingState:(id)a3;
- (void)addClockValuesInIndexSet:(id)a3 forSiteIdentifier:(id)a4;
- (void)intersectVector:(id)a3;
- (void)minusVector:(id)a3;
- (void)removeClockValuesInIndexSet:(id)a3 forSiteIdentifier:(id)a4;
- (void)unionVector:(id)a3;
@end

@implementation CKDistributedTimestampMutableSparseVector

- (void)_setBackingState:(id)a3
{
  v4 = objc_msgSend_CKDeepCopyWithLeafNodeCopyBlock_(a3, a2, &unk_1EFA2EAE8);
  v8 = objc_msgSend_mutableCopy(v4, v5, v6);

  objc_msgSend___setBackingStateNoCopy_(self, v7, v8);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  objc_sync_enter(v3);
  v4 = objc_opt_new();
  v7 = objc_msgSend_clockValues(v3, v5, v6);
  objc_msgSend__setBackingState_(v4, v8, v7);

  objc_sync_exit(v3);
  return v4;
}

- (void)minusVector:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v4;
  objc_sync_enter(v6);
  if (objc_msgSend_timestampCount(v5, v7, v8) && objc_msgSend_timestampCount(v6, v9, v10))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_188556A5C;
    v11[3] = &unk_1E70BD330;
    v11[4] = v5;
    v12 = v6;
    sub_18843D0DC(v5, v12, v11);
  }

  objc_sync_exit(v6);

  objc_sync_exit(v5);
}

- (void)intersectVector:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v4;
  objc_sync_enter(v6);
  if (objc_msgSend_timestampCount(v5, v7, v8) && objc_msgSend_timestampCount(v6, v9, v10))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_188556CD4;
    v14[3] = &unk_1E70BD330;
    v14[4] = v5;
    v15 = v6;
    sub_18843D0DC(v5, v15, v14);
  }

  else
  {
    v11 = objc_msgSend_clockValues(v5, v9, v10);
    objc_msgSend_removeAllObjects(v11, v12, v13);
  }

  objc_sync_exit(v6);

  objc_sync_exit(v5);
}

- (void)unionVector:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_188556ED4;
  v6[3] = &unk_1E70BD330;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  sub_18843D0DC(self, v5, v6);
}

- (void)addClockValuesInIndexSet:(id)a3 forSiteIdentifier:(id)a4
{
  v26 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (objc_msgSend_count(v26, v8, v9))
  {
    v12 = objc_msgSend_clockValues(v7, v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v6);

    v17 = objc_msgSend_clockValues(v7, v15, v16);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, v6);

    if (!v19)
    {
      v21 = objc_opt_new();

      v24 = objc_msgSend_clockValues(v7, v22, v23);
      objc_msgSend_setObject_forKeyedSubscript_(v24, v25, v21, v6);

      v14 = v21;
    }

    objc_msgSend_addIndexes_(v14, v20, v26);
  }

  objc_sync_exit(v7);
}

- (void)removeClockValuesInIndexSet:(id)a3 forSiteIdentifier:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  if (objc_msgSend_count(v22, v8, v9))
  {
    v12 = objc_msgSend_clockValues(v7, v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v6);

    objc_msgSend_removeIndexes_(v14, v15, v22);
    if (!objc_msgSend_count(v14, v16, v17))
    {
      v20 = objc_msgSend_clockValues(v7, v18, v19);
      objc_msgSend_setObject_forKeyedSubscript_(v20, v21, 0, v6);
    }
  }

  objc_sync_exit(v7);
}

@end