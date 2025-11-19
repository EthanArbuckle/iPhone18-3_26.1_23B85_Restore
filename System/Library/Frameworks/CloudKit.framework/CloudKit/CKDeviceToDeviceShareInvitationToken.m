@interface CKDeviceToDeviceShareInvitationToken
- (BOOL)isEqual:(id)a3;
- (CKDeviceToDeviceShareInvitationToken)init;
- (CKDeviceToDeviceShareInvitationToken)initWithCoder:(id)a3;
- (CKDeviceToDeviceShareInvitationToken)initWithSharingInvitationData:(id)a3 shareURL:(id)a4 participantID:(id)a5;
- (id)CKPropertiesDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKDeviceToDeviceShareInvitationToken

- (CKDeviceToDeviceShareInvitationToken)init
{
  v2 = [CKException alloc];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = objc_msgSend_initWithCode_format_(v2, v5, 12, @"You can't call init on %@", v4);
  v7 = v6;

  objc_exception_throw(v6);
}

- (CKDeviceToDeviceShareInvitationToken)initWithSharingInvitationData:(id)a3 shareURL:(id)a4 participantID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CKDeviceToDeviceShareInvitationToken;
  v13 = [(CKDeviceToDeviceShareInvitationToken *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    sharingInvitationData = v13->_sharingInvitationData;
    v13->_sharingInvitationData = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    shareURL = v13->_shareURL;
    v13->_shareURL = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    participantID = v13->_participantID;
    v13->_participantID = v22;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_sharingInvitationData(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v17, v8, v7, @"ShareInvitationData");

  v11 = objc_msgSend_shareURL(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v17, v12, v11, @"ShareURL");

  v15 = objc_msgSend_participantID(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v17, v16, v15, @"ParticipantID");

  objc_autoreleasePoolPop(v4);
}

- (CKDeviceToDeviceShareInvitationToken)initWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend__strictSecureDecodingEnabled(v4, v5, v6) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      *v24 = 0;
      _os_log_fault_impl(&dword_1883EA000, v20, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: Must use strict secure decoding to decode a CKDeviceToDeviceShareInvitationToken. Any attempt to decode a CKDeviceToDeviceShareInvitationToken without strict secure decoding enabled will return nil. See [NSKeyedArchiver _enableStrictSecureDecodingMode] or +[NSKeyedArchiver _strictlyUnarchivedObjectOfClasses:].", v24, 2u);
    }

    v22 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v21, @"CKErrorDomain", 12, @"Must use strict secure decoding to decode a CKDeviceToDeviceShareInvitationToken.");
    objc_msgSend_failWithError_(v4, v23, v22);

    v18 = 0;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v9, v8, @"ShareInvitationData");
    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"ShareURL");
    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"ParticipantID");
    objc_autoreleasePoolPop(v7);
    self = objc_msgSend_initWithSharingInvitationData_shareURL_participantID_(self, v17, v10, v13, v16);

    v18 = self;
  }

  return v18;
}

- (id)CKPropertiesDescription
{
  v6 = objc_msgSend_shareURL(self, a2, v2);
  if (v6)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @", shareURL=%@", v6);
  }

  else
  {
    v7 = &stru_1EFA32970;
  }

  v10 = objc_msgSend_participantID(self, v4, v5);
  if (v10)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_msgSend_participantID(self, v8, v9);
    v14 = objc_msgSend_stringWithFormat_(v11, v13, @", participantID=%@", v12);
  }

  else
  {
    v14 = &stru_1EFA32970;
  }

  v15 = MEMORY[0x1E696AEC0];
  v18 = objc_msgSend_sharingInvitationData(self, v16, v17);
  v20 = objc_msgSend_stringWithFormat_(v15, v19, @"sharingInvitationData=%@%@%@", v18, v7, v14);

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v28 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
    {
      v7 = v4;
      v10 = objc_msgSend_shareURL(self, v8, v9);
      v13 = objc_msgSend_shareURL(v7, v11, v12);
      v14 = CKObjectsAreBothNilOrEqual(v10, v13);

      if (v14 && (objc_msgSend_sharingInvitationData(self, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend_sharingInvitationData(v7, v18, v19), v20 = objc_claimAutoreleasedReturnValue(), v21 = CKObjectsAreBothNilOrEqual(v17, v20), v20, v17, v21))
      {
        v24 = objc_msgSend_participantID(self, v22, v23);
        v27 = objc_msgSend_participantID(v7, v25, v26);
        v28 = CKObjectsAreBothNilOrEqual(v24, v27);
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v28 = 0;
    }
  }

  return v28;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_sharingInvitationData(self, a2, v2);
  v7 = objc_msgSend_hash(v4, v5, v6);
  v10 = objc_msgSend_shareURL(self, v8, v9);
  v13 = objc_msgSend_hash(v10, v11, v12) ^ v7;
  v16 = objc_msgSend_participantID(self, v14, v15);
  v19 = objc_msgSend_hash(v16, v17, v18);

  return v13 ^ v19;
}

@end