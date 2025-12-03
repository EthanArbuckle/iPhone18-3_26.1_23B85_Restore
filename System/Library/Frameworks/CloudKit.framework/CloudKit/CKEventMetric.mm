@interface CKEventMetric
- (BOOL)associateWithCompletedOperation:(id)operation;
- (CKEventMetric)initWithCoder:(id)coder;
- (CKEventMetric)initWithEventName:(id)name;
- (CKEventMetric)initWithEventName:(id)name atTime:(id)time;
- (NSMutableDictionary)attributes;
- (id)generateEventMetricInfo;
- (id)objectForKeyedSubscript:(id)subscript;
- (void)encodeWithCoder:(id)coder;
- (void)setMetricValue:(id)value forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
@end

@implementation CKEventMetric

- (id)generateEventMetricInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy)
  {
    associatedOperations = 0;
LABEL_9:
    v6 = associatedOperations;
    v9 = objc_msgSend_count(v6, v7, v8);

    if (v9)
    {
      if (!selfCopy)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (!selfCopy)
      {
LABEL_15:
        v10 = [CKEventMetricInfo alloc];
        v4 = objc_msgSend_initWithEventMetric_(v10, v11, selfCopy);
        goto LABEL_16;
      }

      *&selfCopy->_inferredAllowsCellular = 0;
      selfCopy->_inferredPreferAnonymousRequests = 1;
    }

    selfCopy->_hasBeenSubmitted = 1;
    goto LABEL_15;
  }

  if (!selfCopy->_hasBeenSubmitted)
  {
    associatedOperations = selfCopy->_associatedOperations;
    goto LABEL_9;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v13[0] = 0;
    _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_INFO, "Repeat event metric. Cancelling.", v13, 2u);
  }

  v4 = 0;
LABEL_16:
  objc_sync_exit(selfCopy);

  return v4;
}

- (NSMutableDictionary)attributes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend_copy(selfCopy->_attributes, v3, v4);
  objc_sync_exit(selfCopy);

  return v5;
}

- (CKEventMetric)initWithEventName:(id)name
{
  v4 = MEMORY[0x1E695DF00];
  nameCopy = name;
  v8 = objc_msgSend_date(v4, v6, v7);
  v10 = objc_msgSend_initWithEventName_atTime_(self, v9, nameCopy, v8);

  return v10;
}

- (CKEventMetric)initWithEventName:(id)name atTime:(id)time
{
  nameCopy = name;
  timeCopy = time;
  v35.receiver = self;
  v35.super_class = CKEventMetric;
  v8 = [(CKEventMetric *)&v35 init];
  v11 = v8;
  if (v8)
  {
    v8->_hasBeenSubmitted = 0;
    v12 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v9, v10);
    metricUUID = v11->_metricUUID;
    v11->_metricUUID = v12;

    *&v11->_inferredAllowsCellular = 257;
    inferredDeviceIdentifier = v11->_inferredDeviceIdentifier;
    v11->_inferredDatabaseScope = 0;
    v11->_inferredDeviceIdentifier = 0;

    inferredApplicationBundleIdentifierOverrideForContainerAccess = v11->_inferredApplicationBundleIdentifierOverrideForContainerAccess;
    v11->_inferredApplicationBundleIdentifierOverrideForContainerAccess = 0;

    inferredApplicationBundleIdentifierOverrideForNetworkAttribution = v11->_inferredApplicationBundleIdentifierOverrideForNetworkAttribution;
    v11->_inferredApplicationBundleIdentifierOverrideForNetworkAttribution = 0;

    inferredSourceApplicationSecondaryIdentifier = v11->_inferredSourceApplicationSecondaryIdentifier;
    v11->_inferredSourceApplicationSecondaryIdentifier = 0;

    inferredPrivacyProxyFailClosedOverride = v11->_inferredPrivacyProxyFailClosedOverride;
    v11->_inferredPrivacyProxyFailClosedOverride = 0;

    v21 = objc_msgSend_copy(nameCopy, v19, v20);
    eventName = v11->_eventName;
    v11->_eventName = v21;

    v25 = objc_msgSend_copy(timeCopy, v23, v24);
    startTime = v11->_startTime;
    v11->_startTime = v25;

    endTime = v11->_endTime;
    v11->_endTime = 0;

    v28 = objc_alloc_init(MEMORY[0x1E695DF90]);
    attributes = v11->_attributes;
    v11->_attributes = v28;

    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    associatedOperations = v11->_associatedOperations;
    v11->_associatedOperations = v30;

    v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
    associatedOperationGroups = v11->_associatedOperationGroups;
    v11->_associatedOperationGroups = v32;
  }

  return v11;
}

- (BOOL)associateWithCompletedOperation:(id)operation
{
  operationCopy = operation;
  if (objc_msgSend_isFinished(operationCopy, v5, v6))
  {
    LOBYTE(v9) = 0;
  }

  else
  {
    v9 = objc_msgSend_isFinishingOnCallbackQueue(operationCopy, v7, v8) ^ 1;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    hasBeenSubmitted = selfCopy->_hasBeenSubmitted;
  }

  else
  {
    hasBeenSubmitted = 0;
  }

  v14 = (operationCopy == 0) | hasBeenSubmitted | v9;
  if (!((operationCopy == 0) | (hasBeenSubmitted | v9) & 1))
  {
    v15 = objc_msgSend_resolvedConfiguration(operationCopy, v11, v12);
    v18 = objc_msgSend_allowsCellularAccess(v15, v16, v17);
    if (selfCopy)
    {
      selfCopy->_inferredAllowsCellular &= v18;
    }

    v21 = objc_msgSend_resolvedConfiguration(operationCopy, v19, v20);
    v24 = objc_msgSend_allowsExpensiveNetworkAccess(v21, v22, v23);
    if (selfCopy)
    {
      selfCopy->_inferredAllowsExpensive &= v24;
    }

    v27 = objc_msgSend_resolvedConfiguration(operationCopy, v25, v26);
    v30 = objc_msgSend_preferAnonymousRequests(v27, v28, v29);
    if (selfCopy)
    {
      selfCopy->_inferredPreferAnonymousRequests |= v30;

      associatedOperations = selfCopy->_associatedOperations;
    }

    else
    {

      associatedOperations = 0;
    }

    v32 = associatedOperations;
    v35 = objc_msgSend_count(v32, v33, v34);

    if (!v35)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = operationCopy;
        v41 = objc_msgSend_databaseScope(v38, v39, v40);
        if (selfCopy)
        {
          selfCopy->_inferredDatabaseScope = v41;
        }
      }

      v42 = objc_msgSend_resolvedConfiguration(operationCopy, v36, v37);
      v45 = objc_msgSend_container(v42, v43, v44);
      v48 = objc_msgSend_options(v45, v46, v47);
      v51 = objc_msgSend_testDeviceReferenceProtocol(v48, v49, v50);
      v55 = objc_msgSend_deviceID(v51, v52, v53);
      if (selfCopy)
      {
        objc_setProperty_nonatomic_copy(selfCopy, v54, v55, 64);
      }

      v58 = objc_msgSend_resolvedConfiguration(operationCopy, v56, v57);
      v62 = objc_msgSend_sourceApplicationBundleIdentifier(v58, v59, v60);
      if (selfCopy)
      {
        objc_setProperty_nonatomic_copy(selfCopy, v61, v62, 72);
      }

      v65 = objc_msgSend_resolvedConfiguration(operationCopy, v63, v64);
      v69 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v65, v66, v67);
      if (selfCopy)
      {
        objc_setProperty_nonatomic_copy(selfCopy, v68, v69, 80);
      }

      v72 = objc_msgSend_resolvedConfiguration(operationCopy, v70, v71);
      v76 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v72, v73, v74);
      if (selfCopy)
      {
        objc_setProperty_nonatomic_copy(selfCopy, v75, v76, 88);
      }

      v79 = objc_msgSend_resolvedConfiguration(operationCopy, v77, v78);
      v83 = objc_msgSend__sourceApplicationSecondaryIdentifier(v79, v80, v81);
      if (selfCopy)
      {
        objc_setProperty_nonatomic_copy(selfCopy, v82, v83, 104);
      }

      v86 = objc_msgSend_resolvedConfiguration(operationCopy, v84, v85);
      v90 = objc_msgSend_privacyProxyFailClosedOverride(v86, v87, v88);
      if (selfCopy)
      {
        objc_setProperty_nonatomic_copy(selfCopy, v89, v90, 96);
      }
    }

    v91 = [CKEventOperationInfo alloc];
    v93 = objc_msgSend_initWithOperation_(v91, v92, operationCopy);
    if (selfCopy)
    {
      v94 = selfCopy->_associatedOperations;
    }

    else
    {
      v94 = 0;
    }

    v95 = v94;
    v98 = objc_msgSend_operationID(operationCopy, v96, v97);
    objc_msgSend_setObject_forKeyedSubscript_(v95, v99, v93, v98);

    v102 = objc_msgSend_group(operationCopy, v100, v101);
    if (v102)
    {
      v103 = selfCopy ? selfCopy->_associatedOperationGroups : 0;
      v104 = v103;
      v107 = objc_msgSend_group(operationCopy, v105, v106);
      v110 = objc_msgSend_operationGroupID(v107, v108, v109);
      v112 = objc_msgSend_objectForKeyedSubscript_(v104, v111, v110);

      if (!v112)
      {
        v113 = [CKEventOperationGroupInfo alloc];
        v116 = objc_msgSend_group(operationCopy, v114, v115);
        if (v113)
        {
          v141.receiver = v113;
          v141.super_class = CKEventOperationGroupInfo;
          v113 = [(CKEventMetric *)&v141 init];
          if (v113)
          {
            v119 = objc_msgSend_operationGroupID(v116, v117, v118);
            v122 = objc_msgSend_copy(v119, v120, v121);
            operationGroupID = v113->_operationGroupID;
            v113->_operationGroupID = v122;

            v126 = objc_msgSend_name(v116, v124, v125);
            v129 = objc_msgSend_copy(v126, v127, v128);
            operationGroupName = v113->_operationGroupName;
            v113->_operationGroupName = v129;
          }
        }

        if (selfCopy)
        {
          associatedOperationGroups = selfCopy->_associatedOperationGroups;
        }

        else
        {
          associatedOperationGroups = 0;
        }

        v132 = associatedOperationGroups;
        v135 = objc_msgSend_group(operationCopy, v133, v134);
        v138 = objc_msgSend_operationGroupID(v135, v136, v137);
        objc_msgSend_setObject_forKeyedSubscript_(v132, v139, v113, v138);
      }
    }
  }

  objc_sync_exit(selfCopy);

  return (v14 & 1) == 0;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_attributes, v6, subscriptCopy);
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    hasBeenSubmitted = selfCopy->_hasBeenSubmitted;
    if (!subscriptCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    hasBeenSubmitted = 0;
    if (!subscriptCopy)
    {
      goto LABEL_5;
    }
  }

  if (!hasBeenSubmitted)
  {
    v10 = objc_msgSend_copyWithZone_(objectCopy, v8, 0);
    objc_msgSend_setObject_forKeyedSubscript_(selfCopy->_attributes, v11, v10, subscriptCopy);
  }

LABEL_5:
  objc_sync_exit(selfCopy);
}

- (void)setMetricValue:(id)value forKey:(id)key
{
  keyCopy = key;
  v9 = objc_msgSend_copyWithZone_(value, v7, 0);
  objc_msgSend_setObject_forKeyedSubscript_(self, v8, v9, keyCopy);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = objc_autoreleasePoolPush();
  if (selfCopy)
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v5, selfCopy->_hasBeenSubmitted, @"submitted");
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v5, 0, @"submitted");
  }

  if (selfCopy)
  {
    metricUUID = selfCopy->_metricUUID;
  }

  else
  {
    metricUUID = 0;
  }

  v8 = metricUUID;
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v8, @"uuid");

  isCKInternalMetric = objc_msgSend_isCKInternalMetric(selfCopy, v10, v11);
  objc_msgSend_encodeBool_forKey_(coderCopy, v13, isCKInternalMetric, @"ckinternal");
  if (selfCopy)
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v14, selfCopy->_inferredAllowsCellular, @"allowsCellular");
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v14, 0, @"allowsCellular");
  }

  if (selfCopy)
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v15, selfCopy->_inferredAllowsExpensive, @"allowsExpensive");
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v15, 0, @"allowsExpensive");
  }

  if (selfCopy)
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v16, selfCopy->_inferredPreferAnonymousRequests, @"preferAnonymousRequests");
  }

  else
  {
    objc_msgSend_encodeBool_forKey_(coderCopy, v16, 0, @"preferAnonymousRequests");
  }

  if (selfCopy)
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v17, selfCopy->_inferredDatabaseScope, @"databaseScope");
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(coderCopy, v17, 0, @"databaseScope");
  }

  if (selfCopy)
  {
    inferredDeviceIdentifier = selfCopy->_inferredDeviceIdentifier;
  }

  else
  {
    inferredDeviceIdentifier = 0;
  }

  v19 = inferredDeviceIdentifier;
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"deviceIdentifier");

  if (selfCopy)
  {
    inferredSourceApplicationBundleIdentifier = selfCopy->_inferredSourceApplicationBundleIdentifier;
  }

  else
  {
    inferredSourceApplicationBundleIdentifier = 0;
  }

  v22 = inferredSourceApplicationBundleIdentifier;
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"sourceApplicationBundleIdentifier");

  if (selfCopy)
  {
    inferredApplicationBundleIdentifierOverrideForContainerAccess = selfCopy->_inferredApplicationBundleIdentifierOverrideForContainerAccess;
  }

  else
  {
    inferredApplicationBundleIdentifierOverrideForContainerAccess = 0;
  }

  v25 = inferredApplicationBundleIdentifierOverrideForContainerAccess;
  objc_msgSend_encodeObject_forKey_(coderCopy, v26, v25, @"applicationBundleIdentifierOverrideForContainerAccess");

  if (selfCopy)
  {
    inferredApplicationBundleIdentifierOverrideForNetworkAttribution = selfCopy->_inferredApplicationBundleIdentifierOverrideForNetworkAttribution;
  }

  else
  {
    inferredApplicationBundleIdentifierOverrideForNetworkAttribution = 0;
  }

  v28 = inferredApplicationBundleIdentifierOverrideForNetworkAttribution;
  objc_msgSend_encodeObject_forKey_(coderCopy, v29, v28, @"applicationBundleIdentifierOverrideForNetworkAttribution");

  if (selfCopy)
  {
    inferredSourceApplicationSecondaryIdentifier = selfCopy->_inferredSourceApplicationSecondaryIdentifier;
  }

  else
  {
    inferredSourceApplicationSecondaryIdentifier = 0;
  }

  v31 = inferredSourceApplicationSecondaryIdentifier;
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"sourceApplicationSecondaryIdentifier");

  if (selfCopy)
  {
    inferredPrivacyProxyFailClosedOverride = selfCopy->_inferredPrivacyProxyFailClosedOverride;
  }

  else
  {
    inferredPrivacyProxyFailClosedOverride = 0;
  }

  v34 = inferredPrivacyProxyFailClosedOverride;
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, v34, @"privacyProxyFailClosedOverride");

  v38 = objc_msgSend_eventName(selfCopy, v36, v37);
  objc_msgSend_encodeObject_forKey_(coderCopy, v39, v38, @"eventName");

  v42 = objc_msgSend_startTime(selfCopy, v40, v41);
  objc_msgSend_encodeObject_forKey_(coderCopy, v43, v42, @"startTime");

  v46 = objc_msgSend_endTime(selfCopy, v44, v45);
  objc_msgSend_encodeObject_forKey_(coderCopy, v47, v46, @"endTime");

  v50 = objc_msgSend_attributes(selfCopy, v48, v49);
  objc_msgSend_encodeObject_forKey_(coderCopy, v51, v50, @"attributes");

  if (selfCopy)
  {
    associatedOperations = selfCopy->_associatedOperations;
  }

  else
  {
    associatedOperations = 0;
  }

  v53 = associatedOperations;
  objc_msgSend_encodeObject_forKey_(coderCopy, v54, v53, @"operations");

  if (selfCopy)
  {
    associatedOperationGroups = selfCopy->_associatedOperationGroups;
  }

  else
  {
    associatedOperationGroups = 0;
  }

  v56 = associatedOperationGroups;
  objc_msgSend_encodeObject_forKey_(coderCopy, v57, v56, @"operationGroups");

  objc_autoreleasePoolPop(v6);
  objc_sync_exit(selfCopy);
}

- (CKEventMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v82.receiver = self;
  v82.super_class = CKEventMetric;
  v5 = [(CKEventMetric *)&v82 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v5->_hasBeenSubmitted = objc_msgSend_decodeBoolForKey_(coderCopy, v6, @"submitted");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"uuid");
    metricUUID = v5->_metricUUID;
    v5->_metricUUID = v9;

    v5->_isCKInternalMetric = objc_msgSend_decodeBoolForKey_(coderCopy, v11, @"ckinternal");
    v5->_inferredAllowsCellular = objc_msgSend_decodeBoolForKey_(coderCopy, v12, @"allowsCellular");
    v5->_inferredAllowsExpensive = objc_msgSend_decodeBoolForKey_(coderCopy, v13, @"allowsExpensive");
    v5->_inferredPreferAnonymousRequests = objc_msgSend_decodeBoolForKey_(coderCopy, v14, @"preferAnonymousRequests");
    v5->_inferredDatabaseScope = objc_msgSend_decodeIntegerForKey_(coderCopy, v15, @"databaseScope");
    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"deviceIdentifier");
    inferredDeviceIdentifier = v5->_inferredDeviceIdentifier;
    v5->_inferredDeviceIdentifier = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"sourceApplicationBundleIdentifier");
    inferredSourceApplicationBundleIdentifier = v5->_inferredSourceApplicationBundleIdentifier;
    v5->_inferredSourceApplicationBundleIdentifier = v22;

    v24 = objc_opt_class();
    v26 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v25, v24, @"applicationBundleIdentifierOverrideForContainerAccess");
    inferredApplicationBundleIdentifierOverrideForContainerAccess = v5->_inferredApplicationBundleIdentifierOverrideForContainerAccess;
    v5->_inferredApplicationBundleIdentifierOverrideForContainerAccess = v26;

    v28 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v29, v28, @"applicationBundleIdentifierOverrideForNetworkAttribution");
    inferredApplicationBundleIdentifierOverrideForNetworkAttribution = v5->_inferredApplicationBundleIdentifierOverrideForNetworkAttribution;
    v5->_inferredApplicationBundleIdentifierOverrideForNetworkAttribution = v30;

    v32 = objc_opt_class();
    v34 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v33, v32, @"sourceApplicationSecondaryIdentifier");
    inferredSourceApplicationSecondaryIdentifier = v5->_inferredSourceApplicationSecondaryIdentifier;
    v5->_inferredSourceApplicationSecondaryIdentifier = v34;

    v36 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v36, @"privacyProxyFailClosedOverride");
    inferredPrivacyProxyFailClosedOverride = v5->_inferredPrivacyProxyFailClosedOverride;
    v5->_inferredPrivacyProxyFailClosedOverride = v38;

    v40 = objc_opt_class();
    v42 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v41, v40, @"eventName");
    eventName = v5->_eventName;
    v5->_eventName = v42;

    v44 = objc_opt_class();
    v46 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v45, v44, @"startTime");
    startTime = v5->_startTime;
    v5->_startTime = v46;

    v48 = objc_opt_class();
    v50 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v49, v48, @"endTime");
    endTime = v5->_endTime;
    v5->_endTime = v50;

    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v55 = objc_opt_class();
    v56 = objc_opt_class();
    v58 = objc_msgSend_setWithObjects_(v52, v57, v53, v54, v55, v56, 0);
    v60 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v59, v58, @"attributes");
    attributes = v5->_attributes;
    v5->_attributes = v60;

    v62 = MEMORY[0x1E695DFD8];
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v65 = objc_opt_class();
    v67 = objc_msgSend_setWithObjects_(v62, v66, v63, v64, v65, 0);
    v69 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v68, v67, @"operations");
    associatedOperations = v5->_associatedOperations;
    v5->_associatedOperations = v69;

    v71 = MEMORY[0x1E695DFD8];
    v72 = objc_opt_class();
    v73 = objc_opt_class();
    v74 = objc_opt_class();
    v76 = objc_msgSend_setWithObjects_(v71, v75, v72, v73, v74, 0);
    v78 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v77, v76, @"operationGroups");
    associatedOperationGroups = v5->_associatedOperationGroups;
    v5->_associatedOperationGroups = v78;

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

@end