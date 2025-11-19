@interface PCNativeColor
- (PCNativeColor)init;
- (PCNativeColor)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PCNativeColor

- (PCNativeColor)init
{
  v3.receiver = self;
  v3.super_class = PCNativeColor;
  result = [(PCNativeColor *)&v3 init];
  if (result)
  {
    result->_gradientOrientation = 20000;
  }

  return result;
}

- (PCNativeColor)initWithCoder:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_init(self, v5, v6, v7, v8, v9, v10);
  if (v11)
  {
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v20 = objc_msgSend_setWithObjects_(v12, v15, v13, v16, v17, v18, v19, v14, 0);
    v25 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v21, v20, @"lightModeColors", v22, v23, v24);
    lightModeColors = v11->_lightModeColors;
    v11->_lightModeColors = v25;

    v31 = objc_msgSend_decodeObjectOfClasses_forKey_(v4, v27, v20, @"darkModeColors", v28, v29, v30);
    darkModeColors = v11->_darkModeColors;
    v11->_darkModeColors = v31;

    v11->_gradientOrientation = objc_msgSend_decodeInt32ForKey_(v4, v33, @"gradientOrientation", v34, v35, v36, v37);
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v37 = a3;
  v10 = objc_msgSend_lightModeColors(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_encodeObject_forKey_(v37, v11, v10, @"lightModeColors", v12, v13, v14);

  v21 = objc_msgSend_darkModeColors(self, v15, v16, v17, v18, v19, v20);
  objc_msgSend_encodeObject_forKey_(v37, v22, v21, @"darkModeColors", v23, v24, v25);

  v32 = objc_msgSend_gradientOrientation(self, v26, v27, v28, v29, v30, v31);
  objc_msgSend_encodeInt32_forKey_(v37, v33, v32, @"gradientOrientation", v34, v35, v36);
}

@end