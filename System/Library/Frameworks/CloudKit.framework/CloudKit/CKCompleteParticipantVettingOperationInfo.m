@interface CKCompleteParticipantVettingOperationInfo
- (CKCompleteParticipantVettingOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKCompleteParticipantVettingOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_vettingToken(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"VettingToken");

  v12 = objc_msgSend_vettingEmail(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"VettingEmail");

  v16 = objc_msgSend_vettingPhone(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"VettingPhone");

  v20 = objc_msgSend_routingKey(self, v18, v19);
  objc_msgSend_encodeObject_forKey_(v4, v21, v20, @"RoutingKey");

  v24 = objc_msgSend_encryptedKey(self, v22, v23);
  objc_msgSend_encodeObject_forKey_(v4, v25, v24, @"EncryptedKey");

  v28 = objc_msgSend_baseToken(self, v26, v27);
  objc_msgSend_encodeObject_forKey_(v4, v29, v28, @"BaseToken");

  v30.receiver = self;
  v30.super_class = CKCompleteParticipantVettingOperationInfo;
  [(CKOperationInfo *)&v30 encodeWithCoder:v4];
  objc_autoreleasePoolPop(v5);
}

- (CKCompleteParticipantVettingOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CKCompleteParticipantVettingOperationInfo;
  v5 = [(CKOperationInfo *)&v32 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v7, @"VettingToken");
    vettingToken = v5->_vettingToken;
    v5->_vettingToken = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v12, v11, @"VettingEmail");
    vettingEmail = v5->_vettingEmail;
    v5->_vettingEmail = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v16, v15, @"VettingPhone");
    vettingPhone = v5->_vettingPhone;
    v5->_vettingPhone = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"RoutingKey");
    routingKey = v5->_routingKey;
    v5->_routingKey = v21;

    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v24, v23, @"EncryptedKey");
    encryptedKey = v5->_encryptedKey;
    v5->_encryptedKey = v25;

    v27 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v28, v27, @"BaseToken");
    baseToken = v5->_baseToken;
    v5->_baseToken = v29;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end