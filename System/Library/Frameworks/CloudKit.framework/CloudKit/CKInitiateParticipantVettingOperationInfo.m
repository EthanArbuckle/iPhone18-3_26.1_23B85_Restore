@interface CKInitiateParticipantVettingOperationInfo
- (CKInitiateParticipantVettingOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKInitiateParticipantVettingOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_shareMetadata(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v4, v8, v7, @"ShareMetadata");

  v11 = objc_msgSend_participantID(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"ParticipantID");

  v15 = objc_msgSend_address(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(v4, v16, v15, @"Address");

  v17.receiver = self;
  v17.super_class = CKInitiateParticipantVettingOperationInfo;
  [(CKOperationInfo *)&v17 encodeWithCoder:v4];
}

- (CKInitiateParticipantVettingOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CKInitiateParticipantVettingOperationInfo;
  v5 = [(CKOperationInfo *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"ShareMetadata");
    shareMetadata = v5->_shareMetadata;
    v5->_shareMetadata = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"ParticipantID");
    participantID = v5->_participantID;
    v5->_participantID = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v14, @"Address");
    address = v5->_address;
    v5->_address = v16;
  }

  return v5;
}

@end