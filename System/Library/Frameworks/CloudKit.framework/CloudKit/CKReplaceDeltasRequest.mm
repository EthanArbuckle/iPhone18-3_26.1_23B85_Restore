@interface CKReplaceDeltasRequest
- (BOOL)isEqual:(id)equal;
- (CKReplaceDeltasRequest)init;
- (CKReplaceDeltasRequest)initWithCoder:(id)coder;
- (CKReplaceDeltasRequest)initWithValueID:(id)d deltaIdentifiersToReplace:(id)replace replacementDeltas:(id)deltas replacementDeltasContainNewData:(BOOL)data;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKReplaceDeltasRequest

- (CKReplaceDeltasRequest)initWithValueID:(id)d deltaIdentifiersToReplace:(id)replace replacementDeltas:(id)deltas replacementDeltasContainNewData:(BOOL)data
{
  dCopy = d;
  replaceCopy = replace;
  deltasCopy = deltas;
  v45 = 0;
  v13 = _CKCheckArgument("valueID", dCopy, 0, 0, 0, &v45);
  v14 = v45;
  if ((v13 & 1) == 0)
  {
    goto LABEL_7;
  }

  v44 = 0;
  v15 = _CKCheckArgument("deltaIdentifiersToReplace", replaceCopy, 0, 0, 0, &v44);
  v14 = v44;
  if ((v15 & 1) == 0 || (v14, v43 = 0, v16 = _CKCheckArgument("replacementDeltas", deltasCopy, 0, 0, 0, &v43), v14 = v43, (v16 & 1) == 0))
  {
LABEL_7:
    v31 = v14;
    v32 = [CKException alloc];
    v35 = objc_msgSend_code(v31, v33, v34);
    v38 = objc_msgSend_localizedDescription(v31, v36, v37);
    v40 = objc_msgSend_initWithCode_format_(v32, v39, v35, @"%@", v38);
    v41 = v40;

    objc_exception_throw(v40);
  }

  v42.receiver = self;
  v42.super_class = CKReplaceDeltasRequest;
  v19 = [(CKReplaceDeltasRequest *)&v42 init];
  if (v19)
  {
    v20 = objc_msgSend_copy(dCopy, v17, v18);
    valueID = v19->_valueID;
    v19->_valueID = v20;

    v24 = objc_msgSend_copy(replaceCopy, v22, v23);
    deltaIdentifiersToReplace = v19->_deltaIdentifiersToReplace;
    v19->_deltaIdentifiersToReplace = v24;

    v28 = objc_msgSend_copy(deltasCopy, v26, v27);
    replacementDeltas = v19->_replacementDeltas;
    v19->_replacementDeltas = v28;

    v19->_replacementDeltasContainNewData = data;
  }

  return v19;
}

- (CKReplaceDeltasRequest)init
{
  v3 = [CKException alloc];
  v4 = *MEMORY[0x1E695D940];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  v9 = objc_msgSend_initWithName_format_(v3, v8, v4, @"[%@ %@] is unavailable", v6, v7);
  v10 = v9;

  objc_exception_throw(v9);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v33 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = objc_msgSend_replacementDeltasContainNewData(self, v5, v6);
    if (v7 != objc_msgSend_replacementDeltasContainNewData(equalCopy, v8, v9))
    {
      goto LABEL_7;
    }

    v12 = objc_msgSend_valueID(self, v10, v11);
    v15 = objc_msgSend_valueID(equalCopy, v13, v14);
    isEqual = objc_msgSend_isEqual_(v12, v16, v15);

    if (!isEqual)
    {
      goto LABEL_7;
    }

    v20 = objc_msgSend_deltaIdentifiersToReplace(self, v18, v19);
    v23 = objc_msgSend_deltaIdentifiersToReplace(equalCopy, v21, v22);
    v25 = objc_msgSend_isEqual_(v20, v24, v23);

    if (v25)
    {
      v28 = objc_msgSend_replacementDeltas(self, v26, v27);
      v31 = objc_msgSend_replacementDeltas(equalCopy, v29, v30);
      v33 = objc_msgSend_isEqual_(v28, v32, v31);
    }

    else
    {
LABEL_7:
      v33 = 0;
    }
  }

  return v33;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_valueID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_deltaIdentifiersToReplace(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_replacementDeltas(self, v14, v15);
  v19 = v13 ^ objc_msgSend_hash(v16, v17, v18);
  v22 = objc_msgSend_replacementDeltasContainNewData(self, v20, v21);

  return v19 ^ v22;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v7 = objc_msgSend_valueID(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v8, @"valueID", v7, 0);

  v11 = objc_msgSend_deltaIdentifiersToReplace(self, v9, v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v12, @"deltaIdentifiersToReplace", v11, 0);

  v15 = objc_msgSend_replacementDeltas(self, v13, v14);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v16, @"replacementDeltas", v15, 0);

  v17 = MEMORY[0x1E696AD98];
  v20 = objc_msgSend_replacementDeltasContainNewData(self, v18, v19);
  v23 = objc_msgSend_numberWithBool_(v17, v21, v20);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v22, @"replacementDeltasContainNewData", v23, 0);
}

- (CKReplaceDeltasRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_valueID);
  v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v5, v6);

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v13 = objc_msgSend_setWithObjects_(v9, v12, v10, v11, 0);
  v14 = NSStringFromSelector(sel_deltaIdentifiersToReplace);
  v16 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v15, v13, v14);

  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v21 = objc_msgSend_setWithObjects_(v17, v20, v18, v19, 0);
  v22 = NSStringFromSelector(sel_replacementDeltas);
  v24 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v23, v21, v22);

  v25 = NSStringFromSelector(sel_replacementDeltasContainNewData);
  v27 = objc_msgSend_decodeBoolForKey_(coderCopy, v26, v25);

  v29 = objc_msgSend_initWithValueID_deltaIdentifiersToReplace_replacementDeltas_replacementDeltasContainNewData_(self, v28, v8, v16, v24, v27);
  return v29;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_valueID(self, v5, v6);
  v8 = NSStringFromSelector(sel_valueID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);

  v12 = objc_msgSend_deltaIdentifiersToReplace(self, v10, v11);
  v13 = NSStringFromSelector(sel_deltaIdentifiersToReplace);
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v12, v13);

  v17 = objc_msgSend_replacementDeltas(self, v15, v16);
  v18 = NSStringFromSelector(sel_replacementDeltas);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v17, v18);

  v22 = objc_msgSend_replacementDeltasContainNewData(self, v20, v21);
  v23 = NSStringFromSelector(sel_replacementDeltasContainNewData);
  objc_msgSend_encodeBool_forKey_(coderCopy, v24, v22, v23);

  objc_autoreleasePoolPop(v4);
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E695DFD8];
  v7 = objc_msgSend_deltaIdentifiersToReplace(self, v5, v6);
  v9 = objc_msgSend_setWithArray_(v4, v8, v7);
  objc_msgSend_addPlistObject_forKey_(v3, v10, v9, @"ids");

  v13 = objc_msgSend_valueID(self, v11, v12);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v14, v13, @"valueID");

  v17 = objc_msgSend_properties(v3, v15, v16);

  return v17;
}

@end