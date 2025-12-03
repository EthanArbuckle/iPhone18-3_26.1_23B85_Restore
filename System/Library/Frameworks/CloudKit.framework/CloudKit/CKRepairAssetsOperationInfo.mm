@interface CKRepairAssetsOperationInfo
- (CKRepairAssetsOperationInfo)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKRepairAssetsOperationInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v41.receiver = self;
  v41.super_class = CKRepairAssetsOperationInfo;
  [(CKDatabaseOperationInfo *)&v41 encodeWithCoder:coderCopy];
  v8 = objc_msgSend_assets(self, v6, v7);
  v9 = NSStringFromSelector(sel_assets);
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v8, v9);

  v13 = objc_msgSend_packages(self, v11, v12);
  v14 = NSStringFromSelector(sel_packages);
  objc_msgSend_encodeObject_forKey_(coderCopy, v15, v13, v14);

  v18 = objc_msgSend_assetMetadata(self, v16, v17);
  v19 = NSStringFromSelector(sel_assetMetadata);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v18, v19);

  v23 = objc_msgSend_packageMetadata(self, v21, v22);
  v24 = NSStringFromSelector(sel_packageMetadata);
  objc_msgSend_encodeObject_forKey_(coderCopy, v25, v23, v24);

  v28 = objc_msgSend_unavailableAssets(self, v26, v27);
  v29 = NSStringFromSelector(sel_unavailableAssets);
  objc_msgSend_encodeObject_forKey_(coderCopy, v30, v28, v29);

  v33 = objc_msgSend_unavailablePackages(self, v31, v32);
  v34 = NSStringFromSelector(sel_unavailablePackages);
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, v33, v34);

  v38 = objc_msgSend_uploadRequestConfiguration(self, v36, v37);
  v39 = NSStringFromSelector(sel_uploadRequestConfiguration);
  objc_msgSend_encodeObject_forKey_(coderCopy, v40, v38, v39);

  objc_autoreleasePoolPop(v5);
}

- (CKRepairAssetsOperationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v67.receiver = self;
  v67.super_class = CKRepairAssetsOperationInfo;
  v5 = [(CKDatabaseOperationInfo *)&v67 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v11 = objc_msgSend_setWithObjects_(v7, v10, v8, v9, 0);
    v12 = NSStringFromSelector(sel_assets);
    v14 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v13, v11, v12);
    assets = v5->_assets;
    v5->_assets = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v16, v19, v17, v18, 0);
    v21 = NSStringFromSelector(sel_packages);
    v23 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v22, v20, v21);
    packages = v5->_packages;
    v5->_packages = v23;

    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v29 = objc_msgSend_setWithObjects_(v25, v28, v26, v27, 0);
    v30 = NSStringFromSelector(sel_assetMetadata);
    v32 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v31, v29, v30);
    assetMetadata = v5->_assetMetadata;
    v5->_assetMetadata = v32;

    v34 = MEMORY[0x1E695DFD8];
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v38 = objc_msgSend_setWithObjects_(v34, v37, v35, v36, 0);
    v39 = NSStringFromSelector(sel_packageMetadata);
    v41 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v40, v38, v39);
    packageMetadata = v5->_packageMetadata;
    v5->_packageMetadata = v41;

    v43 = MEMORY[0x1E695DFD8];
    v44 = objc_opt_class();
    v45 = objc_opt_class();
    v47 = objc_msgSend_setWithObjects_(v43, v46, v44, v45, 0);
    v48 = NSStringFromSelector(sel_unavailableAssets);
    v50 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v49, v47, v48);
    unavailableAssets = v5->_unavailableAssets;
    v5->_unavailableAssets = v50;

    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v56 = objc_msgSend_setWithObjects_(v52, v55, v53, v54, 0);
    v57 = NSStringFromSelector(sel_unavailablePackages);
    v59 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v58, v56, v57);
    unavailablePackages = v5->_unavailablePackages;
    v5->_unavailablePackages = v59;

    v61 = objc_opt_class();
    v62 = NSStringFromSelector(sel_uploadRequestConfiguration);
    v64 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v63, v61, v62);
    uploadRequestConfiguration = v5->_uploadRequestConfiguration;
    v5->_uploadRequestConfiguration = v64;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

@end