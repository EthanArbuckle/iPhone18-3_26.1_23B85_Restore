@interface PCNativeButton
- (PCNativeButton)init;
- (PCNativeButton)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeButton

- (PCNativeButton)init
{
  v3.receiver = self;
  v3.super_class = PCNativeButton;
  result = [(PCNativeButton *)&v3 init];
  if (result)
  {
    result->_type = -1;
  }

  return result;
}

- (PCNativeButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v14)
  {
    v14->_type = objc_msgSend_decodeInt32ForKey_(coderCopy, v11, @"type", v12, v13, v15, v16);
    v17 = objc_opt_class();
    v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v18, v17, @"text", v19, v20, v21);
    text = v14->_text;
    v14->_text = v22;

    v24 = objc_opt_class();
    v29 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v25, v24, @"accessibleText", v26, v27, v28);
    accessibleText = v14->_accessibleText;
    v14->_accessibleText = v29;

    v31 = objc_opt_class();
    v36 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"style", v33, v34, v35);
    style = v14->_style;
    v14->_style = v36;
  }

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = objc_msgSend_type(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v12, v11, @"type", v13, v14, v15);
  v22 = objc_msgSend_text(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeObject_forKey_(coderCopy, v23, v22, @"text", v24, v25, v26);

  v33 = objc_msgSend_accessibleText(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeObject_forKey_(coderCopy, v34, v33, @"accessibleText", v35, v36, v37);

  v48 = objc_msgSend_style(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(coderCopy, v44, v48, @"style", v45, v46, v47);
}

@end