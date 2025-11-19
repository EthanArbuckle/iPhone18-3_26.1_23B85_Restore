@interface CKMapShareURLsToInstalledBundleIDsOperationInfo
- (CKMapShareURLsToInstalledBundleIDsOperationInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKMapShareURLsToInstalledBundleIDsOperationInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v10.receiver = self;
  v10.super_class = CKMapShareURLsToInstalledBundleIDsOperationInfo;
  [(CKOperationInfo *)&v10 encodeWithCoder:v4];
  v8 = objc_msgSend_shareURLs(self, v6, v7);
  objc_msgSend_encodeObject_forKey_(v4, v9, v8, @"shareURLs");

  objc_autoreleasePoolPop(v5);
}

- (CKMapShareURLsToInstalledBundleIDsOperationInfo)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CKMapShareURLsToInstalledBundleIDsOperationInfo;
  v5 = [(CKOperationInfo *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v18, 2);
    v11 = objc_msgSend_setWithArray_(v7, v10, v9);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"shareURLs");
    shareURLs = v5->_shareURLs;
    v5->_shareURLs = v13;

    objc_autoreleasePoolPop(v6);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = CKMapShareURLsToInstalledBundleIDsOperationInfo;
  v4 = [(CKOperationInfo *)&v10 copyWithZone:a3];
  v7 = objc_msgSend_shareURLs(self, v5, v6);
  v8 = v4[17];
  v4[17] = v7;

  return v4;
}

@end