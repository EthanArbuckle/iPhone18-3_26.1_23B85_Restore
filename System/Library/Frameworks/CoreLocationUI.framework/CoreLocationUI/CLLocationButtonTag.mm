@interface CLLocationButtonTag
+ (unsigned)secureNameForLabel:(int64_t)label;
- (CGRect)frame;
- (CLLocationButtonTag)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)resolvedStyleForStyle:(id)style;
- (unsigned)secureNameForStyle:(id)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLLocationButtonTag

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  if (v5)
  {
    v8 = objc_msgSend_label(self, v4, v6, v7);
    objc_msgSend_setLabel_(v5, v9, v10, v11, v8);
    v15 = objc_msgSend_icon(self, v12, v13, v14);
    objc_msgSend_setIcon_(v5, v16, v17, v18, v15);
    v22 = objc_msgSend_backgroundColor(self, v19, v20, v21);
    objc_msgSend_setBackgroundColor_(v5, v23, v24, v25, v22);

    v29 = objc_msgSend_tintColor(self, v26, v27, v28);
    objc_msgSend_setTintColor_(v5, v30, v31, v32, v29);

    objc_msgSend_cornerRadius(self, v33, v34, v35);
    objc_msgSend_setCornerRadius_(v5, v36, v37, v38);
    objc_msgSend_frame(self, v39, v40, v41);
    objc_msgSend_setFrame_(v5, v42, v43, v44);
    v48 = objc_msgSend_style(self, v45, v46, v47);
    objc_msgSend_setStyle_(v5, v49, v50, v51, v48);

    v55 = objc_msgSend_renderedSuccessfully(self, v52, v53, v54);
    objc_msgSend_setRenderedSuccessfully_(v5, v56, v57, v58, v55);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  label_low = LODWORD(self->_label);
  coderCopy = coder;
  objc_msgSend_encodeInt_forKey_(coderCopy, v5, v6, v7, label_low, @"kCLLocationButtonLabel");
  objc_msgSend_encodeInt_forKey_(coderCopy, v8, v9, v10, LODWORD(self->_icon), @"kCLLocationButtonIcon");
  objc_msgSend_encodeObject_forKey_(coderCopy, v11, v12, v13, self->_backgroundColor, @"kCLLocationButtonBackgroundColor");
  objc_msgSend_encodeObject_forKey_(coderCopy, v14, v15, v16, self->_tintColor, @"kCLLocationButtonTintColor");
  v17.n128_u64[0] = *&self->_cornerRadius;
  v17.n128_f32[0] = v17.n128_f64[0];
  objc_msgSend_encodeFloat_forKey_(coderCopy, v18, v17, v19, @"kCLLocationButtonCornerRadius");
  v20.n128_u64[0] = *&self->_frame.origin.x;
  v21.n128_u64[0] = *&self->_frame.origin.y;
  objc_msgSend_encodeCGRect_forKey_(coderCopy, v22, v20, v21, @"kCLLocationButtonFrame", self->_frame.size.width, self->_frame.size.height);
  v23.n128_u64[0] = *&self->_fontSize;
  v23.n128_f32[0] = v23.n128_f64[0];
  objc_msgSend_encodeFloat_forKey_(coderCopy, v24, v23, v25, @"kCLLocationButtonFontSize");
  objc_msgSend_encodeInt_forKey_(coderCopy, v26, v27, v28, self->_controlSize, @"kCLLocationButtonControlSize");
}

- (CLLocationButtonTag)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = objc_msgSend_decodeIntForKey_(coderCopy, v5, v6, v7, @"kCLLocationButtonLabel");
  v12 = objc_msgSend_decodeIntForKey_(coderCopy, v9, v10, v11, @"kCLLocationButtonIcon");
  v13 = objc_opt_class();
  v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v14, v15, v16, v13, @"kCLLocationButtonBackgroundColor");
  v18 = objc_opt_class();
  v22 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v20, v21, v18, @"kCLLocationButtonTintColor");
  objc_msgSend_decodeFloatForKey_(coderCopy, v23, v24, v25, @"kCLLocationButtonCornerRadius");
  v27 = v26.n128_f32[0];
  v28 = v26.n128_f32[0];
  objc_msgSend_decodeCGRectForKey_(coderCopy, v29, v26, v30, @"kCLLocationButtonFrame");
  v32 = v31.n128_u64[0];
  v34 = v33.n128_f64[0];
  v36 = v35;
  v38 = v37;
  objc_msgSend_decodeFloatForKey_(coderCopy, v39, v31, v33, @"kCLLocationButtonFontSize");
  v41 = v40.n128_f32[0];
  v44 = objc_msgSend_decodeIntForKey_(coderCopy, v42, v40, v43, @"kCLLocationButtonControlSize");

  if (v36 >= v38)
  {
    v48 = v38;
  }

  else
  {
    v48 = v36;
  }

  v46.n128_f64[0] = v48 * 0.5;
  if (v46.n128_f64[0] >= v28)
  {
    v46.n128_u64[0] = 0;
    if (v27 >= 0.0)
    {
      v46.n128_f64[0] = v28;
    }
  }

  v47.n128_u64[0] = v32;
  v49 = objc_msgSend_initWithLabel_iconType_backgroundColor_tintColor_cornerRadius_frame_fontSize_controlSize_(self, v45, v46, v47, v8, v12, v17, v22, v44, v34, v36, v38, v41);

  return v49;
}

- (id)resolvedStyleForStyle:(id)style
{
  v5 = objc_msgSend_copyWithChangeBlock_(style, a2, v3, v4, &unk_284A43A48);

  return v5;
}

- (unsigned)secureNameForStyle:(id)style
{
  v6 = objc_msgSend_label(self, a2, v3, v4, style);

  return objc_msgSend_secureNameForLabel_(CLLocationButtonTag, v5, v7, v8, v6);
}

+ (unsigned)secureNameForLabel:(int64_t)label
{
  if ((label - 2) >= 4)
  {
    return 0x20000;
  }

  else
  {
    return label + 0x1FFFF;
  }
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end