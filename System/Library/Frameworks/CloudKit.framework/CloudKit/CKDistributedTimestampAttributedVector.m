@interface CKDistributedTimestampAttributedVector
+ (id)attributedVectorFromPDistributedTimestamps:(id)a3 error:(id *)a4;
+ (id)pVersionVectorFromAttributedVector:(id)a3 siteIdentifier:(id)a4;
+ (int)pClockTypeAndAtomStateFromClockType:(unsigned __int8)a3 atomState:(unsigned __int8)a4;
+ (unsigned)atomStateFromPClockTypeAndAtomState:(int)a3;
+ (unsigned)clockTypeFromPClockTypeAndAtomState:(int)a3;
+ (void)initialize;
- (BOOL)clockVector_includesTimestamp:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CKDistributedTimestampAttributedVector)init;
- (CKDistributedTimestampAttributedVector)initWithCoder:(id)a3;
- (CKDistributedTimestampAttributedVector)vectorWithAttributeReplacementBlock:(id)a3;
- (CKDistributedTimestampAttributedVector)vectorWithoutAttributes;
- (id)allModifiers;
- (id)allSiteIdentifiers;
- (id)clockValuesForSiteIdentifier:(id)a3;
- (id)clockVector__winningLWWTimestampForModifier:(id)a3 winningAttribute:(unsigned __int16 *)a4;
- (id)clockVector_clockTypesForAllModifiers;
- (id)clockVector_vectorFillingInImplicitClockValuesUsingSiteIdentifiers:(id)a3 withExpansionState:(unsigned __int8)a4;
- (id)clockVector_vectorFilteredByAtomState:(unsigned __int8)a3;
- (id)clockVector_vectorFilteredByClockType:(unsigned __int8)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)vectorFilteredByModifier:(id)a3;
- (id)vectorFilteredBySiteIdentifiers:(id)a3;
- (unint64_t)clockVector_timestampCountForAtomState:(unsigned __int8)a3;
- (unint64_t)hash;
- (unint64_t)timestampCount;
- (unint64_t)timestampCountForSiteIdentifier:(id)a3;
- (unsigned)attributeForTimestamp:(id)a3;
- (unsigned)clockVector_clockTypeForModifier:(id)a3;
- (void)_setBackingState:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAllClockValuesUsingBlock:(id)a3;
- (void)enumerateClockValuesForSiteIdentifier:(id)a3 usingBlock:(id)a4;
@end

@implementation CKDistributedTimestampAttributedVector

- (CKDistributedTimestampAttributedVector)init
{
  v6.receiver = self;
  v6.super_class = CKDistributedTimestampAttributedVector;
  v2 = [(CKDistributedTimestampAttributedVector *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    objc_msgSend__setBackingState_(v2, v4, v3);
  }

  return v2;
}

- (id)allModifiers
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  objc_msgSend_allSiteIdentifiers(self, v4, v5);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v17, v21, 16);
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = objc_msgSend_modifier(*(*(&v17 + 1) + 8 * i), v8, v9, v17);
        objc_msgSend_addObject_(v3, v14, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v17, v21, 16);
    }

    while (v10);
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)allSiteIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_opt_new();
  v6 = objc_msgSend_mutableAttributeToSparseVector(v2, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18843C75C;
  v10[3] = &unk_1E70BD380;
  v7 = v3;
  v11 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v8, v10);

  objc_sync_exit(v2);

  return v7;
}

- (id)clockVector_clockTypesForAllModifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_opt_new();
  v6 = objc_msgSend_mutableAttributeToSparseVector(v2, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18843CCB4;
  v10[3] = &unk_1E70BD380;
  v7 = v3;
  v11 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v8, v10);

  objc_sync_exit(v2);

  return v7;
}

- (CKDistributedTimestampAttributedVector)vectorWithoutAttributes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_opt_new();
  v6 = objc_msgSend_mutableAttributeToSparseVector(v2, v4, v5);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18843D0D4;
  v13[3] = &unk_1E70BD380;
  v7 = v3;
  v14 = v7;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v8, v13);

  v11 = objc_msgSend_copy(v7, v9, v10);
  objc_sync_exit(v2);

  return v11;
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

- (CKDistributedTimestampAttributedVector)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKDistributedTimestampAttributedVector;
  v5 = [(CKDistributedTimestampAttributedVector *)&v19 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v13 = objc_msgSend_setWithObjects_(v6, v12, v7, v8, v9, v10, v11, 0);
    v14 = NSStringFromSelector(sel_attributeToSparseVector);
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
  v8 = objc_msgSend_mutableAttributeToSparseVector(v5, v6, v7);
  v9 = NSStringFromSelector(sel_attributeToSparseVector);
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
  v7 = objc_msgSend_mutableAttributeToSparseVector(v3, v5, v6);
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
      v10 = objc_msgSend_mutableAttributeToSparseVector(v6, v8, v9);
      v15 = objc_msgSend_mutableAttributeToSparseVector(v7, v11, v12);
      if (v10 == v15)
      {
        isEqual = 1;
      }

      else
      {
        v16 = objc_msgSend_mutableAttributeToSparseVector(v6, v13, v14);
        v19 = objc_msgSend_mutableAttributeToSparseVector(v7, v17, v18);
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
  v5 = objc_msgSend_mutableAttributeToSparseVector(v2, v3, v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1885579D0;
  v9[3] = &unk_1E70BD358;
  v9[4] = &v10;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v5, v6, v9);

  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  objc_sync_exit(v2);

  return v7;
}

- (unint64_t)timestampCount
{
  v2 = self;
  objc_sync_enter(v2);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = objc_msgSend_mutableAttributeToSparseVector(v2, v3, v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188557B7C;
  v9[3] = &unk_1E70BD358;
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
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v8 = objc_msgSend_mutableAttributeToSparseVector(v5, v6, v7);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_188557D28;
  v13[3] = &unk_1E70BD658;
  v15 = &v16;
  v9 = v4;
  v14 = v9;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, v13);

  v11 = v17[3];
  _Block_object_dispose(&v16, 8);
  objc_sync_exit(v5);

  return v11;
}

- (unsigned)attributeForTimestamp:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = objc_msgSend_mutableAttributeToSparseVector(v5, v6, v7);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v34, v38, 16);
  if (v12)
  {
    obj = v8;
    v13 = *v35;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        v16 = objc_msgSend_mutableAttributeToSparseVector(v5, v10, v11);
        v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, v15);

        v21 = objc_msgSend_siteIdentifierObject(v4, v19, v20);
        v23 = objc_msgSend_clockValuesForSiteIdentifier_(v18, v22, v21);
        v26 = objc_msgSend_clockValue(v4, v24, v25);
        v28 = objc_msgSend_containsIndex_(v23, v27, v26);

        if (v28)
        {
          LOWORD(v12) = objc_msgSend_unsignedShortValue(v15, v29, v30);

          goto LABEL_11;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v34, v38, 16);
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_11:
    v8 = obj;
  }

  objc_sync_exit(v5);
  v31 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)clockValuesForSiteIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_opt_new();
  v9 = objc_msgSend_mutableAttributeToSparseVector(v5, v7, v8);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_188558124;
  v16[3] = &unk_1E70BD3A8;
  v10 = v6;
  v17 = v10;
  v11 = v4;
  v18 = v11;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v12, v16);

  v13 = v18;
  v14 = v10;

  objc_sync_exit(v5);

  return v14;
}

- (void)enumerateClockValuesForSiteIdentifier:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v27 = objc_msgSend_clockValuesForSiteIdentifier_(v8, v9, v6);
  if (objc_msgSend_count(v27, v10, v11))
  {
    Index = objc_msgSend_lastIndex(v27, v12, v13);
    v17 = 0;
    do
    {
      if (v17 > Index)
      {
        break;
      }

      v46 = 0;
      v47 = &v46;
      v48 = 0x2020000000;
      v49 = 1;
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x4012000000;
      v39 = sub_1883ED884;
      v40 = nullsub_1;
      v41 = "";
      v18 = objc_msgSend_mutableAttributeToSparseVector(v8, v14, v15);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1885584E0;
      v29[3] = &unk_1E70BD3F8;
      v19 = v6;
      v34 = v17;
      v35 = Index + 1 - v17;
      v30 = v19;
      v31 = &v46;
      v32 = &v36;
      v33 = &v42;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v18, v20, v29);

      if (*(v47 + 24) == 1)
      {
        v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v21, v22);
        objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, v8, @"CKDistributedTimestampVector.mm", 600, @"Range unexpectedly not found");
      }

      v28 = 0;
      v7[2](v7, v37[6], v37[7], *(v43 + 12), &v28);
      v23 = v28;
      if ((v28 & 1) == 0)
      {
        v17 = v37[7] + v37[6];
      }

      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v42, 8);
      _Block_object_dispose(&v46, 8);
    }

    while ((v23 & 1) == 0);
  }

  objc_sync_exit(v8);
}

- (void)enumerateAllClockValuesUsingBlock:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  objc_msgSend_allSiteIdentifiers(v5, v6, v7);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  obj = v26 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v25, v29, 16);
  if (v9)
  {
    v10 = *v26;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v25 + 1) + 8 * v11);
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1885588A8;
      v18[3] = &unk_1E70BD420;
      v13 = v4;
      v18[4] = v12;
      v19 = v13;
      v20 = &v21;
      objc_msgSend_enumerateClockValuesForSiteIdentifier_usingBlock_(v5, v14, v12, v18);
      LOBYTE(v12) = *(v22 + 24);

      _Block_object_dispose(&v21, 8);
      if (v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v25, v29, 16);
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  objc_sync_exit(v5);
  v16 = *MEMORY[0x1E69E9840];
}

- (id)vectorFilteredBySiteIdentifiers:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_opt_new();
  v9 = objc_msgSend_mutableAttributeToSparseVector(v5, v7, v8);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_188558A88;
  v20 = &unk_1E70BD3A8;
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
  v9 = objc_msgSend_mutableAttributeToSparseVector(v5, v7, v8);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_188558CDC;
  v20 = &unk_1E70BD3A8;
  v10 = v4;
  v21 = v10;
  v11 = v6;
  v22 = v11;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v12, &v17);

  v15 = objc_msgSend_copy(v11, v13, v14, v17, v18, v19, v20);
  objc_sync_exit(v5);

  return v15;
}

- (CKDistributedTimestampAttributedVector)vectorWithAttributeReplacementBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = objc_opt_new();
  v9 = objc_msgSend_mutableAttributeToSparseVector(v5, v7, v8);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1885590BC;
  v20 = &unk_1E70BD448;
  v10 = v4;
  v22 = v10;
  v11 = v6;
  v21 = v11;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v9, v12, &v17);

  v15 = objc_msgSend_copy(v11, v13, v14, v17, v18, v19, v20);
  objc_sync_exit(v5);

  return v15;
}

- (id)clockVector_vectorFilteredByClockType:(unsigned __int8)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_opt_new();
  v8 = objc_msgSend_mutableAttributeToSparseVector(v4, v6, v7);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = sub_18855E67C;
  v18 = &unk_1E70BD590;
  v20 = a3;
  v9 = v5;
  v19 = v9;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, &v15);

  v13 = objc_msgSend_copy(v9, v11, v12, v15, v16, v17, v18);
  objc_sync_exit(v4);

  return v13;
}

- (id)clockVector_vectorFilteredByAtomState:(unsigned __int8)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v5 = objc_opt_new();
  v8 = objc_msgSend_mutableAttributeToSparseVector(v4, v6, v7);
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = sub_18855E894;
  v18 = &unk_1E70BD590;
  v20 = a3;
  v9 = v5;
  v19 = v9;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, &v15);

  v13 = objc_msgSend_copy(v9, v11, v12, v15, v16, v17, v18);
  objc_sync_exit(v4);

  return v13;
}

- (id)clockVector_vectorFillingInImplicitClockValuesUsingSiteIdentifiers:(id)a3 withExpansionState:(unsigned __int8)a4
{
  v6 = a3;
  v9 = objc_msgSend_mutableCopy(self, v7, v8);
  v11 = objc_msgSend_clockVector_vectorFilteredByClockType_(v9, v10, 2);
  v14 = objc_msgSend_allSiteIdentifiers(v11, v12, v13);
  v16 = objc_msgSend_setByAddingObjectsFromSet_(v14, v15, v6);
  v17 = objc_opt_new();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = sub_18855EB88;
  v34[3] = &unk_1E70BD5B8;
  v18 = v17;
  v35 = v18;
  objc_msgSend_enumerateObjectsUsingBlock_(v16, v19, v34);
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = sub_18855EC8C;
  v30 = &unk_1E70BD5E0;
  v20 = v18;
  v31 = v20;
  v21 = v9;
  v32 = v21;
  v33 = a4;
  objc_msgSend_enumerateAllClockValuesUsingBlock_(v11, v22, &v27);
  v25 = objc_msgSend_copy(v21, v23, v24, v27, v28, v29, v30);

  return v25;
}

- (unint64_t)clockVector_timestampCountForAtomState:(unsigned __int8)a3
{
  v4 = self;
  objc_sync_enter(v4);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = objc_msgSend_mutableAttributeToSparseVector(v4, v5, v6);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_18855F07C;
  v11[3] = &unk_1E70BD608;
  v12 = a3;
  v11[4] = &v13;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v7, v8, v11);

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  objc_sync_exit(v4);

  return v9;
}

- (BOOL)clockVector_includesTimestamp:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v7 = objc_msgSend_clockVector_vectorFilteredByClockType_(v5, v6, 1);
  v10 = objc_msgSend_siteIdentifierObject(v4, v8, v9);
  v12 = objc_msgSend_clockValuesForSiteIdentifier_(v7, v11, v10);

  v15 = objc_msgSend_clockValue(v4, v13, v14);
  v17 = objc_msgSend_containsIndex_(v12, v16, v15);

  if (v17)
  {
    v20 = 1;
  }

  else
  {
    v21 = objc_msgSend_siteIdentifierObject(v4, v18, v19);
    v24 = objc_msgSend_modifier(v21, v22, v23);
    v26 = objc_msgSend_clockVector__winningLWWTimestampForModifier_winningAttribute_(v5, v25, v24, 0);

    if (v26)
    {
      v29 = objc_msgSend_siteIdentifierObject(v4, v27, v28);
      v32 = objc_msgSend_identifier(v29, v30, v31);
      v35 = objc_msgSend_clockValue(v4, v33, v34);
      v38 = objc_msgSend_siteIdentifierObject(v26, v36, v37);
      v41 = objc_msgSend_identifier(v38, v39, v40);
      v44 = objc_msgSend_clockValue(v26, v42, v43);
      v45 = CKDistributedTimestampLWWCompare(v32, v35, v41, v44);

      v20 = (v45 + 1) < 2;
    }

    else
    {
      v20 = 0;
    }
  }

  objc_sync_exit(v5);

  return v20;
}

- (unsigned)clockVector_clockTypeForModifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  v8 = objc_msgSend_mutableAttributeToSparseVector(v5, v6, v7);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_18855F478;
  v12[3] = &unk_1E70BD658;
  v9 = v4;
  v13 = v9;
  v14 = &v15;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v8, v10, v12);

  LOBYTE(v4) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  objc_sync_exit(v5);

  return v4;
}

- (id)clockVector__winningLWWTimestampForModifier:(id)a3 winningAttribute:(unsigned __int16 *)a4
{
  v7 = a3;
  v9 = objc_msgSend_clockVector_vectorFilteredByClockType_(self, v8, 2);
  v11 = objc_msgSend_vectorFilteredByModifier_(v9, v10, v7);
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x2020000000;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_18855A5D4;
  v30 = sub_18855A5E4;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_18855F8A8;
  v17[3] = &unk_1E70BD680;
  v17[9] = &v18;
  v17[10] = a2;
  v17[4] = self;
  v17[5] = v34;
  v17[6] = v32;
  v17[7] = &v26;
  v17[8] = &v22;
  objc_msgSend_enumerateAllClockValuesUsingBlock_(v11, v12, v17);
  if (v27[5])
  {
    if (a4)
    {
      *a4 = *(v19 + 12);
    }

    v13 = [CKDistributedTimestamp alloc];
    v15 = objc_msgSend_initWithSiteIdentifierObject_clockValue_(v13, v14, v27[5], v23[3]);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  return v15;
}

+ (id)attributedVectorFromPDistributedTimestamps:(id)a3 error:(id *)a4
{
  v4 = objc_msgSend_deltaMetadataVectorsFromPDistributedTimestamps_error_(CKMergeableDeltaVectors, a2, a3, a4);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_contents(v4, v5, v6);
    v11 = objc_msgSend_backingVector(v8, v9, v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)pVersionVectorFromAttributedVector:(id)a3 siteIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  objc_sync_enter(v8);
  v9 = objc_opt_new();
  v11 = objc_msgSend_clockValuesForSiteIdentifier_(v8, v10, v7);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_18857189C;
  v23[3] = &unk_1E70BDD48;
  v12 = v9;
  v24 = v12;
  objc_msgSend_enumerateRangesUsingBlock_(v11, v13, v23);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1885718E4;
  v20[3] = &unk_1E70BDD20;
  v22 = a1;
  v14 = v12;
  v21 = v14;
  objc_msgSend_enumerateClockValuesForSiteIdentifier_usingBlock_(v8, v15, v7, v20);
  if (objc_msgSend_clockValuesCount(v14, v16, v17))
  {
    v18 = v14;
  }

  else
  {
    v18 = 0;
  }

  objc_sync_exit(v8);

  return v18;
}

+ (int)pClockTypeAndAtomStateFromClockType:(unsigned __int8)a3 atomState:(unsigned __int8)a4
{
  v4 = a4 + 5;
  if (a4 < 4u)
  {
    v5 = a4 + 1;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (a3 != 1)
  {
    v5 = 0;
  }

  if (a3 != 2)
  {
    return v5;
  }

  return v4;
}

+ (unsigned)clockTypeFromPClockTypeAndAtomState:(int)a3
{
  if ((a3 - 1) >= 8)
  {
    return -1;
  }

  else
  {
    return 0x202020201010101uLL >> (8 * (a3 - 1));
  }
}

+ (unsigned)atomStateFromPClockTypeAndAtomState:(int)a3
{
  if ((a3 - 1) >= 8)
  {
    return -1;
  }

  else
  {
    return 0x302010003020100uLL >> (8 * (a3 - 1));
  }
}

@end