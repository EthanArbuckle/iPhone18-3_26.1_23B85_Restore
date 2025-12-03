@interface PCNativeShadowStyle
- (PCNativeShadowStyle)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeShadowStyle

- (PCNativeShadowStyle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v13, v12, @"color", v14, v15, v16);
    v18 = *(v11 + 8);
    *(v11 + 8) = v17;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v19, @"opacity", v20, v21, v22, v23);
    *(v11 + 16) = v24;
    objc_msgSend_decodeDoubleForKey_(coderCopy, v25, @"radius", v26, v27, v24, v28);
    *(v11 + 24) = v29;
    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v38 = objc_msgSend_setWithObjects_(v30, v33, v31, v34, v35, v36, v37, v32, 0);
    v43 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v39, v38, @"offsets", v40, v41, v42);
    v44 = *(v11 + 32);
    *(v11 + 32) = v43;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v11 = objc_msgSend_color(self, v5, v6, v7, v8, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"color", v13, v14, v15);

  objc_msgSend_opacity(self, v16, v17, v18, v19, v20, v21);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v22, @"opacity", v23, v24, v25, v26);
  objc_msgSend_radius(self, v27, v28, v29, v30, v31, v32);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v33, @"radius", v34, v35, v36, v37);
  v48 = objc_msgSend_offsets(self, v38, v39, v40, v41, v42, v43);
  objc_msgSend_encodeObject_forKey_(coderCopy, v44, v48, @"offsets", v45, v46, v47);
}

@end