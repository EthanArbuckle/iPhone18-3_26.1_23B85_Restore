@interface APTapAction
- (APTapAction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APTapAction

- (APTapAction)initWithCoder:(id)a3
{
  v4 = a3;
  v62.receiver = self;
  v62.super_class = APTapAction;
  v8 = [(APTapAction *)&v62 init];
  if (v8)
  {
    v8->_actionType = objc_msgSend_decodeIntForKey_(v4, v5, @"actionType", v6, v7, v9, v10);
    v17 = objc_msgSend_classForCoder(MEMORY[0x1E695DFF8], v11, v12, v13, v14, v15, v16);
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v18, v17, @"actionURL", v19, v20, v21);
    actionURL = v8->_actionURL;
    v8->_actionURL = v22;

    objc_msgSend_decodeDoubleForKey_(v4, v24, @"confirmedClickInterval", v25, v26, v27, v28);
    v8->_confirmedClickInterval = v29;
    v8->_opensInstalledApp = objc_msgSend_decodeBoolForKey_(v4, v30, @"kOpensInstalledAppKey", v31, v32, v29, v33);
    v34 = objc_opt_class();
    v39 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v35, v34, @"kAdamIdentifier", v36, v37, v38);
    adamIdentifier = v8->_adamIdentifier;
    v8->_adamIdentifier = v39;

    v8->_templateType = objc_msgSend_decodeIntForKey_(v4, v41, @"kTemplateTypeKey", v42, v43, v44, v45);
    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v54 = objc_msgSend_setWithObjects_(v46, v49, v47, v50, v51, v52, v53, v48, 0);
    v59 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v55, v54, @"kiTunesMetadata", v56, v57, v58);
    iTunesMetadata = v8->_iTunesMetadata;
    v8->_iTunesMetadata = v59;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v35 = a3;
  objc_msgSend_encodeInt_forKey_(v35, v4, LODWORD(self->_actionType), @"actionType", v5, v6, v7);
  objc_msgSend_encodeObject_forKey_(v35, v8, self->_actionURL, @"actionURL", v9, v10, v11);
  objc_msgSend_encodeDouble_forKey_(v35, v12, @"confirmedClickInterval", v13, v14, self->_confirmedClickInterval, v15);
  objc_msgSend_encodeBool_forKey_(v35, v16, self->_opensInstalledApp, @"kOpensInstalledAppKey", v17, v18, v19);
  v26 = objc_msgSend_adamIdentifier(self, v20, v21, v22, v23, v24, v25);

  if (v26)
  {
    objc_msgSend_encodeObject_forKey_(v35, v27, self->_adamIdentifier, @"kAdamIdentifier", v28, v29, v30);
  }

  objc_msgSend_encodeInt_forKey_(v35, v27, LODWORD(self->_templateType), @"kTemplateTypeKey", v28, v29, v30);
  objc_msgSend_encodeObject_forKey_(v35, v31, self->_iTunesMetadata, @"kiTunesMetadata", v32, v33, v34);
}

@end