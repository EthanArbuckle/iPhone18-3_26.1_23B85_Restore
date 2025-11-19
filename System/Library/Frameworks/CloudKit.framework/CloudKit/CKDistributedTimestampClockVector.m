@interface CKDistributedTimestampClockVector
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setBackingState:(id)a3;
- (void)intersectVector:(id)a3;
- (void)minusVector:(id)a3;
- (void)unionVector:(id)a3;
@end

@implementation CKDistributedTimestampClockVector

- (void)_setBackingState:(id)a3
{
  v5 = objc_msgSend_mutableCopy(a3, a2, a3);
  objc_msgSend___setBackingStateNoCopy_(self, v4, v5);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_backingVector(self, v5, v6);
  objc_msgSend__setBackingState_(v4, v8, v7);

  return v4;
}

- (void)intersectVector:(id)a3
{
  v14 = a3;
  v6 = objc_msgSend_backingVector(self, v4, v5);
  v9 = objc_msgSend_backingVector(v14, v7, v8);
  v12 = objc_msgSend_vectorExpansionState(self, v10, v11);
  objc_msgSend_clockVector_intersectVector_withExpansionState_(v6, v13, v9, v12);
}

- (void)minusVector:(id)a3
{
  v14 = a3;
  v6 = objc_msgSend_backingVector(self, v4, v5);
  v9 = objc_msgSend_backingVector(v14, v7, v8);
  v12 = objc_msgSend_vectorExpansionState(self, v10, v11);
  objc_msgSend_clockVector_minusVector_withExpansionState_(v6, v13, v9, v12);
}

- (void)unionVector:(id)a3
{
  v29 = a3;
  v6 = objc_msgSend_backingVector(self, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_backingVector(v29, v7, v8);
  objc_sync_enter(v9);
  v12 = objc_msgSend_backingVector(self, v10, v11);
  v15 = objc_msgSend_backingVector(v29, v13, v14);
  objc_msgSend_clockVector_checkInvariantsAgainstVector_(v12, v16, v15);

  v19 = objc_msgSend_backingVector(self, v17, v18);
  v22 = objc_msgSend_backingVector(v29, v20, v21);
  objc_msgSend_addAllClockValuesFromVector_(v19, v23, v22);

  objc_sync_exit(v9);
  v26 = objc_msgSend_backingVector(self, v24, v25);
  objc_msgSend_clockVector_maintainInvariants(v26, v27, v28);

  objc_sync_exit(v6);
}

@end