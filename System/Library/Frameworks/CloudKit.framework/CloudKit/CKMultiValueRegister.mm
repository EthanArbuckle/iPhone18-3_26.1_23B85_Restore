@interface CKMultiValueRegister
+ (id)placeholderIdentifier;
- (BOOL)isConsumedState;
- (BOOL)isEqual:(id)a3;
- (BOOL)merge:(id)a3 error:(id *)a4;
- (CKMultiValueRegister)initWithIdentifier:(id)a3 vector:(id)a4;
- (CKMultiValueRegister)initWithIdentifier:(id)a3 vector:(id)a4 contents:(id)a5 error:(id *)a6;
- (NSArray)contents;
- (id)siteIdentifier;
- (unint64_t)hash;
- (unint64_t)nextClockValue;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)setContents:(id)a3;
@end

@implementation CKMultiValueRegister

- (CKMultiValueRegister)initWithIdentifier:(id)a3 vector:(id)a4
{
  v18 = 0;
  v4 = objc_msgSend_initWithIdentifier_vector_contents_error_(self, a2, a3, a4, 0, &v18);
  v5 = v18;
  v6 = v4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v15 = objc_msgSend_description(v5, v13, v14);
    objc_msgSend_raise_format_(v9, v16, v10, @"Failed to initialize %@: %@", v12, v15);
  }

  return v7;
}

- (CKMultiValueRegister)initWithIdentifier:(id)a3 vector:(id)a4 contents:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v58.receiver = self;
  v58.super_class = CKMultiValueRegister;
  v15 = [(CKMultiValueRegister *)&v58 init];
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = objc_msgSend_mutableCopy(v11, v13, v14);
  v19 = objc_msgSend_copy(v10, v17, v18);
  identifier = v15->_identifier;
  v15->_identifier = v19;

  v21 = objc_opt_new();
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = sub_18851BAB4;
  v56[3] = &unk_1E70BBFC8;
  v22 = v21;
  v57 = v22;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v12, v23, v56);
  isEqual = objc_msgSend_isEqual_(v22, v24, v16);
  objc_storeStrong(&v15->_vector, v16);
  if (isEqual)
  {
    if (v12)
    {
      v28 = objc_msgSend_mutableCopy(v12, v26, v27);
    }

    else
    {
      v28 = objc_msgSend_mutableCopy(MEMORY[0x1E695E0F8], v26, v27);
    }

    timestampToContents = v15->_timestampToContents;
    v15->_timestampToContents = v28;

    goto LABEL_13;
  }

  v30 = objc_opt_new();
  v31 = v15->_timestampToContents;
  v15->_timestampToContents = v30;

  objc_msgSend_replaceVectorStateForPresentOrTombstonedTimestamps_(v15, v32, 2);
  if (objc_msgSend_count(v12, v33, v34))
  {
    v37 = objc_msgSend_mutableCopy(v22, v35, v36);
    v40 = objc_msgSend_clockVector(v15->_vector, v38, v39);
    objc_msgSend_minusVector_(v37, v41, v40);

    if (objc_msgSend_timestampCount(v37, v42, v43))
    {
      if (a6)
      {
        *a6 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v44, @"CKErrorDomain", 12, @"Data dictionary includes timestamps that are not present in vector");
      }

      goto LABEL_16;
    }

    v45 = [CKMultiValueRegister alloc];
    v46 = objc_opt_class();
    v49 = objc_msgSend_placeholderIdentifier(v46, v47, v48);
    v51 = objc_msgSend_initWithIdentifier_vector_contents_error_(v45, v50, v49, v22, v12, a6);

    if (!v51)
    {
LABEL_16:

      goto LABEL_17;
    }

    v53 = objc_msgSend_merge_error_(v15, v52, v51, a6);

    if (!v53)
    {
LABEL_17:

      v54 = 0;
      goto LABEL_15;
    }
  }

LABEL_13:

LABEL_14:
  v54 = v15;
LABEL_15:

  return v54;
}

- (unint64_t)nextClockValue
{
  v4 = objc_msgSend_siteIdentifier(self, a2, v2);
  v7 = objc_msgSend_vector(self, v5, v6);
  v9 = objc_msgSend_clockValuesForSiteIdentifier_(v7, v8, v4);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_vector(self, v13, v14);
    v17 = objc_msgSend_clockValuesForSiteIdentifier_(v15, v16, v4);
    v20 = objc_msgSend_lastIndex(v17, v18, v19) + 1;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)siteIdentifier
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v12[1] = 0;
  v3 = objc_msgSend_identifier(self, a2, v2);
  objc_msgSend_getUUIDBytes_(v3, v4, v12);

  v6 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v5, v12, 16);
  v7 = [CKDistributedSiteIdentifier alloc];
  v9 = objc_msgSend_initWithIdentifier_modifier_(v7, v8, v6, 0);

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isConsumedState
{
  v3 = objc_msgSend_vector(self, a2, v2);
  v5 = objc_msgSend_vectorFilteredByAtomState_(v3, v4, 2);
  v8 = objc_msgSend_timestampCount(v5, v6, v7) != 0;

  return v8;
}

- (NSArray)contents
{
  v3 = objc_msgSend_timestampToContents(self, a2, v2);
  v6 = objc_msgSend_allValues(v3, v4, v5);

  return v6;
}

- (void)setContents:(id)a3
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_timestampToContents(self, v5, v6);
  objc_msgSend_removeAllObjects(v7, v8, v9);

  if (v4)
  {
    if (objc_msgSend_replaceVectorStateForPresentOrTombstonedTimestamps_(self, v10, 3))
    {
      ClockValue = objc_msgSend_nextClockValue(self, v11, v12);
      v16 = objc_msgSend_siteIdentifier(self, v14, v15);
      v19 = objc_msgSend_vector(self, v17, v18);
      v21 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v20, ClockValue);
      objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v19, v22, v21, 3, v16);
    }

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = v4;
    obj = v4;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v51, v55, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v52;
      do
      {
        v29 = 0;
        do
        {
          if (*v52 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v51 + 1) + 8 * v29);
          v31 = objc_msgSend_nextClockValue(self, v25, v26, v49);
          v34 = objc_msgSend_siteIdentifier(self, v32, v33);
          v35 = [CKDistributedTimestamp alloc];
          v37 = objc_msgSend_initWithSiteIdentifierObject_clockValue_(v35, v36, v34, v31);
          v40 = objc_msgSend_timestampToContents(self, v38, v39);
          objc_msgSend_setObject_forKeyedSubscript_(v40, v41, v30, v37);

          v44 = objc_msgSend_vector(self, v42, v43);
          v46 = objc_msgSend_indexSetWithIndex_(MEMORY[0x1E696AC90], v45, v31);
          objc_msgSend_addClockValuesInIndexSet_withAtomState_forSiteIdentifier_(v44, v47, v46, 1, v34);

          ++v29;
        }

        while (v27 != v29);
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v51, v55, 16);
      }

      while (v27);
    }

    v4 = v49;
  }

  else
  {
    objc_msgSend_replaceVectorStateForPresentOrTombstonedTimestamps_(self, v10, 2);
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (BOOL)merge:(id)a3 error:(id *)a4
{
  v6 = a3;
  isConsumedState = objc_msgSend_isConsumedState(v6, v7, v8);
  if (isConsumedState)
  {
    if (a4)
    {
      *a4 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v9, @"CKErrorDomain", 12, @"Other register is in consumed state and should not be merged");
    }
  }

  else
  {
    v12 = objc_msgSend_timestampToContents(self, v9, v10);
    v15 = objc_msgSend_timestampToContents(v6, v13, v14);
    objc_msgSend_addEntriesFromDictionary_(v12, v16, v15);

    v19 = objc_msgSend_vector(self, v17, v18);
    v22 = objc_msgSend_vector(v6, v20, v21);
    objc_msgSend_unionStateVector_(v19, v23, v22);

    v24 = objc_opt_new();
    v27 = objc_msgSend_timestampToContents(self, v25, v26);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = sub_18851C3D4;
    v58[3] = &unk_1E70BC018;
    v58[4] = self;
    v59 = v24;
    v28 = v24;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v27, v29, v58);

    v32 = objc_msgSend_timestampToContents(self, v30, v31);
    objc_msgSend_removeObjectsForKeys_(v32, v33, v28);

    v34 = objc_opt_new();
    v37 = objc_msgSend_timestampToContents(self, v35, v36);
    v52 = MEMORY[0x1E69E9820];
    v53 = 3221225472;
    v54 = sub_18851C454;
    v55 = &unk_1E70BC018;
    v56 = self;
    v57 = v34;
    v38 = v34;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v37, v39, &v52);

    v42 = objc_msgSend_vector(self, v40, v41, v52, v53, v54, v55, v56);
    v45 = objc_msgSend_clockVector(v38, v43, v44);
    objc_msgSend_minusVector_(v42, v46, v45);

    v49 = objc_msgSend_vector(self, v47, v48);
    objc_msgSend_unionStateVector_(v49, v50, v38);
  }

  return isConsumedState ^ 1;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    isEqual = 1;
  }

  else
  {
    v6 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(v5, v7, v6))
    {
      v8 = v5;
      v11 = objc_msgSend_vector(self, v9, v10);
      v16 = objc_msgSend_vector(v8, v12, v13);
      if (v11 != v16)
      {
        v17 = objc_msgSend_vector(self, v14, v15);
        v3 = objc_msgSend_vector(v8, v18, v19);
        if (!objc_msgSend_isEqual_(v17, v20, v3))
        {
          isEqual = 0;
LABEL_13:

LABEL_14:
          goto LABEL_15;
        }

        v34 = v17;
      }

      v22 = objc_msgSend_timestampToContents(self, v14, v15);
      v27 = objc_msgSend_timestampToContents(v8, v23, v24);
      if (v22 == v27)
      {
        isEqual = 1;
      }

      else
      {
        v28 = objc_msgSend_timestampToContents(self, v25, v26);
        v31 = objc_msgSend_timestampToContents(v8, v29, v30);
        isEqual = objc_msgSend_isEqual_(v28, v32, v31);
      }

      v17 = v34;
      if (v11 == v16)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    isEqual = 0;
  }

LABEL_15:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_vector(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_timestampToContents(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_vector(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"vector", v7, 0);

  v15 = objc_msgSend_timestampToContents(self, v9, v10);
  v13 = objc_msgSend_allKeys(v15, v11, v12);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v14, @"timestamps", v13, 0);
}

+ (id)placeholderIdentifier
{
  v7[2] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v7[1] = 0;
  v2 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = objc_msgSend_initWithUUIDBytes_(v2, v3, v7);
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

@end