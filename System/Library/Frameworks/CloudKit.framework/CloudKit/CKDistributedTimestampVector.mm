@interface CKDistributedTimestampVector
- (BOOL)_isGreaterThanOrEqualToTimestamp:(id)timestamp;
- (BOOL)isEqual:(id)equal;
- (CKDistributedTimestampVector)initWithCoder:(id)coder;
- (CKDistributedTimestampVector)initWithTimestampClockVector:(id)vector fillingInGaps:(BOOL)gaps;
- (CKDistributedTimestampVector)initWithTimestamps:(id)timestamps;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)minimalTimestampWith:(id)with;
- (id)sequentialSiteIdentifiers;
- (id)timestampAtIndex:(unint64_t)index;
- (id)timestampForSiteIdentifier:(id)identifier;
- (id)timestamps;
- (int64_t)compareToTimestampVector:(id)vector;
- (int64_t)indexForTimestampForSiteIdentifier:(id)identifier;
- (unint64_t)hash;
- (unint64_t)timestampCount;
- (void)addTimestamp:(id)timestamp;
- (void)encodeWithCoder:(id)coder;
- (void)mergeFrom:(id)from;
@end

@implementation CKDistributedTimestampVector

- (CKDistributedTimestampVector)initWithTimestamps:(id)timestamps
{
  timestampsCopy = timestamps;
  v12.receiver = self;
  v12.super_class = CKDistributedTimestampVector;
  v5 = [(CKDistributedTimestampVector *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_new();
    timestampArray = v5->_timestampArray;
    v5->_timestampArray = v6;

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1885541DC;
    v10[3] = &unk_1E70BD1D8;
    v11 = v5;
    objc_msgSend_enumerateObjectsUsingBlock_(timestampsCopy, v8, v10);
  }

  return v5;
}

- (CKDistributedTimestampVector)initWithTimestampClockVector:(id)vector fillingInGaps:(BOOL)gaps
{
  v45 = *MEMORY[0x1E69E9840];
  vectorCopy = vector;
  v37 = objc_msgSend_initWithTimestamps_(self, v7, 0);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v8 = vectorCopy;
  v11 = objc_msgSend_allSiteIdentifiers(vectorCopy, v9, v10);
  obj = v11;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v40, v44, 16);
  if (v14)
  {
    v15 = *v41;
    v35 = *MEMORY[0x1E695D940];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v40 + 1) + 8 * i);
        v18 = objc_msgSend_clockValuesForSiteIdentifier_(v8, v13, v17);
        v21 = v18;
        if (!gaps && objc_msgSend_count(v18, v19, v20))
        {
          Index = objc_msgSend_firstIndex(v21, v22, v23);
          v27 = objc_msgSend_lastIndex(v21, v25, v26);
          if (v27 != objc_msgSend_count(v21, v28, v29) - 1 || Index != 0)
          {
            objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v30, v35, @"Sparse timestamp vector is discontiguous and incompatible with conventional timestamp vector");
          }
        }

        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = sub_18855447C;
        v38[3] = &unk_1E70BD200;
        v38[4] = v17;
        v39 = v37;
        objc_msgSend_enumerateRangesUsingBlock_(v21, v32, v38);
      }

      v11 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v40, v44, 16);
    }

    while (v14);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v37;
}

- (CKDistributedTimestampVector)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CKDistributedTimestampVector;
  v5 = [(CKDistributedTimestampVector *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v10 = objc_msgSend_setWithObjects_(v6, v9, v7, v8, 0);
    v11 = NSStringFromSelector(sel_timestamps);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v10, v11);

    v15 = objc_msgSend_arrayWithArray_(MEMORY[0x1E695DF70], v14, v13);
    timestampArray = v5->_timestampArray;
    v5->_timestampArray = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_timestampArray(self, v5, v6);
  v8 = NSStringFromSelector(sel_timestamps);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);

  objc_autoreleasePoolPop(v4);
}

- (unint64_t)timestampCount
{
  v3 = objc_msgSend_timestampArray(self, a2, v2);
  v6 = objc_msgSend_count(v3, v4, v5);

  return v6;
}

- (id)timestampAtIndex:(unint64_t)index
{
  v4 = objc_msgSend_timestampArray(self, a2, index);
  v6 = objc_msgSend_objectAtIndexedSubscript_(v4, v5, index);

  return v6;
}

- (int64_t)indexForTimestampForSiteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0x7FFFFFFFFFFFFFFFLL;
  v7 = objc_msgSend_timestampArray(self, v5, v6);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_188554910;
  v12[3] = &unk_1E70BD228;
  v8 = identifierCopy;
  v13 = v8;
  v14 = &v15;
  objc_msgSend_enumerateObjectsUsingBlock_(v7, v9, v12);

  v10 = v16[3];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)timestampForSiteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8 = objc_msgSend_indexForTimestampForSiteIdentifier_(self, v5, identifierCopy);
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_msgSend_timestampArray(self, v6, v7);
    v9 = objc_msgSend_objectAtIndexedSubscript_(v10, v11, v8);
  }

  return v9;
}

- (id)sequentialSiteIdentifiers
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_timestampArray(self, v4, v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_188554B2C;
  v10[3] = &unk_1E70BD1D8;
  v7 = v3;
  v11 = v7;
  objc_msgSend_enumerateObjectsUsingBlock_(v6, v8, v10);

  return v7;
}

- (id)timestamps
{
  v3 = objc_msgSend_timestampArray(self, a2, v2);
  v6 = objc_msgSend_copy(v3, v4, v5);

  return v6;
}

- (BOOL)_isGreaterThanOrEqualToTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v7 = objc_msgSend_sequentialSiteIdentifiers(self, v5, v6);
  v10 = objc_msgSend_sequentialSiteIdentifiers(timestampCopy, v8, v9);
  if (objc_msgSend_isSubsetOfSet_(v10, v11, v7))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v14 = objc_msgSend_timestamps(timestampCopy, v12, v13);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_188554D50;
    v18[3] = &unk_1E70BD228;
    v18[4] = self;
    v18[5] = &v19;
    objc_msgSend_enumerateObjectsUsingBlock_(v14, v15, v18);

    v16 = *(v20 + 24) ^ 1;
    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

- (int64_t)compareToTimestampVector:(id)vector
{
  vectorCopy = vector;
  if (objc_msgSend__isGreaterThanOrEqualToTimestamp_(vectorCopy, v5, self) && (objc_msgSend__isGreaterThanOrEqualToTimestamp_(self, v6, vectorCopy) & 1) != 0)
  {
    v7 = 0;
  }

  else if (objc_msgSend__isGreaterThanOrEqualToTimestamp_(vectorCopy, v6, self))
  {
    v7 = -1;
  }

  else if (objc_msgSend__isGreaterThanOrEqualToTimestamp_(self, v8, vectorCopy))
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  return v7;
}

- (void)addTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  if (objc_msgSend_modifier(timestampCopy, v5, v6))
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKDistributedTime.mm", 373, @"Non-zero modifiers for ordered timestamps not yet supported");
  }

  v9 = objc_msgSend_siteIdentifier(timestampCopy, v7, v8);
  v11 = objc_msgSend_indexForTimestampForSiteIdentifier_(self, v10, v9);

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = objc_msgSend_timestampArray(self, v12, v13);
    objc_msgSend_addObject_(v14, v15, timestampCopy);
  }

  else
  {
    v16 = objc_msgSend_clockValue(timestampCopy, v12, v13);
    v19 = objc_msgSend_timestampArray(self, v17, v18);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, v11);
    v24 = objc_msgSend_clockValue(v21, v22, v23);

    if (v16 <= v24)
    {
      goto LABEL_8;
    }

    v14 = objc_msgSend_timestampArray(self, v25, v26);
    objc_msgSend_setObject_atIndexedSubscript_(v14, v27, timestampCopy, v11);
  }

LABEL_8:
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy)
  {
    v8 = objc_msgSend_timestamps(fromCopy, v5, v6);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_18855512C;
    v10[3] = &unk_1E70BD250;
    v10[4] = self;
    v11 = v7;
    objc_msgSend_enumerateObjectsUsingBlock_(v8, v9, v10);
  }
}

- (id)minimalTimestampWith:(id)with
{
  withCopy = with;
  v6 = [CKDistributedTimestampVector alloc];
  v8 = objc_msgSend_initWithTimestamps_(v6, v7, 0);
  v11 = objc_msgSend_timestamps(v8, v9, v10);
  v14 = objc_msgSend_count(v11, v12, v13);

  if (v14)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v15, v16);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CKDistributedTime.mm", 399, @"Didn't expect non-zero timestamps");
  }

  v17 = objc_msgSend_timestampArray(self, v15, v16);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_188555330;
  v26[3] = &unk_1E70BD250;
  v18 = withCopy;
  v27 = v18;
  v19 = v8;
  v28 = v19;
  objc_msgSend_enumerateObjectsUsingBlock_(v17, v20, v26);

  v21 = v28;
  v22 = v19;

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v9 = ((equalCopy != 0) & objc_opt_isKindOfClass()) != 0 && (v6 = objc_msgSend_compareToTimestampVector_(self, v5, equalCopy), v6 == objc_msgSend_compareToTimestampVector_(equalCopy, v7, self)) && objc_msgSend_compareToTimestampVector_(self, v8, equalCopy) == 0;

  return v9;
}

- (unint64_t)hash
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v3 = objc_msgSend_timestampArray(self, a2, v2);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_188555594;
  v7[3] = &unk_1E70BD278;
  v7[4] = &v8;
  objc_msgSend_enumerateObjectsUsingBlock_(v3, v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)description
{
  v4 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2);
  v7 = objc_msgSend_timestampArray(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_timestampArray(self, v11, v12);
    v15 = objc_msgSend_sortedArrayUsingComparator_(v13, v14, &unk_1EFA2EAC8);
    v18 = objc_msgSend_string(MEMORY[0x1E696AD60], v16, v17);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_188555860;
    v26[3] = &unk_1E70BD250;
    v19 = v18;
    v27 = v19;
    v28 = v15;
    v20 = v15;
    objc_msgSend_enumerateObjectsUsingBlock_(v20, v21, v26);
    v22 = v28;
    v23 = v19;

    objc_msgSend_appendFormat_(v4, v24, @"[%@]", v23);
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_msgSend_timestampArray(self, a2, zone);
  v6 = objc_msgSend_CKDeepCopy(v3, v4, v5);

  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithTimestamps_(v7, v8, v6);

  return v9;
}

@end