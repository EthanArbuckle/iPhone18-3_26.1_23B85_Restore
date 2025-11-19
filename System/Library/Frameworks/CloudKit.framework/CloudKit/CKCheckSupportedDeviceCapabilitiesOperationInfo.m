@interface CKCheckSupportedDeviceCapabilitiesOperationInfo
- (CKCheckSupportedDeviceCapabilitiesOperationInfo)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKCheckSupportedDeviceCapabilitiesOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v18.receiver = self;
  v18.super_class = CKCheckSupportedDeviceCapabilitiesOperationInfo;
  [(CKDatabaseOperationInfo *)&v18 encodeWithCoder:v4];
  v8 = objc_msgSend_zoneIDs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"recordZoneIDs");

  v12 = objc_msgSend_desiredCapabilitySets(self, v10, v11);
  objc_msgSend_encodeObject_forKey_(v4, v13, v12, @"desiredCapabilitySets");

  v16 = objc_msgSend_options(self, v14, v15);
  objc_msgSend_encodeObject_forKey_(v4, v17, v16, @"options");

  objc_autoreleasePoolPop(v5);
}

- (CKCheckSupportedDeviceCapabilitiesOperationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CKCheckSupportedDeviceCapabilitiesOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v30 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"recordZoneIDs");
    zoneIDs = v5->_zoneIDs;
    v5->_zoneIDs = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v21 = objc_msgSend_setWithObjects_(v15, v20, v16, v17, v18, v19, 0);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v22, v21, @"desiredCapabilitySets");
    desiredCapabilitySets = v5->_desiredCapabilitySets;
    v5->_desiredCapabilitySets = v23;

    v25 = objc_opt_class();
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v26, v25, @"options");
    options = v5->_options;
    v5->_options = v27;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end