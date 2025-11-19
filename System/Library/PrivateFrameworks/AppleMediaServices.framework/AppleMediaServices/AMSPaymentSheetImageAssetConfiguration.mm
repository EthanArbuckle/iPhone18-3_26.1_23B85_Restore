@interface AMSPaymentSheetImageAssetConfiguration
- (AMSPaymentSheetImageAssetConfiguration)initWithCoder:(id)a3;
- (AMSPaymentSheetImageAssetConfiguration)initWithFilename:(id)a3 size:(CGSize)a4 type:(int64_t)a5;
- (CGSize)size;
- (NSString)fileExtension;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPaymentSheetImageAssetConfiguration

- (AMSPaymentSheetImageAssetConfiguration)initWithFilename:(id)a3 size:(CGSize)a4 type:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = AMSPaymentSheetImageAssetConfiguration;
  v10 = [(AMSPaymentSheetImageAssetConfiguration *)&v14 init];
  if (v10)
  {
    v11 = [v9 copy];
    filename = v10->_filename;
    v10->_filename = v11;

    v10->_size.width = width;
    v10->_size.height = height;
    v10->_type = a5;
  }

  return v10;
}

- (NSString)fileExtension
{
  if ([(AMSPaymentSheetImageAssetConfiguration *)self type]== 1)
  {
    return @"pdf";
  }

  else
  {
    return @"tiff";
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(AMSPaymentSheetImageAssetConfiguration *)self filename];
  [v5 encodeObject:v4 forKey:@"filename"];

  [(AMSPaymentSheetImageAssetConfiguration *)self size];
  [v5 encodeCGSize:@"size" forKey:?];
  [v5 encodeInteger:-[AMSPaymentSheetImageAssetConfiguration type](self forKey:{"type"), @"type"}];
}

- (AMSPaymentSheetImageAssetConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = AMSPaymentSheetImageAssetConfiguration;
  v5 = [(AMSPaymentSheetImageAssetConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
    filename = v5->_filename;
    v5->_filename = v6;

    [v4 decodeCGSizeForKey:@"size"];
    v5->_size.width = v8;
    v5->_size.height = v9;
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end