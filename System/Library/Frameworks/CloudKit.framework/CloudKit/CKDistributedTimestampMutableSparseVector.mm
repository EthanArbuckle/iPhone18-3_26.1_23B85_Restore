@interface CKDistributedTimestampMutableSparseVector
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setBackingState:(id)state;
- (void)addClockValuesInIndexSet:(id)set forSiteIdentifier:(id)identifier;
- (void)intersectVector:(id)vector;
- (void)minusVector:(id)vector;
- (void)removeClockValuesInIndexSet:(id)set forSiteIdentifier:(id)identifier;
- (void)unionVector:(id)vector;
@end

@implementation CKDistributedTimestampMutableSparseVector

- (void)_setBackingState:(id)state
{
  v4 = objc_msgSend_CKDeepCopyWithLeafNodeCopyBlock_(state, a2, &unk_1EFA2EAE8);
  v8 = objc_msgSend_mutableCopy(v4, v5, v6);

  objc_msgSend___setBackingStateNoCopy_(self, v7, v8);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = objc_opt_new();
  v7 = objc_msgSend_clockValues(selfCopy, v5, v6);
  objc_msgSend__setBackingState_(v4, v8, v7);

  objc_sync_exit(selfCopy);
  return v4;
}

- (void)minusVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = vectorCopy;
  objc_sync_enter(v6);
  if (objc_msgSend_timestampCount(selfCopy, v7, v8) && objc_msgSend_timestampCount(v6, v9, v10))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_188556A5C;
    v11[3] = &unk_1E70BD330;
    v11[4] = selfCopy;
    v12 = v6;
    sub_18843D0DC(selfCopy, v12, v11);
  }

  objc_sync_exit(v6);

  objc_sync_exit(selfCopy);
}

- (void)intersectVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = vectorCopy;
  objc_sync_enter(v6);
  if (objc_msgSend_timestampCount(selfCopy, v7, v8) && objc_msgSend_timestampCount(v6, v9, v10))
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_188556CD4;
    v14[3] = &unk_1E70BD330;
    v14[4] = selfCopy;
    v15 = v6;
    sub_18843D0DC(selfCopy, v15, v14);
  }

  else
  {
    v11 = objc_msgSend_clockValues(selfCopy, v9, v10);
    objc_msgSend_removeAllObjects(v11, v12, v13);
  }

  objc_sync_exit(v6);

  objc_sync_exit(selfCopy);
}

- (void)unionVector:(id)vector
{
  vectorCopy = vector;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_188556ED4;
  v6[3] = &unk_1E70BD330;
  v6[4] = self;
  v7 = vectorCopy;
  v5 = vectorCopy;
  sub_18843D0DC(self, v5, v6);
}

- (void)addClockValuesInIndexSet:(id)set forSiteIdentifier:(id)identifier
{
  setCopy = set;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_count(setCopy, v8, v9))
  {
    v12 = objc_msgSend_clockValues(selfCopy, v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, identifierCopy);

    v17 = objc_msgSend_clockValues(selfCopy, v15, v16);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, identifierCopy);

    if (!v19)
    {
      v21 = objc_opt_new();

      v24 = objc_msgSend_clockValues(selfCopy, v22, v23);
      objc_msgSend_setObject_forKeyedSubscript_(v24, v25, v21, identifierCopy);

      v14 = v21;
    }

    objc_msgSend_addIndexes_(v14, v20, setCopy);
  }

  objc_sync_exit(selfCopy);
}

- (void)removeClockValuesInIndexSet:(id)set forSiteIdentifier:(id)identifier
{
  setCopy = set;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (objc_msgSend_count(setCopy, v8, v9))
  {
    v12 = objc_msgSend_clockValues(selfCopy, v10, v11);
    v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, identifierCopy);

    objc_msgSend_removeIndexes_(v14, v15, setCopy);
    if (!objc_msgSend_count(v14, v16, v17))
    {
      v20 = objc_msgSend_clockValues(selfCopy, v18, v19);
      objc_msgSend_setObject_forKeyedSubscript_(v20, v21, 0, identifierCopy);
    }
  }

  objc_sync_exit(selfCopy);
}

@end