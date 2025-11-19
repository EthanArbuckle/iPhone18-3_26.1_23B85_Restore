@interface PCNativeButtonStyle
- (PCNativeButtonStyle)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCNativeButtonStyle

- (PCNativeButtonStyle)initWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v12, @"color", v14, v15, v16);
    v18 = *(v11 + 8);
    *(v11 + 8) = v17;

    v19 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"highlightColor", v21, v22, v23);
    v25 = *(v11 + 16);
    *(v11 + 16) = v24;

    v26 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v27, v26, @"disabledColor", v28, v29, v30);
    v32 = *(v11 + 24);
    *(v11 + 24) = v31;

    v33 = objc_opt_class();
    v38 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v34, v33, @"textColor", v35, v36, v37);
    v39 = *(v11 + 32);
    *(v11 + 32) = v38;

    objc_msgSend_decodeDoubleForKey_(v4, v40, @"cornerRadius", v41, v42, v43, v44);
    *(v11 + 40) = v45;
    v46 = objc_opt_class();
    v51 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v47, v46, @"borderStyle", v48, v49, v50);
    v52 = *(v11 + 48);
    *(v11 + 48) = v51;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_color(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"color", v13, v14, v15);

  v22 = objc_msgSend_highlightColor(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeObject_forKey_(v4, v23, v22, @"highlightColor", v24, v25, v26);

  v33 = objc_msgSend_disabledColor(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeObject_forKey_(v4, v34, v33, @"disabledColor", v35, v36, v37);

  v44 = objc_msgSend_textColor(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(v4, v45, v44, @"textColor", v46, v47, v48);

  objc_msgSend_cornerRadius(self, v49, v50, v51, v52, v53, v54);
  objc_msgSend_encodeDouble_forKey_(v4, v55, @"cornerRadius", v56, v57, v58, v59);
  v70 = objc_msgSend_borderStyle(self, v60, v61, v62, v63, v64, v65);
  objc_msgSend_encodeObject_forKey_(v4, v66, v70, @"borderStyle", v67, v68, v69);
}

@end