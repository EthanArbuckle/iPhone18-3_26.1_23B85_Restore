@interface CKSharingContext
- (CKSharingContext)initWithCoder:(id)coder;
- (CKSharingContext)initWithShare:(id)share containerSetupInfo:(id)info allowedOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKSharingContext

- (CKSharingContext)initWithShare:(id)share containerSetupInfo:(id)info allowedOptions:(id)options
{
  shareCopy = share;
  infoCopy = info;
  optionsCopy = options;
  v25.receiver = self;
  v25.super_class = CKSharingContext;
  v13 = [(CKSharingContext *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(shareCopy, v11, v12);
    share = v13->_share;
    v13->_share = v14;

    v18 = objc_msgSend_copy(infoCopy, v16, v17);
    containerSetupInfo = v13->_containerSetupInfo;
    v13->_containerSetupInfo = v18;

    v22 = objc_msgSend_copy(optionsCopy, v20, v21);
    allowedOptions = v13->_allowedOptions;
    v13->_allowedOptions = v22;
  }

  return v13;
}

- (CKSharingContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = CKSharingContext;
  v5 = [(CKSharingContext *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"CKSharingContextShareKey");
    share = v5->_share;
    v5->_share = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"CKSharingContextContainerSetupInfoKey");
    containerSetupInfo = v5->_containerSetupInfo;
    v5->_containerSetupInfo = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v19 = objc_msgSend_setWithObjects_(v14, v18, v15, v16, v17, 0);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v20, v19, @"CKSharingContextAllowedOptionsKey");
    allowedOptions = v5->_allowedOptions;
    v5->_allowedOptions = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  share = self->_share;
  coderCopy = coder;
  objc_msgSend_encodeObject_forKey_(coderCopy, v5, share, @"CKSharingContextShareKey");
  objc_msgSend_encodeObject_forKey_(coderCopy, v6, self->_containerSetupInfo, @"CKSharingContextContainerSetupInfoKey");
  objc_msgSend_encodeObject_forKey_(coderCopy, v7, self->_allowedOptions, @"CKSharingContextAllowedOptionsKey");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CKSharingContext);
  v7 = objc_msgSend_share(self, v5, v6);
  v10 = objc_msgSend_copy(v7, v8, v9);
  share = v4->_share;
  v4->_share = v10;

  v14 = objc_msgSend_containerSetupInfo(self, v12, v13);
  v17 = objc_msgSend_copy(v14, v15, v16);
  containerSetupInfo = v4->_containerSetupInfo;
  v4->_containerSetupInfo = v17;

  v21 = objc_msgSend_allowedOptions(self, v19, v20);
  v24 = objc_msgSend_copy(v21, v22, v23);
  allowedOptions = v4->_allowedOptions;
  v4->_allowedOptions = v24;

  return v4;
}

@end