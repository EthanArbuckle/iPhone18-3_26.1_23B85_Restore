@interface CKRecordZone
+ (CKRecordZone)defaultRecordZone;
+ (id)systemRecordZone;
+ (void)initialize;
- (CKRecordZone)initWithCoder:(id)coder;
- (CKRecordZone)initWithZoneID:(CKRecordZoneID *)zoneID;
- (CKRecordZone)initWithZoneName:(NSString *)zoneName;
- (CKRecordZoneID)zoneID;
- (CKRecordZoneReference)parent;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (NSArray)invitedKeysToRemove;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)encryptionScope;
- (void)CKAssignToContainerWithID:(id)d;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)_setEncryptionScopeNoSideEffects:(int64_t)effects;
- (void)encodeWithCoder:(id)coder;
- (void)replaceZoneIDWith:(id)with;
- (void)setEncryptionScope:(int64_t)scope;
- (void)setExpirationAfterTimeInterval:(id)interval;
- (void)setInvitedKeysToRemove:(id)remove;
- (void)setParent:(id)parent;
- (void)setParentReferenceFromZone:(id)zone;
- (void)setParentReferenceFromZoneID:(id)d;
- (void)setZoneID:(id)d;
@end

@implementation CKRecordZone

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

+ (CKRecordZone)defaultRecordZone
{
  if (qword_1ED4B61C8 != -1)
  {
    dispatch_once(&qword_1ED4B61C8, &unk_1EFA2EFA8);
  }

  v3 = qword_1ED4B61C0;

  return v3;
}

- (CKRecordZoneID)zoneID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_zoneID;
  objc_sync_exit(selfCopy);

  return v3;
}

+ (id)systemRecordZone
{
  if (qword_1ED4B61D8 != -1)
  {
    dispatch_once(&qword_1ED4B61D8, &unk_1EFA2EFC8);
  }

  v3 = qword_1ED4B61D0;

  return v3;
}

- (CKRecordZone)initWithZoneName:(NSString *)zoneName
{
  v4 = zoneName;
  v23 = 0;
  v5 = _CKCheckArgument("zoneName", v4, 0, 1, 0, &v23);
  v6 = v23;
  if ((v5 & 1) == 0)
  {
    v12 = v6;
    v13 = [CKException alloc];
    v16 = objc_msgSend_code(v12, v14, v15);
    v19 = objc_msgSend_localizedDescription(v12, v17, v18);
    v21 = objc_msgSend_initWithCode_format_(v13, v20, v16, @"%@", v19);
    v22 = v21;

    objc_exception_throw(v21);
  }

  v7 = [CKRecordZoneID alloc];
  v9 = objc_msgSend_initWithZoneName_ownerName_(v7, v8, v4, @"__defaultOwner__");
  v10 = sub_188589C18(self, v9, 0);

  return v10;
}

- (CKRecordZone)initWithZoneID:(CKRecordZoneID *)zoneID
{
  v4 = zoneID;
  v20 = 0;
  v5 = _CKCheckArgument("zoneID", v4, 0, 1, 0, &v20);
  v6 = v20;
  if ((v5 & 1) == 0)
  {
    v9 = v6;
    v10 = [CKException alloc];
    v13 = objc_msgSend_code(v9, v11, v12);
    v16 = objc_msgSend_localizedDescription(v9, v14, v15);
    v18 = objc_msgSend_initWithCode_format_(v10, v17, v13, @"%@", v16);
    v19 = v18;

    objc_exception_throw(v18);
  }

  v7 = sub_188589C18(self, v4, 0);
  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKRecordZone alloc];
  v7 = objc_msgSend_zoneID(self, v5, v6);
  v10 = objc_msgSend_capabilities(self, v8, v9);
  v11 = sub_188589C18(v4, v7, v10);

  v11[4] = objc_msgSend_deviceCount(self, v12, v13);
  v16 = objc_msgSend_clientChangeToken(self, v14, v15);
  v19 = objc_msgSend_copy(v16, v17, v18);
  v20 = *(v11 + 14);
  *(v11 + 14) = v19;

  v23 = objc_msgSend_currentServerChangeToken(self, v21, v22);
  v26 = objc_msgSend_copy(v23, v24, v25);
  v27 = *(v11 + 13);
  *(v11 + 13) = v26;

  v30 = objc_msgSend_previousProtectionEtag(self, v28, v29);
  v33 = objc_msgSend_copy(v30, v31, v32);
  v34 = *(v11 + 24);
  *(v11 + 24) = v33;

  *(v11 + 25) = objc_msgSend_assetQuotaUsage(self, v35, v36);
  *(v11 + 26) = objc_msgSend_metadataQuotaUsage(self, v37, v38);
  v41 = objc_msgSend_zonePCSModificationDate(self, v39, v40);
  v44 = objc_msgSend_copy(v41, v42, v43);
  v45 = *(v11 + 27);
  *(v11 + 27) = v44;

  v48 = objc_msgSend_pcsKeyID(self, v46, v47);
  v51 = objc_msgSend_copy(v48, v49, v50);
  v52 = *(v11 + 18);
  *(v11 + 18) = v51;

  v55 = objc_msgSend_zoneishKeyID(self, v53, v54);
  v58 = objc_msgSend_copy(v55, v56, v57);
  v59 = *(v11 + 19);
  *(v11 + 19) = v58;

  *(v11 + 14) = objc_msgSend_serializeProtectionData(self, v60, v61);
  v64 = objc_msgSend_protectionData(self, v62, v63);
  v67 = objc_msgSend_copy(v64, v65, v66);
  v68 = *(v11 + 15);
  *(v11 + 15) = v67;

  v71 = objc_msgSend_protectionEtag(self, v69, v70);
  v74 = objc_msgSend_copy(v71, v72, v73);
  v75 = *(v11 + 16);
  *(v11 + 16) = v74;

  v78 = objc_msgSend_zoneishProtectionData(self, v76, v77);
  v81 = objc_msgSend_copy(v78, v79, v80);
  v82 = *(v11 + 17);
  *(v11 + 17) = v81;

  *(v11 + 13) = objc_msgSend_zoneKeyRollAllowed(self, v83, v84);
  v87 = objc_msgSend_share(self, v85, v86);
  v90 = objc_msgSend_copy(v87, v88, v89);
  v91 = *(v11 + 9);
  *(v11 + 9) = v90;

  v94 = objc_msgSend_invitedKeysToRemove(self, v92, v93);
  v97 = objc_msgSend_CKDeepCopy(v94, v95, v96);
  v98 = *(v11 + 3);
  *(v11 + 3) = v97;

  v101 = objc_msgSend_expirationDate(self, v99, v100);
  v104 = objc_msgSend_copy(v101, v102, v103);
  v105 = *(v11 + 11);
  *(v11 + 11) = v104;

  *(v11 + 10) = objc_msgSend_isExpired(self, v106, v107);
  *(v11 + 11) = objc_msgSend_hasUpdatedExpirationTimeInterval(self, v108, v109);
  v112 = objc_msgSend_updatedExpirationTimeInterval(self, v110, v111);
  v115 = objc_msgSend_copy(v112, v113, v114);
  v116 = *(v11 + 12);
  *(v11 + 12) = v115;

  v119 = objc_msgSend_requiredFeatures(self, v117, v118);
  v122 = objc_msgSend_copy(v119, v120, v121);
  v123 = *(v11 + 28);
  *(v11 + 28) = v122;

  v126 = objc_msgSend_originalRequiredFeatures(self, v124, v125);
  v129 = objc_msgSend_copy(v126, v127, v128);
  v130 = *(v11 + 22);
  *(v11 + 22) = v129;

  v133 = objc_msgSend_zonePCSKeysToRemove(self, v131, v132);
  v136 = objc_msgSend_copy(v133, v134, v135);
  v137 = *(v11 + 20);
  *(v11 + 20) = v136;

  v140 = objc_msgSend_zoneishPCSKeysToRemove(self, v138, v139);
  v143 = objc_msgSend_copy(v140, v141, v142);
  v144 = *(v11 + 21);
  *(v11 + 21) = v143;

  v147 = objc_msgSend_parent(self, v145, v146);
  v150 = objc_msgSend_copy(v147, v148, v149);
  v151 = *(v11 + 5);
  *(v11 + 5) = v150;

  *(v11 + 8) = objc_msgSend_hasUpdatedParent(self, v152, v153);
  v156 = objc_msgSend_etag(self, v154, v155);
  v159 = objc_msgSend_copy(v156, v157, v158);
  v160 = *(v11 + 6);
  *(v11 + 6) = v159;

  *(v11 + 7) = objc_msgSend_encryptionScope(self, v161, v162);
  return v11;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v6 = objc_msgSend_zoneID(self, v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, v6, @"zoneID");

  v10 = objc_msgSend_parent(self, v8, v9);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v10, @"parent");

  v14 = objc_msgSend_etag(self, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v15, v14, @"recordZoneEtag");

  v18 = objc_msgSend_properties(v3, v16, v17);

  return v18;
}

- (NSArray)invitedKeysToRemove
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_invitedKeysToRemove;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setInvitedKeysToRemove:(id)remove
{
  removeCopy = remove;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_CKDeepCopy(removeCopy, v5, v6);
  invitedKeysToRemove = selfCopy->_invitedKeysToRemove;
  selfCopy->_invitedKeysToRemove = v7;

  objc_sync_exit(selfCopy);
}

- (void)setZoneID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_copy(dCopy, v5, v6);
  zoneID = selfCopy->_zoneID;
  selfCopy->_zoneID = v7;

  objc_sync_exit(selfCopy);
}

- (int64_t)encryptionScope
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  encryptionScope = selfCopy->_encryptionScope;
  objc_sync_exit(selfCopy);

  return encryptionScope;
}

- (void)_setEncryptionScopeNoSideEffects:(int64_t)effects
{
  obj = self;
  objc_sync_enter(obj);
  obj->_encryptionScope = effects;
  objc_sync_exit(obj);
}

- (void)setEncryptionScope:(int64_t)scope
{
  obj = self;
  objc_sync_enter(obj);
  v7 = obj;
  if (obj->_encryptionScope != scope && obj->_etag)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, obj, @"CKRecordZone.m", 232, @"Cannot change the encryption scope of an existing zone");

    v7 = obj;
  }

  v7->_encryptionScope = scope;
  objc_sync_exit(v7);
}

- (void)replaceZoneIDWith:(id)with
{
  withCopy = with;
  if (!withCopy)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKRecordZone.m", 240, @"Must not be nil");
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v10 = objc_msgSend_zoneName(selfCopy->_zoneID, v8, v9);
  v13 = objc_msgSend_zoneName(withCopy, v11, v12);
  isEqualToString = objc_msgSend_isEqualToString_(v10, v14, v13);

  if ((isEqualToString & 1) == 0)
  {
    v30 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, selfCopy, @"CKRecordZone.m", 242, @"Must use the same zone name");
  }

  v18 = objc_msgSend_ownerName(selfCopy->_zoneID, v16, v17);
  v21 = objc_msgSend_ownerName(withCopy, v19, v20);
  v23 = objc_msgSend_isEqualToString_(v18, v22, v21);

  if ((v23 & 1) == 0)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v24, v25);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, selfCopy, @"CKRecordZone.m", 243, @"Must use the same owner name");
  }

  v26 = objc_msgSend_copy(withCopy, v24, v25);
  zoneID = selfCopy->_zoneID;
  selfCopy->_zoneID = v26;

  objc_sync_exit(selfCopy);
}

- (void)CKAssignToContainerWithID:(id)d
{
  newValue = d;
  if (self)
  {
    Property = objc_getProperty(self, v5, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = v7;
  v9 = newValue;
  if (!newValue || !v7 || (objc_msgSend_isEqual_(v7, newValue, newValue) & 1) != 0)
  {
    if (!self)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, self, @"CKRecordZone.m", 255, @"Cannot replace assigned container ID %@ with %@", v8, newValue);

  if (self)
  {
LABEL_7:
    objc_setProperty_atomic_copy(self, v9, newValue, 80);
  }

LABEL_8:
}

- (CKRecordZoneReference)parent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_parent;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((objc_msgSend_isEqual_(parentCopy, v5, selfCopy->_parent) & 1) == 0)
  {
    objc_msgSend_setHasUpdatedParent_(selfCopy, v6, 1);
    v9 = objc_msgSend_copy(parentCopy, v7, v8);
    parent = selfCopy->_parent;
    selfCopy->_parent = v9;
  }

  objc_sync_exit(selfCopy);
}

- (void)setParentReferenceFromZone:(id)zone
{
  if (zone)
  {
    zoneCopy = zone;
    v5 = [CKRecordZoneReference alloc];
    v8 = objc_msgSend_zoneID(zoneCopy, v6, v7);

    v10 = objc_msgSend_initWithZoneID_action_(v5, v9, v8, 1);
  }

  else
  {
    v10 = 0;
  }

  objc_msgSend_setParent_(self, a2, v10);
}

- (void)setParentReferenceFromZoneID:(id)d
{
  if (d)
  {
    dCopy = d;
    v5 = [CKRecordZoneReference alloc];
    v7 = objc_msgSend_initWithZoneID_action_(v5, v6, dCopy, 1);
  }

  else
  {
    v7 = 0;
  }

  objc_msgSend_setParent_(self, a2, v7);
}

- (CKRecordZone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v115.receiver = self;
  v115.super_class = CKRecordZone;
  v5 = [(CKRecordZone *)&v115 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"ZoneID");
    zoneID = v5->_zoneID;
    v5->_zoneID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"Capabilities");
    v5->_capabilities = objc_msgSend_unsignedIntegerValue(v12, v13, v14);

    v5->_deviceCount = objc_msgSend_decodeInt32ForKey_(coderCopy, v15, @"DeviceCount");
    v16 = objc_opt_class();
    v18 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v17, v16, @"ClientChangeToken");
    clientChangeToken = v5->_clientChangeToken;
    v5->_clientChangeToken = v18;

    v20 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v21, v20, @"CurrentServerChangeToken");
    currentServerChangeToken = v5->_currentServerChangeToken;
    v5->_currentServerChangeToken = v22;

    v24 = objc_opt_class();
    v26 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v25, v24, @"PreviousProtectionEtag");
    previousProtectionEtag = v5->_previousProtectionEtag;
    v5->_previousProtectionEtag = v26;

    v5->_assetQuotaUsage = objc_msgSend_decodeInt64ForKey_(coderCopy, v28, @"AssetQuotaUsage");
    v5->_metadataQuotaUsage = objc_msgSend_decodeInt64ForKey_(coderCopy, v29, @"MetadataQuotaUsage");
    v30 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v31, v30, @"PCSModificationDate");
    zonePCSModificationDate = v5->_zonePCSModificationDate;
    v5->_zonePCSModificationDate = v32;

    v34 = objc_opt_class();
    v36 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v35, v34, @"PCSKeyID");
    pcsKeyID = v5->_pcsKeyID;
    v5->_pcsKeyID = v36;

    v38 = objc_opt_class();
    v40 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v39, v38, @"ZoneishKeyID");
    zoneishKeyID = v5->_zoneishKeyID;
    v5->_zoneishKeyID = v40;

    v42 = objc_opt_class();
    v44 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v43, v42, @"ProtectionData");
    protectionData = v5->_protectionData;
    v5->_protectionData = v44;

    v46 = objc_opt_class();
    v48 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v47, v46, @"ProtectionEtag");
    protectionEtag = v5->_protectionEtag;
    v5->_protectionEtag = v48;

    v50 = objc_opt_class();
    v52 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v51, v50, @"ZoneishProtectionData");
    zoneishProtectionData = v5->_zoneishProtectionData;
    v5->_zoneishProtectionData = v52;

    v54 = objc_opt_class();
    v56 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v55, v54, @"ShareReference");
    share = v5->_share;
    v5->_share = v56;

    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = objc_opt_class();
    v62 = objc_msgSend_setWithObjects_(v58, v61, v59, v60, 0);
    v64 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v63, v62, @"InvitedKeysToRemove");
    invitedKeysToRemove = v5->_invitedKeysToRemove;
    v5->_invitedKeysToRemove = v64;

    v66 = objc_opt_class();
    v68 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v67, v66, @"ExpirationDate");
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v68;

    v5->_expired = objc_msgSend_decodeBoolForKey_(coderCopy, v70, @"Expired");
    v5->_hasUpdatedExpirationTimeInterval = objc_msgSend_decodeBoolForKey_(coderCopy, v71, @"HasUpdatedExpiration");
    v72 = objc_opt_class();
    v74 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v73, v72, @"UpdatedExpiration");
    updatedExpirationTimeInterval = v5->_updatedExpirationTimeInterval;
    v5->_updatedExpirationTimeInterval = v74;

    v77 = objc_msgSend_decodeRequiredFeatureSetWithKey_(coderCopy, v76, @"RequiredFeaturesKey");
    requiredFeatures = v5->_requiredFeatures;
    v5->_requiredFeatures = v77;

    v80 = objc_msgSend_decodeRequiredFeatureSetWithKey_(coderCopy, v79, @"OriginalRequiredFeaturesKey");
    originalRequiredFeatures = v5->_originalRequiredFeatures;
    v5->_originalRequiredFeatures = v80;

    v82 = MEMORY[0x1E695DFD8];
    v83 = objc_opt_class();
    v84 = objc_opt_class();
    v85 = objc_opt_class();
    v86 = objc_opt_class();
    v88 = objc_msgSend_setWithObjects_(v82, v87, v83, v84, v85, v86, 0);
    v90 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v89, v88, @"ZonePCSKeysToRemove");
    zonePCSKeysToRemove = v5->_zonePCSKeysToRemove;
    v5->_zonePCSKeysToRemove = v90;

    v92 = MEMORY[0x1E695DFD8];
    v93 = objc_opt_class();
    v94 = objc_opt_class();
    v95 = objc_opt_class();
    v96 = objc_opt_class();
    v98 = objc_msgSend_setWithObjects_(v92, v97, v93, v94, v95, v96, 0);
    v100 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v99, v98, @"ZoneishPCSKeysToRemove");
    zoneishPCSKeysToRemove = v5->_zoneishPCSKeysToRemove;
    v5->_zoneishPCSKeysToRemove = v100;

    v5->_applyPCSKeysToRemoveForTesting = objc_msgSend_decodeBoolForKey_(coderCopy, v102, @"ApplyPCSKeysToRemoveForTesting");
    v103 = objc_opt_class();
    v105 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v104, v103, @"ZoneParent");
    parent = v5->_parent;
    v5->_parent = v105;

    v5->_hasUpdatedParent = objc_msgSend_decodeBoolForKey_(coderCopy, v107, @"HasUpdatedParent");
    v108 = objc_opt_class();
    v110 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v109, v108, @"RecordZoneETag");
    etag = v5->_etag;
    v5->_etag = v110;

    v5->_encryptionScope = objc_msgSend_decodeIntegerForKey_(coderCopy, v112, @"EncryptionScope");
    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_zoneID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"ZoneID");

  v9 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend_capabilities(self, v10, v11);
  v14 = objc_msgSend_numberWithUnsignedInteger_(v9, v13, v12);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v14, @"Capabilities");

  v18 = objc_msgSend_deviceCount(self, v16, v17);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v19, v18, @"DeviceCount");
  v22 = objc_msgSend_clientChangeToken(self, v20, v21);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"ClientChangeToken");

  v26 = objc_msgSend_currentServerChangeToken(self, v24, v25);
  objc_msgSend_encodeObject_forKey_(coderCopy, v27, v26, @"CurrentServerChangeToken");

  v30 = objc_msgSend_previousProtectionEtag(self, v28, v29);
  objc_msgSend_encodeObject_forKey_(coderCopy, v31, v30, @"PreviousProtectionEtag");

  v34 = objc_msgSend_assetQuotaUsage(self, v32, v33);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v35, v34, @"AssetQuotaUsage");
  v38 = objc_msgSend_metadataQuotaUsage(self, v36, v37);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v39, v38, @"MetadataQuotaUsage");
  v42 = objc_msgSend_zonePCSModificationDate(self, v40, v41);
  objc_msgSend_encodeObject_forKey_(coderCopy, v43, v42, @"PCSModificationDate");

  v46 = objc_msgSend_pcsKeyID(self, v44, v45);
  objc_msgSend_encodeObject_forKey_(coderCopy, v47, v46, @"PCSKeyID");

  v50 = objc_msgSend_zoneishKeyID(self, v48, v49);
  objc_msgSend_encodeObject_forKey_(coderCopy, v51, v50, @"ZoneishKeyID");

  v54 = objc_msgSend_share(self, v52, v53);
  objc_msgSend_encodeObject_forKey_(coderCopy, v55, v54, @"ShareReference");

  v58 = objc_msgSend_invitedKeysToRemove(self, v56, v57);
  objc_msgSend_encodeObject_forKey_(coderCopy, v59, v58, @"InvitedKeysToRemove");

  if ((byte_1EA90C538 & 1) == 0)
  {
    if (objc_msgSend_serializeProtectionData(self, v60, v61))
    {
      v62 = objc_msgSend_protectionData(self, v60, v61);
      objc_msgSend_encodeObject_forKey_(coderCopy, v63, v62, @"ProtectionData");

      v66 = objc_msgSend_protectionEtag(self, v64, v65);
      objc_msgSend_encodeObject_forKey_(coderCopy, v67, v66, @"ProtectionEtag");

      v70 = objc_msgSend_zoneishProtectionData(self, v68, v69);
      objc_msgSend_encodeObject_forKey_(coderCopy, v71, v70, @"ZoneishProtectionData");

      if (__sTestOverridesAvailable[0] == 1)
      {
        v72 = objc_msgSend_zonePCSKeysToRemove(self, v60, v61);
        objc_msgSend_encodeObject_forKey_(coderCopy, v73, v72, @"ZonePCSKeysToRemove");

        v76 = objc_msgSend_zoneishPCSKeysToRemove(self, v74, v75);
        objc_msgSend_encodeObject_forKey_(coderCopy, v77, v76, @"ZoneishPCSKeysToRemove");
      }
    }
  }

  if (__sTestOverridesAvailable[0] == 1 && objc_msgSend_applyPCSKeysToRemoveForTesting(self, v60, v61))
  {
    v78 = objc_msgSend_applyPCSKeysToRemoveForTesting(self, v60, v61);
    objc_msgSend_encodeBool_forKey_(coderCopy, v79, v78, @"ApplyPCSKeysToRemoveForTesting");
    v82 = objc_msgSend_zonePCSKeysToRemove(self, v80, v81);
    objc_msgSend_encodeObject_forKey_(coderCopy, v83, v82, @"ZonePCSKeysToRemove");

    v86 = objc_msgSend_zoneishPCSKeysToRemove(self, v84, v85);
    objc_msgSend_encodeObject_forKey_(coderCopy, v87, v86, @"ZoneishPCSKeysToRemove");
  }

  v88 = objc_msgSend_expirationDate(self, v60, v61);
  objc_msgSend_encodeObject_forKey_(coderCopy, v89, v88, @"ExpirationDate");

  isExpired = objc_msgSend_isExpired(self, v90, v91);
  objc_msgSend_encodeBool_forKey_(coderCopy, v93, isExpired, @"Expired");
  hasUpdatedExpirationTimeInterval = objc_msgSend_hasUpdatedExpirationTimeInterval(self, v94, v95);
  objc_msgSend_encodeBool_forKey_(coderCopy, v97, hasUpdatedExpirationTimeInterval, @"HasUpdatedExpiration");
  v100 = objc_msgSend_updatedExpirationTimeInterval(self, v98, v99);
  objc_msgSend_encodeObject_forKey_(coderCopy, v101, v100, @"UpdatedExpiration");

  v104 = objc_msgSend_requiredFeatures(self, v102, v103);
  objc_msgSend_encodeObject_forKey_(coderCopy, v105, v104, @"RequiredFeaturesKey");

  v108 = objc_msgSend_originalRequiredFeatures(self, v106, v107);
  objc_msgSend_encodeObject_forKey_(coderCopy, v109, v108, @"OriginalRequiredFeaturesKey");

  v112 = objc_msgSend_parent(self, v110, v111);

  if (v112)
  {
    v115 = objc_msgSend_parent(self, v113, v114);
    objc_msgSend_encodeObject_forKey_(coderCopy, v116, v115, @"ZoneParent");
  }

  hasUpdatedParent = objc_msgSend_hasUpdatedParent(self, v113, v114);
  objc_msgSend_encodeBool_forKey_(coderCopy, v118, hasUpdatedParent, @"HasUpdatedParent");
  v121 = objc_msgSend_etag(self, v119, v120);

  if (v121)
  {
    v124 = objc_msgSend_etag(self, v122, v123);
    objc_msgSend_encodeObject_forKey_(coderCopy, v125, v124, @"RecordZoneETag");
  }

  v126 = objc_msgSend_encryptionScope(self, v122, v123);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v127, v126, @"EncryptionScope");
  objc_autoreleasePoolPop(v4);
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v6 = objc_msgSend_zoneID(self, v4, v5);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v7, @"zoneID", v6, 0);

  v10 = objc_msgSend_capabilities(self, v8, v9);
  v11 = CKStringFromCapabilities(v10);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v12, @"capabilities", v11, 0);

  v15 = objc_msgSend_parent(self, v13, v14);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v16, @"parent", v15, 0);

  v19 = objc_msgSend_etag(self, v17, v18);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v20, @"recordZoneEtag", v19, 0);

  v23 = objc_msgSend_encryptionScope(self, v21, v22);
  v25 = &stru_1EFA32970;
  if (v23 == 1)
  {
    v25 = @"per-zone";
  }

  if (v23)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v24, @"encryptionScope", v25, 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v24, @"encryptionScope", @"per-record", 0);
  }
}

- (void)setExpirationAfterTimeInterval:(id)interval
{
  intervalCopy = interval;
  objc_msgSend_setHasUpdatedExpirationTimeInterval_(self, v4, 1);
  objc_msgSend_setUpdatedExpirationTimeInterval_(self, v5, intervalCopy);
}

@end