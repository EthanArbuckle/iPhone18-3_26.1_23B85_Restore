@interface APMetric
+ (BOOL)_isMetricWithContainerAllowed:(int64_t)a3;
- (APMetric)initWithCoder:(id)a3;
- (APMetric)initWithPurpose:(int64_t)a3 metric:(int64_t)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 handle:(id)a7 secondaryHandle:(id)a8 branch:(id)a9 properties:(id)a10 internalProperties:(id)a11 relayData:(id)a12 environment:(id)a13 order:(int64_t)a14 options:(int64_t)a15;
- (NSString)bundleIdentifier;
- (NSString)description;
- (id)_descriptionWithFormat:(id)a3;
- (id)_internalProperties;
- (id)_options;
- (id)_optionsArray;
- (id)_properties;
- (id)_relayData;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addInternalPropertyValue:(id)a3 forKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APMetric

- (id)_options
{
  v4 = objc_msgSend__optionsArray(self, a2, v2, v3);
  if (objc_msgSend_count(v4, v5, v6, v7))
  {
    v10 = objc_msgSend_componentsJoinedByString_(v4, v8, @"|", v9);
  }

  else
  {
    v10 = @"none";
  }

  return v10;
}

- (id)_optionsArray
{
  v4 = objc_msgSend_options(self, a2, v2, v3);
  v8 = objc_msgSend_array(MEMORY[0x1E695DF70], v5, v6, v7);
  v11 = v8;
  if (v4 >= 0xFFFFFFFF80000000)
  {
    objc_msgSend_addObject_(v8, v9, @"flush", v10);
  }

  return v11;
}

- (id)_properties
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_properties(self, a2, v2, v3);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = objc_msgSend_allKeys(v4, v5, v6, v7);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v32, v36, 16);
  if (v9)
  {
    v12 = v9;
    v13 = 0;
    v14 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = objc_msgSend_objectForKeyedSubscript_(v4, v10, v16, v11);
        v18 = MEMORY[0x1E696AEC0];
        v22 = objc_msgSend_description(v17, v19, v20, v21);
        v25 = v22;
        if (v13)
        {
          v26 = objc_msgSend_stringWithFormat_(v18, v23, @"%@ %@: %@", v24, v13, v16, v22);

          v13 = v26;
        }

        else
        {
          v13 = objc_msgSend_stringWithFormat_(v18, v23, @" %@: %@", v24, v16, v22);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v32, v36, 16);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v27 = v13;
  }

  else
  {
    v27 = &stru_1F38FD5F0;
  }

  v28 = v27;

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)_internalProperties
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_internalProperties(self, a2, v2, v3);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = objc_msgSend_allKeys(v4, v5, v6, v7);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v32, v36, 16);
  if (v9)
  {
    v12 = v9;
    v13 = 0;
    v14 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = objc_msgSend_objectForKeyedSubscript_(v4, v10, v16, v11);
        v18 = MEMORY[0x1E696AEC0];
        v22 = objc_msgSend_description(v17, v19, v20, v21);
        v25 = v22;
        if (v13)
        {
          v26 = objc_msgSend_stringWithFormat_(v18, v23, @"%@ %@: %@", v24, v13, v16, v22);

          v13 = v26;
        }

        else
        {
          v13 = objc_msgSend_stringWithFormat_(v18, v23, @" %@: %@", v24, v16, v22);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v32, v36, 16);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v27 = v13;
  }

  else
  {
    v27 = &stru_1F38FD5F0;
  }

  v28 = v27;

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)_relayData
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_relayData(self, a2, v2, v3);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = objc_msgSend_allKeys(v4, v5, v6, v7);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v32, v36, 16);
  if (v9)
  {
    v12 = v9;
    v13 = 0;
    v14 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        v17 = objc_msgSend_objectForKeyedSubscript_(v4, v10, v16, v11);
        v18 = MEMORY[0x1E696AEC0];
        v22 = objc_msgSend_description(v17, v19, v20, v21);
        v25 = v22;
        if (v13)
        {
          v26 = objc_msgSend_stringWithFormat_(v18, v23, @"%@ %@: %@", v24, v13, v16, v22);

          v13 = v26;
        }

        else
        {
          v13 = objc_msgSend_stringWithFormat_(v18, v23, @" %@: %@", v24, v16, v22);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v32, v36, 16);
    }

    while (v12);
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v27 = v13;
  }

  else
  {
    v27 = &stru_1F38FD5F0;
  }

  v28 = v27;

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (NSString)bundleIdentifier
{
  v4 = objc_msgSend_internalProperties(self, a2, v2, v3);
  v7 = objc_msgSend_objectForKey_(v4, v5, @"bundle_identifier", v6);

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  purpose_low = LODWORD(self->_purpose);
  v21 = a3;
  objc_msgSend_encodeInt32_forKey_(v21, v5, purpose_low, @"purpose");
  objc_msgSend_encodeInt32_forKey_(v21, v6, LODWORD(self->_metric), @"metric");
  objc_msgSend_encodeObject_forKey_(v21, v7, self->_timestamp, @"timestamp");
  objc_msgSend_encodeObject_forKey_(v21, v8, self->_contentIdentifier, @"content_identifier");
  objc_msgSend_encodeObject_forKey_(v21, v9, self->_contextIdentifier, @"context_identifier");
  objc_msgSend_encodeObject_forKey_(v21, v10, self->_properties, @"properties");
  objc_msgSend_encodeObject_forKey_(v21, v11, self->_internalProperties, @"internal_properties");
  objc_msgSend_encodeInt32_forKey_(v21, v12, LODWORD(self->_options), @"options");
  objc_msgSend_encodeObject_forKey_(v21, v13, self->_handle, @"handle");
  objc_msgSend_encodeInt32_forKey_(v21, v14, LODWORD(self->_order), @"order");
  objc_msgSend_encodeObject_forKey_(v21, v15, self->_trace, @"trace");
  objc_msgSend_encodeObject_forKey_(v21, v16, self->_branch, @"branch");
  objc_msgSend_encodeObject_forKey_(v21, v17, self->_relayData, @"relay");
  objc_msgSend_encodeObject_forKey_(v21, v18, self->_environment, @"environment");
  objc_msgSend_encodeInt32_forKey_(v21, v19, self->_source, @"source");
  objc_msgSend_encodeObject_forKey_(v21, v20, self->_secondaryHandle, @"secondaryHandle");
}

- (APMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v78.receiver = self;
  v78.super_class = APMetric;
  v5 = [(APMetric *)&v78 init];
  if (!v5)
  {
    goto LABEL_3;
  }

  context = objc_autoreleasePoolPush();
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v17 = objc_msgSend_setWithObjects_(v6, v15, v7, v16, v8, v9, v10, v11, v12, v13, v14, 0);
  v5->_purpose = objc_msgSend_decodeInt32ForKey_(v4, v18, @"purpose", v19);
  v5->_metric = objc_msgSend_decodeInt32ForKey_(v4, v20, @"metric", v21);
  v22 = objc_opt_class();
  v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v23, v22, @"timestamp");
  timestamp = v5->_timestamp;
  v5->_timestamp = v24;

  v26 = objc_opt_class();
  v28 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v27, v26, @"content_identifier");
  contentIdentifier = v5->_contentIdentifier;
  v5->_contentIdentifier = v28;

  v30 = objc_opt_class();
  v32 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v31, v30, @"context_identifier");
  contextIdentifier = v5->_contextIdentifier;
  v5->_contextIdentifier = v32;

  v35 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v34, v17, @"properties");
  properties = v5->_properties;
  v5->_properties = v35;

  v38 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v37, v17, @"internal_properties");
  internalProperties = v5->_internalProperties;
  v5->_internalProperties = v38;

  v5->_options = objc_msgSend_decodeInt32ForKey_(v4, v40, @"options", v41);
  v5->_order = objc_msgSend_decodeInt32ForKey_(v4, v42, @"order", v43);
  v44 = objc_opt_class();
  v46 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v45, v44, @"trace");
  trace = v5->_trace;
  v5->_trace = v46;

  v49 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v48, v17, @"branch");
  branch = v5->_branch;
  v5->_branch = v49;

  v52 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v51, v17, @"relay");
  relayData = v5->_relayData;
  v5->_relayData = v52;

  v54 = objc_opt_class();
  v56 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v55, v54, @"handle");
  handle = v5->_handle;
  v5->_handle = v56;

  v58 = MEMORY[0x1E695DFD8];
  v59 = objc_opt_class();
  v60 = objc_opt_class();
  v63 = objc_msgSend_setWithObjects_(v58, v61, v59, v62, v60, 0);
  v65 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v64, v63, @"environment");
  environment = v5->_environment;
  v5->_environment = v65;

  v5->_source = objc_msgSend_decodeInt32ForKey_(v4, v67, @"source", v68);
  v69 = objc_opt_class();
  v71 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v70, v69, @"secondaryHandle");
  secondaryHandle = v5->_secondaryHandle;
  v5->_secondaryHandle = v71;

  LODWORD(v59) = objc_msgSend_validateMetricAndSetupIdentifiers_(v5, v73, v4, v74);
  objc_autoreleasePoolPop(context);
  v75 = 0;
  if (v59)
  {
LABEL_3:
    v75 = v5;
  }

  return v75;
}

+ (BOOL)_isMetricWithContainerAllowed:(int64_t)a3
{
  if (a3 == 1406)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v4 == 7)
    {
      break;
    }

    v6 = qword_1BAF94D60[++v4];
  }

  while (v6 != a3);
  return v5 < 7;
}

- (APMetric)initWithPurpose:(int64_t)a3 metric:(int64_t)a4 contentIdentifier:(id)a5 contextIdentifier:(id)a6 handle:(id)a7 secondaryHandle:(id)a8 branch:(id)a9 properties:(id)a10 internalProperties:(id)a11 relayData:(id)a12 environment:(id)a13 order:(int64_t)a14 options:(int64_t)a15
{
  v81 = *MEMORY[0x1E69E9840];
  v73 = a5;
  v72 = a6;
  v19 = a7;
  v20 = a8;
  obj = a9;
  v71 = a9;
  v21 = a10;
  v75 = a11;
  v22 = a12;
  v67 = a13;
  v70 = a13;
  if (objc_msgSend_dictionaryContainsContainers(v21, v23, v24, v25) && (objc_msgSend__isMetricWithContainerAllowed_(APMetric, v26, a4, v27, a9, a13) & 1) == 0)
  {
    v28 = v20;
    v29 = APLogForCategory(0x21uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v78 = a4;
      v79 = 1024;
      v80 = a3;
      _os_log_impl(&dword_1BADC1000, v29, OS_LOG_TYPE_DEFAULT, "Metric (%d) for purpose (%d) has a property that is a container!", buf, 0xEu);
    }

    v20 = v28;
  }

  v76.receiver = self;
  v76.super_class = APMetric;
  v30 = [(APMetric *)&v76 init];
  v31 = v30;
  if (!v30)
  {
    goto LABEL_10;
  }

  v30->_purpose = a3;
  v30->_metric = a4;
  objc_storeStrong(&v30->_contentIdentifier, a5);
  objc_storeStrong(&v31->_contextIdentifier, a6);
  v35 = objc_msgSend_date(MEMORY[0x1E695DF00], v32, v33, v34);
  timestamp = v31->_timestamp;
  v31->_timestamp = v35;

  v40 = objc_msgSend_copy(v21, v37, v38, v39);
  properties = v31->_properties;
  v31->_properties = v40;

  v45 = objc_msgSend_copy(v75, v42, v43, v44);
  internalProperties = v31->_internalProperties;
  v31->_internalProperties = v45;

  v31->_options = a15;
  objc_storeStrong(&v31->_contextIdentifier, a6);
  v31->_purpose = a3;
  objc_storeStrong(&v31->_branch, obja);
  v50 = objc_msgSend_copy(v22, v47, v48, v49);
  relayData = v31->_relayData;
  v31->_relayData = v50;

  objc_storeStrong(&v31->_environment, v67);
  v31->_order = a14;
  v55 = objc_msgSend_copy(v20, v52, v53, v54);
  secondaryHandle = v31->_secondaryHandle;
  v31->_secondaryHandle = v55;

  if (v19)
  {
    v60 = objc_msgSend_copy(v19, v57, v58, v59);
    handle = v31->_handle;
    v31->_handle = v60;
  }

  v62 = 0;
  if (objc_msgSend_validateMetricAndSetupIdentifiers_(v31, v57, 0, v59))
  {
LABEL_10:
    v62 = v31;
  }

  v63 = *MEMORY[0x1E69E9840];
  return v62;
}

- (void)addInternalPropertyValue:(id)a3 forKey:(id)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v11 = v7;
  if (v6 && v7)
  {
    if (self->_internalProperties)
    {
      v12 = objc_msgSend_internalProperties(self, v8, v9, v10);
      v16 = objc_msgSend_mutableCopy(v12, v13, v14, v15);

      objc_msgSend_setValue_forKey_(v16, v17, v6, v11);
      v21 = objc_msgSend_copy(v16, v18, v19, v20);
      internalProperties = self->_internalProperties;
      self->_internalProperties = v21;
    }

    else
    {
      v26 = v7;
      v27[0] = v6;
      v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v8, v27, &v26, 1);
      v24 = self->_internalProperties;
      self->_internalProperties = v23;
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  v23 = 0;
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v4, v3, 1, &v23);
  v6 = v23;
  objc_sync_exit(v3);

  if (v6)
  {
    v7 = APLogForCategory(0x21uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v3;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_1BADC1000, v7, OS_LOG_TYPE_ERROR, "Error archiving metric %@! error: %@", buf, 0x16u);
    }

    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, @"Error archiving metric %@! error: %@", v9, v3, v6);
    APSimulateCrash(5, v10, 0);
  }

  v11 = MEMORY[0x1E696ACD0];
  v12 = objc_opt_class();
  v22 = v6;
  v14 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v11, v13, v12, v5, &v22);
  v15 = v22;

  if (v15)
  {
    v16 = APLogForCategory(0x21uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v25 = v3;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_1BADC1000, v16, OS_LOG_TYPE_ERROR, "Error unarchiving metric %@! error: %@", buf, 0x16u);
    }

    v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v17, @"Error unarchiving metric %@! error: %@", v18, v3, v15);
    APSimulateCrash(5, v19, 0);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_descriptionWithFormat:(id)a3
{
  v111 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AC80];
  v101 = a3;
  v8 = objc_msgSend_apLocalSharedFormatter(v4, v5, v6, v7);
  v12 = objc_msgSend_timestamp(self, v9, v10, v11);
  v102 = v8;
  v103 = objc_msgSend_stringFromDate_(v8, v13, v12, v14);

  v100 = objc_msgSend_purpose(self, v15, v16, v17);
  v99 = objc_msgSend_metric(self, v18, v19, v20);
  v24 = objc_msgSend_handle(self, v21, v22, v23);
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"none";
  }

  v27 = v26;

  v31 = objc_msgSend__options(self, v28, v29, v30);
  v35 = objc_msgSend_contentIdentifier(self, v32, v33, v34);
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = @"none";
  }

  v38 = v37;

  v42 = objc_msgSend_contextIdentifier(self, v39, v40, v41);
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = @"none";
  }

  v45 = v44;

  v49 = objc_msgSend_bundleIdentifier(self, v46, v47, v48);
  v50 = v49;
  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = @"none";
  }

  v107 = v51;

  v106 = objc_msgSend__properties(self, v52, v53, v54);
  v105 = objc_msgSend__internalProperties(self, v55, v56, v57);
  v104 = objc_msgSend__relayData(self, v58, v59, v60);
  v64 = objc_msgSend_order(self, v61, v62, v63);
  v71 = objc_msgSend_environment(self, v65, v66, v67);
  if (v71)
  {
    objc_msgSend_environment(self, v68, v69, v70);
    v72 = v45;
    v73 = v38;
    v75 = v74 = v31;
    v78 = objc_msgSend_componentsJoinedByString_(v75, v76, @",", v77);

    v31 = v74;
    v38 = v73;
    v45 = v72;
  }

  else
  {
    v78 = @"none";
  }

  v82 = objc_msgSend_secondaryHandle(self, v79, v80, v81);
  v83 = v82;
  if (v82)
  {
    v84 = v82;
  }

  else
  {
    v84 = @"none";
  }

  v85 = v84;

  v108 = 0;
  v87 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x1E696AEC0], v86, v101, @"%@%ld%ld%@%@%@%@%@%@%@%@%@%ld%@", &v108, v103, v100, v99, v27, v85, v31, v38, v45, v107, v106, v105, v104, v64, v78);

  v88 = v108;
  if (v88)
  {
    v89 = v87;
    v90 = v31;
    v91 = v27;
    v92 = APLogForCategory(0x21uLL);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      v96 = objc_msgSend_localizedDescription(v88, v93, v94, v95);
      *buf = 138412290;
      v110 = v96;
      _os_log_impl(&dword_1BADC1000, v92, OS_LOG_TYPE_ERROR, "Error retrieving description for metric: %@", buf, 0xCu);
    }

    v27 = v91;
    v31 = v90;
    v87 = v89;
  }

  v97 = *MEMORY[0x1E69E9840];

  return v87;
}

- (NSString)description
{
  v137[14] = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isAppleInternalInstall(APSystemInternal, a2, v2, v3))
  {
    v7 = objc_alloc(MEMORY[0x1E695E000]);
    v10 = objc_msgSend_initWithSuiteName_(v7, v8, @"com.apple.AdPlatforms", v9);
    if (objc_msgSend_BOOLForKey_(v10, v11, @"AutomationLoggingEnabled", v12))
    {
      v16 = objc_msgSend_apUTCSharedFormatter(MEMORY[0x1E696AC80], v13, v14, v15);
      v20 = objc_msgSend_timestamp(self, v17, v18, v19);
      v23 = objc_msgSend_stringFromDate_(v16, v21, v20, v22);

      v27 = objc_msgSend_purpose(self, v24, v25, v26);
      v31 = objc_msgSend_metric(self, v28, v29, v30);
      v35 = objc_msgSend_handle(self, v32, v33, v34);
      v39 = v35;
      if (v35)
      {
        v40 = v35;
      }

      else
      {
        v40 = objc_msgSend_null(MEMORY[0x1E695DFB0], v36, v37, v38);
      }

      v135 = v40;

      v134 = objc_msgSend__optionsArray(self, v42, v43, v44);
      v133 = objc_msgSend_contentIdentifier(self, v45, v46, v47);
      v51 = objc_msgSend_bundleIdentifier(self, v48, v49, v50);
      v55 = v51;
      if (v51)
      {
        v131 = v51;
      }

      else
      {
        v56 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v52, v53, v54);
        v131 = objc_msgSend_bundleIdentifier(v56, v57, v58, v59);
      }

      v132 = objc_msgSend_contextIdentifier(self, v60, v61, v62);
      v66 = objc_msgSend_properties(self, v63, v64, v65);
      v130 = objc_msgSend__addOptionsToProperties_(self, v67, v66, v68);

      v72 = objc_msgSend_internalProperties(self, v69, v70, v71);
      v76 = v72;
      if (v72)
      {
        v77 = v72;
      }

      else
      {
        v77 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v73, v74, v75);
      }

      v129 = v77;

      v81 = objc_msgSend_relayData(self, v78, v79, v80);
      v85 = v81;
      if (v81)
      {
        v86 = v81;
      }

      else
      {
        v86 = objc_msgSend_dictionary(MEMORY[0x1E695DF20], v82, v83, v84);
      }

      v128 = v86;

      v90 = objc_msgSend_order(self, v87, v88, v89);
      v97 = objc_msgSend_environment(self, v91, v92, v93);
      if (v97)
      {
        v98 = objc_msgSend_environment(self, v94, v95, v96);
        v127 = objc_msgSend_componentsJoinedByString_(v98, v99, @",", v100);
      }

      else
      {
        v127 = &stru_1F38FD5F0;
      }

      v104 = objc_msgSend_secondaryHandle(self, v101, v102, v103);
      v108 = v104;
      if (v104)
      {
        v109 = v104;
      }

      else
      {
        v109 = objc_msgSend_null(MEMORY[0x1E695DFB0], v105, v106, v107);
      }

      v110 = v109;

      v137[0] = v23;
      v136[0] = @"TS";
      v136[1] = @"R";
      v126 = v23;
      v113 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v111, v27, v112);
      v137[1] = v113;
      v136[2] = @"M";
      v116 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v114, v31, v115);
      v137[2] = v116;
      v137[3] = v135;
      v136[3] = @"H";
      v136[4] = @"SH";
      v137[4] = v110;
      v137[5] = v134;
      v136[5] = @"O";
      v136[6] = @"CI";
      v137[6] = v133;
      v137[7] = v132;
      v136[7] = @"CX";
      v136[8] = @"BID";
      v137[8] = v131;
      v137[9] = v130;
      v136[9] = @"P";
      v136[10] = @"IP";
      v137[10] = v129;
      v136[11] = @"ORD";
      v119 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v117, v90, v118);
      v137[11] = v119;
      v137[12] = v128;
      v136[12] = @"REL";
      v136[13] = @"ENV";
      v137[13] = v127;
      v121 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v120, v137, v136, 14);

      v41 = objc_msgSend_jsonStringWithOptions_(v121, v122, 1, v123);
    }

    else
    {
      v41 = objc_msgSend__descriptionWithFormat_(self, v13, @"%@ Purpose: %ld Metric: %ld H: %@ SH: %@ Options: %@, CID: %@ CX: %@ BID: %@ P: %@ IP: %@ REL: %@, ORD: %ld ENV: %@", v15);
    }
  }

  else
  {
    v41 = objc_msgSend__descriptionWithFormat_(self, v5, @"%@ R: %ld M: %ld H: %@ SH: %@ O: %@, CI: %@ CX: %@ BID: %@ P: %@ IP: %@ REL: %@, ORD: %ld ENV: %@", v6);
  }

  v124 = *MEMORY[0x1E69E9840];

  return v41;
}

@end