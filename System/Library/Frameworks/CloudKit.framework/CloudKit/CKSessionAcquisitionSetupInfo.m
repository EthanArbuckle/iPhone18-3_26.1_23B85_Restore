@interface CKSessionAcquisitionSetupInfo
- (CKSessionAcquisitionSetupInfo)initWithCKSessionID:(id)a3 ckSessionConfiguration:(id)a4 ckPreviousSessionInvalidationContext:(id)a5 testDeviceReferenceProtocol:(id)a6;
- (CKSessionAcquisitionSetupInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKSessionAcquisitionSetupInfo

- (CKSessionAcquisitionSetupInfo)initWithCKSessionID:(id)a3 ckSessionConfiguration:(id)a4 ckPreviousSessionInvalidationContext:(id)a5 testDeviceReferenceProtocol:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CKSessionAcquisitionSetupInfo;
  v15 = [(CKSessionAcquisitionSetupInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ckSessionID, a3);
    objc_storeStrong(&v16->_ckSessionConfiguration, a4);
    objc_storeStrong(&v16->_ckPreviousSessionInvalidationContext, a5);
    objc_storeStrong(&v16->_testDeviceReferenceProtocol, a6);
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v24 = a3;
  v6 = objc_msgSend_ckSessionID(self, v4, v5);
  v7 = NSStringFromSelector(sel_ckSessionID);
  objc_msgSend_encodeObject_forKey_(v24, v8, v6, v7);

  v11 = objc_msgSend_ckSessionConfiguration(self, v9, v10);
  v12 = NSStringFromSelector(sel_ckSessionConfiguration);
  objc_msgSend_encodeObject_forKey_(v24, v13, v11, v12);

  v16 = objc_msgSend_ckPreviousSessionInvalidationContext(self, v14, v15);
  v17 = NSStringFromSelector(sel_ckPreviousSessionInvalidationContext);
  objc_msgSend_encodeObject_forKey_(v24, v18, v16, v17);

  if (__sTestOverridesAvailable[0] == 1)
  {
    v21 = objc_msgSend_testDeviceReferenceProtocol(self, v19, v20);
    v22 = NSStringFromSelector(sel_testDeviceReferenceProtocol);
    objc_msgSend_encodeObject_forKey_(v24, v23, v21, v22);
  }
}

- (CKSessionAcquisitionSetupInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CKSessionAcquisitionSetupInfo;
  v5 = [(CKSessionAcquisitionSetupInfo *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_ckSessionID);
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v8, v6, v7);
    ckSessionID = v5->_ckSessionID;
    v5->_ckSessionID = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_ckSessionConfiguration);
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v11, v12);
    ckSessionConfiguration = v5->_ckSessionConfiguration;
    v5->_ckSessionConfiguration = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_ckPreviousSessionInvalidationContext);
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v18, v16, v17);
    ckPreviousSessionInvalidationContext = v5->_ckPreviousSessionInvalidationContext;
    v5->_ckPreviousSessionInvalidationContext = v19;

    if (__sTestOverridesAvailable[0] == 1)
    {
      v21 = sub_188518A68();
      v22 = NSStringFromSelector(sel_testDeviceReferenceProtocol);
      v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v23, v21, v22);
      testDeviceReferenceProtocol = v5->_testDeviceReferenceProtocol;
      v5->_testDeviceReferenceProtocol = v24;
    }
  }

  return v5;
}

@end