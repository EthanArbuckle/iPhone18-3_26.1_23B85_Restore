@interface CKApplicationPermissionGroup
- (CKApplicationPermissionGroup)init;
- (CKApplicationPermissionGroup)initWithCoder:(id)a3;
- (id)CKPropertiesDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKApplicationPermissionGroup

- (CKApplicationPermissionGroup)init
{
  v8.receiver = self;
  v8.super_class = CKApplicationPermissionGroup;
  v2 = [(CKApplicationPermissionGroup *)&v8 init];
  v3 = v2;
  if (v2)
  {
    containerIDs = v2->_containerIDs;
    v5 = MEMORY[0x1E695E0F0];
    v2->_containerIDs = MEMORY[0x1E695E0F0];

    applicationBundleIDs = v3->_applicationBundleIDs;
    v3->_applicationBundleIDs = v5;
  }

  return v3;
}

- (CKApplicationPermissionGroup)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = CKApplicationPermissionGroup;
  v5 = [(CKApplicationPermissionGroup *)&v27 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v13 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v12, v11, @"containerIDs");
    objc_msgSend_setContainerIDs_(v5, v14, v13);

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v19 = objc_msgSend_setWithObjects_(v15, v18, v16, v17, 0);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v19, @"applicationBundleIDs");
    objc_msgSend_setApplicationBundleIDs_(v5, v22, v21);

    v24 = objc_msgSend_decodeInt64ForKey_(v4, v23, @"enabledPermissions");
    objc_msgSend_setEnabledPermissions_(v5, v25, v24);
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = objc_autoreleasePoolPush();
  v7 = objc_msgSend_containerIDs(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(v17, v8, v7, @"containerIDs");

  v11 = objc_msgSend_applicationBundleIDs(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(v17, v12, v11, @"applicationBundleIDs");

  v15 = objc_msgSend_enabledPermissions(self, v13, v14);
  objc_msgSend_encodeInt64_forKey_(v17, v16, v15, @"enabledPermissions");
  objc_autoreleasePoolPop(v4);
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_containerIDs(self, a2, v2);
  v8 = objc_msgSend_enabledPermissions(self, v6, v7);
  v11 = objc_msgSend_applicationBundleIDs(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v4, v12, @"containerIDs=%@, enabledPermissions=%ld, applicationBundleIDs=%@", v5, v8, v11);

  return v13;
}

@end