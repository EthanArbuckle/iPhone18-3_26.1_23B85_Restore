@interface CKContainerOptions
- (BOOL)getPersona:(id *)a3 error:(id *)a4;
- (BOOL)isCloudCoreSession;
- (BOOL)isEqual:(id)a3;
- (CKContainerOptions)init;
- (CKContainerOptions)initWithCoder:(id)a3;
- (CKContainerOptions)initWithSqliteRepresentation:(id)a3;
- (NSDictionary)fakeEntitlements;
- (NSString)personaIdentifier;
- (NSString)personaUniqueString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)sqliteRepresentation;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)ck_bindInStatement:(id)a3 atIndex:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setApplicationBundleIdentifierOverride:(id)a3;
- (void)setFakeEntitlements:(id)a3;
- (void)setPersonaIdentifier:(id)a3;
- (void)setSupportedDeviceCapabilities:(id)a3;
- (void)setUseMMCSEncryptionV2:(BOOL)a3;
- (void)setUserPersona:(id)a3;
- (void)setUserPersonaAttributes:(id)a3;
- (void)swizzleClass;
@end

@implementation CKContainerOptions

- (CKContainerOptions)init
{
  v7.receiver = self;
  v7.super_class = CKContainerOptions;
  v2 = [(CKContainerOptions *)&v7 init];
  v5 = v2;
  if (v2)
  {
    v2->_mmcsEncryptionSupport = 1;
    v2->_qualityOfService = -1;
  }

  objc_msgSend_swizzleClass(v2, v3, v4);
  return v5;
}

- (void)swizzleClass
{
  if (objc_msgSend_isCloudCoreSession(self, a2, v2))
  {
    v4 = NSClassFromString(&cfstr_CloudkitCloudc_3.isa);

    object_setClass(self, v4);
  }
}

- (BOOL)isCloudCoreSession
{
  v6 = objc_msgSend_ckSessionConfiguration(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_ckSessionAcquiredInfo(self, v4, v5);
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSDictionary)fakeEntitlements
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fakeEntitlements;
  objc_sync_exit(v2);

  return v3;
}

- (id)sqliteRepresentation
{
  v272 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AD98];
  v7 = objc_msgSend_captureResponseHTTPHeaders(self, v5, v6);
  v9 = objc_msgSend_numberWithBool_(v4, v8, v7);
  v10 = NSStringFromSelector(sel_captureResponseHTTPHeaders);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v11, v9, v10);

  v12 = MEMORY[0x1E696AD98];
  v15 = objc_msgSend_useZoneWidePCS(self, v13, v14);
  v17 = objc_msgSend_numberWithBool_(v12, v16, v15);
  v18 = NSStringFromSelector(sel_useZoneWidePCS);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v19, v17, v18);

  v20 = MEMORY[0x1E696AD98];
  v23 = objc_msgSend_holdAllOperations(self, v21, v22);
  v25 = objc_msgSend_numberWithBool_(v20, v24, v23);
  v26 = NSStringFromSelector(sel_holdAllOperations);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v27, v25, v26);

  v30 = objc_msgSend_accountOverrideInfo(self, v28, v29);
  v33 = objc_msgSend_sqliteRepresentation(v30, v31, v32);
  v34 = NSStringFromSelector(sel_accountOverrideInfo);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v35, v33, v34);

  v36 = MEMORY[0x1E696AD98];
  v39 = objc_msgSend_qualityOfService(self, v37, v38);
  v41 = objc_msgSend_numberWithInteger_(v36, v40, v39);
  v42 = NSStringFromSelector(sel_qualityOfService);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v43, v41, v42);

  v44 = MEMORY[0x1E696AD98];
  v47 = objc_msgSend_returnPCSMetadata(self, v45, v46);
  v49 = objc_msgSend_numberWithBool_(v44, v48, v47);
  v50 = NSStringFromSelector(sel_returnPCSMetadata);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v51, v49, v50);

  v52 = MEMORY[0x1E696AD98];
  v55 = objc_msgSend_mmcsEncryptionSupport(self, v53, v54);
  v57 = objc_msgSend_numberWithUnsignedInteger_(v52, v56, v55);
  v58 = NSStringFromSelector(sel_mmcsEncryptionSupport);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v59, v57, v58);

  v62 = objc_msgSend_encryptionServiceName(self, v60, v61);
  v63 = NSStringFromSelector(sel_encryptionServiceName);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v64, v62, v63);

  v65 = MEMORY[0x1E696AD98];
  isServiceManatee = objc_msgSend_isServiceManatee(self, v66, v67);
  v70 = objc_msgSend_numberWithBool_(v65, v69, isServiceManatee);
  v71 = NSStringFromSelector(sel_isServiceManatee);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v72, v70, v71);

  v73 = MEMORY[0x1E696AD98];
  v76 = objc_msgSend_bypassPCSEncryption(self, v74, v75);
  v78 = objc_msgSend_numberWithBool_(v73, v77, v76);
  v79 = NSStringFromSelector(sel_bypassPCSEncryption);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v80, v78, v79);

  v81 = MEMORY[0x1E696AD98];
  v84 = objc_msgSend_enforceNamedOperationGroups(self, v82, v83);
  v86 = objc_msgSend_numberWithBool_(v81, v85, v84);
  v87 = NSStringFromSelector(sel_enforceNamedOperationGroups);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v88, v86, v87);

  v89 = MEMORY[0x1E696AD98];
  OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(self, v90, v91);
  v94 = objc_msgSend_numberWithBool_(v89, v93, OnlyManatee);
  v95 = NSStringFromSelector(sel_forceEnableReadOnlyManatee);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v96, v94, v95);

  v99 = objc_msgSend_uploadRequestConfiguration(self, v97, v98);
  v102 = objc_msgSend_sqliteRepresentation(v99, v100, v101);
  v103 = NSStringFromSelector(sel_uploadRequestConfiguration);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v104, v102, v103);

  v105 = MEMORY[0x1E696AD98];
  v108 = objc_msgSend_forceEnableReadOnlyManatee(self, v106, v107);
  v110 = objc_msgSend_numberWithBool_(v105, v109, v108);
  v111 = NSStringFromSelector(sel_forceEnableReadOnlyManatee);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v112, v110, v111);

  v115 = objc_msgSend_persona(self, v113, v114);
  v118 = objc_msgSend_identifier(v115, v116, v117);
  v119 = NSStringFromSelector(sel_personaIdentifier);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v120, v118, v119);

  v121 = MEMORY[0x1E696AD98];
  v124 = objc_msgSend_persona(self, v122, v123);
  v127 = objc_msgSend_type(v124, v125, v126);
  v129 = objc_msgSend_numberWithUnsignedInteger_(v121, v128, v127);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v130, v129, @"personaType");

  v131 = MEMORY[0x1E696AD98];
  v134 = objc_msgSend_useClearAssetEncryption(self, v132, v133);
  v136 = objc_msgSend_numberWithBool_(v131, v135, v134);
  v137 = NSStringFromSelector(sel_useClearAssetEncryption);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v138, v136, v137);

  v141 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v139, v140);
  v142 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v143, v141, v142);

  v146 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v144, v145);
  v147 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v148, v146, v147);

  v151 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v149, v150);
  v152 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForPushTopicGeneration);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v153, v151, v152);

  v156 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v154, v155);
  v157 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForTCC);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v158, v156, v157);

  v161 = objc_msgSend_fakeEntitlements(self, v159, v160);
  v162 = NSStringFromSelector(sel_fakeEntitlements);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v163, v161, v162);

  v164 = MEMORY[0x1E696AD98];
  v167 = objc_msgSend_useAnonymousToServerShareParticipants(self, v165, v166);
  v169 = objc_msgSend_numberWithBool_(v164, v168, v167);
  v170 = NSStringFromSelector(sel_useAnonymousToServerShareParticipants);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v171, v169, v170);

  v172 = MEMORY[0x1E696AD98];
  v175 = objc_msgSend_encryptMergeableValueMetadata(self, v173, v174);
  v177 = objc_msgSend_numberWithBool_(v172, v176, v175);
  v178 = NSStringFromSelector(sel_encryptMergeableValueMetadata);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v179, v177, v178);

  v182 = objc_msgSend_testDeviceReferenceProtocol(self, v180, v181);
  v185 = objc_msgSend_sqliteRepresentation(v182, v183, v184);
  v186 = NSStringFromSelector(sel_testDeviceReferenceProtocol);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v187, v185, v186);

  v188 = MEMORY[0x1E696AD98];
  v191 = objc_msgSend_returnRequestOperationProto(self, v189, v190);
  v193 = objc_msgSend_numberWithBool_(v188, v192, v191);
  v194 = NSStringFromSelector(sel_returnRequestOperationProto);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v195, v193, v194);

  v196 = MEMORY[0x1E696AD98];
  v199 = objc_msgSend_maintainRecordUploadOrder(self, v197, v198);
  v201 = objc_msgSend_numberWithBool_(v196, v200, v199);
  v202 = NSStringFromSelector(sel_maintainRecordUploadOrder);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v203, v201, v202);

  v204 = MEMORY[0x1E696AD98];
  v207 = objc_msgSend_addDatabaseScopeToZoneIDs(self, v205, v206);
  v209 = objc_msgSend_numberWithBool_(v204, v208, v207);
  v210 = NSStringFromSelector(sel_addDatabaseScopeToZoneIDs);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v211, v209, v210);

  v212 = MEMORY[0x1E696AD98];
  ChangesForMergeableValues = objc_msgSend_fetchChangesForMergeableValues(self, v213, v214);
  v217 = objc_msgSend_numberWithBool_(v212, v216, ChangesForMergeableValues);
  v218 = NSStringFromSelector(sel_fetchChangesForMergeableValues);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v219, v217, v218);

  v220 = MEMORY[0x1E696AD98];
  v223 = objc_msgSend_prefersHiddenAllowedSharingOptionsUI(self, v221, v222);
  v225 = objc_msgSend_numberWithBool_(v220, v224, v223);
  v226 = NSStringFromSelector(sel_prefersHiddenAllowedSharingOptionsUI);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v227, v225, v226);

  v230 = objc_msgSend_supportedDeviceCapabilities(self, v228, v229);

  if (v230)
  {
    v233 = objc_msgSend_supportedDeviceCapabilities(self, v231, v232);
    v235 = objc_msgSend_sqliteRepresentations_(CKDeviceCapability, v234, v233);
    v236 = NSStringFromSelector(sel_supportedDeviceCapabilities);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v237, v235, v236);
  }

  else
  {
    v233 = objc_msgSend_null(MEMORY[0x1E695DFB0], v231, v232);
    v235 = NSStringFromSelector(sel_supportedDeviceCapabilities);
    objc_msgSend_setObject_forKeyedSubscript_(v3, v238, v233, v235);
  }

  v241 = objc_msgSend_immediateUseDatabaseScopeForTesting(self, v239, v240);
  v242 = NSStringFromSelector(sel_immediateUseDatabaseScopeForTesting);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v243, v241, v242);

  v246 = objc_msgSend_ckSessionConfiguration(self, v244, v245);
  v249 = objc_msgSend_sqliteRepresentation(v246, v247, v248);
  v250 = NSStringFromSelector(sel_ckSessionConfiguration);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v251, v249, v250);

  v254 = objc_msgSend_ckSessionAcquiredInfo(self, v252, v253);
  v257 = objc_msgSend_sqliteRepresentation(v254, v255, v256);
  v258 = NSStringFromSelector(sel_ckSessionAcquiredInfo);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v259, v257, v258);

  v269 = 0;
  v261 = objc_msgSend_dataWithJSONObject_options_error_(MEMORY[0x1E696ACB0], v260, v3, 0, &v269);
  v262 = v269;
  if (v262)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v263 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v271 = v262;
      _os_log_error_impl(&dword_1883EA000, v263, OS_LOG_TYPE_ERROR, "Error converting CKContainerOptions to JSON: %@", buf, 0xCu);
    }
  }

  v264 = objc_alloc(MEMORY[0x1E696AEC0]);
  v266 = objc_msgSend_initWithData_encoding_(v264, v265, v261, 4);

  v267 = *MEMORY[0x1E69E9840];

  return v266;
}

- (void)encodeWithCoder:(id)a3
{
  v178 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_captureResponseHTTPHeaders(self, v5, v6);
  v8 = NSStringFromSelector(sel_captureResponseHTTPHeaders);
  objc_msgSend_encodeBool_forKey_(v178, v9, v7, v8);

  v12 = objc_msgSend_useZoneWidePCS(self, v10, v11);
  v13 = NSStringFromSelector(sel_useZoneWidePCS);
  objc_msgSend_encodeBool_forKey_(v178, v14, v12, v13);

  v17 = objc_msgSend_holdAllOperations(self, v15, v16);
  v18 = NSStringFromSelector(sel_holdAllOperations);
  objc_msgSend_encodeBool_forKey_(v178, v19, v17, v18);

  v22 = objc_msgSend_accountOverrideInfo(self, v20, v21);
  v23 = NSStringFromSelector(sel_accountOverrideInfo);
  objc_msgSend_encodeObject_forKey_(v178, v24, v22, v23);

  v27 = objc_msgSend_qualityOfService(self, v25, v26);
  v28 = NSStringFromSelector(sel_qualityOfService);
  objc_msgSend_encodeInteger_forKey_(v178, v29, v27, v28);

  v32 = objc_msgSend_returnPCSMetadata(self, v30, v31);
  v33 = NSStringFromSelector(sel_returnPCSMetadata);
  objc_msgSend_encodeBool_forKey_(v178, v34, v32, v33);

  v37 = objc_msgSend_mmcsEncryptionSupport(self, v35, v36);
  v38 = NSStringFromSelector(sel_mmcsEncryptionSupport);
  objc_msgSend_encodeInteger_forKey_(v178, v39, v37, v38);

  v42 = objc_msgSend_encryptionServiceName(self, v40, v41);
  v43 = NSStringFromSelector(sel_encryptionServiceName);
  objc_msgSend_encodeObject_forKey_(v178, v44, v42, v43);

  isServiceManatee = objc_msgSend_isServiceManatee(self, v45, v46);
  v48 = NSStringFromSelector(sel_isServiceManatee);
  objc_msgSend_encodeBool_forKey_(v178, v49, isServiceManatee, v48);

  v52 = objc_msgSend_bypassPCSEncryption(self, v50, v51);
  v53 = NSStringFromSelector(sel_bypassPCSEncryption);
  objc_msgSend_encodeBool_forKey_(v178, v54, v52, v53);

  v57 = objc_msgSend_enforceNamedOperationGroups(self, v55, v56);
  v58 = NSStringFromSelector(sel_enforceNamedOperationGroups);
  objc_msgSend_encodeBool_forKey_(v178, v59, v57, v58);

  OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(self, v60, v61);
  v63 = NSStringFromSelector(sel_forceEnableReadOnlyManatee);
  objc_msgSend_encodeBool_forKey_(v178, v64, OnlyManatee, v63);

  v67 = objc_msgSend_uploadRequestConfiguration(self, v65, v66);
  v68 = NSStringFromSelector(sel_uploadRequestConfiguration);
  objc_msgSend_encodeObject_forKey_(v178, v69, v67, v68);

  v72 = objc_msgSend_persona(self, v70, v71);
  v75 = objc_msgSend_identifier(v72, v73, v74);
  v76 = NSStringFromSelector(sel_personaIdentifier);
  objc_msgSend_encodeObject_forKey_(v178, v77, v75, v76);

  v80 = objc_msgSend_persona(self, v78, v79);
  v83 = objc_msgSend_type(v80, v81, v82);
  objc_msgSend_encodeInteger_forKey_(v178, v84, v83, @"personaType");

  v87 = objc_msgSend_useClearAssetEncryption(self, v85, v86);
  v88 = NSStringFromSelector(sel_useClearAssetEncryption);
  objc_msgSend_encodeBool_forKey_(v178, v89, v87, v88);

  v92 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v90, v91);
  v93 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
  objc_msgSend_encodeObject_forKey_(v178, v94, v92, v93);

  v97 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v95, v96);
  v98 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
  objc_msgSend_encodeObject_forKey_(v178, v99, v97, v98);

  v102 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v100, v101);
  v103 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForPushTopicGeneration);
  objc_msgSend_encodeObject_forKey_(v178, v104, v102, v103);

  v107 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v105, v106);
  v108 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForTCC);
  objc_msgSend_encodeObject_forKey_(v178, v109, v107, v108);

  v112 = objc_msgSend_fakeEntitlements(self, v110, v111);
  v113 = NSStringFromSelector(sel_fakeEntitlements);
  objc_msgSend_encodeObject_forKey_(v178, v114, v112, v113);

  v117 = objc_msgSend_useAnonymousToServerShareParticipants(self, v115, v116);
  v118 = NSStringFromSelector(sel_useAnonymousToServerShareParticipants);
  objc_msgSend_encodeBool_forKey_(v178, v119, v117, v118);

  v122 = objc_msgSend_encryptMergeableValueMetadata(self, v120, v121);
  v123 = NSStringFromSelector(sel_encryptMergeableValueMetadata);
  objc_msgSend_encodeBool_forKey_(v178, v124, v122, v123);

  if (__sTestOverridesAvailable[0] == 1)
  {
    v127 = objc_msgSend_testDeviceReferenceProtocol(self, v125, v126);
    v128 = NSStringFromSelector(sel_testDeviceReferenceProtocol);
    objc_msgSend_encodeObject_forKey_(v178, v129, v127, v128);
  }

  v130 = objc_msgSend_returnRequestOperationProto(self, v125, v126);
  v131 = NSStringFromSelector(sel_returnRequestOperationProto);
  objc_msgSend_encodeBool_forKey_(v178, v132, v130, v131);

  v135 = objc_msgSend_maintainRecordUploadOrder(self, v133, v134);
  v136 = NSStringFromSelector(sel_maintainRecordUploadOrder);
  objc_msgSend_encodeBool_forKey_(v178, v137, v135, v136);

  v140 = objc_msgSend_addDatabaseScopeToZoneIDs(self, v138, v139);
  v141 = NSStringFromSelector(sel_addDatabaseScopeToZoneIDs);
  objc_msgSend_encodeBool_forKey_(v178, v142, v140, v141);

  ChangesForMergeableValues = objc_msgSend_fetchChangesForMergeableValues(self, v143, v144);
  v146 = NSStringFromSelector(sel_fetchChangesForMergeableValues);
  objc_msgSend_encodeBool_forKey_(v178, v147, ChangesForMergeableValues, v146);

  v150 = objc_msgSend_prefersHiddenAllowedSharingOptionsUI(self, v148, v149);
  v151 = NSStringFromSelector(sel_prefersHiddenAllowedSharingOptionsUI);
  objc_msgSend_encodeBool_forKey_(v178, v152, v150, v151);

  v155 = objc_msgSend_acceptServerSignedRecords(self, v153, v154);
  v156 = NSStringFromSelector(sel_acceptServerSignedRecords);
  objc_msgSend_encodeBool_forKey_(v178, v157, v155, v156);

  v160 = objc_msgSend_supportedDeviceCapabilities(self, v158, v159);
  v161 = NSStringFromSelector(sel_supportedDeviceCapabilities);
  objc_msgSend_encodeObject_forKey_(v178, v162, v160, v161);

  v165 = objc_msgSend_immediateUseDatabaseScopeForTesting(self, v163, v164);
  v166 = NSStringFromSelector(sel_immediateUseDatabaseScopeForTesting);
  objc_msgSend_encodeObject_forKey_(v178, v167, v165, v166);

  v170 = objc_msgSend_ckSessionConfiguration(self, v168, v169);
  v171 = NSStringFromSelector(sel_ckSessionConfiguration);
  objc_msgSend_encodeObject_forKey_(v178, v172, v170, v171);

  v175 = objc_msgSend_ckSessionAcquiredInfo(self, v173, v174);
  v176 = NSStringFromSelector(sel_ckSessionAcquiredInfo);
  objc_msgSend_encodeObject_forKey_(v178, v177, v175, v176);

  objc_autoreleasePoolPop(v4);
}

- (CKContainerOptions)initWithCoder:(id)a3
{
  v134[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v133.receiver = self;
  v133.super_class = CKContainerOptions;
  v7 = [(CKContainerOptions *)&v133 init];
  if (v7)
  {
    v8 = NSStringFromSelector(sel_captureResponseHTTPHeaders);
    v7->_captureResponseHTTPHeaders = objc_msgSend_decodeBoolForKey_(v4, v9, v8);

    v10 = NSStringFromSelector(sel_useZoneWidePCS);
    v7->_useZoneWidePCS = objc_msgSend_decodeBoolForKey_(v4, v11, v10);

    v12 = NSStringFromSelector(sel_holdAllOperations);
    v7->_holdAllOperations = objc_msgSend_decodeBoolForKey_(v4, v13, v12);

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_accountOverrideInfo);
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v14, v15);
    accountOverrideInfo = v7->_accountOverrideInfo;
    v7->_accountOverrideInfo = v17;

    v19 = NSStringFromSelector(sel_qualityOfService);
    v7->_qualityOfService = objc_msgSend_decodeIntegerForKey_(v4, v20, v19);

    v21 = NSStringFromSelector(sel_returnPCSMetadata);
    v7->_returnPCSMetadata = objc_msgSend_decodeBoolForKey_(v4, v22, v21);

    v23 = NSStringFromSelector(sel_mmcsEncryptionSupport);
    v7->_mmcsEncryptionSupport = objc_msgSend_decodeIntegerForKey_(v4, v24, v23);

    v25 = objc_opt_class();
    v26 = NSStringFromSelector(sel_encryptionServiceName);
    v28 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v27, v25, v26);
    encryptionServiceName = v7->_encryptionServiceName;
    v7->_encryptionServiceName = v28;

    v30 = NSStringFromSelector(sel_isServiceManatee);
    v7->_isServiceManatee = objc_msgSend_decodeBoolForKey_(v4, v31, v30);

    v32 = NSStringFromSelector(sel_bypassPCSEncryption);
    v7->_bypassPCSEncryption = objc_msgSend_decodeBoolForKey_(v4, v33, v32);

    v34 = NSStringFromSelector(sel_enforceNamedOperationGroups);
    v7->_enforceNamedOperationGroups = objc_msgSend_decodeBoolForKey_(v4, v35, v34);

    v36 = NSStringFromSelector(sel_forceEnableReadOnlyManatee);
    v7->_forceEnableReadOnlyManatee = objc_msgSend_decodeBoolForKey_(v4, v37, v36);

    v38 = objc_opt_class();
    v39 = NSStringFromSelector(sel_uploadRequestConfiguration);
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v40, v38, v39);
    uploadRequestConfiguration = v7->_uploadRequestConfiguration;
    v7->_uploadRequestConfiguration = v41;

    v43 = objc_opt_class();
    v44 = NSStringFromSelector(sel_personaIdentifier);
    v46 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v45, v43, v44);

    if (v46)
    {
      v49 = objc_msgSend_decodeIntegerForKey_(v4, v47, @"personaType");
      if (v49 || (objc_msgSend_personaWithIdentifier_error_(CKPersona, v48, v46, 0), (v52 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v50 = [CKPersona alloc];
        v52 = objc_msgSend_initWithIdentifier_type_(v50, v51, v46, v49);
      }

      persona = v7->_persona;
      v7->_persona = v52;
    }

    v54 = NSStringFromSelector(sel_useClearAssetEncryption);
    v7->_useClearAssetEncryption = objc_msgSend_decodeBoolForKey_(v4, v55, v54);

    v56 = objc_opt_class();
    v57 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
    v59 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v58, v56, v57);
    applicationBundleIdentifierOverrideForContainerAccess = v7->_applicationBundleIdentifierOverrideForContainerAccess;
    v7->_applicationBundleIdentifierOverrideForContainerAccess = v59;

    v61 = objc_opt_class();
    v62 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
    v64 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v63, v61, v62);
    applicationBundleIdentifierOverrideForNetworkAttribution = v7->_applicationBundleIdentifierOverrideForNetworkAttribution;
    v7->_applicationBundleIdentifierOverrideForNetworkAttribution = v64;

    v66 = objc_opt_class();
    v67 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForPushTopicGeneration);
    v69 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v68, v66, v67);
    applicationBundleIdentifierOverrideForPushTopicGeneration = v7->_applicationBundleIdentifierOverrideForPushTopicGeneration;
    v7->_applicationBundleIdentifierOverrideForPushTopicGeneration = v69;

    v71 = objc_opt_class();
    v72 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForTCC);
    v74 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v73, v71, v72);
    applicationBundleIdentifierOverrideForTCC = v7->_applicationBundleIdentifierOverrideForTCC;
    v7->_applicationBundleIdentifierOverrideForTCC = v74;

    v76 = MEMORY[0x1E695DFD8];
    v134[0] = objc_opt_class();
    v134[1] = objc_opt_class();
    v134[2] = objc_opt_class();
    v134[3] = objc_opt_class();
    v134[4] = objc_opt_class();
    v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v77, v134, 5);
    v80 = objc_msgSend_setWithArray_(v76, v79, v78);
    v81 = NSStringFromSelector(sel_fakeEntitlements);
    v83 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v82, v80, v81);
    fakeEntitlements = v7->_fakeEntitlements;
    v7->_fakeEntitlements = v83;

    v85 = NSStringFromSelector(sel_useAnonymousToServerShareParticipants);
    v7->_useAnonymousToServerShareParticipants = objc_msgSend_decodeBoolForKey_(v4, v86, v85);

    v87 = NSStringFromSelector(sel_encryptMergeableValueMetadata);
    v7->_encryptMergeableValueMetadata = objc_msgSend_decodeBoolForKey_(v4, v88, v87);

    if (__sTestOverridesAvailable[0] == 1)
    {
      v89 = sub_188518A68();
      v90 = NSStringFromSelector(sel_testDeviceReferenceProtocol);
      v92 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v91, v89, v90);
      testDeviceReferenceProtocol = v7->_testDeviceReferenceProtocol;
      v7->_testDeviceReferenceProtocol = v92;
    }

    v94 = NSStringFromSelector(sel_returnRequestOperationProto);
    v7->_returnRequestOperationProto = objc_msgSend_decodeBoolForKey_(v4, v95, v94);

    v96 = NSStringFromSelector(sel_maintainRecordUploadOrder);
    v7->_maintainRecordUploadOrder = objc_msgSend_decodeBoolForKey_(v4, v97, v96);

    v98 = NSStringFromSelector(sel_addDatabaseScopeToZoneIDs);
    v7->_addDatabaseScopeToZoneIDs = objc_msgSend_decodeBoolForKey_(v4, v99, v98);

    v100 = NSStringFromSelector(sel_fetchChangesForMergeableValues);
    v7->_fetchChangesForMergeableValues = objc_msgSend_decodeBoolForKey_(v4, v101, v100);

    v102 = NSStringFromSelector(sel_prefersHiddenAllowedSharingOptionsUI);
    v7->_prefersHiddenAllowedSharingOptionsUI = objc_msgSend_decodeBoolForKey_(v4, v103, v102);

    v104 = NSStringFromSelector(sel_acceptServerSignedRecords);
    v7->_acceptServerSignedRecords = objc_msgSend_decodeBoolForKey_(v4, v105, v104);

    v106 = MEMORY[0x1E695DFD8];
    v107 = objc_opt_class();
    v108 = objc_opt_class();
    v109 = objc_opt_class();
    v111 = objc_msgSend_setWithObjects_(v106, v110, v107, v108, v109, 0);
    v112 = NSStringFromSelector(sel_supportedDeviceCapabilities);
    v114 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v113, v111, v112);
    supportedDeviceCapabilities = v7->_supportedDeviceCapabilities;
    v7->_supportedDeviceCapabilities = v114;

    v116 = objc_opt_class();
    v117 = NSStringFromSelector(sel_immediateUseDatabaseScopeForTesting);
    v119 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v118, v116, v117);
    immediateUseDatabaseScopeForTesting = v7->_immediateUseDatabaseScopeForTesting;
    v7->_immediateUseDatabaseScopeForTesting = v119;

    v121 = objc_opt_class();
    v122 = NSStringFromSelector(sel_ckSessionConfiguration);
    v124 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v123, v121, v122);
    ckSessionConfiguration = v7->_ckSessionConfiguration;
    v7->_ckSessionConfiguration = v124;

    v126 = objc_opt_class();
    v127 = NSStringFromSelector(sel_ckSessionAcquiredInfo);
    v129 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v128, v126, v127);
    ckSessionAcquiredInfo = v7->_ckSessionAcquiredInfo;
    v7->_ckSessionAcquiredInfo = v129;
  }

  objc_msgSend_swizzleClass(v7, v5, v6);

  v131 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)setUseMMCSEncryptionV2:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x1EEE66B58](self, sel_setMmcsEncryptionSupport_, v3);
}

- (NSString)personaUniqueString
{
  v7 = 0;
  objc_msgSend_getPersona_error_(self, a2, &v7, 0);
  v2 = v7;
  v5 = objc_msgSend_identifier(v2, v3, v4);

  return v5;
}

- (void)setUserPersona:(id)a3
{
  v4 = objc_msgSend_personaFromUserPersona_(CKPersona, a2, a3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = objc_msgSend_setPersona_(self, v4, v4);
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setUserPersonaAttributes:(id)a3
{
  v4 = objc_msgSend_personaFromUserPersonaAttributes_(CKPersona, a2, a3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = objc_msgSend_setPersona_(self, v4, v4);
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (BOOL)getPersona:(id *)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_accountOverrideInfo(self, a2, a3);
  v10 = objc_msgSend_copy(v7, v8, v9);

  if (v10)
  {
    v48 = 0;
    v49 = 0;
    Persona_error = objc_msgSend_getPersona_error_(v10, v11, &v49, &v48);
    v14 = v49;
    v15 = v48;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    Persona_error = 1;
  }

  v16 = objc_msgSend_persona(self, v11, v12);
  v19 = v16;
  if (!v14)
  {
    v14 = v16;
    if (!a3)
    {
      goto LABEL_14;
    }

LABEL_13:
    v28 = v14;
    *a3 = v14;
    goto LABEL_14;
  }

  if (!v16)
  {
    goto LABEL_12;
  }

  v20 = objc_msgSend_identifier(v14, v17, v18);
  v23 = objc_msgSend_identifier(v19, v21, v22);
  if (objc_msgSend_isEqual_(v20, v24, v23))
  {

LABEL_11:
    v27 = v19;

    v14 = v27;
LABEL_12:
    if (!a3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  isEquivalentToPersona = objc_msgSend_isEquivalentToPersona_(v14, v25, v19);

  if (isEquivalentToPersona)
  {
    goto LABEL_11;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v32 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    v41 = v32;
    v44 = objc_msgSend_ckShortDescription(v19, v42, v43);
    v47 = objc_msgSend_ckShortDescription(v14, v45, v46);
    *buf = 138412546;
    v51 = v44;
    v52 = 2112;
    v53 = v47;
    _os_log_error_impl(&dword_1883EA000, v41, OS_LOG_TYPE_ERROR, "The explicit persona, %@, is different than the account's persona: %@", buf, 0x16u);
  }

  v35 = objc_msgSend_ckShortDescription(v19, v33, v34);
  v38 = objc_msgSend_ckShortDescription(v14, v36, v37);
  v40 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v39, @"CKInternalErrorDomain", 1000, @"The explicit persona, %@, is different than the account's persona: %@", v35, v38);

  v14 = 0;
  Persona_error = 0;
  v15 = v40;
  if (a3)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (a4)
  {
    v29 = v15;
    *a4 = v15;
  }

  v30 = *MEMORY[0x1E69E9840];
  return Persona_error;
}

- (void)setApplicationBundleIdentifierOverride:(id)a3
{
  v8 = a3;
  objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(self, v4, v8);
  objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(self, v5, v8);
  objc_msgSend_setApplicationBundleIdentifierOverrideForPushTopicGeneration_(self, v6, v8);
  objc_msgSend_setApplicationBundleIdentifierOverrideForTCC_(self, v7, v8);
}

- (void)setFakeEntitlements:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  fakeEntitlements = v4->_fakeEntitlements;
  v4->_fakeEntitlements = v7;

  objc_sync_exit(v4);
}

- (NSString)personaIdentifier
{
  v3 = objc_msgSend_persona(self, a2, v2);
  v6 = objc_msgSend_identifier(v3, v4, v5);

  return v6;
}

- (void)setPersonaIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v13 = 0;
    v6 = objc_msgSend_personaWithIdentifier_error_(CKPersona, v4, v5, &v13);
    v8 = v13;
    if (!v6)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v9 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v8;
        _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "Unable to resolve persona with identifier '%@' with error: %@", buf, 0x16u);
      }

      v10 = [CKPersona alloc];
      v6 = objc_msgSend_initWithIdentifier_type_(v10, v11, v5, 0);
    }

    objc_msgSend_setPersona_(self, v7, v6);
  }

  else
  {
    objc_msgSend_setPersona_(self, v4, 0);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v139 = a3;
  v6 = objc_msgSend_captureResponseHTTPHeaders(self, v4, v5);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v7, @"captureResponseHTTPHeaders", v6, 0);
  v10 = objc_msgSend_useZoneWidePCS(self, v8, v9);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v11, @"useZoneWidePCS", v10, 0);
  v14 = objc_msgSend_holdAllOperations(self, v12, v13);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v15, @"holdAllOperations", v14, 0);
  v18 = objc_msgSend_accountOverrideInfo(self, v16, v17);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v19, @"accountOverrideInfo", v18, 1);

  if (objc_msgSend_qualityOfService(self, v20, v21) != -1)
  {
    v24 = objc_msgSend_qualityOfService(self, v22, v23);
    v26 = CKStringForQOS(v24, v25);
    objc_msgSend_addProperty_value_shouldRedact_(v139, v27, @"qualityOfService", v26, 0);
  }

  v28 = objc_msgSend_returnPCSMetadata(self, v22, v23);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v29, @"returnPCSMetadata", v28, 0);
  if (objc_msgSend_mmcsEncryptionSupport(self, v30, v31) != 1)
  {
    v34 = objc_msgSend_mmcsEncryptionSupport(self, v32, v33);
    v35 = CKStringFromCKMMCSEncryptionSupport(v34);
    objc_msgSend_addProperty_value_shouldRedact_(v139, v36, @"mmcsEncryptionSupport", v35, 0);
  }

  v37 = objc_msgSend_encryptionServiceName(self, v32, v33);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v38, @"encryptionServiceName", v37, 0);

  isServiceManatee = objc_msgSend_isServiceManatee(self, v39, v40);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v42, @"isServiceManatee", isServiceManatee, 0);
  v45 = objc_msgSend_bypassPCSEncryption(self, v43, v44);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v46, @"bypassPCSEncryption", v45, 0);
  v49 = objc_msgSend_enforceNamedOperationGroups(self, v47, v48);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v50, @"enforceNamedOperationGroups", v49, 0);
  OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(self, v51, v52);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v54, @"forceEnableReadOnlyManatee", OnlyManatee, 0);
  v57 = objc_msgSend_uploadRequestConfiguration(self, v55, v56);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v58, @"uploadRequestConfiguration", v57, 1);

  v61 = objc_msgSend_forceEnableReadOnlyManatee(self, v59, v60);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v62, @"forceEnableReadOnlyManatee", v61, 0);
  v65 = objc_msgSend_persona(self, v63, v64);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v66, @"persona", v65, 0);

  v69 = objc_msgSend_useClearAssetEncryption(self, v67, v68);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v70, @"useClearAssetEncryption", v69, 0);
  v73 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v71, v72);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v74, @"applicationBundleIdentifierOverrideForContainerAccess", v73, 0);

  v77 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v75, v76);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v78, @"applicationBundleIdentifierOverrideForNetworkAttribution", v77, 0);

  v81 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v79, v80);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v82, @"applicationBundleIdentifierOverrideForPushTopicGeneration", v81, 0);

  v85 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v83, v84);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v86, @"applicationBundleIdentifierOverrideForTCC", v85, 0);

  v89 = objc_msgSend_fakeEntitlements(self, v87, v88);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v90, @"fakeEntitlements", v89, 0);

  v93 = objc_msgSend_useAnonymousToServerShareParticipants(self, v91, v92);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v94, @"useAnonymousToServerShareParticipants", v93, 0);
  v97 = objc_msgSend_encryptMergeableValueMetadata(self, v95, v96);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v98, @"encryptMergeableValueMetadata", v97, 0);
  v101 = objc_msgSend_testDeviceReferenceProtocol(self, v99, v100);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v102, @"testDeviceReferenceProtocol", v101, 0);

  v105 = objc_msgSend_returnRequestOperationProto(self, v103, v104);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v106, @"returnRequestOperationProto", v105, 0);
  v109 = objc_msgSend_maintainRecordUploadOrder(self, v107, v108);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v110, @"maintainRecordUploadOrder", v109, 0);
  v113 = objc_msgSend_addDatabaseScopeToZoneIDs(self, v111, v112);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v114, @"addDatabaseScopeToZoneIDs", v113, 0);
  ChangesForMergeableValues = objc_msgSend_fetchChangesForMergeableValues(self, v115, v116);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v118, @"fetchChangesForMergeableValues", ChangesForMergeableValues, 0);
  v121 = objc_msgSend_fetchChangesForMergeableValues(self, v119, v120);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v122, @"fetchChangesForMergeableValues", v121, 0);
  v125 = objc_msgSend_prefersHiddenAllowedSharingOptionsUI(self, v123, v124);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v126, @"prefersHiddenAllowedSharingOptionsUI", v125, 0);
  v129 = objc_msgSend_acceptServerSignedRecords(self, v127, v128);
  objc_msgSend_addBooleanProperty_value_defaultValue_(v139, v130, @"acceptServerSignedRecords", v129, 0);
  v133 = objc_msgSend_supportedDeviceCapabilities(self, v131, v132);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v134, @"supportedDeviceCapabilities", v133, 0);

  v137 = objc_msgSend_immediateUseDatabaseScopeForTesting(self, v135, v136);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v139, v138, @"immediateUseDatabaseScopeForTesting", v137, 0);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v4[8] = objc_msgSend_captureResponseHTTPHeaders(self, v5, v6);
  v4[9] = objc_msgSend_useZoneWidePCS(self, v7, v8);
  v4[25] = objc_msgSend_holdAllOperations(self, v9, v10);
  v13 = objc_msgSend_accountOverrideInfo(self, v11, v12);
  v16 = objc_msgSend_copy(v13, v14, v15);
  v17 = *(v4 + 6);
  *(v4 + 6) = v16;

  *(v4 + 13) = objc_msgSend_qualityOfService(self, v18, v19);
  v4[23] = objc_msgSend_returnPCSMetadata(self, v20, v21);
  *(v4 + 7) = objc_msgSend_mmcsEncryptionSupport(self, v22, v23);
  v26 = objc_msgSend_encryptionServiceName(self, v24, v25);
  v29 = objc_msgSend_copy(v26, v27, v28);
  v30 = *(v4 + 8);
  *(v4 + 8) = v29;

  v4[10] = objc_msgSend_isServiceManatee(self, v31, v32);
  v4[11] = objc_msgSend_bypassPCSEncryption(self, v33, v34);
  v4[12] = objc_msgSend_enforceNamedOperationGroups(self, v35, v36);
  v4[13] = objc_msgSend_forceEnableReadOnlyManatee(self, v37, v38);
  v41 = objc_msgSend_uploadRequestConfiguration(self, v39, v40);
  v42 = *(v4 + 14);
  *(v4 + 14) = v41;

  v45 = objc_msgSend_persona(self, v43, v44);
  v48 = objc_msgSend_copy(v45, v46, v47);
  v49 = *(v4 + 15);
  *(v4 + 15) = v48;

  v4[14] = objc_msgSend_useClearAssetEncryption(self, v50, v51);
  v54 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v52, v53);
  v57 = objc_msgSend_copy(v54, v55, v56);
  v58 = *(v4 + 9);
  *(v4 + 9) = v57;

  v61 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v59, v60);
  v64 = objc_msgSend_copy(v61, v62, v63);
  v65 = *(v4 + 10);
  *(v4 + 10) = v64;

  v68 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v66, v67);
  v71 = objc_msgSend_copy(v68, v69, v70);
  v72 = *(v4 + 11);
  *(v4 + 11) = v71;

  v75 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v73, v74);
  v78 = objc_msgSend_copy(v75, v76, v77);
  v79 = *(v4 + 12);
  *(v4 + 12) = v78;

  v82 = objc_msgSend_fakeEntitlements(self, v80, v81);
  v85 = objc_msgSend_CKDeepCopy(v82, v83, v84);
  v86 = *(v4 + 4);
  *(v4 + 4) = v85;

  v4[16] = objc_msgSend_useAnonymousToServerShareParticipants(self, v87, v88);
  v4[17] = objc_msgSend_encryptMergeableValueMetadata(self, v89, v90);
  v93 = objc_msgSend_testDeviceReferenceProtocol(self, v91, v92);
  v94 = *(v4 + 19);
  *(v4 + 19) = v93;

  v4[24] = objc_msgSend_returnRequestOperationProto(self, v95, v96);
  v4[18] = objc_msgSend_maintainRecordUploadOrder(self, v97, v98);
  v4[19] = objc_msgSend_addDatabaseScopeToZoneIDs(self, v99, v100);
  v4[20] = objc_msgSend_fetchChangesForMergeableValues(self, v101, v102);
  v4[21] = objc_msgSend_prefersHiddenAllowedSharingOptionsUI(self, v103, v104);
  v4[22] = objc_msgSend_acceptServerSignedRecords(self, v105, v106);
  v109 = objc_msgSend_supportedDeviceCapabilities(self, v107, v108);
  v110 = *(v4 + 5);
  *(v4 + 5) = v109;

  v113 = objc_msgSend_immediateUseDatabaseScopeForTesting(self, v111, v112);
  v116 = objc_msgSend_copy(v113, v114, v115);
  v117 = *(v4 + 18);
  *(v4 + 18) = v116;

  v120 = objc_msgSend_ckSessionConfiguration(self, v118, v119);
  v121 = *(v4 + 16);
  *(v4 + 16) = v120;

  v124 = objc_msgSend_ckSessionAcquiredInfo(self, v122, v123);
  v125 = *(v4 + 17);
  *(v4 + 17) = v124;

  objc_msgSend_swizzleClass(v4, v126, v127);
  return v4;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_accountOverrideInfo(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);

  v10 = objc_msgSend_personaIdentifier(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;

  v16 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  v22 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v20, v21);
  v25 = v13 ^ v19 ^ objc_msgSend_hash(v22, v23, v24);

  v28 = objc_msgSend_fakeEntitlements(self, v26, v27);
  v31 = objc_msgSend_hash(v28, v29, v30);

  return v25 ^ v31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v198 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_captureResponseHTTPHeaders(v5, v6, v7);
      if (v8 != objc_msgSend_captureResponseHTTPHeaders(self, v9, v10))
      {
        goto LABEL_38;
      }

      v13 = objc_msgSend_useZoneWidePCS(v5, v11, v12);
      if (v13 != objc_msgSend_useZoneWidePCS(self, v14, v15))
      {
        goto LABEL_38;
      }

      v18 = objc_msgSend_holdAllOperations(v5, v16, v17);
      if (v18 != objc_msgSend_holdAllOperations(self, v19, v20))
      {
        goto LABEL_38;
      }

      v23 = objc_msgSend_accountOverrideInfo(v5, v21, v22);
      v26 = objc_msgSend_accountOverrideInfo(self, v24, v25);
      v27 = CKObjectsAreBothNilOrEqual(v23, v26);

      if (!v27)
      {
        goto LABEL_38;
      }

      v30 = objc_msgSend_qualityOfService(v5, v28, v29);
      if (v30 != objc_msgSend_qualityOfService(self, v31, v32))
      {
        goto LABEL_38;
      }

      v35 = objc_msgSend_returnPCSMetadata(v5, v33, v34);
      if (v35 != objc_msgSend_returnPCSMetadata(self, v36, v37))
      {
        goto LABEL_38;
      }

      v40 = objc_msgSend_mmcsEncryptionSupport(v5, v38, v39);
      if (v40 != objc_msgSend_mmcsEncryptionSupport(self, v41, v42))
      {
        goto LABEL_38;
      }

      v45 = objc_msgSend_encryptionServiceName(v5, v43, v44);
      v48 = objc_msgSend_encryptionServiceName(self, v46, v47);
      v49 = CKObjectsAreBothNilOrEqual(v45, v48);

      if (!v49)
      {
        goto LABEL_38;
      }

      isServiceManatee = objc_msgSend_isServiceManatee(v5, v50, v51);
      if (isServiceManatee != objc_msgSend_isServiceManatee(self, v53, v54))
      {
        goto LABEL_38;
      }

      v57 = objc_msgSend_bypassPCSEncryption(v5, v55, v56);
      if (v57 != objc_msgSend_bypassPCSEncryption(self, v58, v59))
      {
        goto LABEL_38;
      }

      v62 = objc_msgSend_enforceNamedOperationGroups(v5, v60, v61);
      if (v62 != objc_msgSend_enforceNamedOperationGroups(self, v63, v64))
      {
        goto LABEL_38;
      }

      OnlyManatee = objc_msgSend_forceEnableReadOnlyManatee(v5, v65, v66);
      if (OnlyManatee != objc_msgSend_forceEnableReadOnlyManatee(self, v68, v69))
      {
        goto LABEL_38;
      }

      v72 = objc_msgSend_uploadRequestConfiguration(v5, v70, v71);
      v75 = objc_msgSend_uploadRequestConfiguration(self, v73, v74);
      v76 = CKObjectsAreBothNilOrEqual(v72, v75);

      if (!v76)
      {
        goto LABEL_38;
      }

      v79 = objc_msgSend_persona(v5, v77, v78);
      v82 = objc_msgSend_persona(self, v80, v81);
      v83 = CKObjectsAreBothNilOrEqual(v79, v82);

      if (!v83)
      {
        goto LABEL_38;
      }

      v86 = objc_msgSend_useClearAssetEncryption(v5, v84, v85);
      if (v86 != objc_msgSend_useClearAssetEncryption(self, v87, v88))
      {
        goto LABEL_38;
      }

      v91 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v5, v89, v90);
      v94 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(self, v92, v93);
      v95 = CKObjectsAreBothNilOrEqual(v91, v94);

      if (!v95)
      {
        goto LABEL_38;
      }

      v98 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v5, v96, v97);
      v101 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(self, v99, v100);
      v102 = CKObjectsAreBothNilOrEqual(v98, v101);

      if (!v102)
      {
        goto LABEL_38;
      }

      v105 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v5, v103, v104);
      v108 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(self, v106, v107);
      v109 = CKObjectsAreBothNilOrEqual(v105, v108);

      if (!v109)
      {
        goto LABEL_38;
      }

      v112 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v5, v110, v111);
      v115 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(self, v113, v114);
      v116 = CKObjectsAreBothNilOrEqual(v112, v115);

      if (!v116)
      {
        goto LABEL_38;
      }

      v119 = objc_msgSend_fakeEntitlements(v5, v117, v118);
      v122 = objc_msgSend_fakeEntitlements(self, v120, v121);
      v123 = CKObjectsAreBothNilOrEqual(v119, v122);

      if (!v123)
      {
        goto LABEL_38;
      }

      v126 = objc_msgSend_useAnonymousToServerShareParticipants(v5, v124, v125);
      if (v126 != objc_msgSend_useAnonymousToServerShareParticipants(self, v127, v128))
      {
        goto LABEL_38;
      }

      v131 = objc_msgSend_encryptMergeableValueMetadata(v5, v129, v130);
      if (v131 != objc_msgSend_encryptMergeableValueMetadata(self, v132, v133))
      {
        goto LABEL_38;
      }

      v136 = objc_msgSend_testDeviceReferenceProtocol(v5, v134, v135);
      v139 = objc_msgSend_testDeviceReferenceProtocol(self, v137, v138);
      v140 = CKObjectsAreBothNilOrEqual(v136, v139);

      if (!v140)
      {
        goto LABEL_38;
      }

      v143 = objc_msgSend_returnRequestOperationProto(v5, v141, v142);
      if (v143 != objc_msgSend_returnRequestOperationProto(self, v144, v145))
      {
        goto LABEL_38;
      }

      v148 = objc_msgSend_maintainRecordUploadOrder(v5, v146, v147);
      if (v148 != objc_msgSend_maintainRecordUploadOrder(self, v149, v150))
      {
        goto LABEL_38;
      }

      v153 = objc_msgSend_addDatabaseScopeToZoneIDs(v5, v151, v152);
      if (v153 != objc_msgSend_addDatabaseScopeToZoneIDs(self, v154, v155))
      {
        goto LABEL_38;
      }

      ChangesForMergeableValues = objc_msgSend_fetchChangesForMergeableValues(v5, v156, v157);
      if (ChangesForMergeableValues != objc_msgSend_fetchChangesForMergeableValues(self, v159, v160))
      {
        goto LABEL_38;
      }

      v163 = objc_msgSend_prefersHiddenAllowedSharingOptionsUI(v5, v161, v162);
      if (v163 != objc_msgSend_prefersHiddenAllowedSharingOptionsUI(self, v164, v165))
      {
        goto LABEL_38;
      }

      v168 = objc_msgSend_acceptServerSignedRecords(v5, v166, v167);
      if (v168 != objc_msgSend_acceptServerSignedRecords(self, v169, v170))
      {
        goto LABEL_38;
      }

      v173 = objc_msgSend_supportedDeviceCapabilities(v5, v171, v172);
      v176 = objc_msgSend_supportedDeviceCapabilities(self, v174, v175);
      v177 = CKObjectsAreBothNilOrEqual(v173, v176);

      if (!v177)
      {
        goto LABEL_38;
      }

      v180 = objc_msgSend_immediateUseDatabaseScopeForTesting(v5, v178, v179);
      v183 = objc_msgSend_immediateUseDatabaseScopeForTesting(self, v181, v182);
      v184 = CKObjectsAreBothNilOrEqual(v180, v183);

      if (!v184)
      {
        goto LABEL_38;
      }

      v187 = objc_msgSend_ckSessionConfiguration(v5, v185, v186);
      v190 = objc_msgSend_ckSessionConfiguration(self, v188, v189);
      v191 = CKObjectsAreBothNilOrEqual(v187, v190);

      if (v191)
      {
        v194 = objc_msgSend_ckSessionAcquiredInfo(v5, v192, v193);
        v197 = objc_msgSend_ckSessionAcquiredInfo(self, v195, v196);
        v198 = CKObjectsAreBothNilOrEqual(v194, v197);
      }

      else
      {
LABEL_38:
        v198 = 0;
      }
    }

    else
    {
      v198 = 0;
    }
  }

  return v198;
}

- (CKContainerOptions)initWithSqliteRepresentation:(id)a3
{
  v206 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v8 = objc_msgSend_dataUsingEncoding_(v4, v7, 4);
    v203 = 0;
    v10 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x1E696ACB0], v9, v8, 0, &v203);
    v11 = v203;
    if (v11 || !v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v101 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v205 = v11;
        _os_log_error_impl(&dword_1883EA000, v101, OS_LOG_TYPE_ERROR, "Error converting JSON data to CKContainerOptions: %@", buf, 0xCu);
      }

      v100 = 0;
    }

    else
    {
      v202.receiver = self;
      v202.super_class = CKContainerOptions;
      v14 = [(CKContainerOptions *)&v202 init];
      if (v14)
      {
        v15 = NSStringFromSelector(sel_captureResponseHTTPHeaders);
        v17 = objc_msgSend_objectForKeyedSubscript_(v10, v16, v15);
        v14->_captureResponseHTTPHeaders = objc_msgSend_BOOLValue(v17, v18, v19);

        v20 = NSStringFromSelector(sel_useZoneWidePCS);
        v22 = objc_msgSend_objectForKeyedSubscript_(v10, v21, v20);
        v14->_useZoneWidePCS = objc_msgSend_BOOLValue(v22, v23, v24);

        v25 = NSStringFromSelector(sel_holdAllOperations);
        v27 = objc_msgSend_objectForKeyedSubscript_(v10, v26, v25);
        v14->_holdAllOperations = objc_msgSend_BOOLValue(v27, v28, v29);

        v30 = [CKAccountOverrideInfo alloc];
        v31 = NSStringFromSelector(sel_accountOverrideInfo);
        v33 = objc_msgSend_objectForKeyedSubscript_(v10, v32, v31);
        v35 = objc_msgSend_initWithSqliteRepresentation_(v30, v34, v33);
        accountOverrideInfo = v14->_accountOverrideInfo;
        v14->_accountOverrideInfo = v35;

        v37 = NSStringFromSelector(sel_qualityOfService);
        v39 = objc_msgSend_objectForKeyedSubscript_(v10, v38, v37);
        v14->_qualityOfService = objc_msgSend_integerValue(v39, v40, v41);

        v42 = NSStringFromSelector(sel_returnPCSMetadata);
        v44 = objc_msgSend_objectForKeyedSubscript_(v10, v43, v42);
        v14->_returnPCSMetadata = objc_msgSend_BOOLValue(v44, v45, v46);

        v47 = NSStringFromSelector(sel_mmcsEncryptionSupport);
        v49 = objc_msgSend_objectForKeyedSubscript_(v10, v48, v47);
        v14->_mmcsEncryptionSupport = objc_msgSend_unsignedIntegerValue(v49, v50, v51);

        v52 = NSStringFromSelector(sel_encryptionServiceName);
        v54 = objc_msgSend_objectForKeyedSubscript_(v10, v53, v52);
        encryptionServiceName = v14->_encryptionServiceName;
        v14->_encryptionServiceName = v54;

        v56 = NSStringFromSelector(sel_isServiceManatee);
        v58 = objc_msgSend_objectForKeyedSubscript_(v10, v57, v56);
        v14->_isServiceManatee = objc_msgSend_BOOLValue(v58, v59, v60);

        v61 = NSStringFromSelector(sel_bypassPCSEncryption);
        v63 = objc_msgSend_objectForKeyedSubscript_(v10, v62, v61);
        v14->_bypassPCSEncryption = objc_msgSend_BOOLValue(v63, v64, v65);

        v66 = NSStringFromSelector(sel_enforceNamedOperationGroups);
        v68 = objc_msgSend_objectForKeyedSubscript_(v10, v67, v66);
        v14->_enforceNamedOperationGroups = objc_msgSend_BOOLValue(v68, v69, v70);

        v71 = NSStringFromSelector(sel_forceEnableReadOnlyManatee);
        v73 = objc_msgSend_objectForKeyedSubscript_(v10, v72, v71);
        v14->_forceEnableReadOnlyManatee = objc_msgSend_BOOLValue(v73, v74, v75);

        v76 = [CKUploadRequestConfiguration alloc];
        v77 = NSStringFromSelector(sel_uploadRequestConfiguration);
        v79 = objc_msgSend_objectForKeyedSubscript_(v10, v78, v77);
        v81 = objc_msgSend_initWithSqliteRepresentation_(v76, v80, v79);
        uploadRequestConfiguration = v14->_uploadRequestConfiguration;
        v14->_uploadRequestConfiguration = v81;

        v83 = NSStringFromSelector(sel_forceEnableReadOnlyManatee);
        v85 = objc_msgSend_objectForKeyedSubscript_(v10, v84, v83);
        v14->_forceEnableReadOnlyManatee = objc_msgSend_BOOLValue(v85, v86, v87);

        v88 = NSStringFromSelector(sel_personaIdentifier);
        v90 = objc_msgSend_objectForKeyedSubscript_(v10, v89, v88);

        if (v90)
        {
          v92 = objc_msgSend_objectForKeyedSubscript_(v10, v91, @"personaType");
          v95 = objc_msgSend_integerValue(v92, v93, v94);

          if (v95 || (objc_msgSend_personaWithIdentifier_error_(CKPersona, v96, v90, 0), (v99 = objc_claimAutoreleasedReturnValue()) == 0))
          {
            v97 = [CKPersona alloc];
            v99 = objc_msgSend_initWithIdentifier_type_(v97, v98, v90, v95);
          }

          persona = v14->_persona;
          v14->_persona = v99;
        }

        v103 = NSStringFromSelector(sel_useClearAssetEncryption);
        v105 = objc_msgSend_objectForKeyedSubscript_(v10, v104, v103);
        v14->_useClearAssetEncryption = objc_msgSend_BOOLValue(v105, v106, v107);

        v108 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForContainerAccess);
        v110 = objc_msgSend_objectForKeyedSubscript_(v10, v109, v108);
        applicationBundleIdentifierOverrideForContainerAccess = v14->_applicationBundleIdentifierOverrideForContainerAccess;
        v14->_applicationBundleIdentifierOverrideForContainerAccess = v110;

        v112 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForNetworkAttribution);
        v114 = objc_msgSend_objectForKeyedSubscript_(v10, v113, v112);
        applicationBundleIdentifierOverrideForNetworkAttribution = v14->_applicationBundleIdentifierOverrideForNetworkAttribution;
        v14->_applicationBundleIdentifierOverrideForNetworkAttribution = v114;

        v116 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForPushTopicGeneration);
        v118 = objc_msgSend_objectForKeyedSubscript_(v10, v117, v116);
        applicationBundleIdentifierOverrideForPushTopicGeneration = v14->_applicationBundleIdentifierOverrideForPushTopicGeneration;
        v14->_applicationBundleIdentifierOverrideForPushTopicGeneration = v118;

        v120 = NSStringFromSelector(sel_applicationBundleIdentifierOverrideForTCC);
        v122 = objc_msgSend_objectForKeyedSubscript_(v10, v121, v120);
        applicationBundleIdentifierOverrideForTCC = v14->_applicationBundleIdentifierOverrideForTCC;
        v14->_applicationBundleIdentifierOverrideForTCC = v122;

        v124 = NSStringFromSelector(sel_fakeEntitlements);
        v126 = objc_msgSend_objectForKeyedSubscript_(v10, v125, v124);
        fakeEntitlements = v14->_fakeEntitlements;
        v14->_fakeEntitlements = v126;

        v128 = NSStringFromSelector(sel_useAnonymousToServerShareParticipants);
        v130 = objc_msgSend_objectForKeyedSubscript_(v10, v129, v128);
        v14->_useAnonymousToServerShareParticipants = objc_msgSend_BOOLValue(v130, v131, v132);

        v133 = NSStringFromSelector(sel_encryptMergeableValueMetadata);
        v135 = objc_msgSend_objectForKeyedSubscript_(v10, v134, v133);
        v14->_encryptMergeableValueMetadata = objc_msgSend_BOOLValue(v135, v136, v137);

        if (__sTestOverridesAvailable[0] == 1)
        {
          v138 = objc_alloc(sub_188518A68());
          v139 = NSStringFromSelector(sel_testDeviceReferenceProtocol);
          v141 = objc_msgSend_objectForKeyedSubscript_(v10, v140, v139);
          v143 = objc_msgSend_initWithSqliteRepresentation_(v138, v142, v141);
          testDeviceReferenceProtocol = v14->_testDeviceReferenceProtocol;
          v14->_testDeviceReferenceProtocol = v143;
        }

        v145 = NSStringFromSelector(sel_returnRequestOperationProto);
        v147 = objc_msgSend_objectForKeyedSubscript_(v10, v146, v145);
        v14->_returnRequestOperationProto = objc_msgSend_BOOLValue(v147, v148, v149);

        v150 = NSStringFromSelector(sel_maintainRecordUploadOrder);
        v152 = objc_msgSend_objectForKeyedSubscript_(v10, v151, v150);
        v14->_maintainRecordUploadOrder = objc_msgSend_BOOLValue(v152, v153, v154);

        v155 = NSStringFromSelector(sel_addDatabaseScopeToZoneIDs);
        v157 = objc_msgSend_objectForKeyedSubscript_(v10, v156, v155);
        v14->_addDatabaseScopeToZoneIDs = objc_msgSend_BOOLValue(v157, v158, v159);

        v160 = NSStringFromSelector(sel_fetchChangesForMergeableValues);
        v162 = objc_msgSend_objectForKeyedSubscript_(v10, v161, v160);
        v14->_fetchChangesForMergeableValues = objc_msgSend_BOOLValue(v162, v163, v164);

        v165 = NSStringFromSelector(sel_prefersHiddenAllowedSharingOptionsUI);
        v167 = objc_msgSend_objectForKeyedSubscript_(v10, v166, v165);
        v14->_prefersHiddenAllowedSharingOptionsUI = objc_msgSend_BOOLValue(v167, v168, v169);

        v172 = objc_msgSend_null(MEMORY[0x1E695DFB0], v170, v171);
        v173 = NSStringFromSelector(sel_supportedDeviceCapabilities);
        v175 = objc_msgSend_objectForKeyedSubscript_(v10, v174, v173);

        if (v172 == v175)
        {
          supportedDeviceCapabilities = v14->_supportedDeviceCapabilities;
          v14->_supportedDeviceCapabilities = 0;
        }

        else
        {
          v176 = NSStringFromSelector(sel_supportedDeviceCapabilities);
          supportedDeviceCapabilities = objc_msgSend_objectForKeyedSubscript_(v10, v177, v176);

          v180 = objc_msgSend_fromSqliteRepresentations_(CKDeviceCapability, v179, supportedDeviceCapabilities);
          v181 = v14->_supportedDeviceCapabilities;
          v14->_supportedDeviceCapabilities = v180;
        }

        v182 = NSStringFromSelector(sel_immediateUseDatabaseScopeForTesting);
        v184 = objc_msgSend_objectForKeyedSubscript_(v10, v183, v182);
        immediateUseDatabaseScopeForTesting = v14->_immediateUseDatabaseScopeForTesting;
        v14->_immediateUseDatabaseScopeForTesting = v184;

        v186 = [_TtC8CloudKit22CKSessionConfiguration alloc];
        v187 = NSStringFromSelector(sel_ckSessionConfiguration);
        v189 = objc_msgSend_objectForKeyedSubscript_(v10, v188, v187);
        v191 = objc_msgSend_initWithSqliteRepresentation_(v186, v190, v189);
        ckSessionConfiguration = v14->_ckSessionConfiguration;
        v14->_ckSessionConfiguration = v191;

        v193 = [_TtC8CloudKit21CKSessionAcquiredInfo alloc];
        v194 = NSStringFromSelector(sel_ckSessionAcquiredInfo);
        v196 = objc_msgSend_objectForKeyedSubscript_(v10, v195, v194);
        v198 = objc_msgSend_initWithSqliteRepresentation_(v193, v197, v196);
        ckSessionAcquiredInfo = v14->_ckSessionAcquiredInfo;
        v14->_ckSessionAcquiredInfo = v198;
      }

      objc_msgSend_swizzleClass(v14, v12, v13);
      self = v14;
      v100 = self;
    }
  }

  else
  {
    v100 = 0;
  }

  v200 = *MEMORY[0x1E69E9840];
  return v100;
}

- (void)setSupportedDeviceCapabilities:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v42 = self;
    v5 = objc_opt_new();
    v45 = objc_opt_new();
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v43 = v4;
    obj = v4;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v52, v57, 16);
    if (v47)
    {
      v46 = *v53;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v53 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v52 + 1) + 8 * i);
          v11 = objc_msgSend_name(v10, v7, v8, v42);
          v13 = objc_msgSend_objectForKey_(v5, v12, v11);

          if (v13)
          {
            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v16 = v13;
            v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v48, v56, 16);
            if (v18)
            {
              v21 = v18;
              v22 = *v49;
              while (2)
              {
                for (j = 0; j != v21; ++j)
                {
                  if (*v49 != v22)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v24 = *(*(&v48 + 1) + 8 * j);
                  v25 = objc_msgSend_value(v10, v19, v20);
                  LOBYTE(v24) = objc_msgSend_isEqualToString_(v24, v26, v25);

                  if (v24)
                  {

                    goto LABEL_20;
                  }
                }

                v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v48, v56, 16);
                if (v21)
                {
                  continue;
                }

                break;
              }
            }

            v29 = objc_msgSend_value(v10, v27, v28);
            objc_msgSend_addObject_(v16, v30, v29);
          }

          else
          {
            v31 = MEMORY[0x1E695DF70];
            v29 = objc_msgSend_value(v10, v14, v15);
            v33 = objc_msgSend_arrayWithObject_(v31, v32, v29);
            v36 = objc_msgSend_name(v10, v34, v35);
            objc_msgSend_setObject_forKey_(v5, v37, v33, v36);
          }

          objc_msgSend_addObject_(v45, v38, v10);
LABEL_20:
        }

        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v52, v57, 16);
      }

      while (v47);
    }

    supportedDeviceCapabilities = v42->_supportedDeviceCapabilities;
    v42->_supportedDeviceCapabilities = v45;

    v4 = v43;
  }

  else
  {
    v40 = self->_supportedDeviceCapabilities;
    self->_supportedDeviceCapabilities = 0;
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)ck_bindInStatement:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  v10 = objc_msgSend_sqliteRepresentation(self, v7, v8);
  objc_msgSend_bindText_atIndex_(v6, v9, v10, a4);
}

@end