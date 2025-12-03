@interface CKSessionAcquisitionSetupInfo
- (CKSessionAcquisitionSetupInfo)initWithCKSessionID:(id)d ckSessionConfiguration:(id)configuration ckPreviousSessionInvalidationContext:(id)context testDeviceReferenceProtocol:(id)protocol;
- (CKSessionAcquisitionSetupInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKSessionAcquisitionSetupInfo

- (CKSessionAcquisitionSetupInfo)initWithCKSessionID:(id)d ckSessionConfiguration:(id)configuration ckPreviousSessionInvalidationContext:(id)context testDeviceReferenceProtocol:(id)protocol
{
  dCopy = d;
  configurationCopy = configuration;
  contextCopy = context;
  protocolCopy = protocol;
  v18.receiver = self;
  v18.super_class = CKSessionAcquisitionSetupInfo;
  v15 = [(CKSessionAcquisitionSetupInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ckSessionID, d);
    objc_storeStrong(&v16->_ckSessionConfiguration, configuration);
    objc_storeStrong(&v16->_ckPreviousSessionInvalidationContext, context);
    objc_storeStrong(&v16->_testDeviceReferenceProtocol, protocol);
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = objc_msgSend_ckSessionID(self, v4, v5);
  v7 = NSStringFromSelector(sel_ckSessionID);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v6, v7);

  v11 = objc_msgSend_ckSessionConfiguration(self, v9, v10);
  v12 = NSStringFromSelector(sel_ckSessionConfiguration);
  objc_msgSend_encodeObject_forKey_(coderCopy, v13, v11, v12);

  v16 = objc_msgSend_ckPreviousSessionInvalidationContext(self, v14, v15);
  v17 = NSStringFromSelector(sel_ckPreviousSessionInvalidationContext);
  objc_msgSend_encodeObject_forKey_(coderCopy, v18, v16, v17);

  if (__sTestOverridesAvailable[0] == 1)
  {
    v21 = objc_msgSend_testDeviceReferenceProtocol(self, v19, v20);
    v22 = NSStringFromSelector(sel_testDeviceReferenceProtocol);
    objc_msgSend_encodeObject_forKey_(coderCopy, v23, v21, v22);
  }
}

- (CKSessionAcquisitionSetupInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = CKSessionAcquisitionSetupInfo;
  v5 = [(CKSessionAcquisitionSetupInfo *)&v27 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_ckSessionID);
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v6, v7);
    ckSessionID = v5->_ckSessionID;
    v5->_ckSessionID = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_ckSessionConfiguration);
    v14 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v11, v12);
    ckSessionConfiguration = v5->_ckSessionConfiguration;
    v5->_ckSessionConfiguration = v14;

    v16 = objc_opt_class();
    v17 = NSStringFromSelector(sel_ckPreviousSessionInvalidationContext);
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v16, v17);
    ckPreviousSessionInvalidationContext = v5->_ckPreviousSessionInvalidationContext;
    v5->_ckPreviousSessionInvalidationContext = v19;

    if (__sTestOverridesAvailable[0] == 1)
    {
      v21 = sub_188518A68();
      v22 = NSStringFromSelector(sel_testDeviceReferenceProtocol);
      v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v21, v22);
      testDeviceReferenceProtocol = v5->_testDeviceReferenceProtocol;
      v5->_testDeviceReferenceProtocol = v24;
    }
  }

  return v5;
}

@end