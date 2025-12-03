@interface PCNativePrimitiveColor
- (PCNativePrimitiveColor)initWithCoder:(id)coder;
- (PCNativePrimitiveColor)initWithRGBA:(int64_t)a;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativePrimitiveColor

- (PCNativePrimitiveColor)initWithRGBA:(int64_t)a
{
  v5.receiver = self;
  v5.super_class = PCNativePrimitiveColor;
  result = [(PCNativePrimitiveColor *)&v5 init];
  if (result)
  {
    result->_rawValue = a;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v10 = objc_msgSend_rawValue(self, v4, v5, v6, v7, v8, v9);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v11, v10, @"rawValue", v12, v13, v14);
}

- (PCNativePrimitiveColor)initWithCoder:(id)coder
{
  v8 = objc_msgSend_decodeInt32ForKey_(coder, a2, @"rawValue", v3, v4, v5, v6);

  return MEMORY[0x1EEE66B58](self, sel_initWithRGBA_, v8, v9, v10, v11, v12);
}

@end