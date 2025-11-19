@interface CKShareMetadata
+ (void)initialize;
- (BOOL)isCallingParticipantUsingOTL;
- (BOOL)isEqual:(id)a3;
- (CKRoughlyEquivalentProperties)equivalencyProperties;
- (CKShareMetadata)init;
- (CKShareMetadata)initWithCoder:(id)a3;
- (CKShareMetadata)initWithShare:(id)a3 containerID:(id)a4;
- (CKShareParticipantType)participantType;
- (NSString)baseToken;
- (NSString)containerIdentifier;
- (NSURL)invitationURL;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5;
- (id)ckShortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initInternal;
- (int64_t)environment;
- (unint64_t)hash;
- (void)CKAssignToContainerWithID:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fillAnonymousCKUserID:(id)a3;
- (void)setContainerID_modelMutation:(id)a3;
@end

@implementation CKShareMetadata

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

- (CKShareMetadata)init
{
  v2 = [CKException alloc];
  v4 = objc_msgSend_initWithName_format_(v2, v3, *MEMORY[0x1E695D940], @"Do not instantiate CKShare.Metadata, obtain them from CKFetchShareMetadataOperation or platform-specific scene / app delegate callbacks.");
  objc_exception_throw(v4);
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = CKShareMetadata;
  result = [(CKShareMetadata *)&v3 init];
  if (result)
  {
    *(result + 4) = 0;
    *(result + 5) = 0;
    *(result + 6) = 0;
    *(result + 4) = 1;
  }

  return result;
}

- (CKShareMetadata)initWithShare:(id)a3 containerID:(id)a4
{
  v7 = a3;
  v8 = a4;
  inited = objc_msgSend_initInternal(self, v9, v10);
  v12 = inited;
  if (inited)
  {
    objc_storeStrong((inited + 16), a3);
    v15 = objc_msgSend_copy(v8, v13, v14);
    containerID = v12->_containerID;
    v12->_containerID = v15;
  }

  return v12;
}

- (CKRoughlyEquivalentProperties)equivalencyProperties
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x1E696AD98];
  v7 = objc_msgSend_participantRole(self, v5, v6);
  v9 = objc_msgSend_numberWithInteger_(v4, v8, v7);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v10, v9, @"participantRole");

  v11 = MEMORY[0x1E696AD98];
  v14 = objc_msgSend_participantStatus(self, v12, v13);
  v16 = objc_msgSend_numberWithInteger_(v11, v15, v14);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v17, v16, @"participantStatus");

  v18 = MEMORY[0x1E696AD98];
  v21 = objc_msgSend_participantPermission(self, v19, v20);
  v23 = objc_msgSend_numberWithInteger_(v18, v22, v21);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v24, v23, @"participantPermission");

  v27 = objc_msgSend_share(self, v25, v26);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v28, v27, @"share");

  v31 = objc_msgSend_rootRecord(self, v29, v30);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v32, v31, @"rootRecord");

  v35 = objc_msgSend_sharedZone(self, v33, v34);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v36, v35, @"sharedZone");

  v39 = objc_msgSend_properties(v3, v37, v38);

  return v39;
}

- (NSString)baseToken
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_publicToken(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_CKBase64URLSafeString(v3, v4, v5);
    v10 = objc_msgSend_length(v7, v8, v9);
    v22[0] = 3;
    v22[1] = HIBYTE(v10);
    v22[2] = v10;
    v12 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v11, v22, 3);
    v15 = objc_msgSend_CKBase64URLSafeString(v12, v13, v14);
    v23[0] = v15;
    v23[1] = v7;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v16, v23, 2);
    v19 = objc_msgSend_componentsJoinedByString_(v17, v18, &stru_1EFA32970);
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)a3 private:(BOOL)a4 shouldExpand:(BOOL)a5
{
  v6 = a4;
  v10 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], a2, 5);
  if (!v6)
  {
    goto LABEL_28;
  }

  v11 = objc_msgSend_share(self, v8, v9);
  v14 = objc_msgSend_recordID(v11, v12, v13);
  v16 = v14;
  if (a5)
  {
    v17 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v14, v15, 1, 1, 1);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v18, @"shareID", v17);
  }

  else
  {
    objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v15, @"shareID", v14);
  }

  v21 = objc_msgSend_uncachedURL(v11, v19, v20);
  v24 = objc_msgSend_absoluteString(v21, v22, v23);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v25, @"shareURL", v24);

  v28 = objc_msgSend_rootRecord(self, v26, v27);
  v31 = v28;
  if (v28)
  {
    if (a5)
    {
      v32 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v28, v29, 1, 1, 1);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v33, @"rootRecord", v32);
    }

    else
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v29, @"rootRecord", v28);
    }
  }

  v34 = objc_msgSend_hierarchicalRootRecordID(self, v29, v30);
  v37 = v34;
  if (!v34)
  {
    if (a5)
    {
      goto LABEL_13;
    }

LABEL_15:
    v48 = objc_msgSend_containerID(self, v35, v36);
    v52 = objc_msgSend_ckShortDescription(v48, v50, v51);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v53, @"containerID", v52);

    goto LABEL_16;
  }

  if (!a5)
  {
    objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v35, @"rootRecordID", v34);
    goto LABEL_15;
  }

  v38 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v34, v35, 1, 1, 1);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v39, @"rootRecordID", v38);

LABEL_13:
  v40 = objc_msgSend_containerID(self, v35, v36);
  v42 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v40, v41, 1, 1, 1);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v43, @"containerID", v42);

  v46 = objc_msgSend_participants(v11, v44, v45);
  v48 = objc_msgSend_CKMap_(v46, v47, &unk_1EFA2F088);

  objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v49, @"participants", v48);
LABEL_16:

  v58 = objc_msgSend_requiredFeatures(self, v54, v55);
  if (v58)
  {
    objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v56, @"requiredFeatures", v58);
  }

  v61 = objc_msgSend_participantRole(self, v56, v57) - 1;
  if (v61 <= 3)
  {
    objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v59, @"participantRole", off_1E70BE3E0[v61]);
  }

  v64 = objc_msgSend_participantStatus(self, v59, v60) - 1;
  if (v64 <= 3)
  {
    objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v62, @"participantStatus", off_1E70BE400[v64]);
  }

  v67 = objc_msgSend_participantPermission(self, v62, v63) - 1;
  if (v67 <= 2)
  {
    objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v65, @"participantPermission", off_1E70BE420[v67]);
  }

  if (a5)
  {
    v68 = objc_msgSend_requesters(v11, v65, v66);
    v70 = objc_msgSend_CKMap_(v68, v69, &unk_1EFA2F0A8);

    objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v71, @"requesters", v70);
    v74 = objc_msgSend_ownerIdentity(self, v72, v73);
    objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v74, v75, 1, 1, 1);
  }

  else
  {
    v74 = objc_msgSend_ownerIdentity(self, v65, v66);
    objc_msgSend_description(v74, v76, v77);
  }
  v78 = ;
  objc_msgSend_CKAddPropertySafelyForKey_value_(v10, v79, @"Owner", v78);

LABEL_28:

  return v10;
}

- (id)ckShortDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_share(self, a2, v2);
  v8 = objc_msgSend_recordID(v5, v6, v7);
  v11 = objc_msgSend_hierarchicalRootRecordID(self, v9, v10);
  v14 = objc_msgSend_containerID(self, v12, v13);
  v17 = objc_msgSend_ckShortDescription(v14, v15, v16);
  v20 = objc_msgSend_ownerIdentity(self, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v4, v21, @"ShareID %@, rootRecordID %@, container %@, Owner %@", v8, v11, v17, v20);

  return v22;
}

- (void)CKAssignToContainerWithID:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_containerID(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_share(self, v8, v9);
    v13 = objc_msgSend_containerID(self, v11, v12);
    objc_msgSend_CKAssignToContainerWithID_(v10, v14, v13);

    v17 = objc_msgSend_rootRecord(self, v15, v16);
    v20 = objc_msgSend_containerID(self, v18, v19);
    objc_msgSend_CKAssignToContainerWithID_(v17, v21, v20);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v22 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412290;
      v25 = v4;
      _os_log_error_impl(&dword_1883EA000, v22, OS_LOG_TYPE_ERROR, "No container identifier set on CKShareMetadata being assigned to %@", &v24, 0xCu);
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (CKShareParticipantType)participantType
{
  v3 = objc_msgSend_participantRole(self, a2, v2);
  if ((v3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1886FE578[v3 - 1];
  }
}

- (NSString)containerIdentifier
{
  v3 = objc_msgSend_containerID(self, a2, v2);
  v6 = objc_msgSend_containerIdentifier(v3, v4, v5);

  return v6;
}

- (int64_t)environment
{
  v3 = objc_msgSend_containerID(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_environment(v3, v4, v5);
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)fillAnonymousCKUserID:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_share(self, v5, v6);
  v10 = objc_msgSend_share(self, v8, v9);
  v13 = objc_msgSend_recordID(v10, v11, v12);
  v15 = objc_msgSend_copyWithAnonymousCKUserID_(v13, v14, v4);
  objc_msgSend_replaceRecordIDWith_(v7, v16, v15);

  v19 = objc_msgSend_sharedZone(self, v17, v18);
  v22 = objc_msgSend_sharedZone(self, v20, v21);
  v25 = objc_msgSend_zoneID(v22, v23, v24);
  v27 = objc_msgSend_copyWithAnonymousCKUserID_(v25, v26, v4);
  objc_msgSend_replaceZoneIDWith_(v19, v28, v27);

  v31 = objc_msgSend_hierarchicalRootRecordID(self, v29, v30);
  v33 = objc_msgSend_copyWithAnonymousCKUserID_(v31, v32, v4);
  objc_msgSend_setHierarchicalRootRecordID_(self, v34, v33);

  v37 = objc_msgSend_rootRecord(self, v35, v36);
  v40 = objc_msgSend_rootRecord(self, v38, v39);
  v43 = objc_msgSend_recordID(v40, v41, v42);
  v45 = objc_msgSend_copyWithAnonymousCKUserID_(v43, v44, v4);
  objc_msgSend_replaceRecordIDWith_(v37, v46, v45);

  v47 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v50 = objc_msgSend_sharedItemHierarchyIDs(self, v48, v49, 0);
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v61, v65, 16);
  if (v52)
  {
    v54 = v52;
    v55 = *v62;
    do
    {
      v56 = 0;
      do
      {
        if (*v62 != v55)
        {
          objc_enumerationMutation(v50);
        }

        v57 = objc_msgSend_copyWithAnonymousCKUserID_(*(*(&v61 + 1) + 8 * v56), v53, v4);
        objc_msgSend_addObject_(v47, v58, v57);

        ++v56;
      }

      while (v54 != v56);
      v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v61, v65, 16);
    }

    while (v54);
  }

  objc_msgSend_setSharedItemHierarchyIDs_(self, v59, v47);
  v60 = *MEMORY[0x1E69E9840];
}

- (BOOL)isCallingParticipantUsingOTL
{
  v6 = objc_msgSend_callingParticipant(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_share(self, v4, v5);
    v10 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v7, v8, v9);
    v13 = objc_msgSend_allKeys(v10, v11, v12);
    v16 = objc_msgSend_callingParticipant(self, v14, v15);
    v19 = objc_msgSend_participantID(v16, v17, v18);
    v21 = objc_msgSend_containsObject_(v13, v20, v19);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (NSURL)invitationURL
{
  isCallingParticipantUsingOTL = objc_msgSend_isCallingParticipantUsingOTL(self, a2, v2);
  v7 = objc_msgSend_share(self, v5, v6);
  v10 = v7;
  if (isCallingParticipantUsingOTL)
  {
    v11 = objc_msgSend_callingParticipant(self, v8, v9);
    v14 = objc_msgSend_participantID(v11, v12, v13);
    v16 = objc_msgSend_oneTimeURLForParticipantID_(v10, v15, v14);
  }

  else
  {
    v16 = objc_msgSend_URL(v7, v8, v9);
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  inited = objc_msgSend_initInternal(v4, v5, v6);
  v10 = objc_msgSend_containerID(self, v8, v9);
  v13 = objc_msgSend_copy(v10, v11, v12);
  v14 = *(inited + 72);
  *(inited + 72) = v13;

  v17 = objc_msgSend_share(self, v15, v16);
  v20 = objc_msgSend_copy(v17, v18, v19);
  v21 = *(inited + 16);
  *(inited + 16) = v20;

  v24 = objc_msgSend_rootRecord(self, v22, v23);
  v27 = objc_msgSend_copy(v24, v25, v26);
  v28 = *(inited + 64);
  *(inited + 64) = v27;

  v31 = objc_msgSend_hierarchicalRootRecordID(self, v29, v30);
  v34 = objc_msgSend_copy(v31, v32, v33);
  v35 = *(inited + 24);
  *(inited + 24) = v34;

  v38 = objc_msgSend_rootRecordType(self, v36, v37);
  v41 = objc_msgSend_copy(v38, v39, v40);
  v42 = *(inited + 96);
  *(inited + 96) = v41;

  v45 = objc_msgSend_sharedItemHierarchyIDs(self, v43, v44);
  v48 = objc_msgSend_CKDeepCopy(v45, v46, v47);
  v49 = *(inited + 88);
  *(inited + 88) = v48;

  v52 = objc_msgSend_callingParticipant(self, v50, v51);
  v55 = objc_msgSend_copy(v52, v53, v54);
  v56 = *(inited + 80);
  *(inited + 80) = v55;

  *(inited + 32) = objc_msgSend_participantRole(self, v57, v58);
  *(inited + 40) = objc_msgSend_participantStatus(self, v59, v60);
  *(inited + 48) = objc_msgSend_participantPermission(self, v61, v62);
  v65 = objc_msgSend_ownerIdentity(self, v63, v64);
  v68 = objc_msgSend_copy(v65, v66, v67);
  v69 = *(inited + 56);
  *(inited + 56) = v68;

  v72 = objc_msgSend_protectedFullToken(self, v70, v71);
  v75 = objc_msgSend_copy(v72, v73, v74);
  v76 = *(inited + 128);
  *(inited + 128) = v75;

  v79 = objc_msgSend_publicToken(self, v77, v78);
  v82 = objc_msgSend_copy(v79, v80, v81);
  v83 = *(inited + 136);
  *(inited + 136) = v82;

  v86 = objc_msgSend_privateToken(self, v84, v85);
  v89 = objc_msgSend_copy(v86, v87, v88);
  v90 = *(inited + 144);
  *(inited + 144) = v89;

  v93 = objc_msgSend_outOfNetworkMatches(self, v91, v92);
  v96 = objc_msgSend_copy(v93, v94, v95);
  v97 = *(inited + 160);
  *(inited + 160) = v96;

  v100 = objc_msgSend_encryptedData(self, v98, v99);
  v103 = objc_msgSend_copy(v100, v101, v102);
  v104 = *(inited + 168);
  *(inited + 168) = v103;

  v107 = objc_msgSend_invitationToken(self, v105, v106);
  v110 = objc_msgSend_copy(v107, v108, v109);
  v111 = *(inited + 104);
  *(inited + 104) = v110;

  v114 = objc_msgSend_sharedZone(self, v112, v113);
  v117 = objc_msgSend_copy(v114, v115, v116);
  v118 = *(inited + 152);
  *(inited + 152) = v117;

  v121 = objc_msgSend_selectedAccountID(self, v119, v120);
  v124 = objc_msgSend_copy(v121, v122, v123);
  v125 = *(inited + 112);
  *(inited + 112) = v124;

  *(inited + 9) = objc_msgSend_accessRequestsEnabled(self, v126, v127);
  v130 = objc_msgSend_requiredFeatures(self, v128, v129);
  v133 = objc_msgSend_copy(v130, v131, v132);
  v134 = *(inited + 120);
  *(inited + 120) = v133;

  return inited;
}

- (void)encodeWithCoder:(id)a3
{
  v85 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_containerID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v85, v8, v7, @"ContainerID");

  v11 = objc_msgSend_share(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v85, v12, v11, @"Share");

  v15 = objc_msgSend_rootRecord(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v85, v16, v15, @"RootRecord");

  v19 = objc_msgSend_hierarchicalRootRecordID(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(v85, v20, v19, @"RootRecordID");

  v23 = objc_msgSend_rootRecordType(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(v85, v24, v23, @"RootRecordType");

  v27 = objc_msgSend_sharedItemHierarchyIDs(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(v85, v28, v27, @"SharedItemHierarchyIDs");

  v31 = objc_msgSend_callingParticipant(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(v85, v32, v31, @"CallingParticipant");

  v35 = objc_msgSend_participantRole(self, v33, v34);
  objc_msgSend_encodeInteger_forKey_(v85, v36, v35, @"ParticipantType");
  v39 = objc_msgSend_participantStatus(self, v37, v38);
  objc_msgSend_encodeInteger_forKey_(v85, v40, v39, @"ParticipantStatus");
  v43 = objc_msgSend_participantPermission(self, v41, v42);
  objc_msgSend_encodeInteger_forKey_(v85, v44, v43, @"ParticipantPermission");
  v47 = objc_msgSend_ownerIdentity(self, v45, v46);
  objc_msgSend_encodeObject_forKey_(v85, v48, v47, @"OwnerIdentity");

  v51 = objc_msgSend_protectedFullToken(self, v49, v50);
  objc_msgSend_encodeObject_forKey_(v85, v52, v51, @"ProtectedFullToken");

  v55 = objc_msgSend_publicToken(self, v53, v54);
  objc_msgSend_encodeObject_forKey_(v85, v56, v55, @"PublicToken");

  v59 = objc_msgSend_privateToken(self, v57, v58);
  objc_msgSend_encodeObject_forKey_(v85, v60, v59, @"PrivateToken");

  v63 = objc_msgSend_outOfNetworkMatches(self, v61, v62);
  objc_msgSend_encodeObject_forKey_(v85, v64, v63, @"OutOfNetworkMatches");

  v67 = objc_msgSend_encryptedData(self, v65, v66);
  objc_msgSend_encodeObject_forKey_(v85, v68, v67, @"EncryptedData");

  v71 = objc_msgSend_invitationToken(self, v69, v70);
  objc_msgSend_encodeObject_forKey_(v85, v72, v71, @"InvitationToken");

  v75 = objc_msgSend_selectedAccountID(self, v73, v74);
  objc_msgSend_encodeObject_forKey_(v85, v76, v75, @"SelectedAccountID");

  v79 = objc_msgSend_accessRequestsEnabled(self, v77, v78);
  objc_msgSend_encodeBool_forKey_(v85, v80, v79, @"AccessRequestsEnabled");
  v83 = objc_msgSend_requiredFeatures(self, v81, v82);
  objc_msgSend_encodeObject_forKey_(v85, v84, v83, @"RequiredFeatures");

  objc_autoreleasePoolPop(v4);
}

- (CKShareMetadata)initWithCoder:(id)a3
{
  v86[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v85.receiver = self;
  v85.super_class = CKShareMetadata;
  v5 = [(CKShareMetadata *)&v85 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"ContainerID");
    containerID = v5->_containerID;
    v5->_containerID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"Share");
    share = v5->_share;
    v5->_share = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"RootRecord");
    rootRecord = v5->_rootRecord;
    v5->_rootRecord = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v19, v18, @"RootRecordID");
    hierarchicalRootRecordID = v5->_hierarchicalRootRecordID;
    v5->_hierarchicalRootRecordID = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v23, v22, @"RootRecordType");
    rootRecordType = v5->_rootRecordType;
    v5->_rootRecordType = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v31 = objc_msgSend_setWithObjects_(v26, v30, v27, v28, v29, 0);
    v33 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v32, v31, @"SharedItemHierarchyIDs");
    sharedItemHierarchyIDs = v5->_sharedItemHierarchyIDs;
    v5->_sharedItemHierarchyIDs = v33;

    v35 = objc_opt_class();
    v37 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v36, v35, @"CallingParticipant");
    callingParticipant = v5->_callingParticipant;
    v5->_callingParticipant = v37;

    v5->_participantRole = objc_msgSend_decodeIntegerForKey_(v4, v39, @"ParticipantType");
    v5->_participantStatus = objc_msgSend_decodeIntegerForKey_(v4, v40, @"ParticipantStatus");
    v5->_participantPermission = objc_msgSend_decodeIntegerForKey_(v4, v41, @"ParticipantPermission");
    v42 = objc_opt_class();
    v44 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v43, v42, @"OwnerIdentity");
    ownerIdentity = v5->_ownerIdentity;
    v5->_ownerIdentity = v44;

    v46 = objc_opt_class();
    v48 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v47, v46, @"ProtectedFullToken");
    protectedFullToken = v5->_protectedFullToken;
    v5->_protectedFullToken = v48;

    v50 = objc_opt_class();
    v52 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v51, v50, @"PublicToken");
    publicToken = v5->_publicToken;
    v5->_publicToken = v52;

    v54 = objc_opt_class();
    v56 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v55, v54, @"PrivateToken");
    privateToken = v5->_privateToken;
    v5->_privateToken = v56;

    v58 = MEMORY[0x1E695DFD8];
    v86[0] = objc_opt_class();
    v86[1] = objc_opt_class();
    v86[2] = objc_opt_class();
    v60 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v59, v86, 3);
    v62 = objc_msgSend_setWithArray_(v58, v61, v60);
    v64 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v63, v62, @"OutOfNetworkMatches");
    outOfNetworkMatches = v5->_outOfNetworkMatches;
    v5->_outOfNetworkMatches = v64;

    v66 = objc_opt_class();
    v68 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v67, v66, @"EncryptedData");
    encryptedData = v5->_encryptedData;
    v5->_encryptedData = v68;

    v5->_acceptedInProcess = 1;
    v70 = objc_opt_class();
    v72 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v71, v70, @"InvitationToken");
    invitationToken = v5->_invitationToken;
    v5->_invitationToken = v72;

    v74 = objc_opt_class();
    v76 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v75, v74, @"SelectedAccountID");
    selectedAccountID = v5->_selectedAccountID;
    v5->_selectedAccountID = v76;

    v5->_accessRequestsEnabled = objc_msgSend_decodeBoolForKey_(v4, v78, @"AccessRequestsEnabled");
    v80 = objc_msgSend_decodeRequiredFeatureSetWithKey_(v4, v79, @"RequiredFeatures");
    requiredFeatures = v5->_requiredFeatures;
    v5->_requiredFeatures = v80;

    objc_autoreleasePoolPop(context);
  }

  v82 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_share(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_containerID(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_ownerIdentity(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v126 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v8 = objc_msgSend_containerID(self, v6, v7);
      v11 = objc_msgSend_containerID(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual(v8, v11);

      if (!v12)
      {
        goto LABEL_21;
      }

      v15 = objc_msgSend_share(self, v13, v14);
      v18 = objc_msgSend_share(v5, v16, v17);
      v19 = CKObjectsAreBothNilOrEqual(v15, v18);

      if (!v19)
      {
        goto LABEL_21;
      }

      v22 = objc_msgSend_rootRecord(self, v20, v21);
      v25 = objc_msgSend_rootRecord(v5, v23, v24);
      v26 = CKObjectsAreBothNilOrEqual(v22, v25);

      if (!v26)
      {
        goto LABEL_21;
      }

      v29 = objc_msgSend_hierarchicalRootRecordID(self, v27, v28);
      v32 = objc_msgSend_hierarchicalRootRecordID(v5, v30, v31);
      v33 = CKObjectsAreBothNilOrEqual(v29, v32);

      if (!v33)
      {
        goto LABEL_21;
      }

      v36 = objc_msgSend_rootRecordType(self, v34, v35);
      v39 = objc_msgSend_rootRecordType(v5, v37, v38);
      v40 = CKObjectsAreBothNilOrEqual(v36, v39);

      if (!v40)
      {
        goto LABEL_21;
      }

      v43 = objc_msgSend_callingParticipant(self, v41, v42);
      v46 = objc_msgSend_callingParticipant(v5, v44, v45);
      v47 = CKObjectsAreBothNilOrEqual(v43, v46);

      if (!v47)
      {
        goto LABEL_21;
      }

      v50 = objc_msgSend_participantRole(self, v48, v49);
      if (v50 != objc_msgSend_participantRole(v5, v51, v52))
      {
        goto LABEL_21;
      }

      v55 = objc_msgSend_participantStatus(self, v53, v54);
      if (v55 != objc_msgSend_participantStatus(v5, v56, v57))
      {
        goto LABEL_21;
      }

      v60 = objc_msgSend_participantPermission(self, v58, v59);
      if (v60 != objc_msgSend_participantPermission(v5, v61, v62))
      {
        goto LABEL_21;
      }

      v65 = objc_msgSend_ownerIdentity(self, v63, v64);
      v68 = objc_msgSend_ownerIdentity(v5, v66, v67);
      v69 = CKObjectsAreBothNilOrEqual(v65, v68);

      if (!v69)
      {
        goto LABEL_21;
      }

      v72 = objc_msgSend_protectedFullToken(self, v70, v71);
      v75 = objc_msgSend_protectedFullToken(v5, v73, v74);
      v76 = CKObjectsAreBothNilOrEqual(v72, v75);

      if (!v76)
      {
        goto LABEL_21;
      }

      v79 = objc_msgSend_publicToken(self, v77, v78);
      v82 = objc_msgSend_publicToken(v5, v80, v81);
      v83 = CKObjectsAreBothNilOrEqual(v79, v82);

      if (!v83)
      {
        goto LABEL_21;
      }

      v86 = objc_msgSend_privateToken(self, v84, v85);
      v89 = objc_msgSend_privateToken(v5, v87, v88);
      v90 = CKObjectsAreBothNilOrEqual(v86, v89);

      if (!v90)
      {
        goto LABEL_21;
      }

      v93 = objc_msgSend_outOfNetworkMatches(self, v91, v92);
      v96 = objc_msgSend_outOfNetworkMatches(v5, v94, v95);
      v97 = CKObjectsAreBothNilOrEqual(v93, v96);

      if (!v97)
      {
        goto LABEL_21;
      }

      v100 = objc_msgSend_encryptedData(self, v98, v99);
      v103 = objc_msgSend_encryptedData(v5, v101, v102);
      v104 = CKObjectsAreBothNilOrEqual(v100, v103);

      if (!v104)
      {
        goto LABEL_21;
      }

      v107 = objc_msgSend_invitationToken(self, v105, v106);
      v110 = objc_msgSend_invitationToken(v5, v108, v109);
      v111 = CKObjectsAreBothNilOrEqual(v107, v110);

      if (!v111)
      {
        goto LABEL_21;
      }

      v114 = objc_msgSend_selectedAccountID(self, v112, v113);
      v117 = objc_msgSend_selectedAccountID(v5, v115, v116);
      v118 = CKObjectsAreBothNilOrEqual(v114, v117);

      if (!v118)
      {
        goto LABEL_21;
      }

      v121 = objc_msgSend_accessRequestsEnabled(self, v119, v120);
      if (v121 == objc_msgSend_accessRequestsEnabled(v5, v122, v123))
      {
        v128 = objc_msgSend_requiredFeatures(self, v124, v125);
        v131 = objc_msgSend_requiredFeatures(v5, v129, v130);
        v126 = CKObjectsAreBothNilOrEqual(v128, v131);
      }

      else
      {
LABEL_21:
        v126 = 0;
      }
    }

    else
    {
      v126 = 0;
    }
  }

  return v126;
}

- (void)setContainerID_modelMutation:(id)a3
{
  v4 = objc_msgSend_copy(a3, a2, a3);
  containerID = self->_containerID;
  self->_containerID = v4;

  MEMORY[0x1EEE66BB8](v4, containerID);
}

@end