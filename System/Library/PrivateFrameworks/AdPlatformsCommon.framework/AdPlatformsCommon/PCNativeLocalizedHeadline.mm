@interface PCNativeLocalizedHeadline
- (PCNativeLocalizedHeadline)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCNativeLocalizedHeadline

- (PCNativeLocalizedHeadline)initWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v13, v12, @"languageIdentifier", v14, v15, v16);
    languageIdentifier = v11->_languageIdentifier;
    v11->_languageIdentifier = v17;

    v19 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v20, v19, @"value", v21, v22, v23);
    value = v11->_value;
    v11->_value = v24;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_languageIdentifier(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(v4, v12, v11, @"languageIdentifier", v13, v14, v15);

  v26 = objc_msgSend_value(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeObject_forKey_(v4, v22, v26, @"value", v23, v24, v25);
}

@end