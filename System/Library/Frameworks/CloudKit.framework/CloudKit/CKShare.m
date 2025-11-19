@interface CKShare
+ (void)initialize;
- (BOOL)_participantArray:(id)a3 containsEquivalentWithPermissionsParticipant:(id)a4;
- (BOOL)_participantArray:(id)a3 isEquivalentToArray:(id)a4;
- (BOOL)accessRequestsEnabled;
- (BOOL)allNonOwnerParticipantsHavePermission:(int64_t)a3;
- (BOOL)allNonOwnerParticipantsHaveRole:(int64_t)a3;
- (BOOL)hasModifiedEncryptedData;
- (BOOL)hasModifiedPropertiesRequiringEncryption;
- (BOOL)hasPropertiesRequiringDecryption;
- (BOOL)hasPropertiesRequiringEncryption;
- (BOOL)isCurrentUserOwnerOrAdmin;
- (BOOL)isZoneWideShare;
- (CKShare)init;
- (CKShare)initWithCoder:(NSCoder *)aDecoder;
- (CKShare)initWithRecordType:(CKRecordType)recordType;
- (CKShare)initWithRecordType:(CKRecordType)recordType recordID:(CKRecordID *)recordID;
- (CKShare)initWithRecordType:(CKRecordType)recordType zoneID:(CKRecordZoneID *)zoneID;
- (CKShare)initWithRecordZoneID:(CKRecordZoneID *)recordZoneID;
- (CKShare)initWithRootRecord:(CKRecord *)rootRecord;
- (CKShare)initWithRootRecord:(CKRecord *)rootRecord shareID:(CKRecordID *)shareID;
- (CKShareParticipant)currentUserParticipant;
- (CKShareParticipant)owner;
- (CKShareParticipantPermission)publicPermission;
- (NSArray)approvedRequesters;
- (NSArray)blockedIdentities;
- (NSArray)invitedKeysToRemove;
- (NSArray)participants;
- (NSArray)requesters;
- (NSData)publicSharingIdentity;
- (NSMutableDictionary)oneTimeURLMetadatasByParticipantID;
- (id)_existingRequestersForUserIdentities:(id)a3;
- (id)_knownParticipantEqualToParticipant:(id)a3;
- (id)_knownParticipantEqualToParticipant:(id)a3 inParticipants:(id)a4;
- (id)_knownParticipantWithParticipantID:(id)a3;
- (id)addedParticipants;
- (id)allParticipants;
- (id)copyWithOriginalValues;
- (id)initInternalWithShareRecordID:(id)a3;
- (id)lookupInfosFromRequesters:(id)a3;
- (id)oneTimeURLForParticipantID:(id)a3;
- (id)removedParticipants;
- (id)updateFromServerShare:(id)a3;
- (int64_t)_indexForIdentity:(id)a3 matchingAnyInCollection:(id)a4;
- (int64_t)participantSelfRemovalBehavior;
- (int64_t)participantVisibility;
- (void)CKAssignToContainerWithID:(id)a3;
- (void)CKDescribePropertiesUsing:(id)a3;
- (void)_addOwnerParticipant;
- (void)_addParticipantBypassingChecks:(id)a3;
- (void)_addParticipantEmails:(id)a3 phoneNumbers:(id)a4 asReadWrite:(BOOL)a5 inContainer:(id)a6 completionHandler:(id)a7;
- (void)_commonCKShareInit;
- (void)_removeAllNonOneTimeLinkParticipants;
- (void)_removeNonOneTimeLinkPendingPrivateAndAdminParticipants;
- (void)_removeParticipantBypassingChecks:(id)a3;
- (void)_setAccessRequestsEnabledNoSideEffects:(BOOL)a3;
- (void)_setPublicPermissionNoSideEffects:(int64_t)a3;
- (void)_unblockIdentitiesReferencedByParticipant:(id)a3;
- (void)addParticipant:(CKShareParticipant *)participant;
- (void)approveRequesters:(id)a3 inContainer:(id)a4 withPermission:(int64_t)a5 asRole:(int64_t)a6 operationGroup:(id)a7 completionHandler:(id)a8;
- (void)blockRequesters:(id)a3;
- (void)blockUserIdentities:(id)a3;
- (void)blockUserIdentityLookupInfos:(id)a3;
- (void)clearModifiedParticipants;
- (void)denyRequesters:(id)a3;
- (void)encodeSystemFieldsWithCoder:(id)a3;
- (void)registerFetchedParticipant:(id)a3;
- (void)removeParticipant:(CKShareParticipant *)participant;
- (void)resetFetchedParticipants;
- (void)setAllParticipants:(id)a3;
- (void)setApprovedRequesters:(id)a3;
- (void)setBlockedIdentities:(id)a3;
- (void)setInvitedKeysToRemove:(id)a3;
- (void)setOneTimeURLMetadatasByParticipantID:(id)a3;
- (void)setParticipantSelfRemovalBehavior:(int64_t)a3;
- (void)setParticipantVisibility:(int64_t)a3;
- (void)setPublicPermission:(CKShareParticipantPermission)publicPermission;
- (void)setPublicSharingIdentity:(id)a3;
- (void)setRequesters:(id)a3;
- (void)setWantsPublicSharingKey:(BOOL)a3;
- (void)unblockIdentities:(id)a3;
@end

@implementation CKShare

+ (void)initialize
{
  v3 = objc_opt_class();

  sub_1886CEE50(a1, v3, 0, &unk_1EFA85B00, 0);
}

- (CKShare)initWithRootRecord:(CKRecord *)rootRecord
{
  v4 = rootRecord;
  v5 = [CKRecordID alloc];
  v6 = CKCreateGUID();
  v8 = objc_msgSend_stringByAppendingString_(@"Share-", v7, v6);
  v11 = objc_msgSend_recordID(v4, v9, v10);
  v14 = objc_msgSend_zoneID(v11, v12, v13);
  v16 = objc_msgSend_initWithRecordName_zoneID_(v5, v15, v8, v14);

  v18 = objc_msgSend_initWithRootRecord_shareID_(self, v17, v4, v16);
  return v18;
}

- (CKShare)initWithRootRecord:(CKRecord *)rootRecord shareID:(CKRecordID *)shareID
{
  v6 = rootRecord;
  v7 = shareID;
  v26.receiver = self;
  v26.super_class = CKShare;
  v8 = [(CKRecord *)&v26 initWithRecordType:@"cloudkit.share" recordID:v7];
  v11 = v8;
  if (v8)
  {
    objc_msgSend__commonCKShareInit(v8, v9, v10);
    objc_msgSend__addOwnerParticipant(v11, v12, v13);
    if (v6)
    {
      v14 = [CKReference alloc];
      v16 = objc_msgSend_initWithRecordID_action_(v14, v15, v7, 0);
      objc_msgSend_setShare_(v6, v17, v16);

      v20 = objc_msgSend_recordID(v6, v18, v19);
      v23 = objc_msgSend_copy(v20, v21, v22);
      rootRecordID = v11->_rootRecordID;
      v11->_rootRecordID = v23;
    }
  }

  return v11;
}

- (CKShare)initWithRecordZoneID:(CKRecordZoneID *)recordZoneID
{
  v4 = recordZoneID;
  v5 = [CKRecordID alloc];
  v7 = objc_msgSend_initWithRecordName_zoneID_(v5, v6, @"cloudkit.zoneshare", v4);

  v15.receiver = self;
  v15.super_class = CKShare;
  v8 = [(CKRecord *)&v15 initWithRecordType:@"cloudkit.share" recordID:v7];
  v11 = v8;
  if (v8)
  {
    objc_msgSend__commonCKShareInit(v8, v9, v10);
    objc_msgSend__addOwnerParticipant(v11, v12, v13);
  }

  return v11;
}

- (id)initInternalWithShareRecordID:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKShare;
  v3 = [(CKRecord *)&v8 initWithRecordType:@"cloudkit.share" recordID:a3];
  v6 = v3;
  if (v3)
  {
    objc_msgSend__commonCKShareInit(v3, v4, v5);
  }

  return v6;
}

- (CKShare)init
{
  v2 = [CKException alloc];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = objc_msgSend_initWithCode_format_(v2, v5, 12, @"You must call [%@ initWithRootRecord:shareID:]", v4);
  v7 = v6;

  objc_exception_throw(v6);
}

- (CKShare)initWithRecordType:(CKRecordType)recordType
{
  v3 = recordType;
  v4 = [CKException alloc];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = objc_msgSend_initWithCode_format_(v4, v7, 12, @"You must call [%@ initWithRootRecord:shareID:]", v6);
  v9 = v8;

  objc_exception_throw(v8);
}

- (CKShare)initWithRecordType:(CKRecordType)recordType recordID:(CKRecordID *)recordID
{
  v5 = recordType;
  v6 = recordID;
  v7 = [CKException alloc];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v11 = objc_msgSend_initWithCode_format_(v7, v10, 12, @"You must call [%@ initWithRootRecord:shareID:]", v9);
  v12 = v11;

  objc_exception_throw(v11);
}

- (CKShare)initWithRecordType:(CKRecordType)recordType zoneID:(CKRecordZoneID *)zoneID
{
  v5 = recordType;
  v6 = zoneID;
  v7 = [CKException alloc];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v11 = objc_msgSend_initWithCode_format_(v7, v10, 12, @"You must call [%@ initWithRootRecord:shareID:]", v9);
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)_addOwnerParticipant
{
  v3 = [CKUserIdentity alloc];
  v4 = [CKRecordID alloc];
  v6 = objc_msgSend_initWithRecordName_(v4, v5, @"__defaultOwner__");
  v16 = objc_msgSend_initWithUserRecordID_(v3, v7, v6);

  v8 = [CKShareParticipant alloc];
  inited = objc_msgSend_initInternalWithUserIdentity_(v8, v9, v16);
  objc_msgSend_setRole_(inited, v11, 1);
  objc_msgSend_setPermission_(inited, v12, 3);
  objc_msgSend_setIsCurrentUser_(inited, v13, 1);
  objc_msgSend_setAcceptanceStatus_(inited, v14, 2);
  objc_msgSend__addParticipantBypassingChecks_(self, v15, inited);
}

- (void)_commonCKShareInit
{
  self->_publicPermission = 1;
  v3 = objc_opt_new();
  mutableAllParticipants = self->_mutableAllParticipants;
  self->_mutableAllParticipants = v3;

  v5 = objc_opt_new();
  mutableRequesters = self->_mutableRequesters;
  self->_mutableRequesters = v5;

  v7 = objc_opt_new();
  mutableApprovedRequesters = self->_mutableApprovedRequesters;
  self->_mutableApprovedRequesters = v7;

  v9 = objc_opt_new();
  mutableBlockedIdentities = self->_mutableBlockedIdentities;
  self->_mutableBlockedIdentities = v9;

  self->_accessRequestsEnabled = 0;
  v11 = objc_opt_new();
  lastFetchedParticipants = self->_lastFetchedParticipants;
  self->_lastFetchedParticipants = v11;

  v13 = objc_opt_new();
  addedParticipantIDs = self->_addedParticipantIDs;
  self->_addedParticipantIDs = v13;

  v15 = objc_opt_new();
  removedParticipantIDs = self->_removedParticipantIDs;
  self->_removedParticipantIDs = v15;

  self->_participantVisibility = 0;
  self->_participantSelfRemovalBehavior = 0;
}

- (void)_removeNonOneTimeLinkPendingPrivateAndAdminParticipants
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = objc_msgSend_participants(self, a2, v2, 0);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ((objc_msgSend_role(v15, v10, v11) == 3 || objc_msgSend_role(v15, v10, v11) == 2) && (objc_msgSend_usesOneTimeURL(v15, v10, v11) & 1) == 0 && objc_msgSend_acceptanceStatus(v15, v10, v11) == 1 && (objc_msgSend_isCurrentUser(v15, v10, v11) & 1) == 0)
        {
          objc_msgSend__removeParticipantBypassingChecks_(self, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16);
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_removeAllNonOneTimeLinkParticipants
{
  v22 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = objc_msgSend_participants(self, a2, v2, 0);
  v7 = objc_msgSend_copy(v4, v5, v6);

  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        if ((objc_msgSend_role(v15, v10, v11) == 3 || objc_msgSend_role(v15, v10, v11) == 4 || objc_msgSend_role(v15, v10, v11) == 2) && (objc_msgSend_usesOneTimeURL(v15, v10, v11) & 1) == 0 && (objc_msgSend_isCurrentUser(v15, v10, v11) & 1) == 0)
        {
          objc_msgSend__removeParticipantBypassingChecks_(self, v10, v15);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v17, v21, 16);
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (CKShareParticipantPermission)publicPermission
{
  v2 = self;
  objc_sync_enter(v2);
  publicPermission = v2->_publicPermission;
  objc_sync_exit(v2);

  return publicPermission;
}

- (BOOL)isCurrentUserOwnerOrAdmin
{
  v3 = objc_msgSend_currentUserParticipant(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v9 = objc_msgSend_role(v3, v4, v5) == 1 || objc_msgSend_role(v6, v7, v8) == 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setPublicPermission:(CKShareParticipantPermission)publicPermission
{
  obj = self;
  objc_sync_enter(obj);
  v9 = objc_msgSend_currentUserParticipant(obj, v5, v6);
  if (v9 && (objc_msgSend_isCurrentUserOwnerOrAdmin(obj, v7, v8) & 1) == 0)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, obj, @"CKShare.m", 254, @"Only owners and admins may set the public permission of a share");
  }

  if ((publicPermission - 2) < 2)
  {
    objc_msgSend__removeNonOneTimeLinkPendingPrivateAndAdminParticipants(obj, v7, v8);
  }

  else if (publicPermission == CKShareParticipantPermissionNone)
  {
    if ((obj->_publicPermission & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      objc_msgSend__removeAllNonOneTimeLinkParticipants(obj, v7, v8);
    }
  }

  else if (publicPermission == CKShareParticipantPermissionUnknown)
  {
    v10 = [CKException alloc];
    v12 = objc_msgSend_initWithCode_format_(v10, v11, 12, @"You can't set a share's publicPermission to CKShareParticipantPermissionUnknown");
    objc_exception_throw(v12);
  }

  objc_msgSend__setPublicPermissionNoSideEffects_(obj, v7, publicPermission);

  objc_sync_exit(obj);
}

- (void)_setPublicPermissionNoSideEffects:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_publicPermission = a3;
  objc_sync_exit(obj);
}

- (void)setOneTimeURLMetadatasByParticipantID:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v12, v5, v6);
  v10 = objc_msgSend_mutableCopy(v7, v8, v9);
  oneTimeURLMetadatasByParticipantID = v4->_oneTimeURLMetadatasByParticipantID;
  v4->_oneTimeURLMetadatasByParticipantID = v10;

  objc_sync_exit(v4);
}

- (NSMutableDictionary)oneTimeURLMetadatasByParticipantID
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_CKDeepCopy(v2->_oneTimeURLMetadatasByParticipantID, v3, v4);
  v8 = objc_msgSend_mutableCopy(v5, v6, v7);

  objc_sync_exit(v2);

  return v8;
}

- (id)copyWithOriginalValues
{
  v57 = *MEMORY[0x1E69E9840];
  v55.receiver = self;
  v55.super_class = CKShare;
  v2 = [(CKRecord *)&v55 copyWithOriginalValues];
  v5 = objc_msgSend_removedParticipantIDs(v2, v3, v4);
  objc_msgSend_removeAllObjects(v5, v6, v7);

  v10 = objc_msgSend_owner(v2, v8, v9);
  v13 = objc_msgSend_participantID(v10, v11, v12);

  if (v13)
  {
    v16 = objc_msgSend_addedParticipantIDs(v2, v14, v15);
    v50 = objc_msgSend_containsObject_(v16, v17, v13);
  }

  else
  {
    v50 = 0;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v18 = objc_msgSend_mutableAllParticipants(v2, v14, v15);
  v21 = objc_msgSend_copy(v18, v19, v20);

  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v51, v56, 16);
  if (v23)
  {
    v26 = v23;
    v27 = *v52;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v52 != v27)
        {
          objc_enumerationMutation(v21);
        }

        v29 = *(*(&v51 + 1) + 8 * i);
        v30 = objc_msgSend_addedParticipantIDs(v2, v24, v25);
        v33 = objc_msgSend_participantID(v29, v31, v32);
        if (objc_msgSend_containsObject_(v30, v34, v33))
        {
          v37 = objc_msgSend_role(v29, v35, v36);

          if (v37 == 1)
          {
            continue;
          }

          v30 = objc_msgSend_mutableAllParticipants(v2, v24, v25);
          objc_msgSend_removeObject_(v30, v38, v29);
        }

        else
        {
        }
      }

      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v51, v56, 16);
    }

    while (v26);
  }

  v41 = objc_msgSend_addedParticipantIDs(v2, v39, v40);
  objc_msgSend_removeAllObjects(v41, v42, v43);

  if (v50)
  {
    v46 = objc_msgSend_addedParticipantIDs(v2, v44, v45);
    objc_msgSend_addObject_(v46, v47, v13);
  }

  v48 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)CKDescribePropertiesUsing:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = CKShare;
  [(CKRecord *)&v68 CKDescribePropertiesUsing:v4];
  v7 = objc_msgSend_rootRecordID(self, v5, v6);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v8, @"rootRecordID", v7, 0);

  v11 = objc_msgSend_etag(self, v9, v10);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v12, @"etag", v11, 0);

  v15 = objc_msgSend_publicPermission(self, v13, v14);
  v16 = CKStringFromParticipantPermission(v15);
  objc_msgSend_addProperty_value_shouldRedact_(v4, v17, @"publicPermission", v16, 0);

  v20 = objc_msgSend_participantVisibility(self, v18, v19);
  if (v20 > 3)
  {
    objc_msgSend_addProperty_value_shouldRedact_(v4, v21, @"participantVisibility", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addProperty_value_shouldRedact_(v4, v21, @"participantVisibility", off_1E70BE360[v20], 0);
  }

  v24 = objc_msgSend_participantSelfRemovalBehavior(self, v22, v23);
  if (v24 > 3)
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v25, @"participantSelfRemovalBehavior", @"Unknown", 0);
  }

  else
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v25, @"participantSelfRemovalBehavior", off_1E70BE380[v24], 0);
  }

  if (objc_msgSend_allowsAnonymousPublicAccess(self, v26, v27))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v4, v28, @"allowsAnonymousPublicAccess", @"true", 0);
  }

  v30 = objc_msgSend_baseToken(self, v28, v29);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v31, @"baseToken", v30, 0);

  v34 = objc_msgSend_routingKey(self, v32, v33);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v35, @"routingKey", v34, 0);

  v38 = objc_msgSend_mutableEncryptedPSK(self, v36, v37);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v39, @"mutableEncryptedPSK", v38, 0);

  v40 = self;
  objc_sync_enter(v40);
  v43 = objc_msgSend_mutableAllParticipants(v40, v41, v42);
  if (objc_msgSend_count(v43, v44, v45))
  {
    objc_msgSend_addProperty_value_shouldRedact_(v4, v46, @"participants", v43, 0);
  }

  v48 = objc_msgSend_mutableRequesters(v40, v46, v47);
  if (objc_msgSend_count(v48, v49, v50))
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v51, @"requesters", v48, 0);
  }

  v53 = objc_msgSend_mutableApprovedRequesters(v40, v51, v52);
  if (objc_msgSend_count(v53, v54, v55))
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v56, @"approvedRequesters", v53, 0);
  }

  v58 = objc_msgSend_mutableBlockedIdentities(v40, v56, v57);
  if (objc_msgSend_count(v58, v59, v60))
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v61, @"blockedIdentities", v58, 0);
  }

  if (objc_msgSend_accessRequestsEnabled(v40, v61, v62))
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v63, @"accessRequestsEnabled", @"true", 0);
  }

  else
  {
    objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v63, @"accessRequestsEnabled", @"false", 0);
  }

  objc_sync_exit(v40);
  v66 = objc_msgSend_currentUserParticipant(v40, v64, v65);
  objc_msgSend_addPropertyIfExists_value_shouldRedact_(v4, v67, @"currentParticipant", v66, 0);
}

- (BOOL)hasPropertiesRequiringDecryption
{
  v10.receiver = self;
  v10.super_class = CKShare;
  if ([(CKRecord *)&v10 hasPropertiesRequiringDecryption])
  {
    return 1;
  }

  v6 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v3, v4);
  v5 = objc_msgSend_count(v6, v7, v8) != 0;

  return v5;
}

- (BOOL)hasPropertiesRequiringEncryption
{
  v10.receiver = self;
  v10.super_class = CKShare;
  if ([(CKRecord *)&v10 hasPropertiesRequiringEncryption])
  {
    return 1;
  }

  v6 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v3, v4);
  v5 = objc_msgSend_count(v6, v7, v8) != 0;

  return v5;
}

- (BOOL)hasModifiedPropertiesRequiringEncryption
{
  v10.receiver = self;
  v10.super_class = CKShare;
  if ([(CKRecord *)&v10 hasModifiedPropertiesRequiringEncryption])
  {
    return 1;
  }

  v6 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v3, v4);
  v5 = objc_msgSend_count(v6, v7, v8) != 0;

  return v5;
}

- (BOOL)hasModifiedEncryptedData
{
  v10.receiver = self;
  v10.super_class = CKShare;
  if ([(CKRecord *)&v10 hasModifiedEncryptedData])
  {
    return 1;
  }

  v6 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v3, v4);
  v5 = objc_msgSend_count(v6, v7, v8) != 0;

  return v5;
}

- (BOOL)isZoneWideShare
{
  v3 = objc_msgSend_recordID(self, a2, v2);
  v6 = objc_msgSend_recordName(v3, v4, v5);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, @"cloudkit.zoneshare");

  return isEqualToString;
}

- (void)CKAssignToContainerWithID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v10.receiver = v5;
  v10.super_class = CKShare;
  [(CKRecord *)&v10 CKAssignToContainerWithID:v4];
  v8 = objc_msgSend_mutableAllParticipants(v5, v6, v7);
  objc_msgSend_CKAssignToContainerWithID_(v8, v9, v4);

  objc_sync_exit(v5);
}

- (id)allParticipants
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_mutableAllParticipants(v2, v3, v4);
  v8 = objc_msgSend_copy(v5, v6, v7);

  objc_sync_exit(v2);

  return v8;
}

- (void)setAllParticipants:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_mutableCopy(v9, v5, v6);
  objc_msgSend_setMutableAllParticipants_(v4, v8, v7);

  objc_sync_exit(v4);
}

- (NSArray)participants
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_removedParticipantIDs(v2, v3, v4);
  v8 = objc_msgSend_mutableAllParticipants(v2, v6, v7);
  if (objc_msgSend_count(v5, v9, v10))
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_18858F3A8;
    v16[3] = &unk_1E70BE1A0;
    v17 = v5;
    v14 = objc_msgSend_CKFilter_(v8, v13, v16);
  }

  else
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
  }

  objc_sync_exit(v2);

  return v14;
}

- (NSArray)requesters
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_copy(v2->_mutableRequesters, v3, v4);
  objc_sync_exit(v2);

  return v5;
}

- (void)setRequesters:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_mutableCopy(v9, v5, v6);
  mutableRequesters = v4->_mutableRequesters;
  v4->_mutableRequesters = v7;

  objc_sync_exit(v4);
}

- (NSArray)approvedRequesters
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_copy(v2->_mutableApprovedRequesters, v3, v4);
  objc_sync_exit(v2);

  return v5;
}

- (void)setApprovedRequesters:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_mutableCopy(v9, v5, v6);
  mutableApprovedRequesters = v4->_mutableApprovedRequesters;
  v4->_mutableApprovedRequesters = v7;

  objc_sync_exit(v4);
}

- (NSArray)blockedIdentities
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_copy(v2->_mutableBlockedIdentities, v3, v4);
  objc_sync_exit(v2);

  return v5;
}

- (void)setBlockedIdentities:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_mutableCopy(v9, v5, v6);
  mutableBlockedIdentities = v4->_mutableBlockedIdentities;
  v4->_mutableBlockedIdentities = v7;

  objc_sync_exit(v4);
}

- (id)lookupInfosFromRequesters:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v7 = v3;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v79, v83, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v80;
    do
    {
      v14 = 0;
      do
      {
        if (*v80 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v79 + 1) + 8 * v14);
        v16 = objc_msgSend_userIdentity(v15, v10, v11);
        v19 = objc_msgSend_lookupInfo(v16, v17, v18);
        v22 = objc_msgSend_userRecordID(v19, v20, v21);

        if (v22)
        {
          v25 = [CKUserIdentityLookupInfo alloc];
          v28 = objc_msgSend_userIdentity(v15, v26, v27);
          v31 = objc_msgSend_lookupInfo(v28, v29, v30);
          v34 = objc_msgSend_userRecordID(v31, v32, v33);
          v36 = objc_msgSend_initWithUserRecordID_(v25, v35, v34);
LABEL_12:
          v69 = v36;

          objc_msgSend_addObject_(v6, v70, v69);
          goto LABEL_13;
        }

        v37 = objc_msgSend_userIdentity(v15, v23, v24);
        v40 = objc_msgSend_lookupInfo(v37, v38, v39);
        v43 = objc_msgSend_emailAddress(v40, v41, v42);

        if (v43)
        {
          v46 = [CKUserIdentityLookupInfo alloc];
          v28 = objc_msgSend_userIdentity(v15, v47, v48);
          v31 = objc_msgSend_lookupInfo(v28, v49, v50);
          v34 = objc_msgSend_emailAddress(v31, v51, v52);
          v36 = objc_msgSend_initWithEmailAddress_(v46, v53, v34);
          goto LABEL_12;
        }

        v54 = objc_msgSend_userIdentity(v15, v44, v45);
        v57 = objc_msgSend_lookupInfo(v54, v55, v56);
        v60 = objc_msgSend_phoneNumber(v57, v58, v59);

        if (v60)
        {
          v61 = [CKUserIdentityLookupInfo alloc];
          v28 = objc_msgSend_userIdentity(v15, v62, v63);
          v31 = objc_msgSend_lookupInfo(v28, v64, v65);
          v34 = objc_msgSend_phoneNumber(v31, v66, v67);
          v36 = objc_msgSend_initWithPhoneNumber_(v61, v68, v34);
          goto LABEL_12;
        }

        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v71 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          *v78 = 0;
          _os_log_error_impl(&dword_1883EA000, v71, OS_LOG_TYPE_ERROR, "Cannot approve share requester without a user record ID, email address, or phone number.", v78, 2u);
        }

LABEL_13:
        ++v14;
      }

      while (v12 != v14);
      v72 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v79, v83, 16);
      v12 = v72;
    }

    while (v72);
  }

  v75 = objc_msgSend_copy(v6, v73, v74);
  v76 = *MEMORY[0x1E69E9840];

  return v75;
}

- (void)approveRequesters:(id)a3 inContainer:(id)a4 withPermission:(int64_t)a5 asRole:(int64_t)a6 operationGroup:(id)a7 completionHandler:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a7;
  v18 = a8;
  v23 = objc_msgSend_currentUserParticipant(self, v19, v20);
  if (v23 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v21, v22) & 1) == 0)
  {
    v39 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v21, v22);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v39, v40, a2, self, @"CKShare.m", 575, @"Only owners and admins may approve share requesters");

    if (!v15)
    {
      goto LABEL_10;
    }
  }

  else if (!v15)
  {
    goto LABEL_10;
  }

  v24 = objc_msgSend_count(v15, v21, v22);
  if (v16 && v24)
  {
    v26 = objc_msgSend_lookupInfosFromRequesters_(self, v25, v15);
    v27 = [CKFetchShareParticipantsOperation alloc];
    v41 = v26;
    v29 = objc_msgSend_initWithUserIdentityLookupInfos_(v27, v28, v26);
    v32 = v29;
    if (v17)
    {
      objc_msgSend_setGroup_(v29, v30, v17);
    }

    v33 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31);
    objc_initWeak(location, self);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = sub_18858FD24;
    v47[3] = &unk_1E70BE1C8;
    v49 = a5;
    v50 = a6;
    v34 = v33;
    v48 = v34;
    objc_msgSend_setPerShareParticipantCompletionBlock_(v32, v35, v47);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_18858FEA8;
    v42[3] = &unk_1E70BE1F0;
    objc_copyWeak(&v46, location);
    v45 = v18;
    v36 = v34;
    v43 = v36;
    v44 = v15;
    objc_msgSend_setFetchShareParticipantsCompletionBlock_(v32, v37, v42);
    objc_msgSend_addOperation_(v16, v38, v32);

    objc_destroyWeak(&v46);
    objc_destroyWeak(location);

    goto LABEL_12;
  }

LABEL_10:
  if (v18)
  {
    (*(v18 + 2))(v18, 0);
  }

LABEL_12:
}

- (void)denyRequesters:(id)a3
{
  v16 = a3;
  v9 = objc_msgSend_currentUserParticipant(self, v5, v6);
  if (v9 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v7, v8) & 1) == 0)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKShare.m", 648, @"Only owners and admins may deny share requesters");
  }

  if (v16)
  {
    v12 = self;
    objc_sync_enter(v12);
    objc_msgSend_removeObjectsInArray_(v12->_mutableRequesters, v13, v16);
    objc_sync_exit(v12);
  }
}

- (void)_unblockIdentitiesReferencedByParticipant:(id)a3
{
  v92 = *MEMORY[0x1E69E9840];
  v78 = a3;
  if (v78)
  {
    v76 = self;
    v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_188590688;
    aBlock[3] = &unk_1E70BE218;
    v5 = v4;
    v86 = v5;
    v77 = _Block_copy(aBlock);
    v8 = objc_msgSend_userIdentity(v78, v6, v7);
    v11 = objc_msgSend_userRecordID(v8, v9, v10);
    v14 = objc_msgSend_recordName(v11, v12, v13);
    v77[2](v77, v14);

    v17 = objc_msgSend_userIdentity(v78, v15, v16);
    v20 = objc_msgSend_lookupInfo(v17, v18, v19);
    v23 = objc_msgSend_emailAddress(v20, v21, v22);
    v77[2](v77, v23);

    v26 = objc_msgSend_userIdentity(v78, v24, v25);
    v29 = objc_msgSend_lookupInfo(v26, v27, v28);
    v32 = objc_msgSend_phoneNumber(v29, v30, v31);
    v77[2](v77, v32);

    v80 = objc_opt_new();
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v75 = 448;
    obj = self->_mutableBlockedIdentities;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v81, v91, 16);
    if (v36)
    {
      v37 = *v82;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v82 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v81 + 1) + 8 * i);
          v40 = objc_msgSend_userIdentity(v39, v34, v35, v75);
          v43 = objc_msgSend_lookupInfo(v40, v41, v42);
          v46 = objc_msgSend_userRecordID(v43, v44, v45);
          v49 = objc_msgSend_recordName(v46, v47, v48);

          v52 = objc_msgSend_userIdentity(v39, v50, v51);
          v55 = objc_msgSend_lookupInfo(v52, v53, v54);
          v58 = objc_msgSend_emailAddress(v55, v56, v57);

          v61 = objc_msgSend_userIdentity(v39, v59, v60);
          v64 = objc_msgSend_lookupInfo(v61, v62, v63);
          v67 = objc_msgSend_phoneNumber(v64, v65, v66);

          if (v49 && (objc_msgSend_containsObject_(v5, v68, v49) & 1) != 0 || v58 && (objc_msgSend_containsObject_(v5, v68, v58) & 1) != 0 || v67 && objc_msgSend_containsObject_(v5, v68, v67))
          {
            objc_msgSend_addObject_(v80, v68, v39);
          }
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v81, v91, 16);
      }

      while (v36);
    }

    v69 = v76;
    objc_sync_enter(v69);
    if (objc_msgSend_count(v80, v70, v71))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v72 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v88 = v80;
        v89 = 2112;
        v90 = v78;
        _os_log_impl(&dword_1883EA000, v72, OS_LOG_TYPE_DEFAULT, "Unblocking identities: %@ referenced by participant: %@", buf, 0x16u);
      }

      objc_msgSend_removeObjectsInArray_(*(&v76->super.super.isa + v75), v73, v80, v75);
    }

    objc_sync_exit(v69);
  }

  v74 = *MEMORY[0x1E69E9840];
}

- (int64_t)_indexForIdentity:(id)a3 matchingAnyInCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = objc_msgSend_userRecordID(v5, v7, v8);
  v58 = objc_msgSend_recordName(v9, v10, v11);

  v14 = objc_msgSend_lookupInfo(v5, v12, v13);
  v57 = objc_msgSend_emailAddress(v14, v15, v16);

  v19 = objc_msgSend_lookupInfo(v5, v17, v18);
  v56 = objc_msgSend_phoneNumber(v19, v20, v21);

  if (objc_msgSend_count(v6, v22, v23))
  {
    v55 = v5;
    v25 = 0;
    while (1)
    {
      v26 = objc_msgSend_objectAtIndexedSubscript_(v6, v24, v25, v55);
      if (objc_opt_respondsToSelector())
      {
        v29 = objc_msgSend_userIdentity(v26, v27, v28);
        v32 = objc_msgSend_userRecordID(v29, v30, v31);
        v35 = objc_msgSend_recordName(v32, v33, v34);

        v38 = objc_msgSend_lookupInfo(v29, v36, v37);
        v41 = objc_msgSend_emailAddress(v38, v39, v40);

        v44 = objc_msgSend_lookupInfo(v29, v42, v43);
        v47 = objc_msgSend_phoneNumber(v44, v45, v46);

        isEqualToString = 0;
        if (v58 && v35)
        {
          isEqualToString = objc_msgSend_isEqualToString_(v58, v48, v35);
        }

        v50 = 0;
        if (v57 && v41)
        {
          v50 = objc_msgSend_isEqualToString_(v57, v48, v41);
        }

        v51 = 0;
        if (v56 && v47)
        {
          v51 = objc_msgSend_isEqualToString_(v56, v48, v47);
        }
      }

      else
      {
        v50 = 0;
        v35 = 0;
        v47 = 0;
        v41 = 0;
        isEqualToString = 0;
        v51 = 0;
      }

      if ((isEqualToString & 1) != 0 || (v50 & 1) != 0 || v51)
      {
        break;
      }

      if (++v25 >= objc_msgSend_count(v6, v52, v53))
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        break;
      }
    }

    v5 = v55;
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v25;
}

- (id)_existingRequestersForUserIdentities:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = objc_msgSend__indexForIdentity_matchingAnyInCollection_(self, v9, *(*(&v19 + 1) + 8 * i), self->_mutableRequesters, v19);
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = objc_msgSend_objectAtIndexedSubscript_(self->_mutableRequesters, v9, v13);
          if ((objc_msgSend_containsObject_(v5, v15, v14) & 1) == 0)
          {
            objc_msgSend_addObject_(v5, v16, v14);
          }
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
    }

    while (v10);
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)blockUserIdentities:(id)a3
{
  v97 = *MEMORY[0x1E69E9840];
  v69 = a3;
  v9 = objc_msgSend_currentUserParticipant(self, v5, v6);
  if (v9 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v7, v8) & 1) == 0)
  {
    v63 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v63, v64, a2, self, @"CKShare.m", 745, @"Only owners and admins may block.");
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_188590FD0;
  aBlock[3] = &unk_1E70BE240;
  v65 = v9;
  v90 = v65;
  v91 = self;
  v71 = _Block_copy(aBlock);
  v12 = self;
  objc_sync_enter(v12);
  v67 = objc_opt_new();
  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v15 = objc_msgSend_participants(v12, v13, v14);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v85, v96, 16);
  obj = v15;
  if (v17)
  {
    v68 = *v86;
    do
    {
      v72 = 0;
      v70 = v17;
      do
      {
        if (*v86 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v85 + 1) + 8 * v72);
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        v19 = v69;
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v81, v95, 16, v65);
        if (v22)
        {
          v23 = *v82;
          while (2)
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v82 != v23)
              {
                objc_enumerationMutation(v19);
              }

              v25 = *(*(&v81 + 1) + 8 * i);
              v94 = v18;
              v26 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, &v94, 1);
              if (objc_msgSend__indexForIdentity_matchingAnyInCollection_(v12, v27, v25, v26) == 0x7FFFFFFFFFFFFFFFLL || (objc_msgSend_isCurrentUser(v18, v28, v29) & 1) != 0)
              {
              }

              else
              {
                v32 = objc_msgSend_role(v18, v30, v31) == 1;

                if (!v32)
                {
                  objc_msgSend_addObject_(v67, v21, v18);
                  goto LABEL_22;
                }
              }
            }

            v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v81, v95, 16);
            if (v22)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:

        ++v72;
      }

      while (v72 != v70);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v33, &v85, v96, 16);
    }

    while (v17);
  }

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v34 = v67;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v77, v93, 16);
  if (v37)
  {
    v38 = *v78;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v78 != v38)
        {
          objc_enumerationMutation(v34);
        }

        objc_msgSend_removeParticipant_(v12, v36, *(*(&v77 + 1) + 8 * j), v65);
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v77, v93, 16);
    }

    while (v37);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v40 = v69;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v41, &v73, v92, 16);
  if (v42)
  {
    v43 = *v74;
    do
    {
      for (k = 0; k != v42; ++k)
      {
        if (*v74 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v73 + 1) + 8 * k);
        if ((v71[2](v71, v45) & 1) == 0)
        {
          v47 = [CKShareBlockedIdentity alloc];
          v49 = objc_msgSend_initWithUserIdentity_(v47, v48, v45);
          v52 = objc_msgSend__indexForIdentity_matchingAnyInCollection_(v12, v50, v45, v12->_mutableBlockedIdentities);
          mutableBlockedIdentities = v12->_mutableBlockedIdentities;
          if (v52 == 0x7FFFFFFFFFFFFFFFLL)
          {
            if (!mutableBlockedIdentities)
            {
              v54 = objc_opt_new();
              v55 = v12->_mutableBlockedIdentities;
              v12->_mutableBlockedIdentities = v54;

              mutableBlockedIdentities = v12->_mutableBlockedIdentities;
            }

            objc_msgSend_addObject_(mutableBlockedIdentities, v51, v49, v65);
          }

          else
          {
            objc_msgSend_replaceObjectAtIndex_withObject_(mutableBlockedIdentities, v51, v52, v49);
          }
        }
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v40, v46, &v73, v92, 16);
    }

    while (v42);
  }

  v58 = objc_msgSend_copy(v40, v56, v57);
  v60 = objc_msgSend__existingRequestersForUserIdentities_(v12, v59, v58);

  objc_msgSend_removeObjectsInArray_(v12->_mutableRequesters, v61, v60);
  objc_sync_exit(v12);

  v62 = *MEMORY[0x1E69E9840];
}

- (void)blockRequesters:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    do
    {
      v13 = 0;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_userIdentity(*(*(&v21 + 1) + 8 * v13), v9, v10, v21);
        objc_msgSend_addObject_(v5, v15, v14);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
    }

    while (v11);
  }

  v18 = objc_msgSend_copy(v5, v16, v17);
  objc_msgSend_blockUserIdentities_(self, v19, v18);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)blockUserIdentityLookupInfos:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = objc_msgSend_copy(v4, v6, v7);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v27, v31, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      v13 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v27 + 1) + 8 * v13);
        v15 = [CKUserIdentity alloc];
        inited = objc_msgSend_initInternal(v15, v16, v17, v27);
        objc_msgSend_setLookupInfo_(inited, v19, v14);
        objc_msgSend_addObject_(v5, v20, inited);

        ++v13;
      }

      while (v11 != v13);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v21, &v27, v31, 16);
    }

    while (v11);
  }

  v24 = objc_msgSend_copy(v5, v22, v23);
  objc_msgSend_blockUserIdentities_(self, v25, v24);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)unblockIdentities:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v29 = a3;
  v28 = objc_msgSend_currentUserParticipant(self, v5, v6);
  v9 = v28;
  if (v28 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v7, v8) & 1) == 0)
  {
    v26 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v26, v27, a2, self, @"CKShare.m", 828, @"Only owners and admins may unblock users");

    v9 = v28;
  }

  if (v29 && objc_msgSend_count(v29, v7, v8))
  {
    v31 = self;
    objc_sync_enter(v31);
    v10 = objc_opt_new();
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = v29;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v36, v41, 16);
    if (v12)
    {
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v16 = v31->_mutableBlockedIdentities;
          v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v32, v40, 16);
          if (v19)
          {
            v20 = *v33;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v33 != v20)
                {
                  objc_enumerationMutation(v16);
                }

                v22 = *(*(&v32 + 1) + 8 * j);
                if (objc_msgSend_isEqual_(v15, v18, v22, v28))
                {
                  objc_msgSend_addObject_(v10, v18, v22);
                }
              }

              v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v32, v40, 16);
            }

            while (v19);
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v36, v41, 16);
      }

      while (v12);
    }

    objc_msgSend_removeObjectsInArray_(v31->_mutableBlockedIdentities, v24, v10);
    objc_sync_exit(v31);

    v9 = v28;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_setAccessRequestsEnabledNoSideEffects:(BOOL)a3
{
  obj = self;
  objc_sync_enter(obj);
  obj->_accessRequestsEnabled = a3;
  objc_sync_exit(obj);
}

- (BOOL)accessRequestsEnabled
{
  v2 = self;
  objc_sync_enter(v2);
  accessRequestsEnabled = v2->_accessRequestsEnabled;
  objc_sync_exit(v2);

  return accessRequestsEnabled;
}

- (void)clearModifiedParticipants
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v3 = ck_log_facility_ck;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v17 = objc_msgSend_recordID(v2, v4, v5);
    v18 = 138412290;
    v19 = v17;
    _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "Clearing modified participants on share %@", &v18, 0xCu);
  }

  v8 = objc_msgSend_addedParticipantIDs(v2, v6, v7);
  objc_msgSend_removeAllObjects(v8, v9, v10);

  v13 = objc_msgSend_removedParticipantIDs(v2, v11, v12);
  objc_msgSend_removeAllObjects(v13, v14, v15);

  objc_sync_exit(v2);
  v16 = *MEMORY[0x1E69E9840];
}

- (NSArray)invitedKeysToRemove
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_invitedKeysToRemove;
  objc_sync_exit(v2);

  return v3;
}

- (void)setInvitedKeysToRemove:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_CKDeepCopy(v9, v5, v6);
  invitedKeysToRemove = v4->_invitedKeysToRemove;
  v4->_invitedKeysToRemove = v7;

  objc_sync_exit(v4);
}

- (CKShareParticipant)owner
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = self;
  objc_sync_enter(v3);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = objc_msgSend_mutableAllParticipants(v3, v4, v5, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v10)
  {
    v11 = *v22;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      if (objc_msgSend_role(v13, v8, v9) == 1)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v21, v25, 16);
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v18 = v13;

    if (!v18)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_9:

LABEL_10:
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, v3, @"CKShare.m", 916, @"You should never have a share without an owner");

    v18 = 0;
  }

  objc_sync_exit(v3);

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_knownParticipantWithParticipantID:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = objc_msgSend_participants(self, v5, v6, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v20, v24, 16);
  if (v11)
  {
    v12 = *v21;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = objc_msgSend_participantID(v14, v9, v10);
        isEqualToString = objc_msgSend_isEqualToString_(v4, v16, v15);

        if (isEqualToString)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v20, v24, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)_knownParticipantEqualToParticipant:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_participants(self, v5, v6);
  v9 = objc_msgSend__knownParticipantEqualToParticipant_inParticipants_(self, v8, v4, v7);

  return v9;
}

- (id)_knownParticipantEqualToParticipant:(id)a3 inParticipants:(id)a4
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v55 = 0;
    v56 = &v55;
    v57 = 0x3032000000;
    v58 = sub_1883ED8C0;
    v59 = sub_1883EF5B4;
    v60 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = sub_1883ED8C0;
    v53 = sub_1883EF5B4;
    v54 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_188592330;
    aBlock[3] = &unk_1E70BE290;
    v47 = &v49;
    v40 = v5;
    v46 = v40;
    v48 = &v55;
    v8 = _Block_copy(aBlock);
    v8[2](v8, &unk_1EFA2F008);
    v9 = v56[5];
    if (v9)
    {
      goto LABEL_8;
    }

    v8[2](v8, &unk_1EFA2F028);
    v9 = v56[5];
    if (v9)
    {
      goto LABEL_8;
    }

    v12 = objc_msgSend_userIdentity(v40, v10, v11);
    v15 = objc_msgSend_publicSharingKey(v12, v13, v14);

    if (v15)
    {
      v8[2](v8, &unk_1EFA2F048);
    }

    v9 = v56[5];
    if (v9 || (v8[2](v8, &unk_1EFA2F068), (v9 = v56[5]) != 0))
    {
LABEL_8:
      v16 = v9;
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v50[5];
      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v41, v61, 16);
      if (v20)
      {
        v39 = *v42;
        while (2)
        {
          v38 = v20;
          for (i = 0; i != v38; ++i)
          {
            if (*v42 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v41 + 1) + 8 * i);
            v25 = objc_msgSend_userIdentity(v40, v21, v22);
            v28 = objc_msgSend_lookupInfo(v25, v26, v27);
            v31 = objc_msgSend_userIdentity(v24, v29, v30);
            v34 = objc_msgSend_lookupInfo(v31, v32, v33);
            isEqual = objc_msgSend_isEqual_(v28, v35, v34);

            if (isEqual)
            {
              v16 = v24;

              goto LABEL_9;
            }
          }

          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v41, v61, 16);
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      v16 = 0;
    }

LABEL_9:

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v55, 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)addParticipant:(CKShareParticipant *)participant
{
  v7 = participant;
  if (!v7)
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CKShare.m", 1002, @"You cannot add a nil participant");
  }

  if (objc_msgSend_role(v7, v5, v6) != 3 && objc_msgSend_role(v7, v8, v9) != 2)
  {
    v10 = objc_msgSend_role(v7, v8, v9);
    v11 = @"You can only add PrivateUsers as participants on a share";
    if (v10 == 1)
    {
      v11 = @"You can have only one owner on a share";
    }

    v12 = MEMORY[0x1E696AAA8];
    v13 = v11;
    v16 = objc_msgSend_currentHandler(v12, v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CKShare.m", 1010, v13);
  }

  v20 = objc_msgSend_currentUserParticipant(self, v8, v9);
  if (v20 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v18, v19) & 1) == 0)
  {
    v34 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v18, v19);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CKShare.m", 1015, @"Only owners may add participants to a share");
  }

  if (!objc_msgSend_usesOneTimeURL(v7, v18, v19) || !CKCurrentProcessLinkCheck168f06831e5b4d3ab6cc64d69a8cc447())
  {
    goto LABEL_15;
  }

  v23 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v21, v22);
  v26 = objc_msgSend_untrustedEntitlements(v23, v24, v25);

  v63 = 0;
  v27 = CKCanUseOneTimeLinksWithEntitlements(v26, 0, &v63);
  v28 = v63;
  v31 = v28;
  if (v27)
  {

LABEL_15:
    objc_msgSend__addParticipantBypassingChecks_(self, v21, v7);

    return;
  }

  v36 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v29, v30);
  v37 = [CKSignificantIssue alloc];
  v38 = [CKSourceCodeLocation alloc];
  v40 = objc_msgSend_initWithFilePath_lineNumber_(v38, v39, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/CKItems/CKShare.m", 1024);
  v43 = objc_msgSend_localizedDescription(v31, v41, v42);
  v44 = v43;
  v47 = objc_msgSend_UTF8String(v44, v45, v46);
  v49 = objc_msgSend_initWithSourceCodeLocation_format_(v37, v48, v40, @"%s", v47);
  objc_msgSend_handleSignificantIssue_actions_(v36, v50, v49, 0);

  v51 = MEMORY[0x1E696AEC0];
  v54 = objc_msgSend_localizedDescription(v31, v52, v53);
  v55 = v54;
  v58 = objc_msgSend_UTF8String(v55, v56, v57);
  v60 = objc_msgSend_stringWithFormat_(v51, v59, @"%s", v58);

  objc_msgSend_UTF8String(v60, v61, v62);
  _os_crash();
  __break(1u);
}

- (void)_addParticipantBypassingChecks:(id)a3
{
  v92 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v4)
  {
    v7 = objc_msgSend__knownParticipantEqualToParticipant_(v5, v6, v4);
    v10 = v7;
    if (v7)
    {
      if (objc_msgSend_acceptanceStatus(v7, v8, v9) != 2 && objc_msgSend_role(v10, v11, v12) != 1)
      {
        v15 = objc_msgSend_role(v4, v13, v14);
        objc_msgSend_setRole_(v10, v16, v15);
        v19 = objc_msgSend_permission(v4, v17, v18);
        objc_msgSend_setPermission_(v10, v20, v19);
      }
    }

    else
    {
      v86 = objc_msgSend_recordID(v5, v8, v9);
      v25 = objc_msgSend_shareID(v4, v21, v22);
      if (v25)
      {
        v26 = objc_msgSend_shareID(v4, v23, v24);
        isEqual = objc_msgSend_isEqual_(v26, v27, v86);

        if ((isEqual & 1) == 0)
        {
          v83 = [CKException alloc];
          v85 = objc_msgSend_initWithCode_format_(v83, v84, 12, @"You can't move participants between shares. Create a new participant to add to this share");
          objc_exception_throw(v85);
        }
      }

      objc_msgSend_setShareID_(v4, v23, v86);
      objc_msgSend__unblockIdentitiesReferencedByParticipant_(v5, v29, v4);
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v32 = objc_msgSend_copy(v5->_mutableRequesters, v30, v31);
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v87, v91, 16);
      if (v36)
      {
        v37 = *v88;
        while (2)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v88 != v37)
            {
              objc_enumerationMutation(v32);
            }

            v39 = *(*(&v87 + 1) + 8 * i);
            v40 = objc_msgSend_userIdentity(v4, v34, v35);
            v43 = objc_msgSend_lookupInfo(v40, v41, v42);

            v46 = objc_msgSend_participantLookupInfo(v39, v44, v45);
            if (objc_msgSend_isEqual_(v43, v47, v46))
            {
              objc_msgSend_setIsApprovedRequester_(v4, v48, 1);
              objc_msgSend_removeObject_(v5->_mutableRequesters, v49, v39);
              objc_msgSend_addObject_(v5->_mutableApprovedRequesters, v50, v39);

              goto LABEL_18;
            }
          }

          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v87, v91, 16);
          if (v36)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:

      v53 = objc_msgSend_removedParticipantIDs(v5, v51, v52);
      v56 = objc_msgSend_participantID(v4, v54, v55);
      v58 = objc_msgSend_containsObject_(v53, v57, v56);

      if (v58)
      {
        v61 = objc_msgSend_mutableAllParticipants(v5, v59, v60);
        v63 = objc_msgSend__knownParticipantEqualToParticipant_inParticipants_(v5, v62, v4, v61);

        if (v63)
        {
          v66 = objc_msgSend_mutableAllParticipants(v5, v64, v65);
          objc_msgSend_removeObject_(v66, v67, v63);
        }

        v68 = objc_msgSend_removedParticipantIDs(v5, v64, v65);
        v71 = objc_msgSend_participantID(v4, v69, v70);
        objc_msgSend_removeObject_(v68, v72, v71);
      }

      v73 = objc_msgSend_mutableAllParticipants(v5, v59, v60);
      objc_msgSend_addObject_(v73, v74, v4);

      v77 = objc_msgSend_addedParticipantIDs(v5, v75, v76);
      v80 = objc_msgSend_participantID(v4, v78, v79);
      objc_msgSend_addObject_(v77, v81, v80);
    }
  }

  objc_sync_exit(v5);

  v82 = *MEMORY[0x1E69E9840];
}

- (void)removeParticipant:(CKShareParticipant *)participant
{
  v5 = participant;
  if (v5)
  {
    v39 = v5;
    v8 = objc_msgSend_shareID(v5, v6, v7);
    if (!v8)
    {
      goto LABEL_4;
    }

    v11 = v8;
    v12 = objc_msgSend_shareID(v39, v9, v10);
    v15 = objc_msgSend_recordID(self, v13, v14);
    isEqual = objc_msgSend_isEqual_(v12, v16, v15);

    if ((isEqual & 1) == 0)
    {
      v32 = [CKException alloc];
      v34 = objc_msgSend_initWithCode_format_(v32, v33, 12, @"You can't move participants between shares. Create a new participant to add to this share");
    }

    else
    {
LABEL_4:
      v18 = objc_msgSend__knownParticipantEqualToParticipant_(self, v9, v39);
      v21 = v18;
      if (!v18)
      {
LABEL_11:

        v5 = v39;
        goto LABEL_12;
      }

      if (objc_msgSend_role(v18, v19, v20) == 1)
      {
        v35 = [CKException alloc];
        v34 = objc_msgSend_initWithCode_format_(v35, v36, 12, @"You cannot remove the owner from a share");
      }

      else
      {
        if (!objc_msgSend_isCurrentUser(v21, v22, v23))
        {
          v28 = objc_msgSend_currentUserParticipant(self, v24, v25);
          if (v28 && (objc_msgSend_isCurrentUserOwnerOrAdmin(self, v26, v27) & 1) == 0)
          {
            v30 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v26, v29);
            objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v30, v31, a2, self, @"CKShare.m", 1103, @"Only owners may remove participants from a share");
          }

          objc_msgSend__removeParticipantBypassingChecks_(self, v26, v39);

          goto LABEL_11;
        }

        v37 = [CKException alloc];
        v34 = objc_msgSend_initWithCode_format_(v37, v38, 12, @"You cannot remove yourself as a participant on the share.  Delete the share instead if you want out.");
      }
    }

    objc_exception_throw(v34);
  }

LABEL_12:
}

- (void)_removeParticipantBypassingChecks:(id)a3
{
  v31 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v6 = objc_msgSend__knownParticipantEqualToParticipant_(v4, v5, v31);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_setShareID_(v6, v7, 0);
    v11 = objc_msgSend_addedParticipantIDs(v4, v9, v10);
    v14 = objc_msgSend_participantID(v8, v12, v13);
    v16 = objc_msgSend_containsObject_(v11, v15, v14);

    if (v16)
    {
      v19 = objc_msgSend_mutableAllParticipants(v4, v17, v18);
      objc_msgSend_removeObject_(v19, v20, v8);

      v23 = objc_msgSend_addedParticipantIDs(v4, v21, v22);
      v26 = objc_msgSend_participantID(v8, v24, v25);
      objc_msgSend_removeObject_(v23, v27, v26);
    }

    else
    {
      v23 = objc_msgSend_removedParticipantIDs(v4, v17, v18);
      v26 = objc_msgSend_participantID(v8, v28, v29);
      objc_msgSend_addObject_(v23, v30, v26);
    }
  }

  objc_sync_exit(v4);
}

- (id)addedParticipants
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_mutableAllParticipants(v2, v3, v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_188593170;
  v9[3] = &unk_1E70BE1A0;
  v9[4] = v2;
  v7 = objc_msgSend_CKFilter_(v5, v6, v9);

  objc_sync_exit(v2);

  return v7;
}

- (id)removedParticipants
{
  v2 = self;
  objc_sync_enter(v2);
  v5 = objc_msgSend_mutableAllParticipants(v2, v3, v4);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1885932B8;
  v9[3] = &unk_1E70BE1A0;
  v9[4] = v2;
  v7 = objc_msgSend_CKFilter_(v5, v6, v9);

  objc_sync_exit(v2);

  return v7;
}

- (CKShareParticipant)currentUserParticipant
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = objc_msgSend_mutableAllParticipants(v2, v3, v4, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_isCurrentUser(v12, v7, v8))
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v15, v19, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v2);
  v13 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)_participantArray:(id)a3 containsEquivalentWithPermissionsParticipant:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v22, v26, 16);
  if (v10)
  {
    v11 = *v23;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        if (objc_msgSend_isEqual_(v13, v9, v6, v22) && (v16 = objc_msgSend_acceptanceStatus(v13, v14, v15), v16 == objc_msgSend_acceptanceStatus(v6, v17, v18)) || objc_msgSend_role(v6, v14, v15) == 1 && objc_msgSend_role(v13, v9, v19) == 1)
        {
          LOBYTE(v10) = 1;
          goto LABEL_14;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v22, v26, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_participantArray:(id)a3 isEquivalentToArray:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_count(v6, v8, v9);
  if (v10 == objc_msgSend_count(v7, v11, v12))
  {
    if (objc_msgSend_count(v6, v13, v14))
    {
      v16 = 0;
      do
      {
        v17 = objc_msgSend_objectAtIndexedSubscript_(v6, v15, v16);
        v19 = objc_msgSend__participantArray_containsEquivalentWithPermissionsParticipant_(self, v18, v7, v17);

        if ((v19 & 1) == 0)
        {
          break;
        }

        ++v16;
      }

      while (v16 < objc_msgSend_count(v6, v20, v21));
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)resetFetchedParticipants
{
  obj = self;
  objc_sync_enter(obj);
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], v2, v3);
  objc_msgSend_setLastFetchedParticipants_(obj, v5, v4);

  objc_sync_exit(obj);
}

- (void)registerFetchedParticipant:(id)a3
{
  v12 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_lastFetchedParticipants(v4, v5, v6);
  v10 = objc_msgSend_copy(v12, v8, v9);
  objc_msgSend_addObject_(v7, v11, v10);

  objc_sync_exit(v4);
}

- (id)updateFromServerShare:(id)a3
{
  v147 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v8 = objc_msgSend_lastFetchedParticipants(v5, v6, v7);
  v11 = objc_msgSend_participants(v5, v9, v10);
  v14 = objc_msgSend_participants(v4, v12, v13);
  isEquivalentToArray = objc_msgSend__participantArray_isEquivalentToArray_(v5, v15, v14, v8);
  v18 = objc_msgSend__participantArray_isEquivalentToArray_(v5, v17, v11, v8);
  v20 = objc_msgSend__participantArray_isEquivalentToArray_(v5, v19, v11, v14);

  objc_sync_exit(v5);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v21 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    v122 = MEMORY[0x1E696AD98];
    v123 = v21;
    v125 = objc_msgSend_numberWithBool_(v122, v124, v18 ^ 1u);
    v127 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v126, isEquivalentToArray ^ 1u);
    *buf = 138412546;
    v144 = v125;
    v145 = 2112;
    v146 = v127;
    _os_log_debug_impl(&dword_1883EA000, v123, OS_LOG_TYPE_DEBUG, "Updating local share from a remote share, client participants changed: %@, server participants changed: %@", buf, 0x16u);
  }

  if ((isEquivalentToArray & 1) == 0)
  {
    if (((v18 | v20) & 1) == 0)
    {
      v105 = objc_opt_new();
      v108 = v4;
      v109 = v5;
      v114 = objc_msgSend_copyWithOriginalValues(v109, v110, v111);
      if (v114)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v105, v112, v114, @"AncestorRecord");
      }

      if (v108)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v105, v112, v108, @"ServerRecord");
      }

      if (v109)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v105, v112, v109, @"ClientRecord");
      }

      v115 = objc_msgSend_participants(v109, v112, v113);
      v118 = objc_msgSend_participants(v108, v116, v117);
      v107 = objc_msgSend_errorWithDomain_code_userInfo_format_(CKPrettyError, v119, @"CKInternalErrorDomain", 1022, v105, @"Participants conflict while trying to update share from the server. Participants:\n=== Client: %@\n=== Server: %@", v115, v118);

      goto LABEL_51;
    }

    v24 = objc_msgSend_addedParticipants(v5, v22, v23);
    v27 = objc_msgSend_removedParticipants(v5, v25, v26);
    v28 = v5;
    objc_sync_enter(v28);
    v31 = objc_msgSend_participants(v4, v29, v30);
    v33 = v31;
    v34 = MEMORY[0x1E695E0F0];
    if (v31)
    {
      objc_msgSend_setAllParticipants_(v28, v32, v31);
    }

    else
    {
      objc_msgSend_setAllParticipants_(v28, v32, MEMORY[0x1E695E0F0]);
    }

    objc_msgSend_resetFetchedParticipants(v28, v35, v36);
    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v39 = objc_msgSend_mutableAllParticipants(v28, v37, v38);
    v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v136, v142, 16);
    if (v42)
    {
      v43 = *v137;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v137 != v43)
          {
            objc_enumerationMutation(v39);
          }

          objc_msgSend_registerFetchedParticipant_(v28, v41, *(*(&v136 + 1) + 8 * i));
        }

        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v136, v142, 16);
      }

      while (v42);
    }

    v47 = objc_msgSend_requesters(v4, v45, v46);
    v49 = v47;
    if (v47)
    {
      objc_msgSend_setRequesters_(v28, v48, v47);
    }

    else
    {
      objc_msgSend_setRequesters_(v28, v48, v34);
    }

    v52 = objc_msgSend_approvedRequesters(v4, v50, v51);
    v54 = v52;
    if (v52)
    {
      objc_msgSend_setApprovedRequesters_(v28, v53, v52);
    }

    else
    {
      objc_msgSend_setApprovedRequesters_(v28, v53, v34);
    }

    v57 = objc_msgSend_blockedIdentities(v4, v55, v56);
    v59 = v57;
    if (v57)
    {
      objc_msgSend_setBlockedIdentities_(v28, v58, v57);
    }

    else
    {
      objc_msgSend_setBlockedIdentities_(v28, v58, v34);
    }

    objc_sync_exit(v28);
    objc_msgSend_clearModifiedParticipants(v28, v60, v61);
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v62 = v24;
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v63, &v132, v141, 16);
    if (v65)
    {
      v66 = *v133;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v133 != v66)
          {
            objc_enumerationMutation(v62);
          }

          objc_msgSend__addParticipantBypassingChecks_(v28, v64, *(*(&v132 + 1) + 8 * j));
        }

        v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v62, v64, &v132, v141, 16);
      }

      while (v65);
    }

    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v68 = v27;
    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v69, &v128, v140, 16);
    if (v71)
    {
      v72 = *v129;
      do
      {
        for (k = 0; k != v71; ++k)
        {
          if (*v129 != v72)
          {
            objc_enumerationMutation(v68);
          }

          objc_msgSend__removeParticipantBypassingChecks_(v28, v70, *(*(&v128 + 1) + 8 * k));
        }

        v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v68, v70, &v128, v140, 16);
      }

      while (v71);
    }
  }

  v74 = objc_msgSend_accessRequestsEnabled(v4, v22, v23);
  objc_msgSend__setAccessRequestsEnabledNoSideEffects_(v5, v75, v74);
  v78 = objc_msgSend_invitedProtectionData(v4, v76, v77);
  objc_msgSend_setInvitedProtectionData_(v5, v79, v78);

  v82 = objc_msgSend_invitedProtectionEtag(v4, v80, v81);
  objc_msgSend_setInvitedProtectionEtag_(v5, v83, v82);

  v86 = objc_msgSend_publicProtectionData(v4, v84, v85);
  objc_msgSend_setPublicProtectionData_(v5, v87, v86);

  v90 = objc_msgSend_publicProtectionEtag(v4, v88, v89);
  objc_msgSend_setPublicProtectionEtag_(v5, v91, v90);

  v94 = objc_msgSend_etag(v4, v92, v93);
  objc_msgSend_setEtag_(v5, v95, v94);

  v98 = objc_msgSend_routingKey(v4, v96, v97);
  objc_msgSend_setRoutingKey_(v5, v99, v98);

  v102 = objc_msgSend_displayedHostname(v4, v100, v101);

  if (!v102)
  {
    v107 = 0;
    goto LABEL_52;
  }

  v105 = objc_msgSend_displayedHostname(v4, v103, v104);
  objc_msgSend_setDisplayedHostname_(v5, v106, v105);
  v107 = 0;
LABEL_51:

LABEL_52:
  v120 = *MEMORY[0x1E69E9840];

  return v107;
}

- (void)_addParticipantEmails:(id)a3 phoneNumbers:(id)a4 asReadWrite:(BOOL)a5 inContainer:(id)a6 completionHandler:(id)a7
{
  v48 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  v14 = a4;
  v16 = objc_msgSend_lookupInfosWithEmails_(CKUserIdentityLookupInfo, v15, a3);
  v17 = v16;
  v18 = MEMORY[0x1E695E0F0];
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
  }

  v20 = v19;

  v22 = objc_msgSend_lookupInfosWithPhoneNumbers_(CKUserIdentityLookupInfo, v21, v14);

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v18;
  }

  v24 = v23;

  v26 = objc_msgSend_arrayByAddingObjectsFromArray_(v20, v25, v24);

  v27 = [CKFetchShareParticipantsOperation alloc];
  v29 = objc_msgSend_initWithUserIdentityLookupInfos_(v27, v28, v26);
  v32 = objc_msgSend_resolvedConfiguration(v29, v30, v31);
  objc_msgSend_setRequestOriginator_(v32, v33, 5);

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = sub_188594490;
  v44[3] = &unk_1E70BE2D8;
  v45 = a5;
  v44[4] = self;
  objc_msgSend_setPerShareParticipantCompletionBlock_(v29, v34, v44);
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v35 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v47 = v26;
    _os_log_debug_impl(&dword_1883EA000, v35, OS_LOG_TYPE_DEBUG, "Fetching share participants for UI: %@", buf, 0xCu);
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_188594500;
  v41[3] = &unk_1E70BE300;
  v42 = v12;
  v43 = v13;
  v41[4] = self;
  v36 = v12;
  v37 = v13;
  objc_msgSend_setFetchShareParticipantsCompletionBlock_(v29, v38, v41);
  objc_msgSend_addOperation_(v36, v39, v29);

  v40 = *MEMORY[0x1E69E9840];
}

- (void)setWantsPublicSharingKey:(BOOL)a3
{
  v3 = [CKException alloc];
  v5 = objc_msgSend_initWithCode_format_(v3, v4, 12, @"Cannot set this property on CKShare");
  objc_exception_throw(v5);
}

- (NSData)publicSharingIdentity
{
  v3 = objc_msgSend_mutableEncryptedPSK(self, a2, v2);
  v6 = objc_msgSend_data(v3, v4, v5);

  return v6;
}

- (void)setPublicSharingIdentity:(id)a3
{
  v17 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v7 = objc_msgSend_mutableEncryptedPSK(v4, v5, v6);
  v10 = objc_msgSend_data(v7, v8, v9);

  if (v10 != v17)
  {
    if (v17)
    {
      v12 = [CKEncryptedData alloc];
      v14 = objc_msgSend_initWithData_(v12, v13, v17);
      objc_msgSend_setMutableEncryptedPSK_(v4, v15, v14);
    }

    else
    {
      objc_msgSend_setMutableEncryptedPSK_(v4, v11, 0);
    }

    objc_msgSend_setMutableURL_(v4, v16, 0);
  }

  objc_sync_exit(v4);
}

- (id)oneTimeURLForParticipantID:(id)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v14 = 0;
    goto LABEL_27;
  }

  v6 = objc_msgSend__knownParticipantWithParticipantID_(self, v4, v5);
  v9 = v6;
  if (!v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v69) = 0;
    v13 = "You cannot get a one-time URL for a participant that isn't on the share";
    goto LABEL_24;
  }

  if (objc_msgSend_role(v6, v7, v8) == 1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    LOWORD(v69) = 0;
    v13 = "You cannot get a one-time URL for an owner participant";
    goto LABEL_24;
  }

  v15 = objc_msgSend_mutableEncryptedPSK(self, v10, v11);
  v18 = objc_msgSend_data(v15, v16, v17);
  if (v18)
  {
    v21 = v18;
    v22 = objc_msgSend_routingKey(self, v19, v20);
    v25 = objc_msgSend_length(v22, v23, v24);

    if (v25)
    {
      v28 = objc_msgSend_oneTimeURLMetadatasByParticipantID(self, v26, v27);
      v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, v5);

      if (v30 && (objc_msgSend_encryptedOneTimeFullToken(v30, v31, v32), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend_data(v33, v34, v35), v36 = objc_claimAutoreleasedReturnValue(), v36, v33, v36))
      {
        v39 = objc_msgSend_routingKey(self, v37, v38);
        v41 = objc_msgSend_oneTimeShortTokenWithRoutingKey_(v30, v40, v39);
        v44 = objc_msgSend_CKSafeStringForURLPathComponent(v41, v42, v43);

        if (v44)
        {
          v45 = objc_opt_class();
          v47 = objc_msgSend_objectForKeyedSubscript_(self, v46, @"cloudkit.title");
          v49 = objc_msgSend_objectForKeyedSubscript_(self, v48, @"cloudkit.type");
          v52 = objc_msgSend_containerID(self, v50, v51);
          v55 = objc_msgSend_displayedHostname(self, v53, v54);
          v14 = objc_msgSend_shareURLWithShortToken_shareTitle_shareType_containerID_displayedHostname_(v45, v56, v44, v47, v49, v52, v55);
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v60 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
          {
            v65 = v60;
            v68 = objc_msgSend_recordID(self, v66, v67);
            v69 = 138412546;
            v70 = v5;
            v71 = 2112;
            v72 = v68;
            _os_log_error_impl(&dword_1883EA000, v65, OS_LOG_TYPE_ERROR, "Failed to get the one-time short token for participant %@ on %@", &v69, 0x16u);
          }

          v14 = 0;
        }
      }

      else
      {
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v59 = ck_log_facility_ck;
        if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
        {
          v61 = v59;
          v64 = objc_msgSend_recordID(self, v62, v63);
          v69 = 138412546;
          v70 = v5;
          v71 = 2112;
          v72 = v64;
          _os_log_error_impl(&dword_1883EA000, v61, OS_LOG_TYPE_ERROR, "Failed to get the one-time URL metadata for %@ on record %@", &v69, 0x16u);
        }

        v14 = 0;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v12 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v69) = 0;
    v13 = "You cannot get a one-time URL for a participant until the share it's been saved to the server";
LABEL_24:
    _os_log_error_impl(&dword_1883EA000, v12, OS_LOG_TYPE_ERROR, v13, &v69, 2u);
  }

LABEL_25:
  v14 = 0;
LABEL_26:

LABEL_27:
  v57 = *MEMORY[0x1E69E9840];

  return v14;
}

- (int64_t)participantVisibility
{
  v2 = self;
  objc_sync_enter(v2);
  participantVisibility = v2->_participantVisibility;
  objc_sync_exit(v2);

  return participantVisibility;
}

- (void)setParticipantVisibility:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v7 = obj;
  if (obj->_participantVisibility != a3)
  {
    v8 = objc_msgSend_publicPermission(obj, v5, v6);
    if (a3 == 1)
    {
      if (v8 == 1)
      {
LABEL_7:
        v7 = obj;
        obj->_participantVisibility = a3;
        goto LABEL_8;
      }

      v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v13, a2, obj, @"CKShare.m", 1445, @"Cannot set %@ on a share with publicPermission != CKShareParticipantPermissionNone", @"ReadOnlyParticipantsSeeSelfAndOwner");
    }

    else
    {
      if (a3 != 3 || v8 != 1)
      {
        goto LABEL_7;
      }

      v11 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v11, v12, a2, obj, @"CKShare.m", 1448, @"Cannot set %@ on a share with publicPermission == CKShareParticipantPermissionNone", @"OwnerSeesSelfAndParticipantsSeeSelfAndOwner");
    }

    goto LABEL_7;
  }

LABEL_8:
  objc_sync_exit(v7);
}

- (int64_t)participantSelfRemovalBehavior
{
  v2 = self;
  objc_sync_enter(v2);
  participantSelfRemovalBehavior = v2->_participantSelfRemovalBehavior;
  objc_sync_exit(v2);

  return participantSelfRemovalBehavior;
}

- (void)setParticipantSelfRemovalBehavior:(int64_t)a3
{
  obj = self;
  objc_sync_enter(obj);
  v9 = objc_msgSend_currentUserParticipant(obj, v5, v6);
  if (v9 && (objc_msgSend_isCurrentUserOwnerOrAdmin(obj, v7, v8) & 1) == 0)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, obj, @"CKShare.m", 1470, @"Only owners may set the participant self removal behavior of a share");
  }

  if (obj->_participantSelfRemovalBehavior != a3)
  {
    obj->_participantSelfRemovalBehavior = a3;
  }

  objc_sync_exit(obj);
}

- (BOOL)allNonOwnerParticipantsHavePermission:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_participants(self, a2, a3);
  if (objc_msgSend_count(v4, v5, v6) >= 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if (objc_msgSend_role(v16, v11, v12, v19) != 1 && objc_msgSend_permission(v16, v11, v12) != a3)
          {
            v7 = 0;
            goto LABEL_14;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v23, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)allNonOwnerParticipantsHaveRole:(int64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_participants(self, a2, a3);
  if (objc_msgSend_count(v4, v5, v6) >= 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v4;
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
    if (v10)
    {
      v13 = v10;
      v14 = *v20;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if (objc_msgSend_role(v16, v11, v12, v19) != 1 && objc_msgSend_role(v16, v11, v12) != a3)
          {
            v7 = 0;
            goto LABEL_14;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v19, v23, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_14:
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)encodeSystemFieldsWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_autoreleasePoolPush();
  if ((byte_1EA90C538 & 1) == 0 && (objc_msgSend_serializePersonalInfo(self, v5, v6) & 1) == 0)
  {
    v10 = objc_msgSend_serializeOwnerInfo(self, v8, v9);
    objc_msgSend__stripPersonalInfoAndSerializeOwnerInfo_(self, v11, v10);
  }

  v103.receiver = self;
  v103.super_class = CKShare;
  [(CKRecord *)&v103 encodeSystemFieldsWithCoder:v4];
  v14 = objc_msgSend_containerID(self, v12, v13);
  objc_msgSend_encodeObject_forKey_(v4, v15, v14, @"ContainerID");

  v18 = objc_msgSend_rootRecordID(self, v16, v17);
  objc_msgSend_encodeObject_forKey_(v4, v19, v18, @"RootRecordID");

  v22 = objc_msgSend_publicPermission(self, v20, v21);
  objc_msgSend_encodeInteger_forKey_(v4, v23, v22, @"PublicPermission");
  LODWORD(v18) = objc_msgSend_encodeAllowsReadOnlyParticipantsToSeeEachOther(self, v24, v25);
  v28 = objc_msgSend_participantVisibility(self, v26, v27);
  if (v18)
  {
    objc_msgSend_encodeBool_forKey_(v4, v29, v28 == 0, @"AllowsReadOnlyParticipantsToSeeEachOther");
  }

  else
  {
    objc_msgSend_encodeInteger_forKey_(v4, v29, v28, @"ParticipantVisibility");
  }

  v32 = objc_msgSend_participantSelfRemovalBehavior(self, v30, v31);
  objc_msgSend_encodeInteger_forKey_(v4, v33, v32, @"ParticipantSelfRemovalBehavior");
  v36 = objc_msgSend_allowsAnonymousPublicAccess(self, v34, v35);
  objc_msgSend_encodeBool_forKey_(v4, v37, v36, @"AllowsAnonymousAccess");
  v38 = self;
  objc_sync_enter(v38);
  v41 = objc_msgSend_mutableAllParticipants(v38, v39, v40);
  objc_msgSend_encodeObject_forKey_(v4, v42, v41, @"Participants");

  v45 = objc_msgSend_lastFetchedParticipants(v38, v43, v44);
  objc_msgSend_encodeObject_forKey_(v4, v46, v45, @"LastFetchedParticipants");

  v49 = objc_msgSend_addedParticipantIDs(v38, v47, v48);
  objc_msgSend_encodeObject_forKey_(v4, v50, v49, @"AddedParticipantIDs");

  v53 = objc_msgSend_removedParticipantIDs(v38, v51, v52);
  objc_msgSend_encodeObject_forKey_(v4, v54, v53, @"RemovedParticipantIDs");

  v57 = objc_msgSend_mutableRequesters(v38, v55, v56);
  objc_msgSend_encodeObject_forKey_(v4, v58, v57, @"Requesters");

  v61 = objc_msgSend_mutableApprovedRequesters(v38, v59, v60);
  objc_msgSend_encodeObject_forKey_(v4, v62, v61, @"ApprovedRequesters");

  v65 = objc_msgSend_mutableBlockedIdentities(v38, v63, v64);
  objc_msgSend_encodeObject_forKey_(v4, v66, v65, @"BlockedIdentities");

  v69 = objc_msgSend_accessRequestsEnabled(v38, v67, v68);
  objc_msgSend_encodeBool_forKey_(v4, v70, v69, @"AccessRequestsEnabled");
  v73 = objc_msgSend_oneTimeURLMetadatasByParticipantID(v38, v71, v72);
  objc_msgSend_encodeObject_forKey_(v4, v74, v73, @"oneTimeURLMetadatasByParticipantID");

  objc_sync_exit(v38);
  v77 = objc_msgSend_invitedKeysToRemove(v38, v75, v76);
  objc_msgSend_encodeObject_forKey_(v4, v78, v77, @"InvitedKeysToRemove");

  if ((byte_1EA90C538 & 1) != 0 || objc_msgSend_serializeProtectionData(v38, v79, v80))
  {
    v81 = objc_msgSend_invitedProtectionData(v38, v79, v80);
    objc_msgSend_encodeObject_forKey_(v4, v82, v81, @"InvitedPCS");

    v85 = objc_msgSend_invitedProtectionEtag(v38, v83, v84);
    objc_msgSend_encodeObject_forKey_(v4, v86, v85, @"InvitedPCSEtag");

    v89 = objc_msgSend_previousInvitedProtectionEtag(v38, v87, v88);
    objc_msgSend_encodeObject_forKey_(v4, v90, v89, @"PreviousInvitedPCSEtag");

    v93 = objc_msgSend_publicProtectionData(v38, v91, v92);
    objc_msgSend_encodeObject_forKey_(v4, v94, v93, @"PublicPCS");

    v97 = objc_msgSend_publicProtectionEtag(v38, v95, v96);
    objc_msgSend_encodeObject_forKey_(v4, v98, v97, @"PublicPCSEtag");

    v101 = objc_msgSend_previousPublicProtectionEtag(v38, v99, v100);
    objc_msgSend_encodeObject_forKey_(v4, v102, v101, @"PreviousPublicPCSEtag");
  }

  objc_autoreleasePoolPop(v7);
}

- (CKShare)initWithCoder:(NSCoder *)aDecoder
{
  v4 = aDecoder;
  v153.receiver = self;
  v153.super_class = CKShare;
  v5 = [(CKRecord *)&v153 initWithCoder:v4];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"ContainerID");
    containerID = v5->super._containerID;
    v5->super._containerID = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"RootRecordID");
    rootRecordID = v5->_rootRecordID;
    v5->_rootRecordID = v12;

    v5->_publicPermission = objc_msgSend_decodeIntegerForKey_(v4, v14, @"PublicPermission");
    if (objc_msgSend_containsValueForKey_(v4, v15, @"ParticipantVisibility"))
    {
      v5->_participantVisibility = objc_msgSend_decodeIntegerForKey_(v4, v16, @"ParticipantVisibility");
    }

    else if (objc_msgSend_containsValueForKey_(v4, v16, @"AllowsReadOnlyParticipantsToSeeEachOther"))
    {
      if (objc_msgSend_decodeBoolForKey_(v4, v17, @"AllowsReadOnlyParticipantsToSeeEachOther"))
      {
        v5->_participantVisibility = 0;
      }

      else
      {
        v5->_participantVisibility = 1;
      }
    }

    v5->_participantSelfRemovalBehavior = objc_msgSend_decodeIntegerForKey_(v4, v17, @"ParticipantSelfRemovalBehavior");
    v5->_allowsAnonymousPublicAccess = objc_msgSend_decodeBoolForKey_(v4, v18, @"AllowsAnonymousAccess");
    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v24 = objc_msgSend_setWithObjects_(v19, v23, v20, v21, v22, 0);
    v26 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v25, v24, @"Participants");
    v29 = objc_msgSend_mutableCopy(v26, v27, v28);
    mutableAllParticipants = v5->_mutableAllParticipants;
    v5->_mutableAllParticipants = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v36 = objc_msgSend_setWithObjects_(v31, v35, v32, v33, v34, 0);
    v38 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v37, v36, @"LastFetchedParticipants");
    v41 = objc_msgSend_mutableCopy(v38, v39, v40);
    lastFetchedParticipants = v5->_lastFetchedParticipants;
    v5->_lastFetchedParticipants = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v46 = objc_opt_class();
    v47 = objc_opt_class();
    v49 = objc_msgSend_setWithObjects_(v43, v48, v44, v45, v46, v47, 0);
    v51 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v50, v49, @"AddedParticipantIDs");
    v54 = objc_msgSend_mutableCopy(v51, v52, v53);
    addedParticipantIDs = v5->_addedParticipantIDs;
    v5->_addedParticipantIDs = v54;

    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v60 = objc_opt_class();
    v62 = objc_msgSend_setWithObjects_(v56, v61, v57, v58, v59, v60, 0);
    v64 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v63, v62, @"RemovedParticipantIDs");
    v67 = objc_msgSend_mutableCopy(v64, v65, v66);
    removedParticipantIDs = v5->_removedParticipantIDs;
    v5->_removedParticipantIDs = v67;

    v69 = MEMORY[0x1E695DFD8];
    v70 = objc_opt_class();
    v71 = objc_opt_class();
    v72 = objc_opt_class();
    v74 = objc_msgSend_setWithObjects_(v69, v73, v70, v71, v72, 0);
    v76 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v75, v74, @"Requesters");
    v79 = objc_msgSend_mutableCopy(v76, v77, v78);
    mutableRequesters = v5->_mutableRequesters;
    v5->_mutableRequesters = v79;

    v81 = MEMORY[0x1E695DFD8];
    v82 = objc_opt_class();
    v83 = objc_opt_class();
    v84 = objc_opt_class();
    v86 = objc_msgSend_setWithObjects_(v81, v85, v82, v83, v84, 0);
    v88 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v87, v86, @"ApprovedRequesters");
    v91 = objc_msgSend_mutableCopy(v88, v89, v90);
    mutableApprovedRequesters = v5->_mutableApprovedRequesters;
    v5->_mutableApprovedRequesters = v91;

    v93 = MEMORY[0x1E695DFD8];
    v94 = objc_opt_class();
    v95 = objc_opt_class();
    v96 = objc_opt_class();
    v97 = objc_opt_class();
    v99 = objc_msgSend_setWithObjects_(v93, v98, v94, v95, v96, v97, 0);
    v101 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v100, v99, @"BlockedIdentities");
    v104 = objc_msgSend_mutableCopy(v101, v102, v103);
    mutableBlockedIdentities = v5->_mutableBlockedIdentities;
    v5->_mutableBlockedIdentities = v104;

    v5->_accessRequestsEnabled = objc_msgSend_decodeBoolForKey_(v4, v106, @"AccessRequestsEnabled");
    v107 = MEMORY[0x1E695DFD8];
    v108 = objc_opt_class();
    v109 = objc_opt_class();
    v110 = objc_opt_class();
    v111 = objc_opt_class();
    v113 = objc_msgSend_setWithObjects_(v107, v112, v108, v109, v110, v111, 0);
    v115 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v114, v113, @"oneTimeURLMetadatasByParticipantID");
    oneTimeURLMetadatasByParticipantID = v5->_oneTimeURLMetadatasByParticipantID;
    v5->_oneTimeURLMetadatasByParticipantID = v115;

    v117 = MEMORY[0x1E695DFD8];
    v118 = objc_opt_class();
    v119 = objc_opt_class();
    v120 = objc_opt_class();
    v121 = objc_opt_class();
    v123 = objc_msgSend_setWithObjects_(v117, v122, v118, v119, v120, v121, 0);
    v125 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v124, v123, @"InvitedKeysToRemove");
    invitedKeysToRemove = v5->_invitedKeysToRemove;
    v5->_invitedKeysToRemove = v125;

    v127 = objc_opt_class();
    v129 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v128, v127, @"InvitedPCS");
    invitedProtectionData = v5->_invitedProtectionData;
    v5->_invitedProtectionData = v129;

    v131 = objc_opt_class();
    v133 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v132, v131, @"InvitedPCSEtag");
    invitedProtectionEtag = v5->_invitedProtectionEtag;
    v5->_invitedProtectionEtag = v133;

    v135 = objc_opt_class();
    v137 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v136, v135, @"PreviousInvitedPCSEtag");
    previousInvitedProtectionEtag = v5->_previousInvitedProtectionEtag;
    v5->_previousInvitedProtectionEtag = v137;

    v139 = objc_opt_class();
    v141 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v140, v139, @"PublicPCS");
    publicProtectionData = v5->_publicProtectionData;
    v5->_publicProtectionData = v141;

    v143 = objc_opt_class();
    v145 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v144, v143, @"PublicPCSEtag");
    publicProtectionEtag = v5->_publicProtectionEtag;
    v5->_publicProtectionEtag = v145;

    v147 = objc_opt_class();
    v149 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v148, v147, @"PreviousPublicPCSEtag");
    previousPublicProtectionEtag = v5->_previousPublicProtectionEtag;
    v5->_previousPublicProtectionEtag = v149;

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

@end