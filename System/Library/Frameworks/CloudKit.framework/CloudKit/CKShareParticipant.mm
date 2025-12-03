@interface CKShareParticipant
+ (id)oneTimeURLParticipant;
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (CKShareParticipant)initWithCoder:(id)coder;
- (CKShareParticipantPermission)permission;
- (CKShareParticipantType)type;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initInternal;
- (id)initInternalWithUserIdentity:(id)identity;
- (id)unifiedContactsInStore:(id)store keysToFetch:(id)fetch error:(id *)error;
- (unint64_t)hash;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)encodeWithCoder:(id)coder;
- (void)setParticipantID_modelMutation:(id)mutation;
- (void)setPermission:(CKShareParticipantPermission)permission;
- (void)setType:(CKShareParticipantType)type;
- (void)setUserIdentity_modelMutation:(id)mutation;
@end

@implementation CKShareParticipant

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = objc_opt_self();

  sub_1886CEE50(v3, v2, 0, 0, 0);
}

+ (id)oneTimeURLParticipant
{
  v2 = [CKUserIdentity alloc];
  inited = objc_msgSend_initInternal(v2, v3, v4);
  objc_msgSend_setHasiCloudAccount_(inited, v6, 0);
  v7 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initInternalWithUserIdentity_(v7, v8, inited);
  objc_msgSend_setUsesOneTimeURL_(v9, v10, 1);
  v11 = CKRandomDataWithLength(0x10uLL);
  objc_msgSend_setOneTimeURLSharingKeySeed_(v9, v12, v11);

  return v9;
}

- (id)initInternal
{
  v6.receiver = self;
  v6.super_class = CKShareParticipant;
  v2 = [(CKShareParticipant *)&v6 init];
  if (v2)
  {
    v3 = CKCreateGUID();
    v4 = *(v2 + 7);
    *(v2 + 7) = v3;

    *(v2 + 11) = 3;
    *(v2 + 40) = xmmword_1886FE5A0;
    *(v2 + 3) = 2;
    *(v2 + 8) = 1;
  }

  return v2;
}

- (id)initInternalWithUserIdentity:(id)identity
{
  identityCopy = identity;
  inited = objc_msgSend_initInternal(self, v5, v6);
  if (inited)
  {
    v10 = objc_msgSend_copy(identityCopy, v7, v8);
    v11 = inited[4];
    inited[4] = v10;
  }

  return inited;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_userIdentity(self, v5, v6);
  inited = objc_msgSend_initInternalWithUserIdentity_(v4, v8, v7);

  v12 = objc_msgSend_participantID(self, v10, v11);
  v15 = objc_msgSend_copy(v12, v13, v14);
  v16 = *(inited + 56);
  *(inited + 56) = v15;

  *(inited + 10) = objc_msgSend_isCurrentUser(self, v17, v18);
  *(inited + 11) = objc_msgSend_isOrgAdminUser(self, v19, v20);
  v23 = objc_msgSend_inviterID(self, v21, v22);
  v26 = objc_msgSend_copy(v23, v24, v25);
  v27 = *(inited + 80);
  *(inited + 80) = v26;

  *(inited + 40) = objc_msgSend_role(self, v28, v29);
  *(inited + 48) = objc_msgSend_acceptanceStatus(self, v30, v31);
  *(inited + 24) = objc_msgSend_permission(self, v32, v33);
  *(inited + 88) = objc_msgSend_originalParticipantRole(self, v34, v35);
  v38 = objc_msgSend_protectionInfo(self, v36, v37);
  v41 = objc_msgSend_copy(v38, v39, v40);
  v42 = *(inited + 96);
  *(inited + 96) = v41;

  v45 = objc_msgSend_encryptedPersonalInfo(self, v43, v44);
  v48 = objc_msgSend_copy(v45, v46, v47);
  v49 = *(inited + 112);
  *(inited + 112) = v48;

  v52 = objc_msgSend_invitationToken(self, v50, v51);
  v55 = objc_msgSend_copy(v52, v53, v54);
  v56 = *(inited + 144);
  *(inited + 144) = v55;

  v59 = objc_msgSend_protectionInfoPublicKey(self, v57, v58);
  v62 = objc_msgSend_copy(v59, v60, v61);
  v63 = *(inited + 104);
  *(inited + 104) = v62;

  *(inited + 9) = objc_msgSend_wantsNewInvitationToken(self, v64, v65);
  *(inited + 64) = objc_msgSend_mutableInvitationTokenStatus(self, v66, v67);
  *(inited + 14) = objc_msgSend_isAnonymousInvitedParticipant(self, v68, v69);
  *(inited + 8) = objc_msgSend_isApprovedRequester(self, v70, v71);
  v74 = objc_msgSend_invitationDate(self, v72, v73);
  v77 = objc_msgSend_copy(v74, v75, v76);
  v78 = *(inited + 120);
  *(inited + 120) = v77;

  v81 = objc_msgSend_acceptanceDate(self, v79, v80);
  v84 = objc_msgSend_copy(v81, v82, v83);
  v85 = *(inited + 128);
  *(inited + 128) = v84;

  v88 = objc_msgSend_oneTimeURLSharingKeySeed(self, v86, v87);
  v91 = objc_msgSend_copy(v88, v89, v90);
  v92 = *(inited + 136);
  *(inited + 136) = v91;

  *(inited + 16) = objc_msgSend_usesOneTimeURL(self, v93, v94);
  v97 = objc_msgSend_shareID(self, v95, v96);
  v98 = *(inited + 72);
  *(inited + 72) = v97;

  return inited;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    isEquivalentToUserIdentityOrPublicKey = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v8 = objc_msgSend_participantID(self, v6, v7);
      v11 = objc_msgSend_participantID(v5, v9, v10);
      v12 = CKObjectsAreBothNilOrEqual(v8, v11);

      if (v12)
      {
        isEquivalentToUserIdentityOrPublicKey = 1;
      }

      else
      {
        v16 = objc_msgSend_userIdentity(self, v13, v14);
        v20 = objc_msgSend_userIdentity(v5, v17, v18);
        if (v16 == v20)
        {
          isEquivalentToUserIdentityOrPublicKey = 1;
        }

        else
        {
          isEquivalentToUserIdentityOrPublicKey = objc_msgSend_isEquivalentToUserIdentityOrPublicKey_(v16, v19, v20);
        }
      }
    }

    else
    {
      isEquivalentToUserIdentityOrPublicKey = 0;
    }
  }

  return isEquivalentToUserIdentityOrPublicKey;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_participantID(self, a2, v2);
  v7 = v4;
  if (v4)
  {
    v8 = objc_msgSend_hash(v4, v5, v6);
  }

  else
  {
    v9 = objc_msgSend_userIdentity(self, v5, v6);
    v8 = objc_msgSend_hash(v9, v10, v11);
  }

  return v8;
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v8 = objc_msgSend_participantID(self, v4, v5);
  if (v8)
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v6, @"participantID", v8, 0);
  }

  v9 = objc_msgSend_shareID(self, v6, v7);

  if (v9)
  {
    v12 = objc_msgSend_shareID(self, v10, v11);
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v13, @"shareID", v12, 0);
  }

  if (objc_msgSend_isCurrentUser(self, v10, v11))
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v14, @"isCurrentUser", @"true", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v14, @"isCurrentUser", @"false", 0);
  }

  if (objc_msgSend_isOrgAdminUser(self, v15, v16))
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v17, @"isOrgAdminUser", @"true", 0);
  }

  v19 = objc_msgSend_role(self, v17, v18);
  if (v19)
  {
    v22 = CKStringFromParticipantRole(v19, v20);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v23, @"role", v22, 0);
  }

  v24 = objc_msgSend_permission(self, v20, v21);
  if (v24 <= 1)
  {
    if (!v24)
    {
      goto LABEL_21;
    }

    if (v24 == 1)
    {
      objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v25, @"permission", @"none", 0);
      goto LABEL_21;
    }

LABEL_19:
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v25, @"permission", @"unknown", 0);
    goto LABEL_21;
  }

  if (v24 != 3)
  {
    if (v24 == 2)
    {
      objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v25, @"permission", @"readOnly", 0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v25, @"permission", @"readWrite", 0);
LABEL_21:
  v27 = objc_msgSend_acceptanceStatus(self, v25, v26);
  if (v27 <= 1)
  {
    if (!v27)
    {
      goto LABEL_30;
    }

    if (v27 == 1)
    {
      objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v28, @"acceptanceStatus", @"Pending", 0);
      goto LABEL_30;
    }

LABEL_28:
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v28, @"acceptanceStatus", @"Removed", 0);
    goto LABEL_30;
  }

  if (v27 != 4)
  {
    if (v27 == 2)
    {
      objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v28, @"acceptanceStatus", @"Accepted", 0);
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v28, @"acceptanceStatus", @"Unsubscribed", 0);
LABEL_30:
  v32 = objc_msgSend_userIdentity(self, v28, v29);
  if (v32)
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v30, @"identity", v32, 0);
  }

  v33 = objc_msgSend_protectionInfo(self, v30, v31);
  v36 = objc_msgSend_length(v33, v34, v35);

  if (v36)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v37, @"hasProtectionInfo", @"true", 0);
  }

  v39 = objc_msgSend_invitationToken(self, v37, v38);

  if (v39)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v40, @"hasInvitationToken", @"true", 0);
  }

  v42 = objc_msgSend_protectionInfoPublicKey(self, v40, v41);
  v45 = objc_msgSend_length(v42, v43, v44);

  if (v45)
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v46, @"hasProtectionInfoPublicKey", @"true", 0);
  }

  if (objc_msgSend_wantsNewInvitationToken(self, v46, v47))
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v48, @"wantsNewInvitationToken", @"true", 0);
  }

  v50 = objc_msgSend_invitationTokenStatus(self, v48, v49);
  if (v50 <= 1)
  {
    if (!v50)
    {
      goto LABEL_49;
    }

    if (v50 == 1)
    {
      objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v51, @"invitationTokenStatus", @"Healthy", 0);
      goto LABEL_49;
    }

LABEL_47:
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v51, @"invitationTokenStatus", @"Unknown", 0);
    goto LABEL_49;
  }

  if (v50 != 3)
  {
    if (v50 == 2)
    {
      objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v51, @"invitationTokenStatus", @"Expired", 0);
      goto LABEL_49;
    }

    goto LABEL_47;
  }

  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v51, @"invitationTokenStatus", @"NeedsNewToken", 0);
LABEL_49:
  if (objc_msgSend_isAnonymousInvitedParticipant(self, v51, v52))
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v53, @"isAnonymousInvitedParticipant", @"true", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v53, @"isAnonymousInvitedParticipant", @"false", 0);
  }

  if (objc_msgSend_isApprovedRequester(self, v54, v55))
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v56, @"isApprovedRequester", @"true", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v56, @"isApprovedRequester", @"false", 0);
  }

  v61 = objc_msgSend_invitationDate(self, v57, v58);
  if (v61)
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v59, @"invitationDate", v61, 0);
  }

  v64 = objc_msgSend_acceptanceDate(self, v59, v60);
  if (v64)
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(usingCopy, v62, @"acceptanceDate", v64, 0);
  }

  v65 = objc_msgSend_originalParticipantRole(self, v62, v63);
  if (v65)
  {
    v67 = CKStringFromParticipantRole(v65, v66);
    objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v68, @"originalParticipantRole", v67, 0);
  }
}

- (NSString)debugDescription
{
  v64 = MEMORY[0x1E696AEC0];
  v69.receiver = self;
  v69.super_class = CKShareParticipant;
  v68 = [(CKShareParticipant *)&v69 description];
  v67 = objc_msgSend_participantID(self, v3, v4);
  isCurrentUser = objc_msgSend_isCurrentUser(self, v5, v6);
  v66 = objc_msgSend_inviterID(self, v8, v9);
  v12 = objc_msgSend_role(self, v10, v11);
  v63 = CKStringFromParticipantRole(v12, v13);
  v16 = objc_msgSend_permission(self, v14, v15);
  if ((v16 - 1) > 2)
  {
    v19 = @"unknown";
  }

  else
  {
    v19 = off_1E70BE4A0[v16 - 1];
  }

  v62 = v19;
  v20 = objc_msgSend_acceptanceStatus(self, v17, v18);
  if (v20 > 4)
  {
    v23 = @"Removed";
  }

  else
  {
    v23 = off_1E70BE4B8[v20];
  }

  v60 = v23;
  v24 = objc_msgSend_shareID(self, v21, v22);
  v59 = objc_msgSend_userIdentity(self, v25, v26);
  v61 = objc_msgSend_protectionInfo(self, v27, v28);
  v31 = objc_msgSend_length(v61, v29, v30);
  v34 = objc_msgSend_invitationToken(self, v32, v33);
  v39 = objc_msgSend_invitationTokenStatus(self, v35, v36) - 1;
  if (v39 > 2)
  {
    v40 = @"Unknown";
  }

  else
  {
    v40 = off_1E70BE4E0[v39];
  }

  v41 = @"true";
  if (isCurrentUser)
  {
    v42 = @"true";
  }

  else
  {
    v42 = @"false";
  }

  if (objc_msgSend_isAnonymousInvitedParticipant(self, v37, v38))
  {
    v45 = @"true";
  }

  else
  {
    v45 = @"false";
  }

  if (!objc_msgSend_isApprovedRequester(self, v43, v44))
  {
    v41 = @"false";
  }

  v48 = objc_msgSend_invitationDate(self, v46, v47);
  v51 = objc_msgSend_acceptanceDate(self, v49, v50);
  v54 = objc_msgSend_originalParticipantRole(self, v52, v53);
  v56 = CKStringFromParticipantRole(v54, v55);
  v65 = objc_msgSend_stringWithFormat_(v64, v57, @"[%@ participantID=%@, isCurrentUser=%@, inviterID=%@, role=%@, permission=%@, acceptanceStatus=%@, shareID=%@, identity=%@, protectionInfo=(%lu bytes), invitationToken=%@, invitationTokenStatus=%@, isAnonymousInvitedParticipant=%@, isApprovedRequester=%@, invitationDate=%@, acceptanceDate=%@, originalParticipantRole=%@]", v68, v67, v42, v66, v63, v62, v60, v24, v59, v31, v34, v40, v45, v41, v48, v51, v56);

  return v65;
}

- (CKShareParticipantType)type
{
  v3 = objc_msgSend_role(self, a2, v2);
  if (v3 > 4)
  {
    return 0;
  }

  else
  {
    return qword_1886FE5B0[v3];
  }
}

- (void)setType:(CKShareParticipantType)type
{
  if ((type - 1) > 3)
  {
    objc_msgSend_setRole_(self, a2, 0);
  }

  else
  {
    objc_msgSend_setRole_(self, a2, qword_1886FE5D8[type - 1]);
  }
}

- (CKShareParticipantPermission)permission
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  permission = selfCopy->_permission;
  objc_sync_exit(selfCopy);

  return permission;
}

- (void)setPermission:(CKShareParticipantPermission)permission
{
  obj = self;
  objc_sync_enter(obj);
  v6 = obj;
  if (obj->_permission != permission)
  {
    if (permission == CKShareParticipantPermissionUnknown)
    {
      v7 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, "[CKShareParticipant setPermission:]");
      objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v7, v10, v9, @"CKShareParticipant.m", 373, @"Invalid participant permission CKShareParticipantPermissionUnknown");

      v6 = obj;
    }

    v6->_permission = permission;
  }

  objc_sync_exit(v6);
}

- (id)unifiedContactsInStore:(id)store keysToFetch:(id)fetch error:(id *)error
{
  v106 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  fetchCopy = fetch;
  v11 = objc_msgSend_userIdentity(self, v9, v10);
  v14 = objc_msgSend_lookupInfo(v11, v12, v13);

  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v19 = objc_msgSend_emailAddress(v14, v17, v18);

  if (v19)
  {
    v23 = sub_18859A764(v20, v21, v22);
    v26 = objc_msgSend_emailAddress(v14, v24, v25);
    v28 = objc_msgSend_predicateForContactsMatchingEmailAddress_(v23, v27, v26);

    if (v28)
    {
      v30 = objc_msgSend_addObject_(v16, v29, v28);
      v101 = 0;
      v102 = &v101;
      v103 = 0x2020000000;
      v33 = qword_1ED4B61F0;
      v104 = qword_1ED4B61F0;
      if (!qword_1ED4B61F0)
      {
        v91 = MEMORY[0x1E69E9820];
        v92 = 3221225472;
        v93 = sub_18859B584;
        v94 = &unk_1E70BBE90;
        v95 = &v101;
        v34 = sub_18859B3BC(v30, v31, v32);
        v102[3] = dlsym(v34, "CNContactEmailAddressesKey");
        qword_1ED4B61F0 = *(*(v95 + 1) + 24);
        v33 = v102[3];
      }

      _Block_object_dispose(&v101, 8);
      if (!v33)
      {
        v76 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v35, v36);
        v78 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v77, "NSString *getCNContactEmailAddressesKey(void)");
        v79 = dlerror();
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v76, v80, v78, @"CKShareParticipant.m", 28, @"%s", v79);

        goto LABEL_37;
      }

      if (*v33)
      {
        objc_msgSend_addObject_(v15, v35, *v33);
      }
    }
  }

  v37 = objc_msgSend_phoneNumber(v14, v21, v22);

  if (!v37)
  {
    goto LABEL_21;
  }

  v101 = 0;
  v102 = &v101;
  v103 = 0x2050000000;
  v40 = qword_1ED4B61F8;
  v104 = qword_1ED4B61F8;
  if (!qword_1ED4B61F8)
  {
    v91 = MEMORY[0x1E69E9820];
    v92 = 3221225472;
    v93 = sub_18859B5D4;
    v94 = &unk_1E70BBE90;
    v95 = &v101;
    sub_18859B5D4(&v91, v38, v39);
    v40 = v102[3];
  }

  v41 = v40;
  _Block_object_dispose(&v101, 8);
  v44 = objc_msgSend_phoneNumber(v14, v42, v43);
  v46 = objc_msgSend_phoneNumberWithStringValue_(v40, v45, v44);

  if (v46)
  {
    v50 = sub_18859A764(v47, v48, v49);
    v53 = objc_msgSend_predicateForContactsMatchingPhoneNumber_(v50, v51, v46);
    if (!v53)
    {
LABEL_19:

      goto LABEL_20;
    }

    v54 = objc_msgSend_addObject_(v16, v52, v53);
    v101 = 0;
    v102 = &v101;
    v103 = 0x2020000000;
    v57 = qword_1ED4B6200;
    v104 = qword_1ED4B6200;
    if (!qword_1ED4B6200)
    {
      v91 = MEMORY[0x1E69E9820];
      v92 = 3221225472;
      v93 = sub_18859B69C;
      v94 = &unk_1E70BBE90;
      v95 = &v101;
      v58 = sub_18859B3BC(v54, v55, v56);
      v59 = dlsym(v58, "CNContactPhoneNumbersKey");
      *(*(v95 + 1) + 24) = v59;
      qword_1ED4B6200 = *(*(v95 + 1) + 24);
      v57 = v102[3];
    }

    _Block_object_dispose(&v101, 8);
    if (v57)
    {
      if (*v57)
      {
        objc_msgSend_addObject_(v15, v60, *v57);
      }

      goto LABEL_19;
    }

    v81 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v60, v61);
    v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v82, "NSString *getCNContactPhoneNumbersKey(void)");
    v84 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v81, v85, v83, @"CKShareParticipant.m", 29, @"%s", v84);

LABEL_37:
    __break(1u);
  }

LABEL_20:

LABEL_21:
  v62 = objc_msgSend_mutableCopy(fetchCopy, v38, v39);
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v63 = v15;
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v97, v105, 16);
  if (v66)
  {
    v67 = *v98;
    do
    {
      for (i = 0; i != v66; ++i)
      {
        if (*v98 != v67)
        {
          objc_enumerationMutation(v63);
        }

        v69 = *(*(&v97 + 1) + 8 * i);
        if ((objc_msgSend_containsObject_(v62, v65, v69) & 1) == 0)
        {
          objc_msgSend_addObject_(v62, v65, v69);
        }
      }

      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v65, &v97, v105, 16);
    }

    while (v66);
  }

  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = sub_1883ED8D0;
  v95 = sub_1883EF5BC;
  v96 = 0;
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = sub_18859A844;
  v87[3] = &unk_1E70BE440;
  v70 = storeCopy;
  v88 = v70;
  v71 = v62;
  v89 = v71;
  v90 = &v91;
  v73 = objc_msgSend_CKFlatMap_(v16, v72, v87);
  if (error)
  {
    *error = *(v92 + 40);
  }

  _Block_object_dispose(&v91, 8);
  v74 = *MEMORY[0x1E69E9840];

  return v73;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_participantID(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"ParticipantID");

  v11 = objc_msgSend_inviterID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"InviterID");

  v15 = objc_msgSend_userIdentity(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"UserIdentity");

  isCurrentUser = objc_msgSend_isCurrentUser(self, v17, v18);
  objc_msgSend_encodeBool_forKey_(coderCopy, v20, isCurrentUser, @"IsCurrentUser");
  isOrgAdminUser = objc_msgSend_isOrgAdminUser(self, v21, v22);
  objc_msgSend_encodeBool_forKey_(coderCopy, v24, isOrgAdminUser, @"IsOrgAdminUser");
  v27 = objc_msgSend_role(self, v25, v26);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v28, v27, @"Type");
  v31 = objc_msgSend_acceptanceStatus(self, v29, v30);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v32, v31, @"AcceptanceStatus");
  v35 = objc_msgSend_permission(self, v33, v34);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v36, v35, @"Permission");
  v39 = objc_msgSend_originalParticipantRole(self, v37, v38);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v40, v39, @"OriginalParticipantType");
  v43 = objc_msgSend_protectionInfo(self, v41, v42);
  objc_msgSend_encodeObject_forKey_(coderCopy, v44, v43, @"ProtectionInfo");

  v47 = objc_msgSend_encryptedPersonalInfo(self, v45, v46);
  objc_msgSend_encodeObject_forKey_(coderCopy, v48, v47, @"EncryptedPersonalInfo");

  v51 = objc_msgSend_createdInProcess(self, v49, v50);
  objc_msgSend_encodeBool_forKey_(coderCopy, v52, v51, @"CreatedInProcess");
  v55 = objc_msgSend_acceptedInProcess(self, v53, v54);
  objc_msgSend_encodeBool_forKey_(coderCopy, v56, v55, @"AcceptedInProcess");
  v59 = objc_msgSend_invitationToken(self, v57, v58);
  objc_msgSend_encodeObject_forKey_(coderCopy, v60, v59, @"InvitationToken");

  v63 = objc_msgSend_protectionInfoPublicKey(self, v61, v62);
  objc_msgSend_encodeObject_forKey_(coderCopy, v64, v63, @"ProtectionInfoPublicKey");

  v67 = objc_msgSend_wantsNewInvitationToken(self, v65, v66);
  objc_msgSend_encodeBool_forKey_(coderCopy, v68, v67, @"wantsNewInvitationToken");
  v71 = objc_msgSend_mutableInvitationTokenStatus(self, v69, v70);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v72, v71, @"mutableInvitationTokenStatus");
  isAnonymousInvitedParticipant = objc_msgSend_isAnonymousInvitedParticipant(self, v73, v74);
  objc_msgSend_encodeBool_forKey_(coderCopy, v76, isAnonymousInvitedParticipant, @"isAnonymousInvitedParticipant");
  isApprovedRequester = objc_msgSend_isApprovedRequester(self, v77, v78);
  objc_msgSend_encodeBool_forKey_(coderCopy, v80, isApprovedRequester, @"isApprovedRequester");
  v83 = objc_msgSend_invitationDate(self, v81, v82);
  objc_msgSend_encodeObject_forKey_(coderCopy, v84, v83, @"invitationDate");

  v87 = objc_msgSend_acceptanceDate(self, v85, v86);
  objc_msgSend_encodeObject_forKey_(coderCopy, v88, v87, @"acceptanceDate");

  v91 = objc_msgSend_usesOneTimeURL(self, v89, v90);
  objc_msgSend_encodeBool_forKey_(coderCopy, v92, v91, @"usesOneTimeURL");
  v95 = objc_msgSend_oneTimeURLSharingKeySeed(self, v93, v94);
  objc_msgSend_encodeObject_forKey_(coderCopy, v96, v95, @"oneTimeURLSharingKeySeed");

  v99 = objc_msgSend_shareID(self, v97, v98);
  objc_msgSend_encodeObject_forKey_(coderCopy, v100, v99, @"ShareID");

  objc_autoreleasePoolPop(v4);
}

- (CKShareParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v71.receiver = self;
  v71.super_class = CKShareParticipant;
  v5 = [(CKShareParticipant *)&v71 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v12, v11, @"ParticipantID");
    participantID = v5->_participantID;
    v5->_participantID = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"InviterID");
    inviterID = v5->_inviterID;
    v5->_inviterID = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"UserIdentity");
    userIdentity = v5->_userIdentity;
    v5->_userIdentity = v21;

    v5->_isCurrentUser = objc_msgSend_decodeBoolForKey_(coderCopy, v23, @"IsCurrentUser");
    v5->_isOrgAdminUser = objc_msgSend_decodeBoolForKey_(coderCopy, v24, @"IsOrgAdminUser");
    v5->_role = objc_msgSend_decodeInt64ForKey_(coderCopy, v25, @"Type");
    v5->_acceptanceStatus = objc_msgSend_decodeInt64ForKey_(coderCopy, v26, @"AcceptanceStatus");
    v5->_permission = objc_msgSend_decodeInt64ForKey_(coderCopy, v27, @"Permission");
    v5->_originalParticipantRole = objc_msgSend_decodeInt64ForKey_(coderCopy, v28, @"OriginalParticipantType");
    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v30, v29, @"ProtectionInfo");
    protectionInfo = v5->_protectionInfo;
    v5->_protectionInfo = v31;

    v33 = objc_opt_class();
    v35 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v34, v33, @"EncryptedPersonalInfo");
    encryptedPersonalInfo = v5->_encryptedPersonalInfo;
    v5->_encryptedPersonalInfo = v35;

    v5->_createdInProcess = objc_msgSend_decodeBoolForKey_(coderCopy, v37, @"CreatedInProcess");
    v5->_acceptedInProcess = objc_msgSend_decodeBoolForKey_(coderCopy, v38, @"AcceptedInProcess");
    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"InvitationToken");
    invitationToken = v5->_invitationToken;
    v5->_invitationToken = v41;

    v43 = objc_opt_class();
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v44, v43, @"ProtectionInfoPublicKey");
    protectionInfoPublicKey = v5->_protectionInfoPublicKey;
    v5->_protectionInfoPublicKey = v45;

    v5->_wantsNewInvitationToken = objc_msgSend_decodeBoolForKey_(coderCopy, v47, @"wantsNewInvitationToken");
    v5->_isAnonymousInvitedParticipant = objc_msgSend_decodeBoolForKey_(coderCopy, v48, @"isAnonymousInvitedParticipant");
    v5->_isApprovedRequester = objc_msgSend_decodeBoolForKey_(coderCopy, v49, @"isApprovedRequester");
    v50 = objc_opt_class();
    v52 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v51, v50, @"invitationDate");
    invitationDate = v5->_invitationDate;
    v5->_invitationDate = v52;

    v54 = objc_opt_class();
    v56 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v55, v54, @"acceptanceDate");
    acceptanceDate = v5->_acceptanceDate;
    v5->_acceptanceDate = v56;

    v5->_usesOneTimeURL = objc_msgSend_decodeBoolForKey_(coderCopy, v58, @"usesOneTimeURL");
    v59 = objc_opt_class();
    v61 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v60, v59, @"oneTimeURLSharingKeySeed");
    oneTimeURLSharingKeySeed = v5->_oneTimeURLSharingKeySeed;
    v5->_oneTimeURLSharingKeySeed = v61;

    v63 = objc_opt_class();
    v65 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v64, v63, @"ShareID");
    shareID = v5->_shareID;
    v5->_shareID = v65;

    if (objc_msgSend_containsValueForKey_(coderCopy, v67, @"mutableInvitationTokenStatus"))
    {
      v69 = objc_msgSend_decodeInt64ForKey_(coderCopy, v68, @"mutableInvitationTokenStatus");
    }

    else
    {
      v69 = 1;
    }

    v5->_mutableInvitationTokenStatus = v69;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)setUserIdentity_modelMutation:(id)mutation
{
  v4 = objc_msgSend_copy(mutation, a2, mutation);
  userIdentity = self->_userIdentity;
  self->_userIdentity = v4;

  MEMORY[0x1EEE66BB8](v4, userIdentity);
}

- (void)setParticipantID_modelMutation:(id)mutation
{
  v4 = objc_msgSend_copy(mutation, a2, mutation);
  participantID = self->_participantID;
  self->_participantID = v4;

  MEMORY[0x1EEE66BB8](v4, participantID);
}

@end