@interface AMSPaymentSheetImageAssetConfiguration
- (AMSPaymentSheetImageAssetConfiguration)initWithCoder:(id)coder;
- (AMSPaymentSheetImageAssetConfiguration)initWithFilename:(id)filename size:(CGSize)size type:(int64_t)type;
- (CGSize)size;
- (NSString)fileExtension;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPaymentSheetImageAssetConfiguration

- (AMSPaymentSheetImageAssetConfiguration)initWithFilename:(id)filename size:(CGSize)size type:(int64_t)type
{
  height = size.height;
  width = size.width;
  filenameCopy = filename;
  v14.receiver = self;
  v14.super_class = AMSPaymentSheetImageAssetConfiguration;
  v10 = [(AMSPaymentSheetImageAssetConfiguration *)&v14 init];
  if (v10)
  {
    v11 = [filenameCopy copy];
    filename = v10->_filename;
    v10->_filename = v11;

    v10->_size.width = width;
    v10->_size.height = height;
    v10->_type = type;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  filename = [(AMSPaymentSheetImageAssetConfiguration *)self filename];
  [coderCopy encodeObject:filename forKey:@"filename"];

  [(AMSPaymentSheetImageAssetConfiguration *)self size];
  [coderCopy encodeCGSize:@"size" forKey:?];
  [coderCopy encodeInteger:-[AMSPaymentSheetImageAssetConfiguration type](self forKey:{"type"), @"type"}];
}

- (AMSPaymentSheetImageAssetConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = AMSPaymentSheetImageAssetConfiguration;
  v5 = [(AMSPaymentSheetImageAssetConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"filename"];
    filename = v5->_filename;
    v5->_filename = v6;

    [coderCopy decodeCGSizeForKey:@"size"];
    v5->_size.width = v8;
    v5->_size.height = v9;
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
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