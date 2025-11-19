@interface CKThrottle
- (BOOL)appliesToCriteria:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpired;
- (CKThrottle)init;
- (CKThrottle)initWithCoder:(id)a3;
- (NSNumber)currentRequestWindowIndex;
- (NSNumber)sentRequestCount;
- (double)delayUntilNextOperationAllowed;
- (id)CKDeepCopy;
- (id)CKDeepCopyWithLeafNodeCopyBlock:(id)a3;
- (id)copy;
- (id)throttleBlockingUntilNextRequestWindow;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)incrementSentRequestCount;
- (void)setCurrentRequestWindowIndex:(id)a3;
- (void)setSentRequestCount:(id)a3;
@end

@implementation CKThrottle

- (CKThrottle)init
{
  v15.receiver = self;
  v15.super_class = CKThrottle;
  v4 = [(CKThrottle *)&v15 init];
  if (v4)
  {
    v5 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v2, v3);
    expirationDate = v4->_expirationDate;
    v4->_expirationDate = v5;

    v9 = objc_msgSend_date(MEMORY[0x1E695DF00], v7, v8);
    throttleStartDate = v4->_throttleStartDate;
    v4->_throttleStartDate = v9;

    sentRequestCount = v4->_sentRequestCount;
    v4->_sentRequestCount = &unk_1EFA850E0;

    currentRequestWindowIndex = v4->_currentRequestWindowIndex;
    v4->_currentRequestWindowIndex = &unk_1EFA850E0;

    errorCode = v4->_errorCode;
    v4->_errorCode = &unk_1EFA850F8;
  }

  return v4;
}

- (id)copy
{
  v3 = objc_alloc_init(objc_opt_class());
  v6 = objc_msgSend_copy(self->_throttleID, v4, v5);
  v7 = *(v3 + 3);
  *(v3 + 3) = v6;

  v10 = objc_msgSend_copy(self->_label, v8, v9);
  v11 = *(v3 + 4);
  *(v3 + 4) = v10;

  v14 = objc_msgSend_copy(self->_containerIdentifier, v12, v13);
  v15 = *(v3 + 5);
  *(v3 + 5) = v14;

  v18 = objc_msgSend_copy(self->_databaseScope, v16, v17);
  v19 = *(v3 + 6);
  *(v3 + 6) = v18;

  v22 = objc_msgSend_copy(self->_zoneName, v20, v21);
  v23 = *(v3 + 7);
  *(v3 + 7) = v22;

  objc_storeStrong(v3 + 8, self->_operationType);
  v26 = objc_msgSend_copy(self->_serviceName, v24, v25);
  v27 = *(v3 + 9);
  *(v3 + 9) = v26;

  v30 = objc_msgSend_copy(self->_functionName, v28, v29);
  v31 = *(v3 + 10);
  *(v3 + 10) = v30;

  v34 = objc_msgSend_copy(self->_bundleID, v32, v33);
  v35 = *(v3 + 11);
  *(v3 + 11) = v34;

  v38 = objc_msgSend_copy(self->_operationGroupNamePrefix, v36, v37);
  v39 = *(v3 + 12);
  *(v3 + 12) = v38;

  v42 = objc_msgSend_copy(self->_intervalLengthSeconds, v40, v41);
  v43 = *(v3 + 14);
  *(v3 + 14) = v42;

  v46 = objc_msgSend_copy(self->_repeatEverySeconds, v44, v45);
  v47 = *(v3 + 15);
  *(v3 + 15) = v46;

  v50 = objc_msgSend_copy(self->_allowedRequestCount, v48, v49);
  v51 = *(v3 + 16);
  *(v3 + 16) = v50;

  v54 = objc_msgSend_copy(self->_throttleStartDate, v52, v53);
  v55 = *(v3 + 13);
  *(v3 + 13) = v54;

  v58 = objc_msgSend_copy(self->_expirationDate, v56, v57);
  v59 = *(v3 + 17);
  *(v3 + 17) = v58;

  v62 = objc_msgSend_copy(self->_errorCode, v60, v61);
  v63 = *(v3 + 18);
  *(v3 + 18) = v62;

  *(v3 + 19) = self->_flags;
  v66 = objc_msgSend_sentRequestCount(self, v64, v65);
  v67 = *(v3 + 1);
  *(v3 + 1) = v66;

  v70 = objc_msgSend_currentRequestWindowIndex(self, v68, v69);
  v71 = *(v3 + 2);
  *(v3 + 2) = v70;

  return v3;
}

- (id)CKDeepCopy
{
  v3 = objc_msgSend_copy(self, a2, v2);

  return v3;
}

- (id)CKDeepCopyWithLeafNodeCopyBlock:(id)a3
{
  result = a3;
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  objc_msgSend_encodeEntry_withCoder_(CKThrottleTable, v5, v4, v6);
  objc_sync_exit(v4);
}

- (CKThrottle)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKThrottle;
  v6 = [(CKThrottle *)&v8 init];
  if (v6)
  {
    objc_msgSend_decodeEntry_withCoder_(CKThrottleTable, v5, v6, v4);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    HaveEqualProperties_other_includePrimaryKey = 1;
  }

  else
  {
    v5 = self;
    objc_sync_enter(v5);
    HaveEqualProperties_other_includePrimaryKey = objc_msgSend_entriesHaveEqualProperties_other_includePrimaryKey_(CKThrottleTable, v6, v5, v4, 0);
    objc_sync_exit(v5);
  }

  return HaveEqualProperties_other_includePrimaryKey;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_throttleID(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_hash(self->_label, v8, v9);

  return v10 ^ v7;
}

- (id)throttleBlockingUntilNextRequestWindow
{
  v4 = objc_msgSend_copy(self, a2, v2);
  objc_msgSend_setAllowedRequestCount_(v4, v5, 0);
  throttleStartDate = self->_throttleStartDate;
  objc_msgSend_delayUntilNextOperationAllowed(self, v7, v8);
  v11 = objc_msgSend_dateByAddingTimeInterval_(throttleStartDate, v9, v10);
  objc_msgSend_setExpirationDate_(v4, v12, v11);

  return v4;
}

- (BOOL)isExpired
{
  expirationDate = self->_expirationDate;
  if (!expirationDate)
  {
    return 1;
  }

  objc_msgSend_timeIntervalSinceNow(expirationDate, a2, v2);
  return v4 < 0.0;
}

- (BOOL)appliesToCriteria:(id)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_msgSend_timeIntervalSinceNow(self->_throttleStartDate, v5, v6);
  if (v9 > 0.0)
  {
    goto LABEL_6;
  }

  if (!self->_containerIdentifier)
  {
    isEqualToString = 1;
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_containerID(v4, v7, v8);
    v13 = v10;
    if (v10)
    {
      v14 = objc_msgSend_containerIdentifier(v10, v11, v12);
      isEqualToString = objc_msgSend_isEqualToString_(v14, v15, self->_containerIdentifier);
    }

    else
    {
      isEqualToString = 1;
    }
  }

  else
  {
LABEL_6:
    isEqualToString = 0;
  }

LABEL_10:
  v17 = objc_msgSend_integerValue(self->_databaseScope, v7, v8);
  if (isEqualToString && (v20 = v17) != 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_53;
    }

    v23 = objc_msgSend_databaseScope(v4, v21, v22);
    if (v23)
    {
      if (v20 != v23)
      {
        goto LABEL_53;
      }
    }
  }

  else if (!isEqualToString)
  {
    goto LABEL_53;
  }

  if (self->_zoneName)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_53;
    }

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v26 = objc_msgSend_relevantZoneIDs(v4, v24, v25, 0);
    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v68, v74, 16);
    if (v28)
    {
      v31 = v28;
      v32 = *v69;
LABEL_21:
      v33 = 0;
      while (1)
      {
        if (*v69 != v32)
        {
          objc_enumerationMutation(v26);
        }

        v34 = objc_msgSend_zoneName(*(*(&v68 + 1) + 8 * v33), v29, v30);
        v36 = objc_msgSend_isEqualToString_(v34, v35, self->_zoneName);

        if (v36)
        {
          break;
        }

        if (v31 == ++v33)
        {
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v68, v74, 16);
          if (v31)
          {
            goto LABEL_21;
          }

          goto LABEL_53;
        }
      }
    }
  }

  operationType = self->_operationType;
  if (!operationType)
  {
    goto LABEL_33;
  }

  v38 = objc_msgSend_intValue(operationType, v18, v19);
  if (!v38)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v65 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v73 = self;
      _os_log_error_impl(&dword_1883EA000, v65, OS_LOG_TYPE_ERROR, "Not enforcing throttle with operation type none: %@", buf, 0xCu);
    }

    goto LABEL_53;
  }

  v39 = v38;
  if ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend_isOperationType_(v4, v40, v39))
  {
LABEL_53:
    hasPrefix = 0;
    goto LABEL_54;
  }

LABEL_33:
  if (self->_serviceName)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_53;
    }

    v43 = objc_msgSend_serviceName(v4, v41, v42);
    if (v43)
    {
      v45 = v43;
      v46 = objc_msgSend_isEqualToString_(self->_serviceName, v44, v43);

      if (!v46)
      {
        goto LABEL_53;
      }
    }
  }

  if (self->_functionName)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_53;
    }

    v49 = objc_msgSend_functionName(v4, v47, v48);
    if (v49)
    {
      v51 = v49;
      v52 = objc_msgSend_isEqualToString_(self->_functionName, v50, v49);

      if (!v52)
      {
        goto LABEL_53;
      }
    }
  }

  if (self->_bundleID)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_53;
    }

    v55 = objc_msgSend_applicationBundleIdentifierForContainerAccess(v4, v53, v54);
    if (v55)
    {
      v57 = v55;
      v58 = objc_msgSend_isEqualToString_(self->_bundleID, v56, v55);

      if (!v58)
      {
        goto LABEL_53;
      }
    }
  }

  if (!self->_operationGroupNamePrefix)
  {
    hasPrefix = 1;
    goto LABEL_54;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_53;
  }

  v61 = objc_msgSend_operationGroupName(v4, v59, v60);
  v63 = v61;
  if (v61)
  {
    hasPrefix = objc_msgSend_hasPrefix_(v61, v62, self->_operationGroupNamePrefix);
  }

  else
  {
    hasPrefix = 1;
  }

LABEL_54:
  v66 = *MEMORY[0x1E69E9840];
  return hasPrefix;
}

- (double)delayUntilNextOperationAllowed
{
  objc_msgSend_timeIntervalSinceNow(self->_expirationDate, a2, v2);
  v5 = v4;
  v8 = objc_msgSend_unsignedIntValue(self->_allowedRequestCount, v6, v7);
  v11 = objc_msgSend_unsignedIntValue(self->_repeatEverySeconds, v9, v10);
  v14 = objc_msgSend_unsignedIntValue(self->_intervalLengthSeconds, v12, v13);
  if (v8)
  {
    v15 = 1;
  }

  else
  {
    v15 = v11 > v14;
  }

  if (v15)
  {
    v16 = v14;
    v17 = self;
    objc_sync_enter(v17);
    v20 = objc_msgSend_unsignedIntValue(v17->_sentRequestCount, v18, v19);
    v25 = 0.0;
    if (v20 >= objc_msgSend_unsignedIntValue(self->_allowedRequestCount, v21, v22))
    {
      v26 = objc_msgSend_date(MEMORY[0x1E695DF00], v23, v24);
      v28 = v26;
      if (v11 <= v16)
      {
        v11 = v16;
      }

      objc_msgSend_timeIntervalSinceDate_(v26, v27, v17->_throttleStartDate);
      v30 = v29;
      v33 = objc_msgSend_unsignedIntValue(v17->_currentRequestWindowIndex, v31, v32);
      v36 = v11;
      v37 = v30 / v11;
      v38 = vcvtms_u32_f32(v37);
      if (v38 != v33)
      {
        sentRequestCount = v17->_sentRequestCount;
        v17->_sentRequestCount = &unk_1EFA850E0;

        v41 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v40, v38);
        currentRequestWindowIndex = v17->_currentRequestWindowIndex;
        v17->_currentRequestWindowIndex = v41;

        if (v8)
        {
          v5 = 0.0;
        }
      }

      v43 = v16 + v36 * objc_msgSend_unsignedIntValue(v17->_currentRequestWindowIndex, v34, v35);
      v44 = v43 - v30;
      if (v44 < 0.0)
      {
        v44 = 0.0;
      }

      if (v44 >= v5)
      {
        v25 = v5;
      }

      else
      {
        v25 = v44;
      }
    }

    objc_sync_exit(v17);

    return v25;
  }

  return v5;
}

- (NSNumber)sentRequestCount
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_sentRequestCount;
  objc_sync_exit(v2);

  return v3;
}

- (void)setSentRequestCount:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  sentRequestCount = obj->_sentRequestCount;
  obj->_sentRequestCount = v4;

  objc_sync_exit(obj);
}

- (void)incrementSentRequestCount
{
  obj = self;
  objc_sync_enter(obj);
  v2 = MEMORY[0x1E696AD98];
  v5 = objc_msgSend_intValue(obj->_sentRequestCount, v3, v4);
  v7 = objc_msgSend_numberWithInt_(v2, v6, (v5 + 1));
  sentRequestCount = obj->_sentRequestCount;
  obj->_sentRequestCount = v7;

  objc_sync_exit(obj);
}

- (NSNumber)currentRequestWindowIndex
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_currentRequestWindowIndex;
  objc_sync_exit(v2);

  return v3;
}

- (void)setCurrentRequestWindowIndex:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  currentRequestWindowIndex = obj->_currentRequestWindowIndex;
  obj->_currentRequestWindowIndex = v4;

  objc_sync_exit(obj);
}

@end