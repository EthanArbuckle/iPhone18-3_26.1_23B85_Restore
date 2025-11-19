@interface CKOneTimeURLMetadata
- (CKOneTimeURLMetadata)initWithCoder:(id)a3;
- (CKOneTimeURLMetadata)initWithEncryptedOneTimeFullToken:(id)a3 participantID:(id)a4;
- (CKOneTimeURLMetadata)initWithSharingKeyBytes:(id)a3 sharingKeySeed:(id)a4 participantID:(id)a5;
- (NSData)encryptedOneTimeFullTokenData;
- (NSData)oneTimeShortSharingTokenHashData;
- (NSString)oneTimeShortSharingToken;
- (id)copyWithZone:(_NSZone *)a3;
- (id)oneTimeFullToken;
- (id)oneTimeFullTokenProtoMessageData;
- (id)oneTimeShortSharingTokenData;
- (id)oneTimeShortTokenWithRoutingKey:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKOneTimeURLMetadata

- (CKOneTimeURLMetadata)initWithSharingKeyBytes:(id)a3 sharingKeySeed:(id)a4 participantID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v32.receiver = self;
  v32.super_class = CKOneTimeURLMetadata;
  v13 = [(CKOneTimeURLMetadata *)&v32 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    sharingKeyBytes = v13->_sharingKeyBytes;
    v13->_sharingKeyBytes = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    sharingKeySeed = v13->_sharingKeySeed;
    v13->_sharingKeySeed = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    participantID = v13->_participantID;
    v13->_participantID = v22;

    v24 = [CKEncryptedData alloc];
    v27 = objc_msgSend_oneTimeFullTokenProtoMessageData(v13, v25, v26);
    v29 = objc_msgSend_initWithData_(v24, v28, v27);
    encryptedOneTimeFullToken = v13->_encryptedOneTimeFullToken;
    v13->_encryptedOneTimeFullToken = v29;
  }

  return v13;
}

- (CKOneTimeURLMetadata)initWithEncryptedOneTimeFullToken:(id)a3 participantID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v44.receiver = self;
  v44.super_class = CKOneTimeURLMetadata;
  v10 = [(CKOneTimeURLMetadata *)&v44 init];
  if (v10)
  {
    v11 = objc_msgSend_data(v6, v8, v9);

    if (v11)
    {
      v14 = [CKDPOneTimeFullTokenInfo alloc];
      v17 = objc_msgSend_encryptedOneTimeFullToken(v10, v15, v16);
      v20 = objc_msgSend_data(v17, v18, v19);
      v22 = objc_msgSend_initWithData_(v14, v21, v20);

      v25 = objc_msgSend_sharingKeyBytes(v22, v23, v24);
      v28 = objc_msgSend_copy(v25, v26, v27);
      sharingKeyBytes = v10->_sharingKeyBytes;
      v10->_sharingKeyBytes = v28;

      v32 = objc_msgSend_sharingKeySeed(v22, v30, v31);
      v35 = objc_msgSend_copy(v32, v33, v34);
      sharingKeySeed = v10->_sharingKeySeed;
      v10->_sharingKeySeed = v35;
    }

    v37 = objc_msgSend_copy(v7, v12, v13);
    participantID = v10->_participantID;
    v10->_participantID = v37;

    v41 = objc_msgSend_copy(v6, v39, v40);
    encryptedOneTimeFullToken = v10->_encryptedOneTimeFullToken;
    v10->_encryptedOneTimeFullToken = v41;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v21 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_encryptedOneTimeFullToken(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v21, v8, v7, @"encryptedOneTimeFullToken");

  v11 = objc_msgSend_participantID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v21, v12, v11, @"participantID");

  v15 = objc_msgSend_sharingKeySeed(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v21, v16, v15, @"sharingKeySeed");

  v19 = objc_msgSend_sharingKeyBytes(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(v21, v20, v19, @"sharingKeyBytes");

  objc_autoreleasePoolPop(v4);
}

- (CKOneTimeURLMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CKOneTimeURLMetadata;
  v5 = [(CKOneTimeURLMetadata *)&v24 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"encryptedOneTimeFullToken");
    encryptedOneTimeFullToken = v5->_encryptedOneTimeFullToken;
    v5->_encryptedOneTimeFullToken = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"participantID");
    participantID = v5->_participantID;
    v5->_participantID = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"sharingKeySeed");
    sharingKeySeed = v5->_sharingKeySeed;
    v5->_sharingKeySeed = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"sharingKeyBytes");
    sharingKeyBytes = v5->_sharingKeyBytes;
    v5->_sharingKeyBytes = v21;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_msgSend_allocWithZone_(CKOneTimeURLMetadata, a2, a3);
  v8 = objc_msgSend_init(v5, v6, v7);
  v10 = objc_msgSend_copyWithZone_(self->_encryptedOneTimeFullToken, v9, a3);
  v11 = v8[1];
  v8[1] = v10;

  v13 = objc_msgSend_copyWithZone_(self->_participantID, v12, a3);
  v14 = v8[4];
  v8[4] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_sharingKeySeed, v15, a3);
  v17 = v8[3];
  v8[3] = v16;

  v19 = objc_msgSend_copyWithZone_(self->_sharingKeyBytes, v18, a3);
  v20 = v8[2];
  v8[2] = v19;

  return v8;
}

- (id)oneTimeFullTokenProtoMessageData
{
  v3 = objc_alloc_init(CKDPOneTimeFullTokenInfo);
  v6 = objc_msgSend_sharingKeyBytes(self, v4, v5);
  objc_msgSend_setSharingKeyBytes_(v3, v7, v6);

  objc_msgSend_setSharingKeyType_(v3, v8, 0);
  v11 = objc_msgSend_sharingKeySeed(self, v9, v10);
  objc_msgSend_setSharingKeySeed_(v3, v12, v11);

  v15 = objc_msgSend_data(v3, v13, v14);

  return v15;
}

- (id)oneTimeFullToken
{
  v62[2] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_encryptedOneTimeFullToken(self, a2, v2);
  v7 = objc_msgSend_data(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_encryptedOneTimeFullToken(self, v8, v9);
    v13 = objc_msgSend_data(v10, v11, v12);
    v16 = objc_msgSend_CKBase64URLSafeString(v13, v14, v15);

    v17 = [CKDPOneTimeFullTokenInfo alloc];
    v20 = objc_msgSend_encryptedOneTimeFullToken(self, v18, v19);
    v23 = objc_msgSend_data(v20, v21, v22);
    v25 = objc_msgSend_initWithData_(v17, v24, v23);

    v28 = objc_msgSend_sharingKeyBytes(v25, v26, v27);
    v31 = objc_msgSend_copy(v28, v29, v30);
    sharingKeyBytes = self->_sharingKeyBytes;
    self->_sharingKeyBytes = v31;

    v35 = objc_msgSend_sharingKeySeed(v25, v33, v34);
    v38 = objc_msgSend_copy(v35, v36, v37);
    sharingKeySeed = self->_sharingKeySeed;
    self->_sharingKeySeed = v38;

LABEL_3:
    v61 = 0;
    v60 = 32;
    v41 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v40, &v60, 3);
    v44 = objc_msgSend_CKBase64URLSafeString(v41, v42, v43);

    v62[0] = v44;
    v62[1] = v16;
    v46 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v45, v62, 2);
    v48 = objc_msgSend_componentsJoinedByString_(v46, v47, &stru_1EFA32970);

    goto LABEL_8;
  }

  v49 = objc_msgSend_sharingKeyBytes(self, v8, v9);
  if (v49)
  {
    v52 = v49;
    v53 = objc_msgSend_sharingKeySeed(self, v50, v51);

    if (v53)
    {
      v25 = objc_msgSend_oneTimeFullTokenProtoMessageData(self, v54, v55);
      v16 = objc_msgSend_CKBase64URLSafeString(v25, v56, v57);
      goto LABEL_3;
    }
  }

  v48 = 0;
LABEL_8:
  v58 = *MEMORY[0x1E69E9840];

  return v48;
}

- (id)oneTimeShortSharingTokenData
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_oneTimeFullToken(self, a2, v2);
  v6 = v4;
  if (v4)
  {
    v16[0] = @"one-time-link-encryption-key";
    v16[1] = v4;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v5, v16, 2);
    v9 = objc_msgSend_componentsJoinedByString_(v7, v8, &stru_1EFA32970);

    v12 = objc_msgSend_sharingKeySeed(self, v10, v11);
    v13 = CKHKDFSHA256(v12, v9, 16);
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (NSString)oneTimeShortSharingToken
{
  v3 = objc_msgSend_oneTimeShortSharingTokenData(self, a2, v2);
  v6 = objc_msgSend_CKBase64URLSafeString(v3, v4, v5);

  return v6;
}

- (id)oneTimeShortTokenWithRoutingKey:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9 = objc_msgSend_oneTimeShortSharingToken(self, v5, v6);
  if (!v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_ck;
    if (!os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v15 = "Couldn't get a one-time short sharing token";
    v16 = v14;
    v17 = 2;
    goto LABEL_16;
  }

  if (objc_msgSend_length(v4, v7, v8) == 3)
  {
    v21[0] = v4;
    v21[1] = v9;
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v21, 2);
    v13 = objc_msgSend_componentsJoinedByString_(v11, v12, &stru_1EFA32970);

    goto LABEL_12;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v18 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v23 = v4;
    v15 = "Routing key is invalid: %{public}@";
    v16 = v18;
    v17 = 12;
LABEL_16:
    _os_log_error_impl(&dword_1883EA000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
  }

LABEL_11:
  v13 = 0;
LABEL_12:

  v19 = *MEMORY[0x1E69E9840];

  return v13;
}

- (NSData)oneTimeShortSharingTokenHashData
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_oneTimeShortSharingToken(self, a2, v2);
  v6 = v3;
  if (v3)
  {
    v7 = objc_msgSend_UTF8String(v3, v4, v5, 0, 0, 0, 0);
    v9 = objc_msgSend_lengthOfBytesUsingEncoding_(v6, v8, 4);
    CC_SHA256(v7, v9, &v14);
    v11 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, &v14, 32);
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (NSData)encryptedOneTimeFullTokenData
{
  v4 = objc_msgSend_oneTimeFullToken(self, a2, v2);
  v7 = objc_msgSend_oneTimeShortSharingTokenData(self, v5, v6);
  v9 = objc_msgSend_encryptFullToken_shortSharingTokenData_(CKRecord, v8, v4, v7);

  return v9;
}

@end