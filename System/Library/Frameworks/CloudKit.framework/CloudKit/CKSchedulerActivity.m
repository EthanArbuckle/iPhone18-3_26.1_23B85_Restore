@interface CKSchedulerActivity
+ (id)defaultRelatedApplicationBundleIdentifiersForContainer:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)userRequestedBackupTask;
- (CKContainer)container;
- (CKSchedulerActivity)initWithIdentifier:(id)a3 container:(id)a4 containerID:(id)a5 priority:(int64_t)a6;
- (CKSchedulerActivity)initWithIdentifier:(id)a3 container:(id)a4 priority:(int64_t)a5;
- (NSArray)relatedApplicationBundleIdentifiers;
- (NSDictionary)additionalXPCActivityCriteria;
- (OS_xpc_object)xpcActivityCriteriaOverrides;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)setAdditionalXPCActivityCriteria:(id)a3;
- (void)setContainer:(id)a3;
- (void)setRelatedApplicationBundleIdentifiers:(id)a3;
- (void)setUserRequestedBackupTask:(BOOL)a3;
- (void)setXpcActivityCriteriaOverrides:(id)a3;
@end

@implementation CKSchedulerActivity

- (CKSchedulerActivity)initWithIdentifier:(id)a3 container:(id)a4 containerID:(id)a5 priority:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v48 = 0;
  v13 = _CKCheckArgument("identifier", v10, 0, 0, 0, &v48);
  v14 = v48;
  if ((v13 & 1) == 0 || (v14, v47 = 0, v15 = _CKCheckArgument("containerID", v12, 0, 0, 0, &v47), v14 = v47, (v15 & 1) == 0))
  {
    v35 = v14;
    v36 = [CKException alloc];
    v39 = objc_msgSend_code(v35, v37, v38);
    v42 = objc_msgSend_localizedDescription(v35, v40, v41);
    v44 = objc_msgSend_initWithCode_format_(v36, v43, v39, @"%@", v42);
    v45 = v44;

    objc_exception_throw(v44);
  }

  v46.receiver = self;
  v46.super_class = CKSchedulerActivity;
  v18 = [(CKSchedulerActivity *)&v46 init];
  if (v18)
  {
    v19 = objc_msgSend_copy(v10, v16, v17);
    identifier = v18->_identifier;
    v18->_identifier = v19;

    v23 = objc_msgSend_copy(v12, v21, v22);
    containerID = v18->_containerID;
    v18->_containerID = v23;

    objc_storeStrong(&v18->_nullableContainer, a4);
    v18->_priority = a6;
    v25 = objc_opt_class();
    v27 = objc_msgSend_defaultRelatedApplicationBundleIdentifiersForContainer_(v25, v26, v11);
    relatedApplicationBundleIdentifiers = v18->_relatedApplicationBundleIdentifiers;
    v18->_relatedApplicationBundleIdentifiers = v27;

    objc_storeStrong(&v18->_fileProtectionType, *MEMORY[0x1E696A3A8]);
    v31 = objc_msgSend_sharedOptions(CKBehaviorOptions, v29, v30);
    v18->_overrideRateLimiting = objc_msgSend_isDASRateLimitingDisabled(v31, v32, v33);
  }

  return v18;
}

+ (id)defaultRelatedApplicationBundleIdentifiersForContainer:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
  v7 = objc_msgSend_options(v3, v5, v6);
  v10 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v7, v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_options(v3, v11, v12);
    v16 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v13, v14, v15);
    objc_msgSend_addObject_(v4, v17, v16);
  }

  v18 = objc_msgSend_options(v3, v11, v12);
  v21 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v18, v19, v20);

  if (v21)
  {
    v24 = objc_msgSend_options(v3, v22, v23);
    v27 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v24, v25, v26);
    objc_msgSend_addObject_(v4, v28, v27);
  }

  v29 = objc_msgSend_options(v3, v22, v23);
  v32 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v29, v30, v31);

  if (v32)
  {
    v35 = objc_msgSend_options(v3, v33, v34);
    v38 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v35, v36, v37);
    objc_msgSend_addObject_(v4, v39, v38);
  }

  v40 = objc_msgSend_options(v3, v33, v34);
  v43 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v40, v41, v42);

  if (v43)
  {
    v46 = objc_msgSend_options(v3, v44, v45);
    v49 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v46, v47, v48);
    objc_msgSend_addObject_(v4, v50, v49);
  }

  v51 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v44, v45);
  v54 = objc_msgSend_untrustedEntitlements(v51, v52, v53);
  v57 = objc_msgSend_applicationBundleID(v54, v55, v56);

  if (v57)
  {
    objc_msgSend_addObject_(v4, v58, v57);
  }

  v60 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v58, v59);
  v63 = objc_msgSend_bundleIdentifier(v60, v61, v62);

  if (v63)
  {
    objc_msgSend_addObject_(v4, v64, v63);
  }

  v66 = objc_msgSend_array(v4, v64, v65);

  return v66;
}

- (CKSchedulerActivity)initWithIdentifier:(id)a3 container:(id)a4 priority:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  v12 = objc_msgSend_containerID(v8, v10, v11);
  v14 = objc_msgSend_initWithIdentifier_container_containerID_priority_(self, v13, v9, v8, v12, a5);

  return v14;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_identifier(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"identifier", v7, 0);

  v9 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend_priority(self, v10, v11);
  v14 = objc_msgSend_numberWithInteger_(v9, v13, v12);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v15, @"priority", v14, 0);

  v20 = objc_msgSend_earliestStartDate(self, v16, v17);
  if (v20)
  {
    objc_msgSend_addProperty_value_shouldRedact_(v4, v18, @"earliestStartDate", v20, 0);
  }

  v21 = objc_msgSend_containerID(self, v18, v19);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v22, @"container", v21, 0);

  v25 = objc_msgSend_expectedTransferSizeBytes(self, v23, v24);
  if (v25)
  {
    v28 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, v25);
    objc_msgSend_addProperty_value_shouldRedact_(v4, v29, @"expectedTransferSizeBytes", v28, 0);
  }

  if (objc_msgSend_userRequestedBackupTask(self, v26, v27))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v4, v30, @"userRequestedBackupTask", MEMORY[0x1E695E118], 0);
  }

  v32 = objc_msgSend_relatedApplicationBundleIdentifiers(self, v30, v31);
  if (objc_msgSend_count(v32, v33, v34))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v4, v35, @"relatedApplications", v32, 0);
  }

  v39 = objc_msgSend_xpcActivityCriteriaOverrides(self, v35, v36);
  if (v39)
  {
    v40 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v37, v38);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_188651198;
    applier[3] = &unk_1E70C01D8;
    v44 = v40;
    v41 = v40;
    xpc_dictionary_apply(v39, applier);
    objc_msgSend_addProperty_value_shouldRedact_(v4, v42, @"xpcActivityCriteriaOverrides", v41, 0);
  }
}

- (unint64_t)hash
{
  v3 = objc_msgSend_identifier(self, a2, v2);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v25) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_identifier(self, v6, v7);
      v11 = objc_msgSend_identifier(v5, v9, v10);
      if (objc_msgSend_isEqual_(v8, v12, v11) && (v15 = objc_msgSend_priority(self, v13, v14), v15 == objc_msgSend_priority(v5, v16, v17)) && (shouldDefer = objc_msgSend_shouldDefer(self, v18, v19), shouldDefer == objc_msgSend_shouldDefer(v5, v21, v22)))
      {
        v27 = objc_msgSend_earliestStartDate(self, v23, v24);
        v30 = objc_msgSend_earliestStartDate(v5, v28, v29);
        if (CKObjectsAreBothNilOrEqual(v27, v30) && (v33 = objc_msgSend_expectedTransferSizeBytes(self, v31, v32), v33 == objc_msgSend_expectedTransferSizeBytes(v5, v34, v35)))
        {
          v38 = objc_msgSend_xpcActivityCriteriaOverrides(self, v36, v37);
          v41 = objc_msgSend_xpcActivityCriteriaOverrides(v5, v39, v40);
          if (CKObjectsAreBothNilOrEqual(v38, v41))
          {
            v44 = objc_msgSend_relatedApplicationBundleIdentifiers(self, v42, v43);
            v66 = objc_msgSend_relatedApplicationBundleIdentifiers(v5, v45, v46);
            if (CKObjectsAreBothNilOrEqual(v44, v66))
            {
              v65 = v44;
              v49 = objc_msgSend_overrideRateLimiting(self, v47, v48);
              if (v49 == objc_msgSend_overrideRateLimiting(v5, v50, v51))
              {
                v54 = objc_msgSend_containerID(self, v52, v53);
                v63 = objc_msgSend_containerID(v5, v55, v56);
                v64 = v54;
                if (objc_msgSend_isEqual_(v54, v57, v63))
                {
                  v60 = objc_msgSend_userRequestedBackupTask(self, v58, v59);
                  v25 = v60 ^ objc_msgSend_userRequestedBackupTask(v5, v61, v62) ^ 1;
                }

                else
                {
                  LOBYTE(v25) = 0;
                }

                v44 = v65;
              }

              else
              {
                LOBYTE(v25) = 0;
                v44 = v65;
              }
            }

            else
            {
              LOBYTE(v25) = 0;
            }
          }

          else
          {
            LOBYTE(v25) = 0;
          }
        }

        else
        {
          LOBYTE(v25) = 0;
        }
      }

      else
      {
        LOBYTE(v25) = 0;
      }
    }

    else
    {
      LOBYTE(v25) = 0;
    }
  }

  return v25;
}

- (CKContainer)container
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_nullableContainer)
  {
    v3 = [CKContainer alloc];
    v6 = objc_msgSend_containerID(v2, v4, v5);
    v8 = objc_msgSend_initWithContainerID_(v3, v7, v6);
    nullableContainer = v2->_nullableContainer;
    v2->_nullableContainer = v8;
  }

  objc_sync_exit(v2);

  v10 = v2->_nullableContainer;

  return v10;
}

- (void)setContainer:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  nullableContainer = obj->_nullableContainer;
  obj->_nullableContainer = v4;

  objc_sync_exit(obj);
}

- (BOOL)userRequestedBackupTask
{
  v2 = self;
  objc_sync_enter(v2);
  userRequestedBackupTask = v2->_userRequestedBackupTask;
  objc_sync_exit(v2);

  return userRequestedBackupTask;
}

- (void)setUserRequestedBackupTask:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_userRequestedBackupTask = a3;
  objc_sync_exit(obj);
}

- (NSArray)relatedApplicationBundleIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_relatedApplicationBundleIdentifiers;
  objc_sync_exit(v2);

  return v3;
}

- (void)setRelatedApplicationBundleIdentifiers:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  relatedApplicationBundleIdentifiers = v4->_relatedApplicationBundleIdentifiers;
  v4->_relatedApplicationBundleIdentifiers = v7;

  objc_sync_exit(v4);
}

- (void)setAdditionalXPCActivityCriteria:(id)a3
{
  if (a3)
  {
    v4 = a3;
    empty = xpc_dictionary_create_empty();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_18865182C;
    v8[3] = &unk_1E70C0200;
    v6 = empty;
    v9 = v6;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v7, v8);
  }

  else
  {
    v6 = 0;
  }

  objc_msgSend_setXpcActivityCriteriaOverrides_(self, a2, v6);
}

- (NSDictionary)additionalXPCActivityCriteria
{
  v5 = objc_msgSend_xpcActivityCriteriaOverrides(self, a2, v2);
  if (v5)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v3, v4);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_188651968;
    applier[3] = &unk_1E70C01D8;
    v7 = v6;
    v10 = v7;
    xpc_dictionary_apply(v5, applier);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setXpcActivityCriteriaOverrides:(id)a3
{
  object = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = object;
  if (object)
  {
    Class = object_getClass(object);
    if (Class != MEMORY[0x1E69E9E80])
    {
      v8 = [CKException alloc];
      name = xpc_type_get_name(MEMORY[0x1E69E9E80]);
      v10 = xpc_type_get_name(Class);
      v12 = objc_msgSend_initWithName_format_(v8, v11, *MEMORY[0x1E695D940], @"Tried to set invalid object for xpcActivityCriteriaOverrides. Expected %s, but received %s.", name, v10);
      objc_exception_throw(v12);
    }

    v5 = xpc_copy(object);
  }

  xpcActivityCriteriaOverrides = v4->_xpcActivityCriteriaOverrides;
  v4->_xpcActivityCriteriaOverrides = v5;

  objc_sync_exit(v4);
}

- (OS_xpc_object)xpcActivityCriteriaOverrides
{
  v2 = self;
  objc_sync_enter(v2);
  xpcActivityCriteriaOverrides = v2->_xpcActivityCriteriaOverrides;
  if (xpcActivityCriteriaOverrides)
  {
    v4 = xpc_copy(xpcActivityCriteriaOverrides);
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CKSchedulerActivity alloc];
  v8 = objc_msgSend_identifier(self, v6, v7);
  v11 = objc_msgSend_containerID(self, v9, v10);
  v14 = objc_msgSend_priority(self, v12, v13);
  v16 = objc_msgSend_initWithIdentifier_containerID_priority_(v5, v15, v8, v11, v14);

  *(v16 + 48) = objc_msgSend_expectedTransferSizeBytes(self, v17, v18);
  v21 = objc_msgSend_earliestStartDate(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  v25 = *(v16 + 56);
  *(v16 + 56) = v24;

  v28 = objc_msgSend_xpcActivityCriteriaOverrides(self, v26, v27);
  v31 = v28;
  if (v28)
  {
    v32 = xpc_copy(v28);
    v33 = *(v16 + 16);
    *(v16 + 16) = v32;
  }

  *(v16 + 9) = objc_msgSend_shouldDefer(self, v29, v30);
  v36 = objc_msgSend_fileProtectionType(self, v34, v35);
  v38 = objc_msgSend_copyWithZone_(v36, v37, a3);
  v39 = *(v16 + 88);
  *(v16 + 88) = v38;

  v42 = objc_msgSend_backgroundTask(self, v40, v41);
  v43 = *(v16 + 80);
  *(v16 + 80) = v42;

  *(v16 + 8) = objc_msgSend_userRequestedBackupTask(self, v44, v45);
  v48 = objc_msgSend_relatedApplicationBundleIdentifiers(self, v46, v47);
  v51 = objc_msgSend_CKDeepCopy(v48, v49, v50);
  v52 = *(v16 + 24);
  *(v16 + 24) = v51;

  return v16;
}

@end