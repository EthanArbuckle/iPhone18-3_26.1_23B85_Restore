@interface PCNativeStyle
- (PCNativeStyle)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCNativeStyle

- (PCNativeStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v12, @"backgroundColor", v14, v15, v16);
    backgroundColor = v11->_backgroundColor;
    v11->_backgroundColor = v17;

    v19 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"borderStyle", v21, v22, v23);
    borderStyle = v11->_borderStyle;
    v11->_borderStyle = v24;

    v26 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v27, v26, @"buttonStyle", v28, v29, v30);
    buttonStyle = v11->_buttonStyle;
    v11->_buttonStyle = v31;

    v33 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v34, v33, @"shadowStyle", v35, v36, v37);
    shadowStyle = v11->_shadowStyle;
    v11->_shadowStyle = v38;

    v40 = objc_opt_class();
    v45 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v41, v40, @"textColor", v42, v43, v44);
    textColor = v11->_textColor;
    v11->_textColor = v45;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_backgroundColor(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"backgroundColor", v13, v14, v15);

  v22 = objc_msgSend_borderStyle(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeObject_forKey_(v4, v23, v22, @"borderStyle", v24, v25, v26);

  v33 = objc_msgSend_buttonStyle(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeObject_forKey_(v4, v34, v33, @"buttonStyle", v35, v36, v37);

  v44 = objc_msgSend_shadowStyle(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(v4, v45, v44, @"shadowStyle", v46, v47, v48);

  v59 = objc_msgSend_textColor(self, v49, v50, v51, v52, v53, v54);
  objc_msgSend_encodeObject_forKey_(v4, v55, v59, @"textColor", v56, v57, v58);
}

@end