@interface CKDistributedTimestampImmutableStateVector
+ (void)initialize;
- (BOOL)hasAtomStateNotInStateVector:(id)a3;
- (BOOL)hasTimestampsNotInVector:(id)a3;
- (BOOL)includesTimestamp:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CKDistributedTimestampImmutableStateVector)init;
- (CKDistributedTimestampImmutableStateVector)initWithCoder:(id)a3;
- (id)allSiteIdentifiers;
- (id)clockValuesForSiteIdentifier:(id)a3;
- (id)clockVector;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)vectorFillingInImplicitClockValuesUsingSiteIdentifiers:(id)a3;
- (id)vectorFilteredByModifier:(id)a3;
- (id)vectorFilteredBySiteIdentifiers:(id)a3;
- (int64_t)compareToVector:(id)a3;
- (unint64_t)hash;
- (unint64_t)timestampCount;
- (unint64_t)timestampCountForSiteIdentifier:(id)a3;
- (unsigned)atomStateForTimestamp:(id)a3;
- (unsigned)clockTypeForTimestamp:(id)a3;
- (void)_setBackingState:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)enumerateAllClockValuesUsingBlock:(id)a3;
- (void)enumerateClockValuesForSiteIdentifier:(id)a3 usingBlock:(id)a4;
@end

@implementation CKDistributedTimestampImmutableStateVector

- (CKDistributedTimestampImmutableStateVector)init
{
  v6.receiver = self;
  v6.super_class = CKDistributedTimestampImmutableStateVector;
  v2 = [(CKDistributedTimestampImmutableStateVector *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    objc_msgSend__setBackingState_(v2, v4, v3);
  }

  return v2;
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

- (CKDistributedTimestampImmutableStateVector)initWithCoder:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CKDistributedTimestampImmutableStateVector;
  v5 = [(CKDistributedTimestampImmutableStateVector *)&v26 init];
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = objc_opt_class();
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"backingVectorProtobuf");
  if (!v8)
  {
    v19 = objc_opt_class();
    v11 = NSStringFromSelector(sel_backingVector);
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, v11);
    objc_msgSend__setBackingState_(v5, v22, v21);

    goto LABEL_10;
  }

  v9 = [CKDPDistributedTimestamps alloc];
  v11 = objc_msgSend_initWithData_(v9, v10, v8);
  v25 = 0;
  v13 = objc_msgSend_attributedVectorFromPDistributedTimestamps_error_(CKDistributedTimestampAttributedVector, v12, v11, &v25);
  v14 = v25;
  objc_msgSend__setBackingState_(v5, v15, v13);

  if (!v14)
  {
LABEL_10:

LABEL_11:
    v18 = v5;
    goto LABEL_12;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v16 = ck_log_facility_distributed_sync;
  if (os_log_type_enabled(ck_log_facility_distributed_sync, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v28 = v14;
    _os_log_error_impl(&dword_1883EA000, v16, OS_LOG_TYPE_ERROR, "Error initializing distributed timestamp vector from data in coder: %@", buf, 0xCu);
  }

  objc_msgSend_failWithError_(v4, v17, v14);

  v18 = 0;
LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v14 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v9 = objc_msgSend_pDistributedTimestampsFromAttributedVector_(CKDistributedTimestampAttributedVector, v8, v7);

  v12 = objc_msgSend_data(v9, v10, v11);
  objc_msgSend_encodeObject_forKey_(v14, v13, v12, @"backingVectorProtobuf");

  objc_autoreleasePoolPop(v4);
}

- (void)_setBackingState:(id)a3
{
  v5 = objc_msgSend_copy(a3, a2, a3);
  objc_msgSend___setBackingStateNoCopy_(self, v4, v5);
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v7 = objc_msgSend_backingVector(self, v5, v6);
  objc_msgSend__setBackingState_(v4, v8, v7);

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
      v8 = objc_msgSend_backingVector(self, v6, v7);
      objc_sync_enter(v8);
      v11 = objc_msgSend_backingVector(v5, v9, v10);
      objc_sync_enter(v11);
      v14 = objc_msgSend_backingVector(self, v12, v13);
      v19 = objc_msgSend_backingVector(v5, v15, v16);
      if (v14 == v19)
      {
        isEqual = 1;
      }

      else
      {
        v20 = objc_msgSend_backingVector(self, v17, v18);
        v23 = objc_msgSend_backingVector(v5, v21, v22);
        isEqual = objc_msgSend_isEqual_(v20, v24, v23);
      }

      objc_sync_exit(v11);
      objc_sync_exit(v8);
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
  v3 = objc_msgSend_backingVector(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)allSiteIdentifiers
{
  v3 = objc_msgSend_backingVector(self, a2, v2);
  v6 = objc_msgSend_allSiteIdentifiers(v3, v4, v5);

  return v6;
}

- (unint64_t)timestampCount
{
  v3 = objc_msgSend_backingVector(self, a2, v2);
  v6 = objc_msgSend_timestampCount(v3, v4, v5);

  return v6;
}

- (unint64_t)timestampCountForSiteIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v9 = objc_msgSend_timestampCountForSiteIdentifier_(v7, v8, v4);

  return v9;
}

- (BOOL)includesTimestamp:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v9 = objc_msgSend_clockVector_includesTimestamp_(v7, v8, v4);

  return v9;
}

- (unsigned)clockTypeForTimestamp:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v9 = objc_msgSend_attributeForTimestamp_(v7, v8, v4);

  return BYTE1(v9);
}

- (unsigned)atomStateForTimestamp:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v9 = objc_msgSend_attributeForTimestamp_(v7, v8, v4);

  return v9;
}

- (int64_t)compareToVector:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v10 = objc_msgSend_backingVector(v4, v8, v9);
  v13 = objc_msgSend_vectorExpansionState(self, v11, v12);
  v15 = objc_msgSend_clockVector_compareToVector_withExpansionState_(v7, v14, v10, v13);

  return v15;
}

- (BOOL)hasTimestampsNotInVector:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v10 = objc_msgSend_backingVector(v4, v8, v9);
  v13 = objc_msgSend_vectorExpansionState(self, v11, v12);
  LOBYTE(self) = objc_msgSend_clockVector_hasTimestampsNotInVector_withExpansionState_(v7, v14, v10, v13);

  return self;
}

- (BOOL)hasAtomStateNotInStateVector:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_mutableCopy(self, v5, v6);
  objc_msgSend_minusStateVector_(v7, v8, v4);
  v11 = objc_msgSend_timestampCount(v7, v9, v10) != 0;

  return v11;
}

- (id)clockValuesForSiteIdentifier:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v9 = objc_msgSend_clockValuesForSiteIdentifier_(v7, v8, v4);

  return v9;
}

- (void)enumerateClockValuesForSiteIdentifier:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_backingVector(self, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_18855CC84;
  v13[3] = &unk_1E70BD4E0;
  v11 = v7;
  v14 = v11;
  objc_msgSend_enumerateClockValuesForSiteIdentifier_usingBlock_(v10, v12, v6, v13);
}

- (void)enumerateAllClockValuesUsingBlock:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_18855CD7C;
  v10[3] = &unk_1E70BD508;
  v8 = v4;
  v11 = v8;
  objc_msgSend_enumerateAllClockValuesUsingBlock_(v7, v9, v10);
}

- (id)vectorFilteredBySiteIdentifiers:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_backingVector(self, v6, v7);
  v10 = objc_msgSend_vectorFilteredBySiteIdentifiers_(v8, v9, v4);
  objc_msgSend__setBackingState_(v5, v11, v10);

  return v5;
}

- (id)vectorFilteredByModifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v8 = objc_msgSend_backingVector(self, v6, v7);
  v10 = objc_msgSend_vectorFilteredByModifier_(v8, v9, v4);
  objc_msgSend__setBackingState_(v5, v11, v10);

  return v5;
}

- (id)vectorFillingInImplicitClockValuesUsingSiteIdentifiers:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_backingVector(self, v5, v6);
  v10 = objc_msgSend_vectorExpansionState(self, v8, v9);
  v12 = objc_msgSend_clockVector_vectorFillingInImplicitClockValuesUsingSiteIdentifiers_withExpansionState_(v7, v11, v4, v10);

  return v12;
}

- (id)clockVector
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_backingVector(self, v4, v5);
  v8 = objc_msgSend_vectorWithAttributeReplacementBlock_(v6, v7, &unk_1EFA2EB48);

  v11 = objc_msgSend_backingVector(v3, v9, v10);
  objc_msgSend__swapContentsWithVector_(v11, v12, v8);

  return v3;
}

@end