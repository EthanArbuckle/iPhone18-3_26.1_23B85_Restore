@interface CKSharingContext
- (CKSharingContext)initWithCoder:(id)a3;
- (CKSharingContext)initWithShare:(id)a3 containerSetupInfo:(id)a4 allowedOptions:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKSharingContext

- (CKSharingContext)initWithShare:(id)a3 containerSetupInfo:(id)a4 allowedOptions:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v25.receiver = self;
  v25.super_class = CKSharingContext;
  v13 = [(CKSharingContext *)&v25 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(v8, v11, v12);
    share = v13->_share;
    v13->_share = v14;

    v18 = objc_msgSend_copy(v9, v16, v17);
    containerSetupInfo = v13->_containerSetupInfo;
    v13->_containerSetupInfo = v18;

    v22 = objc_msgSend_copy(v10, v20, v21);
    allowedOptions = v13->_allowedOptions;
    v13->_allowedOptions = v22;
  }

  return v13;
}

- (CKSharingContext)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CKSharingContext;
  v5 = [(CKSharingContext *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v7, v6, @"CKSharingContextShareKey");
    share = v5->_share;
    v5->_share = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v11, v10, @"CKSharingContextContainerSetupInfoKey");
    containerSetupInfo = v5->_containerSetupInfo;
    v5->_containerSetupInfo = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v19 = objc_msgSend_setWithObjects_(v14, v18, v15, v16, v17, 0);
    v21 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v20, v19, @"CKSharingContextAllowedOptionsKey");
    allowedOptions = v5->_allowedOptions;
    v5->_allowedOptions = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  share = self->_share;
  v8 = a3;
  objc_msgSend_encodeObject_forKey_(v8, v5, share, @"CKSharingContextShareKey");
  objc_msgSend_encodeObject_forKey_(v8, v6, self->_containerSetupInfo, @"CKSharingContextContainerSetupInfoKey");
  objc_msgSend_encodeObject_forKey_(v8, v7, self->_allowedOptions, @"CKSharingContextAllowedOptionsKey");
}

- (id)copyWithZone:(_NSZone *)a3
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