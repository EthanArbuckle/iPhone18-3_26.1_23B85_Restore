@interface AMSPaymentSheetSymbolAssetConfiguration
- (AMSPaymentSheetSymbolAssetConfiguration)initWithCoder:(id)coder;
- (AMSPaymentSheetSymbolAssetConfiguration)initWithName:(id)name accessibilityText:(id)text scale:(int64_t)scale;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPaymentSheetSymbolAssetConfiguration

- (AMSPaymentSheetSymbolAssetConfiguration)initWithName:(id)name accessibilityText:(id)text scale:(int64_t)scale
{
  nameCopy = name;
  textCopy = text;
  v16.receiver = self;
  v16.super_class = AMSPaymentSheetSymbolAssetConfiguration;
  v10 = [(AMSPaymentSheetSymbolAssetConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [textCopy copy];
    accessibilityText = v10->_accessibilityText;
    v10->_accessibilityText = v13;

    v10->_scale = scale;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(AMSPaymentSheetSymbolAssetConfiguration *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  accessibilityText = [(AMSPaymentSheetSymbolAssetConfiguration *)self accessibilityText];
  [coderCopy encodeObject:accessibilityText forKey:@"accessibilityText"];

  [coderCopy encodeInteger:-[AMSPaymentSheetSymbolAssetConfiguration scale](self forKey:{"scale"), @"scale"}];
}

- (AMSPaymentSheetSymbolAssetConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSPaymentSheetSymbolAssetConfiguration;
  v5 = [(AMSPaymentSheetSymbolAssetConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityText"];
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v8;

    v5->_scale = [coderCopy decodeIntegerForKey:@"scale"];
  }

  return v5;
}

@end