@interface PCNativeBorderStyle
- (PCNativeBorderStyle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeBorderStyle

- (PCNativeBorderStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"color", v14, v15, v16);
    v18 = *(v11 + 8);
    *(v11 + 8) = v17;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v19, @"width", v20, v21, v22, v23);
    *(v11 + 16) = v24;
    objc_msgSend_decodeDoubleForKey_(coderCopy, v25, @"cornerRadius", v26, v27, v24, v28);
    *(v11 + 24) = v29;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10 = objc_msgSend_color(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v10, @"color", v12, v13, v14);

  objc_msgSend_width(self, v15, v16, v17, v18, v19, v20);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v21, @"width", v22, v23, v24, v25);
  objc_msgSend_cornerRadius(self, v26, v27, v28, v29, v30, v31);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v32, @"cornerRadius", v33, v34, v35, v36);
}

@end