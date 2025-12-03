@interface CKAssetRepairOperationUtilities
+ (BOOL)errorIsRetriableInNearFuture:(id)future;
+ (BOOL)errorShouldTriggerNetworkReachabilityEvent:(id)event;
+ (BOOL)repairErrorShouldBeMarkedAsBroken:(id)broken;
+ (id)createRepairContainerFromContainer:(id)container withOverrides:(id)overrides;
+ (id)createRepairOperationGroupWithName:(id)name;
+ (id)repairRecordFromRecord:(id)record field:(id)field listIndex:(int64_t)index repairZoneID:(id)d;
+ (id)uploadRequestMetadataFromRepairRecord:(id)record;
+ (void)clearRepairZoneForDatabase:(id)database withRepairContainerOverrides:(id)overrides completionHandler:(id)handler;
@end

@implementation CKAssetRepairOperationUtilities

+ (id)createRepairOperationGroupWithName:(id)name
{
  nameCopy = name;
  v4 = objc_alloc_init(CKOperationConfiguration);
  objc_msgSend_setDiscretionaryNetworkBehavior_(v4, v5, 0);
  objc_msgSend_setAutomaticallyRetryNetworkFailures_(v4, v6, 0);
  objc_msgSend_setQualityOfService_(v4, v7, 17);
  objc_msgSend_setAllowsCellularAccess_(v4, v8, 0);
  objc_msgSend_setRequestOriginator_(v4, v9, 1);
  v10 = objc_alloc_init(CKOperationGroup);
  objc_msgSend_setDefaultConfiguration_(v10, v11, v4);
  objc_msgSend_setName_(v10, v12, nameCopy);

  return v10;
}

+ (id)createRepairContainerFromContainer:(id)container withOverrides:(id)overrides
{
  v63 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  overridesCopy = overrides;
  v10 = objc_msgSend_primaryIdentifier(containerCopy, v7, v8);
  if (v10)
  {
    v11 = objc_msgSend_resolvedConfigurationWithBaseContainer_overrides_(CKUploadRequestConfiguration, v9, containerCopy, overridesCopy);
    v12 = objc_opt_new();
    v15 = objc_msgSend_options(containerCopy, v13, v14);
    v18 = objc_msgSend_accountOverrideInfo(v15, v16, v17);
    objc_msgSend_setAccountOverrideInfo_(v12, v19, v18);

    if (__sTestOverridesAvailable[0] == 1)
    {
      v22 = objc_msgSend_options(containerCopy, v20, v21);
      v25 = objc_msgSend_testDeviceReferenceProtocol(v22, v23, v24);
      objc_msgSend_setTestDeviceReferenceProtocol_(v12, v26, v25);

      v29 = objc_msgSend_options(containerCopy, v27, v28);
      v32 = objc_msgSend_fakeEntitlements(v29, v30, v31);
      objc_msgSend_setFakeEntitlements_(v12, v33, v32);
    }

    objc_msgSend_setBypassPCSEncryption_(v12, v20, 1);
    v36 = objc_msgSend_applicationBundleIdentifierOverride(v11, v34, v35);
    objc_msgSend_setApplicationBundleIdentifierOverride_(v12, v37, v36);

    v38 = [CKContainerID alloc];
    v41 = objc_msgSend_containerIdentifier(v11, v39, v40);
    v44 = objc_msgSend_containerID(containerCopy, v42, v43);
    v47 = objc_msgSend_environment(v44, v45, v46);
    v49 = objc_msgSend_initWithContainerIdentifier_environment_(v38, v48, v41, v47);

    if (__sTestOverridesAvailable[0] == 1)
    {
      v50 = objc_alloc(sub_1885188C0());
      v53 = objc_msgSend_testDeviceReferenceProtocol(v12, v51, v52);
      v55 = objc_msgSend_initWithContainerID_options_testDeviceReferenceProtocol_(v50, v54, v49, v12, v53);
    }

    else
    {
      v57 = [CKContainer alloc];
      v55 = objc_msgSend_initWithContainerID_options_(v57, v58, v49, v12);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v56 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v61 = 138412290;
      v62 = containerCopy;
      _os_log_error_impl(&dword_1883EA000, v56, OS_LOG_TYPE_ERROR, "Couldn't get repair container application identifier for container %@", &v61, 0xCu);
    }

    v55 = 0;
  }

  v59 = *MEMORY[0x1E69E9840];

  return v55;
}

+ (void)clearRepairZoneForDatabase:(id)database withRepairContainerOverrides:(id)overrides completionHandler:(id)handler
{
  databaseCopy = database;
  overridesCopy = overrides;
  handlerCopy = handler;
  v11 = dispatch_get_global_queue(0, 0);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_18862538C;
  v15[3] = &unk_1E70BF218;
  v16 = overridesCopy;
  v17 = databaseCopy;
  v18 = handlerCopy;
  selfCopy = self;
  v12 = handlerCopy;
  v13 = databaseCopy;
  v14 = overridesCopy;
  dispatch_async(v11, v15);
}

+ (id)repairRecordFromRecord:(id)record field:(id)field listIndex:(int64_t)index repairZoneID:(id)d
{
  v118 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  fieldCopy = field;
  dCopy = d;
  if (!dCopy)
  {
    v13 = [CKRecordZoneID alloc];
    dCopy = objc_msgSend_initWithZoneName_ownerName_(v13, v14, @"RepairZone", @"__defaultOwner__");
  }

  v15 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v11, fieldCopy);
  if (index < 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v20 = v15;
      goto LABEL_14;
    }

LABEL_11:

    goto LABEL_18;
  }

  if (objc_msgSend_count(v15, v16, v17) <= index)
  {
    goto LABEL_11;
  }

  v19 = objc_msgSend_objectAtIndex_(v15, v18, index);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

LABEL_14:
  if (v20)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v22 = v20;
    if (isKindOfClass)
    {
      v23 = [CKRecord alloc];
      v25 = objc_msgSend_initWithRecordType_zoneID_(v23, v24, @"MissingAsset", dCopy);
      v28 = objc_msgSend_recordID(recordCopy, v26, v27);
      v31 = objc_msgSend_zoneID(v28, v29, v30);
      v34 = objc_msgSend_zoneName(v31, v32, v33);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v35, v34, @"zone");

      v38 = objc_msgSend_recordID(recordCopy, v36, v37);
      v41 = objc_msgSend_recordName(v38, v39, v40);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v42, v41, @"affectedRecordID");

      v45 = objc_msgSend_recordType(recordCopy, v43, v44);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v46, v45, @"affectedRecordType");

      v49 = objc_msgSend_signature(v22, v47, v48);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v50, v49, @"fileSignature");

      v53 = objc_msgSend_referenceSignature(v22, v51, v52);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v54, v53, @"referenceSignature");

      objc_msgSend_setObject_forKeyedSubscript_(v25, v55, fieldCopy, @"fieldName");
      if (index < 0)
      {
LABEL_30:

        goto LABEL_31;
      }

      v57 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v56, index);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v58, v57, @"listIndex");
    }

    else
    {
      v57 = objc_opt_new();
      v60 = objc_opt_new();
      v111 = v22;
      v63 = objc_msgSend_assets(v22, v61, v62);
      if (objc_msgSend_count(v63, v64, v65))
      {
        v67 = 0;
        do
        {
          v68 = objc_msgSend_objectAtIndexedSubscript_(v63, v66, v67);
          v71 = objc_msgSend_signature(v68, v69, v70);
          objc_msgSend_addObject_(v57, v72, v71);

          v74 = objc_msgSend_objectAtIndexedSubscript_(v63, v73, v67);
          v77 = objc_msgSend_referenceSignature(v74, v75, v76);
          objc_msgSend_addObject_(v60, v78, v77);

          ++v67;
        }

        while (v67 < objc_msgSend_count(v63, v79, v80));
      }

      v81 = [CKRecord alloc];
      v25 = objc_msgSend_initWithRecordType_zoneID_(v81, v82, @"MissingPackage", dCopy);
      v85 = objc_msgSend_recordID(recordCopy, v83, v84);
      v88 = objc_msgSend_zoneID(v85, v86, v87);
      v91 = objc_msgSend_zoneName(v88, v89, v90);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v92, v91, @"zone");

      v95 = objc_msgSend_recordID(recordCopy, v93, v94);
      v98 = objc_msgSend_recordName(v95, v96, v97);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v99, v98, @"affectedRecordID");

      v102 = objc_msgSend_recordType(recordCopy, v100, v101);
      objc_msgSend_setObject_forKeyedSubscript_(v25, v103, v102, @"affectedRecordType");

      objc_msgSend_setObject_forKeyedSubscript_(v25, v104, fieldCopy, @"fieldName");
      if (objc_msgSend_count(v57, v105, v106))
      {
        objc_msgSend_setObject_forKeyedSubscript_(v25, v107, v57, @"fileSignature");
        objc_msgSend_setObject_forKeyedSubscript_(v25, v108, v60, @"referenceSignature");
      }

      v22 = v111;
    }

    goto LABEL_30;
  }

LABEL_18:
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v59 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v113 = fieldCopy;
    v114 = 2048;
    indexCopy = index;
    v116 = 2112;
    v117 = recordCopy;
    _os_log_error_impl(&dword_1883EA000, v59, OS_LOG_TYPE_ERROR, "Could not find asset or package in field %@ and index %ld of record %@", buf, 0x20u);
  }

  v25 = 0;
LABEL_31:

  v109 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)uploadRequestMetadataFromRepairRecord:(id)record
{
  v73 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v6 = objc_msgSend_recordType(recordCopy, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"MissingAsset");

  if (isEqualToString)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v9, @"zone");
    v13 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v12, @"affectedRecordID");
    v15 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v14, @"affectedRecordType");
    v17 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v16, @"fieldName");
    v19 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v18, @"fileSignature");
    v21 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v20, @"referenceSignature");
    v23 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v22, @"listIndex");
    v24 = [CKRecordZoneID alloc];
    v69 = v11;
    v26 = objc_msgSend_initWithZoneName_ownerName_(v24, v25, v11, @"__defaultOwner__");
    v27 = [CKRecordID alloc];
    v68 = v13;
    v29 = objc_msgSend_initWithRecordName_zoneID_(v27, v28, v13, v26);
    v30 = [CKAssetUploadRequestMetadata alloc];
    v35 = objc_msgSend_recordID(recordCopy, v31, v32);
    if (v23)
    {
      v36 = objc_msgSend_integerValue(v23, v33, v34);
      v38 = objc_msgSend_initWithRepairZoneRecordID_databaseScope_recordID_recordType_fieldName_fileSignature_referenceSignature_listIndex_(v30, v37, v35, 2, v29, v15, v17, v19, v21, v36);
    }

    else
    {
      v38 = objc_msgSend_initWithRepairZoneRecordID_databaseScope_recordID_recordType_fieldName_fileSignature_referenceSignature_(v30, v33, v35, 2, v29, v15, v17, v19, v21);
    }

    v64 = v38;
  }

  else
  {
    v39 = objc_msgSend_recordType(recordCopy, v9, v10);
    v41 = objc_msgSend_isEqualToString_(v39, v40, @"MissingPackage");

    if (v41)
    {
      v70 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v42, @"zone");
      v44 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v43, @"affectedRecordID");
      v46 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v45, @"affectedRecordType");
      v48 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v47, @"fieldName");
      v50 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v49, @"fileSignature");
      v52 = objc_msgSend_objectForKeyedSubscript_(recordCopy, v51, @"referenceSignature");
      v53 = [CKRecordZoneID alloc];
      v55 = objc_msgSend_initWithZoneName_ownerName_(v53, v54, v70, @"__defaultOwner__");
      v56 = [CKRecordID alloc];
      v58 = objc_msgSend_initWithRecordName_zoneID_(v56, v57, v44, v55);
      v59 = [CKPackageUploadRequestMetadata alloc];
      v62 = objc_msgSend_recordID(recordCopy, v60, v61);
      v64 = objc_msgSend_initWithRepairZoneRecordID_databaseScope_recordID_recordType_fieldName_fileSignatures_referenceSignatures_(v59, v63, v62, 2, v58, v46, v48, v50, v52);
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v65 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = recordCopy;
        _os_log_error_impl(&dword_1883EA000, v65, OS_LOG_TYPE_ERROR, "Invalid record type for repair record %@", buf, 0xCu);
      }

      v64 = 0;
    }
  }

  v66 = *MEMORY[0x1E69E9840];

  return v64;
}

+ (BOOL)repairErrorShouldBeMarkedAsBroken:(id)broken
{
  brokenCopy = broken;
  v6 = objc_msgSend_domain(brokenCopy, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"CKErrorDomain");

  v11 = brokenCopy;
  if (isEqualToString)
  {
    v12 = objc_msgSend_userInfo(brokenCopy, v9, v10);
    v11 = objc_msgSend_objectForKeyedSubscript_(v12, v13, *MEMORY[0x1E696AA08]);
  }

  v14 = objc_msgSend_domain(v11, v9, v10);
  v16 = objc_msgSend_isEqualToString_(v14, v15, @"CKInternalErrorDomain");

  if (v16)
  {
    v19 = objc_msgSend_code(v11, v17, v18) == 3012;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)errorIsRetriableInNearFuture:(id)future
{
  futureCopy = future;
  v6 = objc_msgSend_domain(futureCopy, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"CKErrorDomain");

  if (isEqualToString)
  {
    v11 = objc_msgSend_code(futureCopy, v9, v10);
    v14 = 0;
    if (v11 <= 0x17 && ((1 << v11) & 0x8000D0) != 0)
    {
      v15 = objc_msgSend_userInfo(futureCopy, v12, v13);
      v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"CKRetryAfter");

      if (v17)
      {
        v20 = objc_msgSend_userInfo(futureCopy, v18, v19);
        v22 = objc_msgSend_objectForKeyedSubscript_(v20, v21, @"CKRetryAfter");
        objc_msgSend_doubleValue(v22, v23, v24);
        v26 = v25;

        v14 = v26 <= 300.0;
      }

      else
      {
        v14 = 1;
      }
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (BOOL)errorShouldTriggerNetworkReachabilityEvent:(id)event
{
  eventCopy = event;
  v6 = objc_msgSend_domain(eventCopy, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"CKErrorDomain");

  if (isEqualToString)
  {
    v11 = objc_msgSend_code(eventCopy, v9, v10) == 3;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end