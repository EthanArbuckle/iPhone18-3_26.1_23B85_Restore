@interface AMSPaymentSheetSymbolAssetConfiguration
- (AMSPaymentSheetSymbolAssetConfiguration)initWithCoder:(id)a3;
- (AMSPaymentSheetSymbolAssetConfiguration)initWithName:(id)a3 accessibilityText:(id)a4 scale:(int64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPaymentSheetSymbolAssetConfiguration

- (AMSPaymentSheetSymbolAssetConfiguration)initWithName:(id)a3 accessibilityText:(id)a4 scale:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = AMSPaymentSheetSymbolAssetConfiguration;
  v10 = [(AMSPaymentSheetSymbolAssetConfiguration *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    name = v10->_name;
    v10->_name = v11;

    v13 = [v9 copy];
    accessibilityText = v10->_accessibilityText;
    v10->_accessibilityText = v13;

    v10->_scale = a5;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(AMSPaymentSheetSymbolAssetConfiguration *)self name];
  [v6 encodeObject:v4 forKey:@"name"];

  v5 = [(AMSPaymentSheetSymbolAssetConfiguration *)self accessibilityText];
  [v6 encodeObject:v5 forKey:@"accessibilityText"];

  [v6 encodeInteger:-[AMSPaymentSheetSymbolAssetConfiguration scale](self forKey:{"scale"), @"scale"}];
}

- (AMSPaymentSheetSymbolAssetConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSPaymentSheetSymbolAssetConfiguration;
  v5 = [(AMSPaymentSheetSymbolAssetConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessibilityText"];
    accessibilityText = v5->_accessibilityText;
    v5->_accessibilityText = v8;

    v5->_scale = [v4 decodeIntegerForKey:@"scale"];
  }

  return v5;
}

@end