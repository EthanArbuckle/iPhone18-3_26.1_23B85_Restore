@interface CKUploadRequestConfiguration
+ (id)configurationFromBaseContainer:(id)container;
+ (id)resolvedConfigurationWithBaseContainer:(id)container overrides:(id)overrides;
- (BOOL)isEqual:(id)equal;
- (CKUploadRequestConfiguration)initWithCoder:(id)coder;
- (CKUploadRequestConfiguration)initWithSqliteRepresentation:(id)representation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromBaseContainer:(id)container;
- (id)sqliteRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKUploadRequestConfiguration

+ (id)resolvedConfigurationWithBaseContainer:(id)container overrides:(id)overrides
{
  overridesCopy = overrides;
  v7 = overridesCopy;
  if (container)
  {
    v8 = objc_msgSend_configurationFromBaseContainer_(CKUploadRequestConfiguration, v6, container);
    v13 = objc_msgSend_containerIdentifier(v7, v9, v10);
    if (v13)
    {
      objc_msgSend_setContainerIdentifier_(v8, v11, v13);
    }

    v16 = objc_msgSend_applicationBundleIdentifierOverride(v7, v11, v12);
    if (v16)
    {
      objc_msgSend_setApplicationBundleIdentifierOverride_(v8, v14, v16);
    }

    v18 = objc_msgSend_repairZoneID(v7, v14, v15);
    if (v18)
    {
      objc_msgSend_setRepairZoneID_(v8, v17, v18);
    }
  }

  else
  {
    v8 = overridesCopy;
  }

  return v8;
}

+ (id)configurationFromBaseContainer:(id)container
{
  containerCopy = container;
  v5 = [self alloc];
  v7 = objc_msgSend_initFromBaseContainer_(v5, v6, containerCopy);

  return v7;
}

- (id)initFromBaseContainer:(id)container
{
  containerCopy = container;
  v25.receiver = self;
  v25.super_class = CKUploadRequestConfiguration;
  v7 = [(CKUploadRequestConfiguration *)&v25 init];
  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_msgSend_containerIdentifier(containerCopy, v5, v6);
    v11 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v8, v10, @"com.apple.cloudkit.metadata-%@", @"%@", 0, v9);
    containerIdentifier = v7->_containerIdentifier;
    v7->_containerIdentifier = v11;

    v13 = MEMORY[0x1E696AEC0];
    v16 = objc_msgSend_primaryIdentifier(containerCopy, v14, v15);
    v18 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v13, v17, @"com.apple.upload-request-proxy.%@", @"%@", 0, v16);
    applicationBundleIdentifierOverride = v7->_applicationBundleIdentifierOverride;
    v7->_applicationBundleIdentifierOverride = v18;

    v20 = [CKRecordZoneID alloc];
    v22 = objc_msgSend_initWithZoneName_ownerName_(v20, v21, @"RepairZone", @"__defaultOwner__");
    repairZoneID = v7->_repairZoneID;
    v7->_repairZoneID = v22;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CKUploadRequestConfiguration);
  v7 = objc_msgSend_containerIdentifier(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  containerIdentifier = v4->_containerIdentifier;
  v4->_containerIdentifier = v10;

  v14 = objc_msgSend_applicationBundleIdentifierOverride(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  applicationBundleIdentifierOverride = v4->_applicationBundleIdentifierOverride;
  v4->_applicationBundleIdentifierOverride = v17;

  v21 = objc_msgSend_repairZoneID(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  repairZoneID = v4->_repairZoneID;
  v4->_repairZoneID = v24;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_containerIdentifier(self, v5, v6);
  v8 = NSStringFromSelector(sel_containerIdentifier);
  objc_msgSend_encodeObject_forKey_(coderCopy, v9, v7, v8);

  v12 = objc_msgSend_applicationBundleIdentifierOverride(self, v10, v11);
  v13 = NSStringFromSelector(sel_applicationBundleIdentifierOverride);
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v12, v13);

  v17 = objc_msgSend_repairZoneID(self, v15, v16);
  v18 = NSStringFromSelector(sel_repairZoneID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v19, v17, v18);

  objc_autoreleasePoolPop(v4);
}

- (CKUploadRequestConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CKUploadRequestConfiguration;
  v5 = [(CKUploadRequestConfiguration *)&v23 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_containerIdentifier);
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v9, v7, v8);
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v10;

    v12 = objc_opt_class();
    v13 = NSStringFromSelector(sel_applicationBundleIdentifierOverride);
    v15 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v12, v13);
    applicationBundleIdentifierOverride = v5->_applicationBundleIdentifierOverride;
    v5->_applicationBundleIdentifierOverride = v15;

    v17 = objc_opt_class();
    v18 = NSStringFromSelector(sel_repairZoneID);
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v17, v18);
    repairZoneID = v5->_repairZoneID;
    v5->_repairZoneID = v20;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_containerIdentifier(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);

  v10 = objc_msgSend_applicationBundleIdentifierOverride(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12);

  return v13 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v26 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_containerIdentifier(v5, v6, v7);
      v11 = objc_msgSend_containerIdentifier(self, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual(v8, v11);

      if (v12 && (objc_msgSend_applicationBundleIdentifierOverride(v5, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_applicationBundleIdentifierOverride(self, v16, v17), v18 = objc_claimAutoreleasedReturnValue(), v19 = CKObjectsAreBothNilOrEqual(v15, v18), v18, v15, v19))
      {
        v22 = objc_msgSend_repairZoneID(v5, v20, v21);
        v25 = objc_msgSend_repairZoneID(self, v23, v24);
        v26 = CKObjectsAreBothNilOrEqual(v22, v25);
      }

      else
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  return v26;
}

- (id)sqliteRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v6 = objc_msgSend_containerIdentifier(self, v4, v5);
  v7 = NSStringFromSelector(sel_containerIdentifier);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v8, v6, v7);

  v11 = objc_msgSend_applicationBundleIdentifierOverride(self, v9, v10);
  v12 = NSStringFromSelector(sel_applicationBundleIdentifierOverride);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v13, v11, v12);

  v16 = objc_msgSend_repairZoneID(self, v14, v15);
  v19 = objc_msgSend_sqliteRepresentation(v16, v17, v18);
  v20 = NSStringFromSelector(sel_repairZoneID);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v21, v19, v20);

  v31 = 0;
  v23 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v22, v3, 0, &v31);
  v24 = v31;
  if (v24)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v25 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v33 = v24;
      _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Error converting CKUploadRequestConfiguration to JSON: %@", buf, 0xCu);
    }
  }

  v26 = objc_alloc(MEMORY[0x1E696AEC0]);
  v28 = objc_msgSend_initWithData_encoding_(v26, v27, v23, 4);

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (CKUploadRequestConfiguration)initWithSqliteRepresentation:(id)representation
{
  v36 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  if (objc_msgSend_length(representationCopy, v5, v6))
  {
    v8 = objc_msgSend_dataUsingEncoding_(representationCopy, v7, 4);
    v33 = 0;
    v10 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v9, v8, 0, &v33);
    v11 = v33;
    if (v11 || !v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v29 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v35 = v11;
        _os_log_error_impl(&dword_1883EA000, v29, OS_LOG_TYPE_ERROR, "Error converting JSON data to CKUploadRequestConfiguration: %@", buf, 0xCu);
      }

      selfCopy = 0;
    }

    else
    {
      v32.receiver = self;
      v32.super_class = CKUploadRequestConfiguration;
      v12 = [(CKUploadRequestConfiguration *)&v32 init];
      if (v12)
      {
        v13 = NSStringFromSelector(sel_containerIdentifier);
        v15 = objc_msgSend_objectForKeyedSubscript_(v10, v14, v13);
        containerIdentifier = v12->_containerIdentifier;
        v12->_containerIdentifier = v15;

        v17 = NSStringFromSelector(sel_applicationBundleIdentifierOverride);
        v19 = objc_msgSend_objectForKeyedSubscript_(v10, v18, v17);
        applicationBundleIdentifierOverride = v12->_applicationBundleIdentifierOverride;
        v12->_applicationBundleIdentifierOverride = v19;

        v21 = [CKRecordZoneID alloc];
        v22 = NSStringFromSelector(sel_repairZoneID);
        v24 = objc_msgSend_objectForKeyedSubscript_(v10, v23, v22);
        v26 = objc_msgSend_initWithSqliteRepresentation_(v21, v25, v24);
        repairZoneID = v12->_repairZoneID;
        v12->_repairZoneID = v26;
      }

      self = v12;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

@end