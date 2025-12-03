@interface CKDistributedTimestampClockVector
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setBackingState:(id)state;
- (void)intersectVector:(id)vector;
- (void)minusVector:(id)vector;
- (void)unionVector:(id)vector;
@end

@implementation CKDistributedTimestampClockVector

- (void)_setBackingState:(id)state
{
  v5 = objc_msgSend_mutableCopy(state, a2, state);
  objc_msgSend___setBackingStateNoCopy_(self, v4, v5);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_backingVector(self, v5, v6);
  objc_msgSend__setBackingState_(v4, v8, v7);

  return v4;
}

- (void)intersectVector:(id)vector
{
  vectorCopy = vector;
  v6 = objc_msgSend_backingVector(self, v4, v5);
  v9 = objc_msgSend_backingVector(vectorCopy, v7, v8);
  v12 = objc_msgSend_vectorExpansionState(self, v10, v11);
  objc_msgSend_clockVector_intersectVector_withExpansionState_(v6, v13, v9, v12);
}

- (void)minusVector:(id)vector
{
  vectorCopy = vector;
  v6 = objc_msgSend_backingVector(self, v4, v5);
  v9 = objc_msgSend_backingVector(vectorCopy, v7, v8);
  v12 = objc_msgSend_vectorExpansionState(self, v10, v11);
  objc_msgSend_clockVector_minusVector_withExpansionState_(v6, v13, v9, v12);
}

- (void)unionVector:(id)vector
{
  vectorCopy = vector;
  v6 = objc_msgSend_backingVector(self, v4, v5);
  objc_sync_enter(v6);
  v9 = objc_msgSend_backingVector(vectorCopy, v7, v8);
  objc_sync_enter(v9);
  v12 = objc_msgSend_backingVector(self, v10, v11);
  v15 = objc_msgSend_backingVector(vectorCopy, v13, v14);
  objc_msgSend_clockVector_checkInvariantsAgainstVector_(v12, v16, v15);

  v19 = objc_msgSend_backingVector(self, v17, v18);
  v22 = objc_msgSend_backingVector(vectorCopy, v20, v21);
  objc_msgSend_addAllClockValuesFromVector_(v19, v23, v22);

  objc_sync_exit(v9);
  v26 = objc_msgSend_backingVector(self, v24, v25);
  objc_msgSend_clockVector_maintainInvariants(v26, v27, v28);

  objc_sync_exit(v6);
}

@end