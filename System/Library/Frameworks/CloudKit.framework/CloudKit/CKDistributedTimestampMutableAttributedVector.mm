@interface CKDistributedTimestampMutableAttributedVector
- (id)attributeToSparseVector;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_maintainInvariants;
- (void)_setBackingState:(id)state;
- (void)_swapContentsWithVector:(id)vector;
- (void)addAllClockValuesFromVector:(id)vector;
- (void)clockVector_checkInvariantsAgainstClockValues:(id)values withSiteIdentifier:(id)identifier ofType:(unsigned __int8)type;
- (void)clockVector_checkInvariantsAgainstVector:(id)vector;
- (void)clockVector_maintainInvariants;
- (void)intersectAttributedVector:(id)vector;
- (void)intersectVector:(id)vector;
- (void)minusVector:(id)vector;
@end

@implementation CKDistributedTimestampMutableAttributedVector

- (void)clockVector_maintainInvariants
{
  v41 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_msgSend_allModifiers(selfCopy, v3, v4);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v5, &v36, v40, 16);
  if (v6)
  {
    v7 = *v37;
    do
    {
      v8 = 0;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        v35 = 0;
        v13 = objc_msgSend_clockVector__winningLWWTimestampForModifier_winningAttribute_(selfCopy, v11, v9, &v35);
        if (v13)
        {
          v14 = objc_msgSend_vectorFilteredByModifier_(selfCopy, v12, v9);
          if (objc_msgSend_timestampCount(v14, v15, v16) >= 2)
          {
            v19 = objc_msgSend_vectorWithoutAttributes(v14, v17, v18);
            objc_msgSend_minusVector_(selfCopy, v20, v19);

            v21 = MEMORY[0x1E696AC90];
            v24 = objc_msgSend_clockValue(v13, v22, v23);
            v26 = objc_msgSend_indexSetWithIndex_(v21, v25, v24);
            v27 = v35;
            v30 = objc_msgSend_siteIdentifierObject(v13, v28, v29);
            objc_msgSend_addClockValuesInIndexSet_withAttribute_forSiteIdentifier_(selfCopy, v31, v26, v27, v30);
          }
        }

        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v36, v40, 16);
    }

    while (v6);
  }

  objc_sync_exit(selfCopy);
  v33 = *MEMORY[0x1E69E9840];
}

- (void)_maintainInvariants
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_18855A5D4;
  v16 = sub_18855A5E4;
  v17 = 0;
  v5 = objc_msgSend_mutableAttributeToSparseVector(selfCopy, v3, v4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18843D4E8;
  v11[3] = &unk_1E70BD358;
  v11[4] = &v12;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v11);

  if (v13[5])
  {
    v9 = objc_msgSend_mutableAttributeToSparseVector(selfCopy, v7, v8);
    objc_msgSend_removeObjectsForKeys_(v9, v10, v13[5]);
  }

  _Block_object_dispose(&v12, 8);

  objc_sync_exit(selfCopy);
}

- (void)_setBackingState:(id)state
{
  v4 = objc_msgSend_CKDeepCopyWithLeafNodeCopyBlock_(state, a2, &unk_1EFA2EB28);
  v8 = objc_msgSend_mutableCopy(v4, v5, v6);

  objc_msgSend___setBackingStateNoCopy_(self, v7, v8);
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = objc_opt_new();
  v7 = objc_msgSend_mutableAttributeToSparseVector(selfCopy, v5, v6);
  objc_msgSend__setBackingState_(v4, v8, v7);

  objc_sync_exit(selfCopy);
  return v4;
}

- (id)attributeToSparseVector
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_mutableAttributeToSparseVector(selfCopy, v3, v4);
  v8 = objc_msgSend_CKDeepCopy(v5, v6, v7);

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)_swapContentsWithVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = vectorCopy;
  objc_sync_enter(obj);
  v8 = objc_msgSend_mutableAttributeToSparseVector(selfCopy, v6, v7);
  v11 = objc_msgSend_mutableAttributeToSparseVector(obj, v9, v10);
  objc_msgSend__setBackingState_(selfCopy, v12, v11);

  objc_msgSend__setBackingState_(obj, v13, v8);
  objc_sync_exit(obj);

  objc_sync_exit(selfCopy);
}

- (void)intersectVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = vectorCopy;
  objc_sync_enter(v6);
  v9 = objc_msgSend_mutableAttributeToSparseVector(selfCopy, v7, v8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188559CA4;
  v14[3] = &unk_1E70BD490;
  v10 = v6;
  v15 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v11, v14);

  objc_sync_exit(v10);
  objc_msgSend__maintainInvariants(selfCopy, v12, v13);
  objc_sync_exit(selfCopy);
}

- (void)minusVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = vectorCopy;
  objc_sync_enter(v6);
  v9 = objc_msgSend_mutableAttributeToSparseVector(selfCopy, v7, v8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_188559DE4;
  v14[3] = &unk_1E70BD490;
  v10 = v6;
  v15 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v11, v14);

  objc_sync_exit(v10);
  objc_msgSend__maintainInvariants(selfCopy, v12, v13);
  objc_sync_exit(selfCopy);
}

- (void)intersectAttributedVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = vectorCopy;
  objc_sync_enter(v6);
  v9 = objc_msgSend_mutableAttributeToSparseVector(selfCopy, v7, v8);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_18855A02C;
  v14[3] = &unk_1E70BD490;
  v10 = v6;
  v15 = v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v11, v14);

  objc_sync_exit(v10);
  objc_msgSend__maintainInvariants(selfCopy, v12, v13);
  objc_sync_exit(selfCopy);
}

- (void)addAllClockValuesFromVector:(id)vector
{
  vectorCopy = vector;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = vectorCopy;
  objc_sync_enter(v6);
  v9 = objc_msgSend_vectorWithoutAttributes(v6, v7, v8);
  objc_msgSend_minusVector_(selfCopy, v10, v9);

  v13 = objc_msgSend_mutableAttributeToSparseVector(v6, v11, v12);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18855A4C0;
  v17[3] = &unk_1E70BD380;
  v17[4] = selfCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v13, v14, v17);

  objc_sync_exit(v6);
  objc_msgSend__maintainInvariants(selfCopy, v15, v16);
  objc_sync_exit(selfCopy);
}

- (void)clockVector_checkInvariantsAgainstVector:(id)vector
{
  v54 = *MEMORY[0x1E69E9840];
  vectorCopy = vector;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = vectorCopy;
  objc_sync_enter(v6);
  obj = v6;
  v44 = selfCopy;
  v46 = objc_msgSend_allModifiers(selfCopy, v7, v8);
  v47 = objc_msgSend_allModifiers(v6, v9, v10);
  v45 = objc_msgSend_mutableCopy(v46, v11, v12);
  objc_msgSend_intersectSet_(v45, v13, v47);
  v16 = objc_msgSend_clockVector_clockTypesForAllModifiers(selfCopy, v14, v15);
  v19 = objc_msgSend_clockVector_clockTypesForAllModifiers(v6, v17, v18);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v20 = v45;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v49, v53, 16);
  if (v23)
  {
    v24 = *v50;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v50 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v49 + 1) + 8 * i);
        v27 = objc_msgSend_objectForKeyedSubscript_(v16, v22, v26);
        v29 = objc_msgSend_objectForKeyedSubscript_(v19, v28, v26);
        v32 = v29;
        if (v27)
        {
          v33 = v29 == 0;
        }

        else
        {
          v33 = 1;
        }

        if (!v33)
        {
          v34 = objc_msgSend_unsignedIntValue(v27, v30, v31);
          if (v34 != objc_msgSend_unsignedIntValue(v32, v35, v36))
          {
            v39 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v37, v38);
            v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v40, "[CKDistributedTimestampMutableAttributedVector(ClockVectorSupport) clockVector_checkInvariantsAgainstVector:]");
            objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v39, v42, v41, @"CKDistributedTimestampVector.mm", 1919, @"It is not possible to mix and match regular and lwwPerModifier clock types for a given site identifier modifier (rdar://84695941)");
          }
        }
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v22, &v49, v53, 16);
    }

    while (v23);
  }

  objc_sync_exit(obj);
  objc_sync_exit(v44);

  v43 = *MEMORY[0x1E69E9840];
}

- (void)clockVector_checkInvariantsAgainstClockValues:(id)values withSiteIdentifier:(id)identifier ofType:(unsigned __int8)type
{
  typeCopy = type;
  identifierCopy = identifier;
  v9 = objc_msgSend_modifier(identifierCopy, v7, v8);
  v11 = objc_msgSend_clockVector_clockTypeForModifier_(self, v10, v9);

  if (v11 != 255 && v11 != typeCopy)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v12, v13);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v15, "[CKDistributedTimestampMutableAttributedVector(ClockVectorSupport) clockVector_checkInvariantsAgainstClockValues:withSiteIdentifier:ofType:]");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v14, v17, v16, @"CKDistributedTimestampVector.mm", 1935, @"It is not possible to mix and match regular and lwwPerModifier clock types for a given site identifier modifier (rdar://84695941)");
  }
}

@end