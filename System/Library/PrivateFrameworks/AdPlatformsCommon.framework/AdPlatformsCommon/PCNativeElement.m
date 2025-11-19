@interface PCNativeElement
- (PCNativeElement)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCNativeElement

- (PCNativeElement)initWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v12, @"accessibleCaption", v14, v15, v16);
    accessibleCaption = v11->_accessibleCaption;
    v11->_accessibleCaption = v17;

    v19 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"actionURL", v21, v22, v23);
    actionURL = v11->_actionURL;
    v11->_actionURL = v24;

    v26 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v27, v26, @"asset", v28, v29, v30);
    asset = v11->_asset;
    v11->_asset = v31;

    v33 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v34, v33, @"button", v35, v36, v37);
    button = v11->_button;
    v11->_button = v38;

    v40 = objc_opt_class();
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v41, v40, @"caption", v42, v43, v44);
    caption = v11->_caption;
    v11->_caption = v45;

    v11->_elementID = objc_msgSend_decodeIntForKey_(v4, v47, @"elementID", v48, v49, v50, v51);
    v52 = objc_opt_class();
    v57 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v53, v52, @"style", v54, v55, v56);
    style = v11->_style;
    v11->_style = v57;

    v59 = objc_opt_class();
    v64 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v60, v59, @"tapAction", v61, v62, v63);
    tapAction = v11->_tapAction;
    v11->_tapAction = v64;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_accessibleCaption(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"accessibleCaption", v13, v14, v15);

  v22 = objc_msgSend_actionURL(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeObject_forKey_(v4, v23, v22, @"actionURL", v24, v25, v26);

  v33 = objc_msgSend_asset(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeObject_forKey_(v4, v34, v33, @"asset", v35, v36, v37);

  v44 = objc_msgSend_button(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(v4, v45, v44, @"button", v46, v47, v48);

  v55 = objc_msgSend_caption(self, v49, v50, v51, v52, v53, v54);
  objc_msgSend_encodeObject_forKey_(v4, v56, v55, @"caption", v57, v58, v59);

  v66 = objc_msgSend_elementID(self, v60, v61, v62, v63, v64, v65);
  objc_msgSend_encodeInteger_forKey_(v4, v67, v66, @"elementID", v68, v69, v70);
  v77 = objc_msgSend_style(self, v71, v72, v73, v74, v75, v76);
  objc_msgSend_encodeObject_forKey_(v4, v78, v77, @"style", v79, v80, v81);

  v92 = objc_msgSend_tapAction(self, v82, v83, v84, v85, v86, v87);
  objc_msgSend_encodeObject_forKey_(v4, v88, v92, @"tapAction", v89, v90, v91);
}

@end