@interface CKEventMetricInfo
- (CKEventMetricInfo)initWithCoder:(id)coder;
- (CKEventMetricInfo)initWithEventMetric:(id)metric;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKEventMetricInfo

- (CKEventMetricInfo)initWithEventMetric:(id)metric
{
  metricCopy = metric;
  v57.receiver = self;
  v57.super_class = CKEventMetricInfo;
  v5 = [(CKEventMetricInfo *)&v57 init];
  v6 = v5;
  if (v5)
  {
    if (metricCopy)
    {
      v7 = *(metricCopy + 6);
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&v5->_metricUUID, v7);
    v6->_isCKInternalMetric = objc_msgSend_isCKInternalMetric(metricCopy, v8, v9);
    isPushTriggerFired = objc_msgSend_isPushTriggerFired(metricCopy, v10, v11);
    v6->_isPushTriggerFired = isPushTriggerFired;
    if (metricCopy)
    {
      if (*(metricCopy + 10))
      {
        v13 = 1;
      }

      else
      {
        v13 = isPushTriggerFired;
      }

      v6->_allowsCellularAccess = v13;
      if (*(metricCopy + 11))
      {
        v14 = 1;
      }

      else
      {
        v14 = isPushTriggerFired;
      }

      v6->_allowsExpensiveNetworkAccess = v14;
      v6->_preferAnonymousRequests = *(metricCopy + 12);
      v15 = *(metricCopy + 8);
    }

    else
    {
      v15 = 0;
      v6->_allowsCellularAccess = isPushTriggerFired;
      v6->_allowsExpensiveNetworkAccess = isPushTriggerFired;
      v6->_preferAnonymousRequests = 0;
    }

    objc_storeStrong(&v6->_deviceIdentifier, v15);
    if (metricCopy)
    {
      objc_storeStrong(&v6->_sourceApplicationBundleIdentifier, *(metricCopy + 9));
      v16 = *(metricCopy + 10);
    }

    else
    {
      sourceApplicationBundleIdentifier = v6->_sourceApplicationBundleIdentifier;
      v6->_sourceApplicationBundleIdentifier = 0;

      v16 = 0;
    }

    objc_storeStrong(&v6->_applicationBundleIdentifierOverrideForContainerAccess, v16);
    if (metricCopy)
    {
      objc_storeStrong(&v6->_applicationBundleIdentifierOverrideForNetworkAttribution, *(metricCopy + 11));
      v17 = *(metricCopy + 13);
    }

    else
    {
      applicationBundleIdentifierOverrideForNetworkAttribution = v6->_applicationBundleIdentifierOverrideForNetworkAttribution;
      v6->_applicationBundleIdentifierOverrideForNetworkAttribution = 0;

      v17 = 0;
    }

    objc_storeStrong(&v6->_sourceApplicationSecondaryIdentifier, v17);
    if (metricCopy)
    {
      objc_storeStrong(&v6->_privacyProxyFailClosedOverride, *(metricCopy + 12));
      v20 = *(metricCopy + 7);
    }

    else
    {
      privacyProxyFailClosedOverride = v6->_privacyProxyFailClosedOverride;
      v6->_privacyProxyFailClosedOverride = 0;

      v20 = 0;
    }

    v6->_databaseScope = v20;
    v21 = objc_msgSend_eventName(metricCopy, v18, v19);
    eventName = v6->_eventName;
    v6->_eventName = v21;

    v25 = objc_msgSend_startTime(metricCopy, v23, v24);
    startTime = v6->_startTime;
    v6->_startTime = v25;

    v29 = objc_msgSend_endTime(metricCopy, v27, v28);
    endTime = v6->_endTime;
    v6->_endTime = v29;

    v33 = objc_msgSend_attributes(metricCopy, v31, v32);
    v36 = objc_msgSend_copy(v33, v34, v35);
    attributes = v6->_attributes;
    v6->_attributes = v36;

    if (metricCopy)
    {
      v40 = *(metricCopy + 14);
      v43 = objc_msgSend_copy(v40, v41, v42);
      associatedOperations = v6->_associatedOperations;
      v6->_associatedOperations = v43;

      v45 = *(metricCopy + 15);
    }

    else
    {
      v55 = objc_msgSend_copy(0, v38, v39);
      v56 = v6->_associatedOperations;
      v6->_associatedOperations = v55;

      v45 = 0;
    }

    v46 = v45;
    v49 = objc_msgSend_copy(v46, v47, v48);
    associatedOperationGroups = v6->_associatedOperationGroups;
    v6->_associatedOperationGroups = v49;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_metricUUID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"uuid");

  isCKInternalMetric = objc_msgSend_isCKInternalMetric(self, v9, v10);
  objc_msgSend_encodeBool_forKey_(coderCopy, v12, isCKInternalMetric, @"ckinternal");
  isPushTriggerFired = objc_msgSend_isPushTriggerFired(self, v13, v14);
  objc_msgSend_encodeBool_forKey_(coderCopy, v16, isPushTriggerFired, @"pushFired");
  v19 = objc_msgSend_allowsCellularAccess(self, v17, v18);
  objc_msgSend_encodeBool_forKey_(coderCopy, v20, v19, @"allowsCellular");
  v23 = objc_msgSend_allowsExpensiveNetworkAccess(self, v21, v22);
  objc_msgSend_encodeBool_forKey_(coderCopy, v24, v23, @"allowsExpensive");
  v27 = objc_msgSend_preferAnonymousRequests(self, v25, v26);
  objc_msgSend_encodeBool_forKey_(coderCopy, v28, v27, @"preferAnonymousRequests");
  v31 = objc_msgSend_databaseScope(self, v29, v30);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v32, v31, @"databaseScope");
  v35 = objc_msgSend_deviceIdentifier(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, v35, @"deviceIdentifier");

  v39 = objc_msgSend_sourceApplicationBundleIdentifier(self, v37, v38);
  objc_msgSend_encodeObject_forKey_(coderCopy, v40, v39, @"sourceApplicationBundleIdentifier");

  v43 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v41, v42);
  objc_msgSend_encodeObject_forKey_(coderCopy, v44, v43, @"applicationBundleIdentifierOverrideForContainerAccess");

  v47 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v45, v46);
  objc_msgSend_encodeObject_forKey_(coderCopy, v48, v47, @"applicationBundleIdentifierOverrideForNetworkAttribution");

  v51 = objc_msgSend_sourceApplicationSecondaryIdentifier(self, v49, v50);
  objc_msgSend_encodeObject_forKey_(coderCopy, v52, v51, @"sourceApplicationSecondaryIdentifier");

  v55 = objc_msgSend_privacyProxyFailClosedOverride(self, v53, v54);
  objc_msgSend_encodeObject_forKey_(coderCopy, v56, v55, @"privacyProxyFailClosedOverride");

  v59 = objc_msgSend_eventName(self, v57, v58);
  objc_msgSend_encodeObject_forKey_(coderCopy, v60, v59, @"eventName");

  v63 = objc_msgSend_startTime(self, v61, v62);
  objc_msgSend_encodeObject_forKey_(coderCopy, v64, v63, @"startTime");

  v67 = objc_msgSend_endTime(self, v65, v66);
  objc_msgSend_encodeObject_forKey_(coderCopy, v68, v67, @"endTime");

  v71 = objc_msgSend_attributes(self, v69, v70);
  objc_msgSend_encodeObject_forKey_(coderCopy, v72, v71, @"attributes");

  v75 = objc_msgSend_associatedOperations(self, v73, v74);
  objc_msgSend_encodeObject_forKey_(coderCopy, v76, v75, @"operations");

  v79 = objc_msgSend_associatedOperationGroups(self, v77, v78);
  objc_msgSend_encodeObject_forKey_(coderCopy, v80, v79, @"operationGroups");

  objc_autoreleasePoolPop(v4);
}

- (CKEventMetricInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v82.receiver = self;
  v82.super_class = CKEventMetricInfo;
  v5 = [(CKEventMetricInfo *)&v82 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"uuid");
    metricUUID = v5->_metricUUID;
    v5->_metricUUID = v8;

    v5->_isCKInternalMetric = objc_msgSend_decodeBoolForKey_(coderCopy, v10, @"ckinternal");
    v5->_isPushTriggerFired = objc_msgSend_decodeBoolForKey_(coderCopy, v11, @"pushFired");
    v5->_allowsCellularAccess = objc_msgSend_decodeBoolForKey_(coderCopy, v12, @"allowsCellular");
    v5->_allowsExpensiveNetworkAccess = objc_msgSend_decodeBoolForKey_(coderCopy, v13, @"allowsExpensive");
    v5->_preferAnonymousRequests = objc_msgSend_decodeBoolForKey_(coderCopy, v14, @"preferAnonymousRequests");
    v5->_databaseScope = objc_msgSend_decodeIntegerForKey_(coderCopy, v15, @"databaseScope");
    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"deviceIdentifier");
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"sourceApplicationBundleIdentifier");
    sourceApplicationBundleIdentifier = v5->_sourceApplicationBundleIdentifier;
    v5->_sourceApplicationBundleIdentifier = v22;

    v24 = objc_opt_class();
    v26 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v25, v24, @"applicationBundleIdentifierOverrideForContainerAccess");
    applicationBundleIdentifierOverrideForContainerAccess = v5->_applicationBundleIdentifierOverrideForContainerAccess;
    v5->_applicationBundleIdentifierOverrideForContainerAccess = v26;

    v28 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v29, v28, @"applicationBundleIdentifierOverrideForNetworkAttribution");
    applicationBundleIdentifierOverrideForNetworkAttribution = v5->_applicationBundleIdentifierOverrideForNetworkAttribution;
    v5->_applicationBundleIdentifierOverrideForNetworkAttribution = v30;

    v32 = objc_opt_class();
    v34 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v33, v32, @"sourceApplicationSecondaryIdentifier");
    sourceApplicationSecondaryIdentifier = v5->_sourceApplicationSecondaryIdentifier;
    v5->_sourceApplicationSecondaryIdentifier = v34;

    v36 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v36, @"privacyProxyFailClosedOverride");
    privacyProxyFailClosedOverride = v5->_privacyProxyFailClosedOverride;
    v5->_privacyProxyFailClosedOverride = v38;

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